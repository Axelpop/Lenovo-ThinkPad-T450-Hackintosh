/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-BATC.aml, Sun Feb 24 03:47:18 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000517 (1303)
 *     Revision         0x02
 *     Checksum         0xED
 *     OEM ID           "APPLE "
 *     OEM Table ID     "BATC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "APPLE ", "BATC", 0x00000000)
{
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BAT0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BAT0._BIF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BAT0._BST, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BAT0._HID, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BAT0._STA, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BAT1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BAT1._BIF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BAT1._BST, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BAT1._HID, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BAT1._STA, MethodObj)    // 0 Arguments (from opcode)

    Scope (\_SB.PCI0.LPCB.EC)
    {
        Device (BATC)
        {
            Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (Zero, ^^BAT0._HID)
                Store (Zero, ^^BAT1._HID)
            }

            Method (CVWA, 3, NotSerialized)
            {
                If (Arg2)
                {
                    Divide (Multiply (Arg0, 0x03E8), Arg1, , Arg0)
                }

                Return (Arg0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Or (^^BAT0._STA (), ^^BAT1._STA ()))
            }

            Name (B0CO, Zero)
            Name (B1CO, Zero)
            Name (B0DV, Zero)
            Name (B1DV, Zero)
            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Store (^^BAT0._BST (), Local0)
                Store (^^BAT0._STA (), Local2)
                If (LEqual (0x1F, Local2))
                {
                    Store (DerefOf (Index (Local0, 0x02)), Local4)
                    If (LOr (LNot (Local4), LEqual (Ones, Local4)))
                    {
                        Store (Zero, Local2)
                    }
                }

                Store (^^BAT1._BST (), Local1)
                Store (^^BAT1._STA (), Local3)
                If (LEqual (0x1F, Local3))
                {
                    Store (DerefOf (Index (Local1, 0x02)), Local4)
                    If (LOr (LNot (Local4), LEqual (Ones, Local4)))
                    {
                        Store (Zero, Local3)
                    }
                }

                If (LAnd (LNotEqual (0x1F, Local2), LEqual (0x1F, Local3)))
                {
                    Store (Local1, Local0)
                    Store (Local3, Local2)
                    Store (Zero, Local3)
                }

                If (LAnd (LEqual (0x1F, Local2), LEqual (0x1F, Local3)))
                {
                    Store (DerefOf (Index (Local0, Zero)), Local4)
                    Store (DerefOf (Index (Local1, Zero)), Local5)
                    If (LOr (LEqual (Local4, 0x02), LEqual (Local5, 0x02)))
                    {
                        Store (0x02, Index (Local0, Zero))
                    }
                    ElseIf (LOr (LEqual (Local4, One), LEqual (Local5, One)))
                    {
                        Store (One, Index (Local0, Zero))
                    }
                    ElseIf (LOr (LEqual (Local4, 0x05), LEqual (Local5, 0x05)))
                    {
                        Store (0x05, Index (Local0, Zero))
                    }
                    ElseIf (LOr (LEqual (Local4, 0x04), LEqual (Local5, 0x04)))
                    {
                        Store (0x04, Index (Local0, Zero))
                    }

                    Add (CVWA (DerefOf (Index (Local0, One)), B0DV, B0CO), CVWA (DerefOf (Index (Local1, One)), B1DV, B1CO), Index (Local0, One))
                    Add (CVWA (DerefOf (Index (Local0, 0x02)), B0DV, B0CO), CVWA (DerefOf (Index (Local1, 0x02)), B1DV, B1CO), Index (Local0, 0x02))
                    Divide (Add (DerefOf (Index (Local0, 0x03)), DerefOf (Index (Local1, 0x03))), 0x02, , Index (Local0, 0x03))
                }

                Return (Local0)
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                Store (^^BAT0._BIF (), Local0)
                Store (^^BAT0._STA (), Local2)
                If (LEqual (0x1F, Local2))
                {
                    Store (DerefOf (Index (Local0, One)), Local4)
                    If (LOr (LNot (Local4), LEqual (Ones, Local4)))
                    {
                        Store (Zero, Local2)
                    }

                    Store (DerefOf (Index (Local0, 0x02)), Local4)
                    If (LOr (LNot (Local4), LEqual (Ones, Local4)))
                    {
                        Store (Zero, Local2)
                    }

                    Store (DerefOf (Index (Local0, 0x04)), Local4)
                    If (LOr (LNot (Local4), LEqual (Ones, Local4)))
                    {
                        Store (Zero, Local2)
                    }
                }

                Store (^^BAT1._BIF (), Local1)
                Store (^^BAT1._STA (), Local3)
                If (LEqual (0x1F, Local3))
                {
                    Store (DerefOf (Index (Local1, One)), Local4)
                    If (LOr (LNot (Local4), LEqual (Ones, Local4)))
                    {
                        Store (Zero, Local3)
                    }

                    Store (DerefOf (Index (Local1, 0x02)), Local4)
                    If (LOr (LNot (Local4), LEqual (Ones, Local4)))
                    {
                        Store (Zero, Local3)
                    }

                    Store (DerefOf (Index (Local1, 0x04)), Local4)
                    If (LOr (LNot (Local4), LEqual (Ones, Local4)))
                    {
                        Store (Zero, Local3)
                    }
                }

                If (LAnd (LNotEqual (0x1F, Local2), LEqual (0x1F, Local3)))
                {
                    Store (Local1, Local0)
                    Store (Local3, Local2)
                    Store (Zero, Local3)
                }

                If (LAnd (LEqual (0x1F, Local2), LEqual (0x1F, Local3)))
                {
                    Store (LNot (DerefOf (Index (Local0, Zero))), B0CO)
                    Store (LNot (DerefOf (Index (Local1, Zero))), B1CO)
                    Store (One, Index (Local0, Zero))
                    Store (DerefOf (Index (Local0, 0x04)), B0DV)
                    Store (DerefOf (Index (Local1, 0x04)), B1DV)
                    Add (CVWA (DerefOf (Index (Local0, One)), B0DV, B0CO), CVWA (DerefOf (Index (Local1, One)), B1DV, B1CO), Index (Local0, One))
                    Add (CVWA (DerefOf (Index (Local0, 0x02)), B0DV, B0CO), CVWA (DerefOf (Index (Local1, 0x02)), B1DV, B1CO), Index (Local0, 0x02))
                    Divide (Add (B0DV, B1DV), 0x02, , Index (Local0, 0x04))
                    Add (CVWA (DerefOf (Index (Local0, 0x05)), B0DV, B0CO), CVWA (DerefOf (Index (Local1, 0x05)), B1DV, B1CO), Index (Local0, 0x05))
                    Add (CVWA (DerefOf (Index (Local0, 0x06)), B0DV, B0CO), CVWA (DerefOf (Index (Local1, 0x06)), B1DV, B1CO), Index (Local0, 0x06))
                }

                Return (Local0)
            }
        }
    }
}

