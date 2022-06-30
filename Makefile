## ETH EuRoC MAV Dataset storage in Git LFS
##
# the private source data is in https://git.ethz.ch/mav-dataset/mav-dataset.git
DATA ?= ijrr_euroc_mav_dataset
URL ?= http://robotics.ethz.ch/~asl-datasets/$(DATA)

include lib/include.mk

# download: download the EuRoC MAV dataset and build the dataset
#.PHONY: download
#download: machine_hall vicon_room1 vicon_room2

# machine_hall: download the machine_hall dataset
.PHONY: machine_hall
#machine_hall:
#    for room in machine_hall room1 room2; do
#        for file in mh_01_easy mh_02_easy mh_03_medium mh_04_difficult mh_04_difficult do \
#            for ext in bag zip; do
#                curl -L -o "$$file.$$ext" "$(URL)/$$room/$$file).$$ext"; \
#            done
	#    done
	#done

## download: recursive download all the files
# https://stackoverflow.com/questions/11783280/downloading-all-the-files-in-a-directory-with-curl
.PHONY: download
download:
	wget --no-verbose --no-parent --recursive --level=3 --no-directories --no-clobber \
		--accept-regex '.*$(DATA).*' \
		--accept "*.zip" --accept "*.bag" "$(URL)"
