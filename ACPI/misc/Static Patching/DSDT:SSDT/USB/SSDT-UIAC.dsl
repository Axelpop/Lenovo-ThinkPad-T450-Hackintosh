DefinitionBlock ("", "SSDT", 2, "LENOVO", "_UIAC", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.EH01, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)

    Device (UIAC)
    {
        Name (_HID, "UIA00000")  // _HID: Hardware ID
        Name (RMCF, Package (0x02)
        {
            "8086_9cb1", 
            Package (0x04)
            {
                "port-count", 
                Buffer (0x04)
                {
                     0x0F, 0x00, 0x00, 0x00                           // ....
                }, 

                "ports", 
                Package (0x10)
                {
                    "HSP0", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "HSP1", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x02, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "HSP2", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x03, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "HSP6", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x07, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "HSP7", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x08, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "SSP0", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x0C, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "SSP1", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x0D, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "SSP2", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x0E, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                }
            }
        })
    }

    Scope (_SB.PCI0)
    {
        Scope (EH01)
        {
            OperationRegion (PSTS, PCI_Config, 0x54, 0x02)
            Field (PSTS, WordAcc, NoLock, Preserve)
            {
                PSTE,   2
            }
        }

        Scope (LPCB)
        {
            OperationRegion (RMLP, PCI_Config, 0xF0, 0x04)
            Field (RMLP, DWordAcc, NoLock, Preserve)
            {
                RCB1,   32
            }

            OperationRegion (FDM1, SystemMemory, ((RCB1 & 0xFFFFFFFFFFFFC000) + 0x3418), 0x04)
            Field (FDM1, DWordAcc, NoLock, Preserve)
            {
                    ,   15, 
                FDE1,   1
            }
        }

        Device (RMD1)
        {
            Name (_HID, "RMD10000")  // _HID: Hardware ID
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                ^^EH01.PSTE = 0x03
                ^^LPCB.FDE1 = One
            }
        }
    }
}

