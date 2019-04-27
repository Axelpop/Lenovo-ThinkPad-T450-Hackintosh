/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-MCHC.aml, Sun Feb 24 04:21:56 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000005D (93)
 *     Revision         0x02
 *     Checksum         0x38
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "MCHC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190108 (538509576)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "MCHC", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.MCHC, DeviceObj)    // (from opcode)

    Device (_SB.PCI0.MCHC)
    {
        Name (_ADR, Zero)  // _ADR: Address
    }
}

