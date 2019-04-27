DefinitionBlock ("", "SSDT", 2, "LENOVO", "PS2K", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPC_.EC__, DeviceObj)
    External (_SB_.PCI0.LPC_.PS2K, DeviceObj)
    
    Scope (\_SB.PCI0.LPC.PS2K)
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
                "Lenovo", 
                "RM,oem-table-id", 
                "T460"
            })
        }

        Name (RMCF, Package (0x06)
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
            Package (0x2C)
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
                ">n", 
                "ScrollResolution", 
                0x0200, 
                "SmoothInput", 
                ">y", 
                "UnsmootInput", 
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
                0x04, 
                "MouseMultiplierY", 
                0x04, 
                "MouseScrollMultiplierX", 
                0x04, 
                "MouseScrollMultiplierY", 
                0x04, 
                "TrackpointScrollYMultiplier", 
                One, 
                "TrackpointScrollXMultiplier", 
                One
            }
        })
    }   
}    