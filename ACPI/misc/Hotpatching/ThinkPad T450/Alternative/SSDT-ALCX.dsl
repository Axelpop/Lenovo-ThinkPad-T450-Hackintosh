// Clover UEFI Hotpatch | ALC 293/3232 Audio | Codec Commander Configuration | Lenovo ThinkPad T450 Ultrabook | Hackintosh (macOS Mojave) | Compiled By: Sass86oh |

// Proper Codec Layout Information | ALC Audio 293/3232 | Codec Commander | Make Sure CodecCommander.kext Is Installed In /Library/Extensions or /EFI/CLOVER/other/kexts |
//
//DefinitionBlock ("", "SSDT", 2, "T450 ", "ALCX", 0)
//{
    Name (_SB.PCI0.HDEF.RMCF, Package (0x02)
    {
        "CodecCommander", 
        Package (0x08)
        {
            "Custom Commands", 
            Package (0x03)
            {
                Package (0x00){}, 
                Package (0x08)
                {
                    "Command", 
                    Buffer (0x04)
                    {
                         0x01, 0xA7, 0x07, 0x24                         
                    }, 

                    "On Init", 
                    ">y", 
                    "On Sleep", 
                    ">n", 
                    "On Wake", 
                    ">y"
                }, 

                Package (0x08)
                {
                    "Command", 
                    Buffer (0x04)
                    {
                         0x01, 0x57, 0x08, 0x83                         
                    }, 

                    "On Init", 
                    ">y", 
                    "On Sleep", 
                    ">n", 
                    "On Wake", 
                    ">y"
                }
            }, 

            "Perform Reset", 
            ">y", 
            "Send Delay", 
            0x0A, 
            "Sleep Nodes", 
            ">n"
        }
    })
//}
//EOF
