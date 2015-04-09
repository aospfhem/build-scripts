#N6 ROM ONLY no ccache

cd ~/noobuilds
source build/envsetup.sh
make clobber
lunch noobbuilds_n6-userdebug
make -j `getconf _NPROCESSORS_ONLN` otapackage
