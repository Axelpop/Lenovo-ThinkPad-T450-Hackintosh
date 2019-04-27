/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-AHCI.aml, Mon Feb 18 18:48:10 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000002C0 (704)
 *     Revision         0x02
 *     Checksum         0x58
 *     OEM ID           "APPLE "
 *     OEM Table ID     "AHCI"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190108 (538509576)
 */
DefinitionBlock ("", "SSDT", 2, "APPLE ", "AHCI", 0x00001000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SATA, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SATB, DeviceObj)    // (from opcode)

    Method (_SB.PCI0.SATB._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x10)
        {
            "AAPL,slot-name", 
            Buffer (0x0E)
            {
                "M.2 PCIe Slot"
            }, 

            "name", 
            Buffer (0x2C)
            {
                "Apple M.2 Solid State Drive AHCI Controller"
            }, 

            "model", 
            Buffer (0x63)
            {
                "Apple M.2 NGFF Advanced SATA Controller, (Samsung 850 EVO 42mm M.2 NGFF Solid State Drive)"
            }, 

            "device_type", 
            Buffer (0x14)
            {
                "M.2 AHCI Controller"
            }
        })
    }

    Method (_SB.PCI0.SATA._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x10)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built In"
            }, 

            "name", 
            Buffer (0x24)
            {
                "Apple Advanced SATA AHCI Controller"
            }, 

            "model", 
            Buffer (0x63)
            {
                "Intel Series 9 Chipset Advanced SATA Controller, (Broadwell Wildcat Point-LP AHCI SATA Controller)"
            }, 

            "device_type", 
            Buffer (0x10)
            {
                "AHCI Controller"
            }, 

            "device-id", 
            Buffer (0x04)
            {
                 0x83, 0x9C, 0x00, 0x00                         
            }, 

            "vendor-id", 
            Buffer (0x04)
            {
                 0x86, 0x80, 0x00, 0x00                         
            }, 

            "built-in", 
            Buffer (One)
            {
                 0x00                                           
            }, 

            "compatible", 
            Buffer (0x0D)
            {
                "pci8086,9c83"
            }
        })
    }
}

