# N9 ROM & KERNEL With ccache

cd ~/noobbuilds/kernel/htc/flounder
make clean
export ARCH=arm64
export CROSS_COMPILE=~/noobbuilds/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-gcc-
export USE_CCACHE=1
make flounder_defconfig
make -j4
cd ~/noobbuilds
mkdir ~/noobbuilds/device/moto/flounder-kernel
rm ~/noobbuilds/device/moto/flounder-kernel/zImage-dtb
cp ~/noobbuilds/kernel/moto/flounder/arch/arm/boot/zImage-dtb ~/noobbuilds/device/moto/flopunder-kernel
source build/envsetup.sh
make clobber
lunch noobbuilds_n9-userdebug
export USE_CCACHE=1
make -j `getconf _NPROCESSORS_ONLN` otapackage
