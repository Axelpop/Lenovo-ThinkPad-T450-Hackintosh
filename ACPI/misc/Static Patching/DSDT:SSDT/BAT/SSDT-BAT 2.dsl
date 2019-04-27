/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLDl9GKO.aml, Sat Feb 23 13:47:27 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001766 (5990)
 *     Revision         0x02
 *     Checksum         0x70
 *     OEM ID           "APPLE"
 *     OEM Table ID     "_BAT"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190108 (538509576)
 */
DefinitionBlock ("", "SSDT", 2, "APPLE", "_BAT", 0x00000000)
{
    External (_SB_.IAOE.GAOS, MethodObj)    // 0 Arguments
    External (_SB_.IAOE.GSWR, MethodObj)    // 0 Arguments
    External (_SB_.LID_, DeviceObj)
    External (_SB_.LID_._LID, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.EXP6, DeviceObj)
    External (_SB_.PCI0.IGPU.GLIS, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.IGPU.STAT, FieldUnitObj)
    External (_SB_.PCI0.IGPU.TCHE, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.VRSI, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC.EC__, DeviceObj)
    External (_SB_.PCI0.LPC.EC__.AC__._PSR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC.EC__.ATMC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC.EC__.BAT0, DeviceObj)
    External (_SB_.PCI0.LPC.EC__.BAT0._BIF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC.EC__.BAT0._BST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC.EC__.BAT0._HID, IntObj)
    External (_SB_.PCI0.LPC.EC__.BAT0._STA, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC.EC__.BAT1, DeviceObj)
    External (_SB_.PCI0.LPC.EC__.BAT1._BIF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC.EC__.BAT1._BST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC.EC__.BAT1._HID, IntObj)
    External (_SB_.PCI0.LPC.EC__.BAT1._STA, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC.EC__.BATW, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPC.EC__.BRNS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC.EC__.EVNT, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPC.EC__.FNST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC.EC__.HCMU, FieldUnitObj)
    External (_SB_.PCI0.LPC.EC__.HFNI, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC.EC__.HFSP, FieldUnitObj)
    External (_SB_.PCI0.LPC.EC__.HKEY.DHKC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC.EC__.HKEY.MHKE, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPC.EC__.HKEY.MHKQ, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPC.EC__.HKEY.WGWK, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPC.EC__.HSPA, FieldUnitObj)
    External (_SB_.PCI0.LPC.EC__.HWAC, FieldUnitObj)
    External (_SB_.PCI0.LPC.EC__.PIBS, FieldUnitObj)
    External (_SB_.PCI0.LPC.EC__.PLLS, FieldUnitObj)
    External (_SB_.PCI0.LPC.EC__.PLMS, FieldUnitObj)
    External (_SB_.PCI0.LPC.EC__.PLSL, FieldUnitObj)
    External (_SB_.PCI0.LPC.EC__.PLTU, FieldUnitObj)
    External (_SB_.PCI0.LPC.EC__.SKEM, FieldUnitObj)
    External (_SB_.PCI0.LPC.EC__.TMP0, FieldUnitObj)
    External (_SB_.PCI0.XHC_.PR2_, FieldUnitObj)
    External (_SB_.PCI0.XHC_.PR2M, FieldUnitObj)
    External (_SB_.PCI0.XHC_.PR3_, FieldUnitObj)
    External (_SB_.PCI0.XHC_.PR3M, FieldUnitObj)
    External (_SB_.PCI0.XHC_.XRST, FieldUnitObj)
    External (_SB_.SLPB, DeviceObj)
    External (_SI_._SST, MethodObj)    // 1 Arguments
    External (_TZ_.THM0, ThermalZoneObj)
    External (ACST, FieldUnitObj)
    External (AWON, MethodObj)    // 1 Arguments
    External (BATM, MutexObj)
    External (BRLV, FieldUnitObj)
    External (CHKC, FieldUnitObj)
    External (CHKE, FieldUnitObj)
    External (CMPR, FieldUnitObj)
    External (CSUM, MethodObj)    // 1 Arguments
    External (FNID, FieldUnitObj)
    External (HIID, FieldUnitObj)
    External (IOEN, FieldUnitObj)
    External (IOST, FieldUnitObj)
    External (ISCT, FieldUnitObj)
    External (ISWK, FieldUnitObj)
    External (LIDB, FieldUnitObj)
    External (MTAU, FieldUnitObj)
    External (NBCF, FieldUnitObj)
    External (NVSS, MethodObj)    // 1 Arguments
    External (OSC4, FieldUnitObj)
    External (PL1L, FieldUnitObj)
    External (PL1M, FieldUnitObj)
    External (PNTF, MethodObj)    // 1 Arguments
    External (PWRS, FieldUnitObj)
    External (RRBF, FieldUnitObj)
    External (SCRM, FieldUnitObj)
    External (SPS_, FieldUnitObj)
    External (UCMS, MethodObj)    // 1 Arguments
    External (USBR, FieldUnitObj)
    External (VBRC, MethodObj)    // 1 Arguments
    External (VBTD, MethodObj)    // 0 Arguments
    External (VCMS, MethodObj)    // 2 Arguments
    External (VIGD, FieldUnitObj)
    External (VSLD, MethodObj)    // 1 Arguments
    External (WAKI, DeviceObj)
    External (WVIS, FieldUnitObj)
    External (XHC_, FieldUnitObj)


    Name (SPS, Zero)
    Name (OSIF, Zero)
    Name (WNTF, Zero)
    Name (WXPF, Zero)
    Name (WVIS, Zero)
    Name (WIN7, Zero)
    Name (WIN8, Zero)
    Name (WSPV, Zero)
    Name (LNUX, Zero)
    Name (H8DR, Zero)
    Name (MEMX, Zero)
    Name (OCST, Zero)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (FNID, Zero)
    Name (RRBF, Zero)
    Name (NBCF, Zero)
    
    Scope (_SB.PCI0.LPC.EC)
    {
        Device (BATC)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = ^^BAT0.XSTA ()
                Local1 = ^^BAT1.XSTA ()
                If (((Local0 == 0x1F) || (Local1 == 0x1F)))
                {
                    Local3 = 0x1F
                }
                Else
                {
                    Local3 = 0x0F
                }

                Return (Local3)
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Local0 = ^^BAT0.XSTA ()
                If ((Local0 == 0x1F))
                {
                    Local0 = ^^BAT0._BST ()
                    \RMDT.P2 ("BATC._BST: BAT0._BST: ", Local0)
                    Local1 = ^^BAT1.XSTA ()
                    If ((Local1 == 0x1F))
                    {
                        Local1 = ^^BAT1._BST ()
                        \RMDT.P2 ("BATC._BST: BAT1._BST: ", Local1)
                        Local2 = DerefOf (Local0 [Zero])
                        Local3 = DerefOf (Local1 [Zero])
                        If (((Local2 == 0x02) || (Local3 == 0x02)))
                        {
                Local0 [Zero] = 0x02
                        }
                        ElseIf (((Local2 == One) || (Local3 == One)))
                        {
                Local0 [Zero] = One
                        }
                        ElseIf (((Local2 == 0x05) || (Local3 == 0x05)))
                        {
                Local0 [Zero] = 0x05
                        }
                        ElseIf (((Local2 == 0x04) || (Local3 == 0x04)))
                        {
                Local0 [Zero] = 0x04
                        }
                        Else
                        {
                Local0 [Zero] = Local2
                        }

                        Local2 = DerefOf (Local0 [One])
                        Local3 = DerefOf (Local1 [One])
                        Local0 [One] = (Local2 + Local3)
                        Local2 = DerefOf (Local0 [0x02])
                        Local3 = DerefOf (Local1 [0x02])
                        Local0 [0x02] = (Local2 + Local3)
                        Local2 = DerefOf (Local0 [0x03])
                        Local3 = DerefOf (Local1 [0x03])
                        Local0 [0x03] = ((Local2 + Local3) / 0x02)
                    }

                    \RMDT.P2 ("BATC._BST: BATC._BST: ", Local0)
                    Return (Local0)
                }
                Else
                {
                    Return (^^BAT0._BST ())
                }
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                Local0 = ^^BAT0.XSTA ()
                If ((Local0 == 0x1F))
                {
                    Local0 = ^^BAT0._BIF ()
                    \RMDT.P2 ("BATC._BIF: BAT0._BIF: ", Local0)
                    Local1 = ^^BAT1.XSTA ()
                    If ((Local1 == 0x1F))
                    {
                        Local1 = ^^BAT1._BIF ()
                        \RMDT.P2 ("BATC._BIF: BAT1._BIF: ", Local1)
                        Local2 = DerefOf (Local0 [One])
                        Local3 = DerefOf (Local1 [One])
                        Local0 [One] = (Local2 + Local3)
                        Local2 = DerefOf (Local0 [0x02])
                        Local3 = DerefOf (Local1 [0x02])
                        Local0 [0x02] = (Local2 + Local3)
                        Local2 = DerefOf (Local0 [0x05])
                        Local3 = DerefOf (Local1 [0x05])
                        Local0 [0x05] = (Local2 + Local3)
                        Local2 = DerefOf (Local0 [0x06])
                        Local3 = DerefOf (Local1 [0x06])
                        Local0 [0x06] = (Local2 + Local3)
                    }

                    \RMDT.P2 ("BATC._BIF: BATC._BIF: ", Local0)
                    Return (Local0)
                }
                Else
                {
                    Return (^^BAT0._BIF ())
                }
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
        
        Device (BAT0)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Name (B0ST, Zero)
            Name (BT0I, Package (0x0D)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0x2A30, 
                Zero, 
                Zero, 
                One, 
                One, 
                "", 
                "", 
                "", 
                ""
            })
            Name (BT0P, Package (0x04){})
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            Method (XSTA, 0, NotSerialized)
            {
                If (H8DR)
                {
                    B0ST = HB0A /* \_SB_.PCI0.LPC_.EC__.HB0A */
                }
                ElseIf ((RBEC (0x38) & 0x80))
                {
                    B0ST = One
                }
                Else
                {
                    B0ST = Zero
                }

                If (B0ST)
                {
                    Return (0x1F)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                Local7 = Zero
                Local6 = 0x0A
                While ((!Local7 && Local6))
                {
                    If (HB0A)
                    {
                        If (((HB0S & 0x07) == 0x07))
                        {
                Sleep (0x03E8)
                Local6--
                        }
                        Else
                        {
                Local7 = One
                        }
                    }
                    Else
                    {
                        Local6 = Zero
                    }
                }

                Return (GBIF (Zero, BT0I, Local7))
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Local0 = (DerefOf (BT0I [Zero]) ^ One)
                Return (GBST (Zero, HB0S, Local0, BT0P))
            }

            Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
            {
                HAM4 &= 0xEF
                If (Arg0)
                {
                    Local1 = Arg0
                    If (!DerefOf (BT0I [Zero]))
                    {
                        Divide (Local1, 0x0A, Local0, Local1)
                    }

                    HT0L = (Local1 & 0xFF)
                    HT0H = ((Local1 >> 0x08) & 0xFF)
                    HAM4 |= 0x10
                }
            }
        }

        Device (BAT1)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Name (B1ST, Zero)
            Name (SBLI, One)
            Name (XB1S, Zero)
            Name (BT1I, Package (0x0D)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0x2A30, 
                Zero, 
                Zero, 
                One, 
                One, 
                "", 
                "", 
                "", 
                ""
            })
            Name (BT1P, Package (0x04){})
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            Method (XSTA, 0, NotSerialized)
            {
                If (H8DR)
                {
                    If (HB1A)
                    {
                        B1ST = One
                        If (BT2T)
                        {
                If (SLUL)
                {
                    SBLI = One
                    XB1S = Zero
                }
                Else
                {
                    SBLI = Zero
                    XB1S = One
                }
                        }
                        Else
                        {
                XB1S = One
                        }
                    }
                    Else
                    {
                        B1ST = Zero
                        If (BT2T)
                        {
                SBLI = One
                XB1S = Zero
                        }
                        Else
                        {
                XB1S = Zero
                        }
                    }
                }
                ElseIf ((RBEC (0x39) & 0x80))
                {
                    B1ST = One
                    If (BT2T)
                    {
                        If ((RBEC (0x49) & One))
                        {
                SBLI = One
                XB1S = Zero
                        }
                        Else
                        {
                SBLI = Zero
                XB1S = One
                        }
                    }
                    Else
                    {
                        XB1S = One
                    }
                }
                Else
                {
                    B1ST = Zero
                    If (BT2T)
                    {
                        SBLI = One
                        XB1S = Zero
                    }
                    Else
                    {
                        XB1S = Zero
                    }
                }

                If (B1ST)
                {
                    If (XB1S)
                    {
                        Return (0x1F)
                    }
                    ElseIf (WNTF)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x1F)
                    }
                }
                ElseIf (WNTF)
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                Local7 = Zero
                Local6 = 0x0A
                While ((!Local7 && Local6))
                {
                    If (HB1A)
                    {
                        If (((HB1S & 0x07) == 0x07))
                        {
                Sleep (0x03E8)
                Local6--
                        }
                        Else
                        {
                Local7 = One
                        }
                    }
                    Else
                    {
                        Local6 = Zero
                    }
                }

                Return (GBIF (0x10, BT1I, Local7))
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Local0 = (DerefOf (BT1I [Zero]) ^ One)
                Return (GBST (0x10, HB1S, Local0, BT1P))
            }

            Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
            {
                HAM4 &= 0xDF
                If (Arg0)
                {
                    Local1 = Arg0
                    If (!DerefOf (BT1I [Zero]))
                    {
                        Divide (Local1, 0x0A, Local0, Local1)
                    }

                    HT1L = (Local1 & 0xFF)
                    HT1H = ((Local1 >> 0x08) & 0xFF)
                    HAM4 |= 0x20
                }
            }
        }
    }
        
    Device (RMDT)
    {
        
        Name (_HID, "RMD0000")  // _HID: Hardware ID
        Name (RING, Package (0x0100){})
        Mutex (RTMX, 0x00)
        Name (HEAD, Zero)
        Name (TAIL, Zero)
        Method (PUSH, 1, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Local0 = (HEAD + One)
            If ((Local0 >= SizeOf (RING)))
            {
                Local0 = Zero
            }

            If ((Local0 != TAIL))
            {
                RING [HEAD] = Arg0
                HEAD = Local0
            }

            Release (RTMX)
            Notify (RMDT, 0x80) // Status Change
        }

        Method (FTCH, 0, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Local0 = Zero
            If ((HEAD != TAIL))
            {
                Local0 = DerefOf (RING [TAIL])
                TAIL++
                If ((TAIL >= SizeOf (RING)))
                {
                    TAIL = Zero
                }
            }

            Release (RTMX)
            Return (Local0)
        }

        Method (COUN, 0, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Local0 = (HEAD - TAIL) /* \RMDT.TAIL */
            If ((Local0 < Zero))
            {
                Local0 += SizeOf (RING)
            }

            Release (RTMX)
            Return (Local0)
        }

        Method (P1, 1, NotSerialized)
        {
            PUSH (Arg0)
        }

        Method (P2, 2, Serialized)
        {
            Name (TEMP, Package (0x02){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            PUSH (TEMP)
        }

        Method (P3, 3, Serialized)
        {
            Name (TEMP, Package (0x03){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            TEMP [0x02] = Arg2
            PUSH (TEMP)
        }

        Method (P4, 4, Serialized)
        {
            Name (TEMP, Package (0x04){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            TEMP [0x02] = Arg2
            TEMP [0x03] = Arg3
            PUSH (TEMP)
        }

        Method (P5, 5, Serialized)
        {
            Name (TEMP, Package (0x05){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            TEMP [0x02] = Arg2
            TEMP [0x03] = Arg3
            TEMP [0x04] = Arg4
            PUSH (TEMP)
        }

        Method (P6, 6, Serialized)
        {
            Name (TEMP, Package (0x06){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            TEMP [0x02] = Arg2
            TEMP [0x03] = Arg3
            TEMP [0x04] = Arg4
            TEMP [0x05] = Arg5
            PUSH (TEMP)
        }

        Method (P7, 7, Serialized)
        {
            Name (TEMP, Package (0x07){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            TEMP [0x02] = Arg2
            TEMP [0x03] = Arg3
            TEMP [0x04] = Arg4
            TEMP [0x05] = Arg5
            TEMP [0x06] = Arg6
            PUSH (TEMP)
     
        }
    }
}      
    
    
  
        