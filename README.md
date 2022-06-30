# ETH EuRoC MAV Dataset

This is the standard visual-inertial datasets collect from a Micro Aerial
Vehicle. It has stereo images, IMU data, and motion and structure ground truth.

Normally this used extensively in
[research](https://paperswithcode.com/dataset/euroc-mav) and was created by ETH
Zurich as part of their [ASL
Datasets](https://paperswithcode.com/dataset/euroc-mav) work

These are normally ROSBags of different scenes and we have downloaded these.
You need to have GitLFS installed for all of this to work.

## Note: Uses netdrones/lib

This uses the [NetDrones](https://netdron.es) library and tools for pre-commit,
git ignore etc. To install Git LFS

```bash
# installs git-precommit testing
make pre-commit
# install git lfs
make git-lfs
```
