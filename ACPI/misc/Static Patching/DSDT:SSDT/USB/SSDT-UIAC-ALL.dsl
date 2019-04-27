/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLSRyxDo.aml, Sun Feb 24 04:30:16 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000004B4 (1204)
 *     Revision         0x02
 *     Checksum         0x46
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "_UIAC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190108 (538509576)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "_UIAC", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.EH01, DeviceObj)
    External (_SB_.PCI0.LPC_, DeviceObj)

    Device (UIAC)
    {
        Name (_HID, "UIA00000")  // _HID: Hardware ID
        Name (RMCF, Package (0x06)
        {
            "HUB1", 
            Package (0x04)
            {
                "port-count", 
                Buffer (0x04)
                {
                     0x08, 0x00, 0x00, 0x00                           // ....
                }, 

                "ports", 
                Package (0x10)
                {
                    "HP11", 
                    Package (0x04)
                    {
                        "portType", 
                        Zero, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "HP12", 
                    Package (0x04)
                    {
                        "portType", 
                        Zero, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x02, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "HP13", 
                    Package (0x04)
                    {
                        "portType", 
                        Zero, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x03, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "HP14", 
                    Package (0x04)
                    {
                        "portType", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x04, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "HP15", 
                    Package (0x04)
                    {
                        "portType", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x05, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "HP16", 
                    Package (0x04)
                    {
                        "portType", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x06, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "HP17", 
                    Package (0x04)
                    {
                        "portType", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x07, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "HP18", 
                    Package (0x04)
                    {
                        "portType", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x08, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                }
            }, 

            "EH01", 
            Package (0x04)
            {
                "port-count", 
                Buffer (0x04)
                {
                     0x08, 0x00, 0x00, 0x00                           // ....
                }, 

                "ports", 
                Package (0x02)
                {
                    "PR11", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                }
            }, 

            "8086_9cb1", 
            Package (0x04)
            {
                "port-count", 
                Buffer (0x04)
                {
                     0x0F, 0x00, 0x00, 0x00                           // ....
                }, 

                "ports", 
                Package (0x18)
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

                    "HSP3", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x04, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "HSP4", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x05, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "HSP5", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x06, 0x00, 0x00, 0x00                           // ....
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
                    }, 

                    "SSP3", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x0F, 0x00, 0x00, 0x00                           // ....
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

        Scope (LPC)
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
                ^^LPC.FDE1 = One
            }
        }
    }
}

