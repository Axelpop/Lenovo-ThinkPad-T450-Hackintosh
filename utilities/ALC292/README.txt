Codec: Realtek ALC3232
Address: 0
AFG Function Id: 0x1 (unsol 1)
Vendor Id: 0x10ec0292
Subsystem Id: 0x17aa501e
Revision Id: 0x100001

You must change the Layout to 13  in the DSDT patch HDEF.

Kext Patched by Insanelydeepak 

.  Layout_ID: 13.

Realtek ALC292 for Lenovo ThinkPad L440 working ComboJack and all input/Outputs

You must change the Layout to 13  in the DSDT patch HDEF.

Installation Notes:
1. Install latest version of CodecCommander. Use EasyKextPro for Installation, also need SSDT-ALC292.aml, which is to be installed at EFI/CLOVER/ACPI/Patched and added at config.plist/ACPI/SortedOrder 
2. Open Terminal cd alc_fix folder , then type following command 
   ./install.sh

