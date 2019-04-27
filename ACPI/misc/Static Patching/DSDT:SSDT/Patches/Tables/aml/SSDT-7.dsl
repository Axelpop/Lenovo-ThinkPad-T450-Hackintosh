/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-7.aml, Thu Jan 31 23:19:29 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000369 (873)
 *     Revision         0x02
 *     Checksum         0x69
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CtdpB"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "CtdpB", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_PR_.CPU0._PSS, PkgObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (CTPC, FieldUnitObj)
    External (CTPR, FieldUnitObj)
    External (FTPS, FieldUnitObj)
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (PNHM, FieldUnitObj)
    External (PNTF, MethodObj)    // 1 Arguments

    Scope (\_SB.PCI0)
    {
        OperationRegion (MBAR, SystemMemory, 0xFED15000, 0x1000)
        Field (MBAR, ByteAcc, NoLock, Preserve)
        {
            Offset (0x930), 
            PTDP,   15, 
            Offset (0x932), 
            PMIN,   15, 
            Offset (0x934), 
            PMAX,   15, 
            Offset (0x936), 
            TMAX,   7, 
            Offset (0x938), 
            PWRU,   4, 
            Offset (0x939), 
            EGYU,   5, 
            Offset (0x93A), 
            TIMU,   4, 
            Offset (0x958), 
            Offset (0x95C), 
            LPMS,   1, 
            CTNL,   2, 
            Offset (0x9A0), 
            PPL1,   15, 
            PL1E,   1, 
                ,   1, 
            PL1T,   7, 
            Offset (0x9A4), 
            PPL2,   15, 
            PL2E,   1, 
                ,   1, 
            PL2T,   7, 
            Offset (0xF3C), 
            TARN,   8, 
            Offset (0xF40), 
            PTD1,   15, 
            Offset (0xF42), 
            TAR1,   8, 
            Offset (0xF44), 
            PMX1,   15, 
            Offset (0xF46), 
            PMN1,   15, 
            Offset (0xF48), 
            PTD2,   15, 
            Offset (0xF4A), 
            TAR2,   8, 
            Offset (0xF4C), 
            PMX2,   15, 
            Offset (0xF4E), 
            PMN2,   15, 
            Offset (0xF50), 
            CTCL,   2, 
                ,   29, 
            CLCK,   1, 
            TAR,    8
        }

        Method (CTCU, 0, NotSerialized)
        {
            Store (PTD2, PPL1)
            Store (One, PL1E)
            Store (One, \CTPC)
            If (LEqual (Zero, \FTPS))
            {
                Store (\CTPC, \CTPR)
            }
            ElseIf (LEqual (\CTPR, \FTPS))
            {
                Store (\CTPC, \CTPR)
                Store (\CTPC, \FTPS)
            }
            Else
            {
                Store (\CTPC, \CTPR)
                Store (\CTPC, \FTPS)
                Increment (\FTPS)
            }

            \PNTF (0x80)
            Subtract (TAR2, One, TAR)
            Store (0x02, CTCL)
        }

        Method (CTCN, 0, NotSerialized)
        {
            If (LEqual (CTCL, One))
            {
                Store (PTDP, PPL1)
                Store (One, PL1E)
                NPPC (TARN)
                Subtract (TARN, One, TAR)
                Store (Zero, CTCL)
            }
            ElseIf (LEqual (CTCL, 0x02))
            {
                Store (Zero, CTCL)
                Subtract (TARN, One, TAR)
                NPPC (TARN)
                Store (PTDP, PPL1)
                Store (One, PL1E)
            }
        }

        Method (CTCD, 0, NotSerialized)
        {
            Store (One, CTCL)
            Subtract (TAR1, One, TAR)
            NPPC (TAR1)
            Store (PTD1, PPL1)
            Store (One, PL1E)
        }

        Method (NPPC, 1, NotSerialized)
        {
            Name (TRAT, Zero)
            Name (PRAT, Zero)
            Name (TMPI, Zero)
            Store (Arg0, TRAT)
            Store (SizeOf (\_PR.CPU0._PSS), TMPI)
            While (LNotEqual (TMPI, Zero))
            {
                Decrement (TMPI)
                Store (DerefOf (Index (DerefOf (Index (\_PR.CPU0._PSS, TMPI)), 0x04)), PRAT)
                ShiftRight (PRAT, 0x08, PRAT)
                If (LGreaterEqual (PRAT, TRAT))
                {
                    Store (TMPI, \CTPC)
                    If (LEqual (Zero, \FTPS))
                    {
                        Store (\CTPC, \CTPR)
                    }
                    ElseIf (LEqual (\CTPR, \FTPS))
                    {
                        Store (\CTPC, \CTPR)
                        Store (\CTPC, \FTPS)
                    }
                    Else
                    {
                        Store (\CTPC, \CTPR)
                        Store (\CTPC, \FTPS)
                        Increment (\FTPS)
                    }

                    \PNTF (0x80)
                    Break
                }
            }
        }

        Method (CLC2, 1, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            And (PNHM, 0x0FFF0FF0, Local0)
            While (One)
            {
                Store (Local0, _T_0)
                If (LEqual (_T_0, 0x000306C0))
                {
                    Return (Divide (Multiply (Arg0, 0x05), 0x04, ))
                }
                ElseIf (LEqual (_T_0, 0x00040650))
                {
                    Return (0xC8)
                }
                Else
                {
                    Return (Divide (Multiply (Arg0, 0x05), 0x04, ))
                }

                Break
            }
        }
    }
}

