/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-WAK.aml, Sun Feb 24 04:15:57 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000005F (95)
 *     Revision         0x02
 *     Checksum         0x49
 *     OEM ID           "APPLE "
 *     OEM Table ID     "WAK"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "APPLE ", "WAK", 0x00000000)
{
    External (_SI_._SST, MethodObj)    // 1 Arguments (from opcode)
    External (XWAK, MethodObj)    // 1 Arguments (from opcode)

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            \_SI._SST (One)
        }

        Return (XWAK (Arg0))
    }
}

