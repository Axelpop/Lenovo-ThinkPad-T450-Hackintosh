// USB Controllers present are: EH01/EHC1, XHC/XHCI, and HUB1
//
// EH01 handles USB 2.0 devices when FakePCIID-XHCMux.kext is present in the system.
// EH01 is old technology and is not necessary to use along with HUB1 which hosts the 8 USB 2.0 ports
// which EH01 offers. Instead all traffic can be handled exclusively by the XHC controller for both
// USB 2.0 and USB 3.0 traffic. This also includes internal USB ports. So EHCI will be disabled and all traffic
// will run through the XHCI controller. 

DefinitionBlock ("", "SSDT", 2, "LENOVO", "_UIAC", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {

/*            "HUB1", Package() // EHCI 8 PORT INTERNAL USB 2.0 CAPEABLE CONTROLLER 
            {
                "port-count", Buffer() { 8, 0, 0, 0 },
                "ports", Package()
                {
                    "HP11", Package() // External left hand USB port next to A/C Input port (EHCI Routed USB 2.0 Traffic Only) | Shares XHC Port HS01 | 480 MB/s)
                    {
                        //"UsbConnector", 0, 
                        "portType", 0,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HP12", Package() // External left hand USB port next to HDMI output port (EHCI Routed USB 2.0 Traffic Only) | Matches XHC Port HS02 | 480 MB/s)
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HP13", Package() // External right hand USB port next to LTE Sim Tray (EHCI Routed USB 2.0 Traffic Only | Shares EHCI Port HS03 | 480 MB/s)
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HP16", Package() 255, // Internal USB 2.0 port which controls the SDXC memory card on the right side of the computer (USB 2.0 Speeds | 480 MB/s)
                    {
                        //"UsbConnector", 
                        "portType", 0,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                    "HP17", Package() // Internal USB 2.0 port which controls the Broadcom Bluetooth controller from AirPort Extreme Card (USB 2.0 Speeds | 480 MB/s)
                    {
                        //"UsbConnector", 255, 
                        "portType", 0,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "HP18", Package() // Internal USB 2.0 port which controls the Facetime High Definition Webcam (USB 2.0 Speeds | 480 MB/s)
                    {
                        //"UsbConnector", 255,
                        "portType", 0,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
                },
            },
*/

                                                     
/*           "EH01", Package() // EHCI USB 2.0 CAPEABLE CONTROLLER 
*            {
*                "port-count", Buffer() { 8, 0, 0, 0 },
*                "ports", Package()
*                {
*                    "PR11", Package() // Internal USB 2.0 Control Hub which handles the 8 EHCI USB 2.0 traffic lanes when it is enabled (USB 2.0 Speeds | 480 MB/s)
*                    {
*                        "UsbConnector", 255,
*                        "port", Buffer() { 1, 0, 0, 0 },
*                    },
*                },
*            },
*/
            
            "8086_9cb1", Package() // XHCI 3.0 & USB 2.0 CAPEABLE CONTROLLER
            {
                "port-count", Buffer() { 15, 0, 0, 0 },
                "ports", Package()
                {
                    "HS01", Package() // External Left hand USB port next to A/C Input port (XHC Routed USB 2.0 Traffic Only) | Shares EHCI Port HP11 | 480 MB/s)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HS02", Package() // External left hand USB port next to HDMI output port (XHC Routed USB 2.0 Traffic Only) | Shares EHCI Port HP12 | 480 MB/s)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HS03", Package() // External right hand USB port next to LTE Sim Tray (XHC Routed USB 2.0 Traffic Only | Shares EHCI Port HP13 | 480 MB/s)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HS06", Package() // Internal USB 2.0 port which controls the SDXC memory card on the right side of the computer (USB 2.0 Speeds | 480 MB/s)
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                    "HS07", Package() // Internal USB 2.0 port which controls the Broadcom Bluetooth controller from AirPort Extreme Card (USB 2.0 Speeds | 480 MB/s)
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "HS08", Package() // Internal USB 3.0 port which controls the Facetime High Definition Webcam (USB 2.0 Speeds | 480 MB/s)
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
                    "SS01", Package() // External Left hand USB port next to A/C Input port (XHC Routed USB 3.0 High Speed Traffic | 5 GB/s)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 12, 0, 0, 0 },
                    },
                    "SS02", Package() // External left hand USB port next to HDMI output port (XHC Routed USB 3.0 High Speed Traffic | 5 GB/s)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 13, 0, 0, 0 },
                    },
                    "SS03", Package() // External right hand USB port next to LTE Sim Tray (XHC Routed USB 3.0 High Speed Traffic | 5 GB/s)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 14, 0, 0, 0 },
                    },
                },
            },
        })
    }

//
// Disabling EHCI #1
//
    External(_SB.PCI0, DeviceObj)
    External(_SB.PCI0.LPC, DeviceObj)
    External(_SB.PCI0.EH01, DeviceObj)
    Scope(_SB.PCI0)
    {
        // registers needed for disabling EHC#1
        Scope(EH01)
        {
            OperationRegion(PSTS, PCI_Config, 0x54, 2)
            Field(PSTS, WordAcc, NoLock, Preserve)
            {
                PSTE, 2  // bits 2:0 are power state
            }
        }
        Scope(LPC)
        {
            OperationRegion(RMLP, PCI_Config, 0xF0, 4)
            Field(RMLP, DWordAcc, NoLock, Preserve)
            {
                RCB1, 32, // Root Complex Base Address
            }
            // address is in bits 31:14
            OperationRegion(FDM1, SystemMemory, Add(And(RCB1,Not(Subtract(ShiftLeft(1,14),1))),0x3418), 4)
            Field(FDM1, DWordAcc, NoLock, Preserve)
            {
                ,15,    // skip first 15 bits
                FDE1,1, // should be bit 15 (0-based) (FD EHCI#1)
            }
        }
        Device(RMD1)
        {
            //Name(_ADR, 0)
            Name(_HID, "RMD10000")
            Method(_INI)
            {
                // disable EHCI#1
                // put EHCI#1 in D3hot (sleep mode)
                Store(3, ^^EH01.PSTE)
                // disable EHCI#1 PCI space
                Store(1, ^^LPC.FDE1)
            }
        }
    }
}
//EOF
