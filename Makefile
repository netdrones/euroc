## ETH EuRoC MAV Dataset storage in Git LFS
##
# the private source data is in https://git.ethz.ch/mav-dataset/mav-dataset.git
DATA ?= ijrr_euroc_mav_dataset
URL ?= http://robotics.ethz.ch/~asl-datasets/$(DATA)
# if you are using NetDrone standard then put in $WS_DIR/data
# the use of := is important because of the include directive adds
# to the MAKEFILE_LIST
DATA_DIR := $(shell basename $(realpath $(dir $(lastword $(MAKEFILE_LIST)))))
# Assuming WS_DIR is set externall by .envrc usually
DATA_DEST := $$WS_DIR/data/$(DATA_DIR)/$(DATA)


# download: download the EuRoC MAV dataset and build the dataset
#.PHONY: download
#download: machine_hall vicon_room1 vicon_room2

## download: recursive download all the files
# https://stackoverflow.com/questions/11783280/downloading-all-the-files-in-a-directory-with-curl
.PHONY: download
download:
	cd "$(DATA_DEST)" && \
	wget --no-verbose --no-parent --recursive --level=3 --no-directories --no-clobber \
		--accept-regex '.*$(DATA).*' \
		--accept "*.zip" --accept "*.bag" "$(URL)"

include lib/include.mk
