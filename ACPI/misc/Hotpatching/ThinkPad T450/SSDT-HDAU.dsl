// Clover UEFI Hotpatch | HDMI Audio Out (Mini Display Port) Configuration | Lenovo ThinkPad T450 Ultrabook | Hackintosh (macOS Mojave) | Compiled By: Sass86oh |

// Automatic Injection Of HDAU Layout Properties (For HDMI Audio Functionality) | Only for Haswell and Broadwell | | Only Use Layout 28 | 1C000000 |
//
//DefinitionBlock("", "SSDT", 2, "T450 ", "HDAU", 0)
//{
    External(_SB.PCI0.HDAU, DeviceObj)
    External(RMCF.AUDL, IntObj)

    // inject properties for audio
    Method(_SB.PCI0.HDAU._DSM, 4)
    {
        If (CondRefOf(\RMCF.AUDL)) { If (Ones == \RMCF.AUDL) { Return(0) } }
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Local0 = Package()
        {
            "layout-id", Buffer() { 28, 0, 0, 0 },
            "hda-gfx", Buffer() { "onboard-1" },
        }
        If (CondRefOf(\RMCF.AUDL))
        {
            CreateDWordField(DerefOf(Local0[1]), 0, AUDL)
            AUDL = \RMCF.AUDL
        }
        Return(Local0)
    }
//}
//EOF