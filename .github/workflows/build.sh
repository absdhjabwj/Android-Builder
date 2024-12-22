name: Build Kernel
on:
  workflow_dispatch:

jobs:
  Build-Kernel:
    strategy:
      fail-fast: false
    runs-on: ubuntu-latest
    permissions:
      contents: read

    steps:
    - name: Build Kernel
      uses: dabao1955/kernel_build_action@main
      with:
          kernel-url: https://github.com/LineageOS/android_kernel_xiaomi_sm6250
          kernel-dir: msm-4.19
          kernel-branch: lineage-21
          config: vendor/xiaomi/miatoll_defconfig
          arch: arm64
          aosp-gcc: true
          aosp-clang: true
          ksu: true
          ksu-version: 0.9.5
          android-version: 14
          aosp-clang-version: r383902
          disable-lto: true
          anykernel3: true
