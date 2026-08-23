# TWRP Device Tree for myPhone Hammer Energy

Custom recovery tree for **myPhone Hammer Energy** based on MediaTek MT6737T.

## Device Specifications

| Feature | Specification |
| :--- | :--- |
| CPU | Quad-Core 1.5 GHz ARM Cortex-A53 |
| Chipset | MediaTek MT6737T |
| Architecture | ARM (32-bit mode) |
| Kernel | 3.18.79 |
| Storage | 16 GB |
| RAM | 2 GB |

## How to Build

```bash
# Initialize repo
repo init -u [https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git) -b twrp-8.1

# Sync sources
repo sync

# Clone this repo into device tree
git clone [https://github.com/TWOJ_NICK/android_device_myphone_Hammer_Energy.git](https://github.com/TWOJ_NICK/android_device_myphone_Hammer_Energy.git) device/myphone/Hammer_Energy

# Build recovery
source build/envsetup.sh
lunch omni_Hammer_Energy-eng
mka recoveryimage
