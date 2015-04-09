#N6 ROM ONLY With ccache

cd ~/noobbuilds
source build/envsetup.sh
make clobber
lunch noobbuilds_n6-userdebug
export USE_CCACHE=1
make -j `getconf _NPROCESSORS_ONLN` otapackage
