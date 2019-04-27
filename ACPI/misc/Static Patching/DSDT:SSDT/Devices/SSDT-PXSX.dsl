/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-PXSX.aml, Sun Feb 24 04:21:56 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000B4 (180)
 *     Revision         0x02
 *     Checksum         0x5A
 *     OEM ID           "APPLE "
 *     OEM Table ID     "PXSX"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "APPLE ", "PXSX", 0x00000000)
{
    External (_SB_.PCI0.RP01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP02, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP03, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0.RP01)
    {
        Device (PXSX)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }
    }

    Scope (_SB.PCI0.RP02)
    {
        Device (ARPT)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }
    }

    Scope (_SB.PCI0.RP03)
    {
        Device (LAN0)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }
    }
}

