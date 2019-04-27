/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLp6T7hf.aml, Sun Nov 25 03:45:53 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000019C (412)
 *     Revision         0x02
 *     Checksum         0xD9
 *     OEM ID           "hack"
 *     OEM Table ID     "_WIFI"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_WIFI", 0x00000000)
{
    External (_SB_.PCI0.EXP2, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI0.EXP2)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg2, Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x18)
            {
                "vendor-id", 
                Buffer (0x04)
                {
                     0xE4, 0x14, 0x00, 0x00                         
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x31, 0x43, 0x00, 0x00                         
                }, 

                "subsystem-vendor-id", 
                Buffer (0x04)
                {
                     0x6B, 0x10, 0x00, 0x00                         
                }, 

                "subsystem-id", 
                Buffer (0x04)
                {
                     0xD6, 0x00, 0x00, 0x00                         
                }, 

                "compatible", 
                "pci14e4,4331", 
                "IOName", 
                "pci14e4,4331", 
                "name", 
                "AirPort Extreme", 
                "device_type", 
                "AirPort", 
                "built-in", 
                Buffer (One)
                {
                     0x00                                           
                }, 

                "PinConfigurations", 
                Buffer (One)
                {
                     0x00                                           
                }, 

                "AAPL,slot-name", 
                "M.2 key M", 
                "model", 
                "Dell Wireless 1820A - BCM94350ZAE 802.11 ac/a/b/g/n"
            })
        }
    }
}
