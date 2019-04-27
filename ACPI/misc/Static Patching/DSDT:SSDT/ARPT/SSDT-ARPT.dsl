/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-ARPT.aml, Sun Feb 24 03:40:49 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001B0 (432)
 *     Revision         0x02
 *     Checksum         0x43
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "ARPT"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190108 (538509576)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "ARPT", 0x00000000)
{
    External (_SB_.PCI0.RP02, DeviceObj)    // (from opcode)
    External (ARPT, DeviceObj)    // (from opcode)

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
                    Buffer (0x45)
                    {
                        "Apple AirPort Extreme (Broadcom BCM4360 802.11 a/b/g/n/ac WiFi Card)"
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
}

