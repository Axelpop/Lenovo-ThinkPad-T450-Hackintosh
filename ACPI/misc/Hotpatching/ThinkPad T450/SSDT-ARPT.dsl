// Clover UEFI Hotpatch | ARPT, SDXC, and LAN0 Device Entry | Lenovo ThinkPad T450 Ultrabook | Hackintosh (macOS Mojave) | Compiled By: Sass86oh |

// Rename Devices Using Clover Configurator | Apple Airport Extreme 802.11 a/b/g/n/ac WiFi Configuration (Broadcom BCM94360CSAX Gigabit WLAN 3x3 MIMO) PCIe Device Information |
// Also Defines LAN0 & SDXC System Devices |
//
// Find Device: _SB.PCI0.EXP1   Rename Device: RP01
// Find Device: _SB.PCI0.EXP2   Rename Device: RP02
// Find Device: _SB.PCI0.EXP3   Rename Device: RP03

//DefinitionBlock ("", "SSDT", 2, "T450 ", "ARPT", 0)
//{
    External (_SB_.PCI0.RP01, DeviceObj)
    External (_SB_.PCI0.RP02, DeviceObj)
    External (_SB_.PCI0.RP03, DeviceObj)

    Scope (_SB.PCI0.RP01)
    {
        Device (SDXC)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }
    }
    
    Scope (_SB.PCI0.RP02)
    {
        Device (ARPT)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg2, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x16)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "vendor-id", 
                    Buffer (0x04)
                    {
                         0xE4, 0x14, 0x00, 0x00                         
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xA0, 0x43, 0x00, 0x00                         
                    }, 

                    "subsystem-id", 
                    Buffer (0x04)
                    {
                         0x12, 0x01, 0x00, 0x00                         
                    }, 

                    "subsystem-vendor-id", 
                    Buffer (0x04)
                    {
                         0x6B, 0x10, 0x00, 0x00                         
                    }, 

                    "vendor-id", 
                    Buffer (0x04)
                    {
                         0xE4, 0x14, 0x00, 0x00                         
                    }, 

                    "name", 
                    Buffer (0x0D)
                    {
                        "pci14e4,43a0"
                    }, 

                    "model", 
                    Buffer (0x46)
                    {
                        "Apple AirPort Extreme (Broadcom BCM94360CSAX 802.11 a/b/g/n/ac WiFi Card)"
                    }, 

                    "device_type", 
                    Buffer (0x10)
                    {
                        "AirPort Extreme"
                    }, 

                    "IOName", 
                    Buffer (0x0D)
                    {
                        "pci14e4,43a0"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                           
                    }
                })
            }
        }
    }        

    Scope (_SB.PCI0.RP03)
    {
        Device (LAN0)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }
    }
//}
//EOF
