/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-MSAT.aml, Sun Feb 24 04:21:56 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000014E (334)
 *     Revision         0x02
 *     Checksum         0x19
 *     OEM ID           "APPLE "
 *     OEM Table ID     "AHCI"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "APPLE ", "AHCI", 0x00001000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
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
            Buffer (0x13)
            {
                "M.2 SSD Controller"
            }
        })
    }
}

