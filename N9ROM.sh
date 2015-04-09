#N9 ROM no ccache

cd ~/noobbuilds
source build/envsetup.sh
make clobber
lunch noobbuilds_n9-userdebug
make -j `getconf _NPROCESSORS_ONLN` otapackage
