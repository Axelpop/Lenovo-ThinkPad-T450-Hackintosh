// Clover UEFI Hotpatch | MCHC Device Functionality | Lenovo ThinkPad T450 Ultrabook | Hackintosh (macOS Mojave) | Compiled By: Sass86oh |

// Add Missing MCHC Device | DSDT Patched On The Fly |
//
//DefinitionBlock("", "SSDT", 2, "T450 ", "MCHC", 0)
//{
    Device(_SB.PCI0.MCHC) { Name(_ADR, 0) }
//}
//EOF