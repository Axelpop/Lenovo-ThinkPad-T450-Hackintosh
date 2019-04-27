/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-BAT.aml, Sun Feb 24 03:47:18 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001766 (5990)
 *     Revision         0x02
 *     Checksum         0x1A
 *     OEM ID           "APPLE "
 *     OEM Table ID     "_BAT"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "APPLE ", "_BAT", 0x00000000)
{
    External (_SB_.IAOE.GAOS, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.IAOE.GSWR, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.LID_, DeviceObj)    // (from opcode)
    External (_SB_.LID_._LID, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.EXP6, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IGPU.GLIS, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.IGPU.STAT, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.IGPU.TCHE, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.IGPU.VRSI, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.AC__._PSR, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.ATMC, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT0._BIF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT0._BST, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT0._HID, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT0._STA, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT1._BIF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT1._BST, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT1._HID, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT1._STA, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BATW, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BRNS, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.EVNT, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.FNST, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HCMU, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HFNI, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HFSP, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HKEY.DHKC, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HKEY.MHKE, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HKEY.MHKQ, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HKEY.WGWK, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HSPA, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HWAC, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.PIBS, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.PLLS, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.PLMS, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.PLSL, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.PLTU, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.SKEM, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.TMP0, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.PR2_, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.PR2M, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.PR3_, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.PR3M, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.XRST, FieldUnitObj)    // (from opcode)
    External (_SB_.SLPB, DeviceObj)    // (from opcode)
    External (_SI_._SST, MethodObj)    // 1 Arguments (from opcode)
    External (_TZ_.THM0, ThermalZoneObj)    // (from opcode)
    External (ACST, FieldUnitObj)    // (from opcode)
    External (AWON, MethodObj)    // 1 Arguments (from opcode)
    External (BATM, MutexObj)    // (from opcode)
    External (BRLV, FieldUnitObj)    // (from opcode)
    External (CHKC, FieldUnitObj)    // (from opcode)
    External (CHKE, FieldUnitObj)    // (from opcode)
    External (CMPR, FieldUnitObj)    // (from opcode)
    External (CSUM, MethodObj)    // 1 Arguments (from opcode)
    External (FNID, FieldUnitObj)    // (from opcode)
    External (HIID, FieldUnitObj)    // (from opcode)
    External (IOEN, FieldUnitObj)    // (from opcode)
    External (IOST, FieldUnitObj)    // (from opcode)
    External (ISCT, FieldUnitObj)    // (from opcode)
    External (ISWK, FieldUnitObj)    // (from opcode)
    External (LIDB, FieldUnitObj)    // (from opcode)
    External (MTAU, FieldUnitObj)    // (from opcode)
    External (NBCF, FieldUnitObj)    // (from opcode)
    External (NVSS, MethodObj)    // 1 Arguments (from opcode)
    External (OSC4, FieldUnitObj)    // (from opcode)
    External (PL1L, FieldUnitObj)    // (from opcode)
    External (PL1M, FieldUnitObj)    // (from opcode)
    External (PNTF, MethodObj)    // 1 Arguments (from opcode)
    External (PWRS, FieldUnitObj)    // (from opcode)
    External (RRBF, FieldUnitObj)    // (from opcode)
    External (SCRM, FieldUnitObj)    // (from opcode)
    External (SPS_, FieldUnitObj)    // (from opcode)
    External (UCMS, MethodObj)    // 1 Arguments (from opcode)
    External (USBR, FieldUnitObj)    // (from opcode)
    External (VBRC, MethodObj)    // 1 Arguments (from opcode)
    External (VBTD, MethodObj)    // 0 Arguments (from opcode)
    External (VCMS, MethodObj)    // 2 Arguments (from opcode)
    External (VIGD, FieldUnitObj)    // (from opcode)
    External (VSLD, MethodObj)    // 1 Arguments (from opcode)
    External (WAKI, DeviceObj)    // (from opcode)
    External (WVIS, FieldUnitObj)    // (from opcode)
    External (XHC_, FieldUnitObj)    // (from opcode)

    Scope (_SB.PCI0.LPC.EC)
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

        OperationRegion (ECR1, EmbeddedControl, Zero, 0x0100)
        Field (ECR1, ByteAcc, NoLock, Preserve)
        {
            Offset (0x36), 
            WAC0,   8, 
            WAC1,   8, 
            Offset (0x4E), 
            WAK0,   8, 
            WAK1,   8, 
            Offset (0x84), 
            SPD0,   8, 
            SPD1,   8
        }

        Field (ECR1, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            BRC0,   8, 
            BRC1,   8, 
            BFC0,   8, 
            BFC1,   8, 
            Offset (0xA8), 
            BAC0,   8, 
            BAC1,   8, 
            BVO0,   8, 
            BVO1,   8
        }

        Field (ECR1, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            BBM0,   8, 
            BBM1,   8, 
            Offset (0xA4), 
            BCC0,   8, 
            BCC1,   8
        }

        Field (ECR1, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            BDC0,   8, 
            BDC1,   8, 
            BDV0,   8, 
            BDV1,   8, 
            Offset (0xAA), 
            BSN0,   8, 
            BSN1,   8
        }

        Field (ECR1, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            BCH0,   8, 
            BCH1,   8, 
            BCH2,   8, 
            BCH3,   8
        }

        Method (GBIF, 3, NotSerialized)
        {
            Acquire (BATM, 0xFFFF)
            If (Arg2)
            {
                Or (Arg0, One, HIID)
                Store (B1B2 (BBM0, BBM1), Local7)
                ShiftRight (Local7, 0x0F, Local7)
                XOr (Local7, One, Index (Arg1, Zero))
                Store (Arg0, HIID)
                If (Local7)
                {
                    Multiply (B1B2 (BFC0, BFC1), 0x0A, Local1)
                }
                Else
                {
                    Store (B1B2 (BFC0, BFC1), Local1)
                }

                Store (Local1, Index (Arg1, 0x02))
                Or (Arg0, 0x02, HIID)
                If (Local7)
                {
                    Multiply (B1B2 (BDC0, BDC1), 0x0A, Local0)
                }
                Else
                {
                    Store (B1B2 (BDC0, BDC1), Local0)
                }

                Store (Local0, Index (Arg1, One))
                Divide (Local1, 0x14, Local2, Index (Arg1, 0x05))
                If (Local7)
                {
                    Store (0xC8, Index (Arg1, 0x06))
                }
                ElseIf (B1B2 (BDV0, BDV1))
                {
                    Divide (0x00030D40, B1B2 (BDV0, BDV1), Local2, Index (Arg1, 0x06))
                }
                Else
                {
                    Store (Zero, Index (Arg1, 0x06))
                }

                Store (B1B2 (BDV0, BDV1), Index (Arg1, 0x04))
                Store (B1B2 (BSN0, BSN1), Local0)
                Name (SERN, Buffer (0x06)
                {
                    "     "
                })
                Store (0x04, Local2)
                While (Local0)
                {
                    Divide (Local0, 0x0A, Local1, Local0)
                    Add (Local1, 0x30, Index (SERN, Local2))
                    Decrement (Local2)
                }

                Store (SERN, Index (Arg1, 0x0A))
                Or (Arg0, 0x06, HIID)
                Store (RECB (0xA0, 0x80), Index (Arg1, 0x09))
                Or (Arg0, 0x04, HIID)
                Name (BTYP, Buffer (0x05)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00                   
                })
                Store (B1B4 (BCH0, BCH1, BCH2, BCH3), BTYP)
                Store (BTYP, Index (Arg1, 0x0B))
                Or (Arg0, 0x05, HIID)
                Store (RECB (0xA0, 0x80), Index (Arg1, 0x0C))
            }
            Else
            {
                Store (0xFFFFFFFF, Index (Arg1, One))
                Store (Zero, Index (Arg1, 0x05))
                Store (Zero, Index (Arg1, 0x06))
                Store (0xFFFFFFFF, Index (Arg1, 0x02))
            }

            Release (BATM)
            Return (Arg1)
        }

        Method (GBST, 4, NotSerialized)
        {
            Acquire (BATM, 0xFFFF)
            If (And (Arg1, 0x20))
            {
                Store (0x02, Local0)
            }
            ElseIf (And (Arg1, 0x40))
            {
                Store (One, Local0)
            }
            Else
            {
                Store (Zero, Local0)
            }

            If (And (Arg1, 0x07)) {}
            Else
            {
                Or (Local0, 0x04, Local0)
            }

            If (LEqual (And (Arg1, 0x07), 0x07))
            {
                Store (0x04, Local0)
                Store (Zero, Local1)
                Store (Zero, Local2)
                Store (Zero, Local3)
            }
            Else
            {
                Store (Arg0, HIID)
                Store (B1B2 (BVO0, BVO1), Local3)
                If (Arg2)
                {
                    Multiply (B1B2 (BRC0, BRC1), 0x0A, Local2)
                }
                Else
                {
                    Store (B1B2 (BRC0, BRC1), Local2)
                }

                Store (B1B2 (BAC0, BAC1), Local1)
                If (LGreaterEqual (Local1, 0x8000))
                {
                    If (And (Local0, One))
                    {
                        Subtract (0x00010000, Local1, Local1)
                    }
                    Else
                    {
                        Store (Zero, Local1)
                    }
                }
                ElseIf (LNot (And (Local0, 0x02)))
                {
                    Store (Zero, Local1)
                }

                If (Arg2)
                {
                    Multiply (Local1, Local3, Local1)
                    Divide (Local1, 0x03E8, Local7, Local1)
                }
            }

            Store (Local0, Index (Arg3, Zero))
            Store (Local1, Index (Arg3, One))
            Store (Local2, Index (Arg3, 0x02))
            Store (Local3, Index (Arg3, 0x03))
            Release (BATM)
            Return (Arg3)
        }

        Method (\_WAK, 1, NotSerialized)  // _WAK: Wake
        {
            Store (Zero, \SPS)
            Store (Zero, \_SB.PCI0.LPC.EC.HCMU)
            \_SB.PCI0.LPC.EC.EVNT (One)
            \_SB.PCI0.LPC.EC.HKEY.MHKE (One)
            \_SB.PCI0.LPC.EC.FNST ()
            \UCMS (0x0D)
            Store (Zero, \LIDB)
            \_SB.PCI0.IGPU.VRSI ()
            If (LEqual (Arg0, One))
            {
                Store (\_SB.PCI0.LPC.EC.HFNI (), \FNID)
            }

            If (LEqual (Arg0, 0x03))
            {
                \NVSS (Zero)
                \_SI._SST (One)
                Store (\_SB.PCI0.LPC.EC.AC._PSR (), \PWRS)
                If (\OSC4)
                {
                    \PNTF (0x81)
                }

                If (LNotEqual (\ACST, \_SB.PCI0.LPC.EC.AC._PSR ()))
                {
                    \_SB.PCI0.LPC.EC.ATMC ()
                }

                If (\SCRM)
                {
                    Store (0x07, \_SB.PCI0.LPC.EC.HFSP)
                    If (\MTAU)
                    {
                        Store (0x03E8, Local2)
                        While (LAnd (\_SB.PCI0.LPC.EC.PIBS, Local2))
                        {
                            Sleep (One)
                            Decrement (Local2)
                        }

                        If (Local2)
                        {
                            Store (One, \_SB.PCI0.LPC.EC.PLSL)
                            Store (\MTAU, \_SB.PCI0.LPC.EC.PLTU)
                            Store (\PL1L, \_SB.PCI0.LPC.EC.PLLS)
                            Store (\PL1M, \_SB.PCI0.LPC.EC.PLMS)
                        }
                    }
                }

                Store (Zero, \IOEN)
                Store (Zero, \IOST)
                If (LEqual (\ISWK, One))
                {
                    If (\_SB.PCI0.LPC.EC.HKEY.DHKC ())
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6070)
                    }
                }

                If (\VIGD)
                {
                    \_SB.PCI0.IGPU.GLIS (\_SB.LID._LID ())
                    If (\WVIS)
                    {
                        \VBTD ()
                    }
                }
                ElseIf (\WVIS)
                {
                    \_SB.PCI0.IGPU.GLIS (\_SB.LID._LID ())
                    \VBTD ()
                }

                \VCMS (One, \_SB.LID._LID ())
                \AWON (Zero)
                If (\CMPR)
                {
                    Notify (\_SB.SLPB, 0x02)
                    Store (Zero, \CMPR)
                }

                If (LOr (\USBR, \_SB.PCI0.XHC.XRST))
                {
                    If (LOr (LEqual (\XHC, 0x02), LEqual (\XHC, 0x03)))
                    {
                        Store (Zero, Local0)
                        And (\_SB.PCI0.XHC.PR3, 0xFFFFFFC0, Local0)
                        Or (\_SB.PCI0.XHC.PR3, Local0, \_SB.PCI0.XHC.PR3)
                        Store (Zero, Local0)
                        And (\_SB.PCI0.XHC.PR2, 0xFFFF8000, Local0)
                        Or (\_SB.PCI0.XHC.PR2, Local0, \_SB.PCI0.XHC.PR2)
                    }
                }

                If (LNotEqual (\ISCT, Zero))
                {
                    If (\VIGD)
                    {
                        If (And (\_SB.PCI0.IGPU.TCHE (), 0x0100))
                        {
                            If (And (\_SB.IAOE.GAOS (), One))
                            {
                                If (And (\_SB.IAOE.GSWR (), 0x02))
                                {
                                    Or (And (\_SB.PCI0.IGPU.STAT, 0xFFFFFFFFFFFFFFFC), One, \_SB.PCI0.IGPU.STAT)
                                    Store (One, \_SB.PCI0.LPC.EC.SKEM)
                                }
                            }
                        }
                    }
                }
            }

            If (LEqual (Arg0, 0x04))
            {
                \NVSS (Zero)
                Store (Zero, \_SB.PCI0.LPC.EC.HSPA)
                Store (\_SB.PCI0.LPC.EC.AC._PSR (), \PWRS)
                If (\OSC4)
                {
                    \PNTF (0x81)
                }

                \_SB.PCI0.LPC.EC.ATMC ()
                If (\SCRM)
                {
                    Store (0x07, \_SB.PCI0.LPC.EC.HFSP)
                    If (\MTAU)
                    {
                        Store (0x03E8, Local2)
                        While (LAnd (\_SB.PCI0.LPC.EC.PIBS, Local2))
                        {
                            Sleep (One)
                            Decrement (Local2)
                        }

                        If (Local2)
                        {
                            Store (One, \_SB.PCI0.LPC.EC.PLSL)
                            Store (\MTAU, \_SB.PCI0.LPC.EC.PLTU)
                            Store (\PL1L, \_SB.PCI0.LPC.EC.PLLS)
                            Store (\PL1M, \_SB.PCI0.LPC.EC.PLMS)
                        }
                    }
                }

                If (LNot (\NBCF))
                {
                    If (\VIGD)
                    {
                        \_SB.PCI0.LPC.EC.BRNS ()
                    }
                    Else
                    {
                        \VBRC (\BRLV)
                    }
                }

                Store (Zero, \IOEN)
                Store (Zero, \IOST)
                If (LEqual (\ISWK, 0x02))
                {
                    If (\_SB.PCI0.LPC.EC.HKEY.DHKC ())
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6080)
                    }
                }

                If (\_SB.PCI0.XHC.XRST)
                {
                    If (LOr (LEqual (\XHC, 0x02), LEqual (\XHC, 0x03)))
                    {
                        Store (Zero, Local0)
                        And (\_SB.PCI0.XHC.PR3, 0xFFFFFFC0, Local0)
                        Or (\_SB.PCI0.XHC.PR3, Local0, \_SB.PCI0.XHC.PR3)
                        Store (Zero, Local0)
                        And (\_SB.PCI0.XHC.PR2, 0xFFFF8000, Local0)
                        Or (\_SB.PCI0.XHC.PR2, Local0, \_SB.PCI0.XHC.PR2)
                    }
                }
            }

            \_SB.PCI0.LPC.EC.BATW (Arg0)
            \_SB.PCI0.LPC.EC.HKEY.WGWK (Arg0)
            Notify (\_TZ.THM0, 0x80)
            \VSLD (\_SB.LID._LID ())
            If (\VIGD)
            {
                \_SB.PCI0.IGPU.GLIS (\_SB.LID._LID ())
            }
            ElseIf (\WVIS)
            {
                \_SB.PCI0.IGPU.GLIS (\_SB.LID._LID ())
            }

            If (LLess (Arg0, 0x04))
            {
                If (LOr (And (\RRBF, 0x02), And (B1B2 (\_SB.PCI0.LPC.EC.WAC0, \_SB.PCI0.LPC.EC.WAC1), 0x02)))
                {
                    ShiftLeft (Arg0, 0x08, Local0)
                    Or (0x2013, Local0, Local0)
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (Local0)
                }
            }

            If (LEqual (Arg0, 0x04))
            {
                Store (Zero, Local0)
                Store (\CSUM (Zero), Local1)
                If (LNotEqual (Local1, \CHKC))
                {
                    Store (One, Local0)
                    Store (Local1, \CHKC)
                }

                Store (\CSUM (One), Local1)
                If (LNotEqual (Local1, \CHKE))
                {
                    Store (One, Local0)
                    Store (Local1, \CHKE)
                }

                If (Local0)
                {
                    Notify (\_SB, Zero)
                }
            }

            Store (Zero, \RRBF)
            Return (WAKI)
        }

        Device (SMCD)
        {
            Name (_HID, "MON0000")  // _HID: Hardware ID
            Method (FAN0, 0, NotSerialized)
            {
                Store (B1B2 (\_SB.PCI0.LPC.EC.SPD0, \_SB.PCI0.LPC.EC.SPD1), Local0)
                Return (Local0)
            }
        }

        Method (RE1B, 1, NotSerialized)
        {
            OperationRegion (ERAM, EmbeddedControl, Arg0, One)
            Field (ERAM, ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }

            Return (BYTE)
        }

        Method (RECB, 2, Serialized)
        {
            ShiftRight (Add (Arg1, 0x07), 0x03, Arg1)
            Name (TEMP, Buffer (Arg1) {})
            Add (Arg1, Arg0, Arg1)
            Store (Zero, Local0)
            While (LLess (Arg0, Arg1))
            {
                Store (RE1B (Arg0), Index (TEMP, Local0))
                Increment (Arg0)
                Increment (Local0)
            }

            Return (TEMP)
        }

        Method (WE1B, 2, NotSerialized)
        {
            OperationRegion (ERAM, EmbeddedControl, Arg0, One)
            Field (ERAM, ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }

            Store (Arg1, BYTE)
        }

        Method (WECB, 3, Serialized)
        {
            ShiftRight (Add (Arg1, 0x07), 0x03, Arg1)
            Name (TEMP, Buffer (Arg1) {})
            Store (Arg2, TEMP)
            Add (Arg1, Arg0, Arg1)
            Store (Zero, Local0)
            While (LLess (Arg0, Arg1))
            {
                WE1B (Arg0, DerefOf (Index (TEMP, Local0)))
                Increment (Arg0)
                Increment (Local0)
            }
        }
    }

    Method (B1B2, 2, NotSerialized)
    {
        Return (Or (Arg0, ShiftLeft (Arg1, 0x08)))
    }

    Method (B1B4, 4, NotSerialized)
    {
        Store (Arg3, Local0)
        Or (Arg2, ShiftLeft (Local0, 0x08), Local0)
        Or (Arg1, ShiftLeft (Local0, 0x08), Local0)
        Or (Arg0, ShiftLeft (Local0, 0x08), Local0)
        Return (Local0)
    }

    Scope (_GPE)
    {
        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (B1B2 (\_SB.PCI0.LPC.EC.WAC0, \_SB.PCI0.LPC.EC.WAC1), Local0)
            Store (Local0, \RRBF)
            Sleep (0x0A)
            If (And (Local0, 0x02)) {}
            If (And (Local0, 0x04))
            {
                Notify (\_SB.LID, 0x02)
            }

            If (And (Local0, 0x08))
            {
                Notify (\_SB.SLPB, 0x02)
            }

            If (And (Local0, 0x10))
            {
                Notify (\_SB.SLPB, 0x02)
            }

            If (And (Local0, 0x40)) {}
            If (And (Local0, 0x80))
            {
                Notify (\_SB.SLPB, 0x02)
            }
        }
    }
}

