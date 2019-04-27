// Clover UEFI Hotpatch | System Sound Functionality | Lenovo ThinkPad T450 Ultrabook | Hackintosh (macOS Mojave) | Compiled By: Sass86oh |

// Automatic Injection Of HDEF Layout Properties (System Audio Functionality) | Only Use Layout 28 | 1C000000 | Also Injects _DSM Info Under System Information |
//
//DefinitionBlock("", "SSDT", 2, "T450 ", "HDEF", 0)
//{
    External(_SB.PCI0.HDEF, DeviceObj)
    External(RMCF.AUDL, IntObj)

    // inject properties for audio
    Method(_SB.PCI0.HDEF._DSM, 4)
    {
        If (CondRefOf(\RMCF.AUDL)) { If (Ones == \RMCF.AUDL) { Return(0) } }
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Local0 = Package()
        {
            "AAPL,slot-name", Buffer() { "Built In" },
            "name", Buffer() { "Apple High Definition Audio Controller" },
            "model", Buffer() { "Apple HD Audio Controller, (Intel Wildcat Point-LP HD Audio Controller)" },
            "device_type", Buffer() { "Audio Controller" },
            "layout-id", Buffer() { 28, 0, 0, 0 },
           // "codec-id", Buffer() { 0x92, 0x02, 0xEC, 0x10 },
            "built-in", Buffer() { 0x00 },
            "hda-gfx", Buffer() { "onboard-1" },
            "PinConfigurations", Buffer() { },
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