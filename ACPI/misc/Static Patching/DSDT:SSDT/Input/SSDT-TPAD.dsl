DefinitionBlock ("", "SSDT", 2, "LENOVO", "TPAD", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPC, DeviceObj)
    External (_SB_.PCI0.LPC.KBD, DeviceObj)

    Scope (\_SB.PCI0.LPC.KBD)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (!Arg2)
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x04)
            {
                "RM,oem-id", 
                "LENOVO", 
                "RM,oem-table-id", 
                "T460"
            })
        }

        Name (RMCF, Package (0xAA)
        {
            "Mouse", 
            Package (0x02)
            {
                "ActLikeTrackpad", 
                ">y"
            }, 

            "Keyboard", 
            Package (0x08)
            {
                "ActionSwipeLeft", 
                "37 d, 21 d, 21 u, 37 u", 
                "ActionSwipeRight", 
                "37 d, 1e d, 1e u, 37 u", 
                "SleepPressTime", 
                "1500", 
                "Swap command and option", 
                ">y"
            }, 

            "Synaptics TouchPad", 
            Package (0xAA)
            {
                "BogusDeltaThreshX", 
                0x0320, 
                "BogusDeltaThreshY", 
                0x0320, 
                "Clicking", 
                ">y", 
                "DragLockTempMask", 
                0x00040004, 
                "DynamicEWMode", 
                ">n", 
                "FakeMiddleButton", 
                ">n", 
                "HWResetOnStart", 
                ">y", 
                "PalmNoAction When Typing", 
                ">y", 
                "ScrollResolution", 
                0x0420, 
                "SmoothInput", 
                ">y", 
                "UnsmoothInput", 
                ">y", 
                "Thinkpad", 
                ">y", 
                "EdgeBottom", 
                Zero, 
                "FingerZ", 
                0x1E, 
                "MaxTapTime", 
                0x05F5E100, 
                "MomentumScrollThreshY", 
                0x20, 
                "MouseMultiplierX", 
                0x02, 
                "MouseMultiplierY", 
                0x02, 
                "MouseScrollMultiplierX", 
                0x04, 
                "MouseScrollMultiplierY", 
                0x04, 
                "MultiFingerHorizontalDivisor", 
                0x04, 
                "MultiFingerVerticalDivisor", 
                0x04, 
                "TrackpointScrollYMultiplier", 
                0x04, 
                "TrackpointScrollXMultiplier", 
                0x04
            }
        })
    }
}

