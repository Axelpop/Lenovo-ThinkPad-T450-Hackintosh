/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-HDAU.aml, Sun Feb 24 04:21:56 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000147 (327)
 *     Revision         0x02
 *     Checksum         0x79
 *     OEM ID           "APPLE "
 *     OEM Table ID     "_HDAU"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190108 (538509576)
 */
DefinitionBlock ("", "SSDT", 2, "APPLE ", "_HDAU", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HDAU, DeviceObj)    // (from opcode)
    External (RMCF.AUDL, IntObj)    // (from opcode)
    External (RMCF.DAUD, IntObj)    // (from opcode)
    External (RMDA, IntObj)    // (from opcode)

    Scope (_SB.PCI0.HDAU)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (CondRefOf (\RMCF.AUDL))
            {
                If (LEqual (Ones, \RMCF.AUDL))
                {
                    Return (Zero)
                }
            }

            If (LNot (Arg2))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Store (Package (0x04)
                {
                    "layout-id", 
                    Buffer (0x04)
                    {
                         0x07, 0x00, 0x00, 0x00                         
                    }, 

                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-1"
                    }
                }, Local0)
            If (CondRefOf (\RMCF.AUDL))
            {
                CreateDWordField (DerefOf (Index (Local0, One)), Zero, AUDL)
                Store (\RMCF.AUDL, AUDL)
            }

            Store (Zero, Local1)
            If (CondRefOf (\RMDA))
            {
                Store (One, Local1)
            }

            If (CondRefOf (\RMCF.DAUD))
            {
                If (LEqual (Zero, \RMCF.DAUD))
                {
                    Store (One, Local1)
                }
            }

            If (Local1)
            {
                Store ("#hda-gfx", Index (Local0, 0x02))
            }

            Return (Local0)
        }
    }
}

