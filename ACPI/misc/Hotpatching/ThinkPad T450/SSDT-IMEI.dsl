// Clover UEFI Hotpatch | IMEI Device Functionality | Lenovo ThinkPad T450 Ultrabook | Hackintosh (macOS Mojave) | Compiled By: Sass86oh |

// Add Missing IMEI DeviceObj Into DSDT | Patched On The Fly | 
// Enable/Add Clover Patch "change MEI to IMEI"
//
//DefinitionBlock("", "SSDT", 2, "T450 ", "IMEI", 0)
//{
    Device(_SB.PCI0.IMEI) { Name(_ADR, 0x00160000) }
//}
//EOF