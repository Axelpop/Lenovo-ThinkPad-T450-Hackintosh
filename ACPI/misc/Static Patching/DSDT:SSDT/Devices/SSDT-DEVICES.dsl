/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-DEVICES.aml, Mon Feb 18 18:48:10 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000005CC (1484)
 *     Revision         0x02
 *     Checksum         0xBA
 *     OEM ID           "APPLE "
 *     OEM Table ID     "DEVICES"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190108 (538509576)
 */
DefinitionBlock ("", "SSDT", 2, "APPLE ", "DEVICES", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IMEI, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.MCHC, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.PMEE, FieldUnitObj)    // (from opcode)
    External (_SI_._SST, MethodObj)    // 1 Arguments (from opcode)
    External (RMCF.DWOU, IntObj)    // (from opcode)
    External (XPRW, MethodObj)    // 2 Arguments (from opcode)
    External (ZPTS, MethodObj)    // 1 Arguments (from opcode)
    External (ZWAK, MethodObj)    // 1 Arguments (from opcode)

    Method (XOSI, 1, NotSerialized)
    {
        Store (Package (0x0E)
            {
                "Windows", 
                "Windows 2001", 
                "Windows 2001 SP2", 
                "Windows 2006", 
                "Windows 2006 SP1", 
                "Windows 2006.1", 
                "Windows 2009", 
                "Windows 2012", 
                "Windows 2013", 
                "Windows 2015", 
                "Windows 2016", 
                "Windows 2017", 
                "Windows 2017.2", 
                "Windows 2018"
            }, Local0)
        Return (LNotEqual (Ones, Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
    }

    Method (GPRW, 2, NotSerialized)
    {
        While (One)
        {
            If (CondRefOf (\RMCF.DWOU))
            {
                If (LNot (\RMCF.DWOU))
                {
                    Break
                }
            }

            If (LEqual (0x6D, Arg0))
            {
                Return (Package (0x02)
                {
                    0x6D, 
                    Zero
                })
            }

            If (LEqual (0x0D, Arg0))
            {
                Return (Package (0x02)
                {
                    0x0D, 
                    Zero
                })
            }

            Break
        }

        Return (XPRW (Arg0, Arg1))
    }

    Device (RMDT)
    {
        Name (_HID, "RMD0000")  // _HID: Hardware ID
        Name (RING, Package (0x0100) {})
        Mutex (RTMX, 0x00)
        Name (HEAD, Zero)
        Name (TAIL, Zero)
        Method (PUSH, 1, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Add (HEAD, One, Local0)
            If (LGreaterEqual (Local0, SizeOf (RING)))
            {
                Store (Zero, Local0)
            }

            If (LNotEqual (Local0, TAIL))
            {
                Store (Arg0, Index (RING, HEAD))
                Store (Local0, HEAD)
            }

            Release (RTMX)
            Notify (RMDT, 0x80)
        }

        Method (FTCH, 0, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Store (Zero, Local0)
            If (LNotEqual (HEAD, TAIL))
            {
                Store (DerefOf (Index (RING, TAIL)), Local0)
                Increment (TAIL)
                If (LGreaterEqual (TAIL, SizeOf (RING)))
                {
                    Store (Zero, TAIL)
                }
            }

            Release (RTMX)
            Return (Local0)
        }

        Method (COUN, 0, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Subtract (HEAD, TAIL, Local0)
            If (LLess (Local0, Zero))
            {
                Add (Local0, SizeOf (RING), Local0)
            }

            Release (RTMX)
            Return (Local0)
        }

        Method (P1, 1, NotSerialized)
        {
            PUSH (Arg0)
        }

        Method (P2, 2, NotSerialized)
        {
            Store (Package (0x02) {}, Local0)
            Store (Arg0, Index (Local0, Zero))
            Store (Arg1, Index (Local0, One))
            PUSH (Local0)
        }

        Method (P3, 3, NotSerialized)
        {
            Store (Package (0x03) {}, Local0)
            Store (Arg0, Index (Local0, Zero))
            Store (Arg1, Index (Local0, One))
            Store (Arg2, Index (Local0, 0x02))
            PUSH (Local0)
        }

        Method (P4, 4, NotSerialized)
        {
            Store (Package (0x04) {}, Local0)
            Store (Arg0, Index (Local0, Zero))
            Store (Arg1, Index (Local0, One))
            Store (Arg2, Index (Local0, 0x02))
            Store (Arg3, Index (Local0, 0x03))
            PUSH (Local0)
        }

        Method (P5, 5, NotSerialized)
        {
            Store (Package (0x05) {}, Local0)
            Store (Arg0, Index (Local0, Zero))
            Store (Arg1, Index (Local0, One))
            Store (Arg2, Index (Local0, 0x02))
            Store (Arg3, Index (Local0, 0x03))
            Store (Arg4, Index (Local0, 0x04))
            PUSH (Local0)
        }

        Method (P6, 6, NotSerialized)
        {
            Store (Package (0x06) {}, Local0)
            Store (Arg0, Index (Local0, Zero))
            Store (Arg1, Index (Local0, One))
            Store (Arg2, Index (Local0, 0x02))
            Store (Arg3, Index (Local0, 0x03))
            Store (Arg4, Index (Local0, 0x04))
            Store (Arg5, Index (Local0, 0x05))
            PUSH (Local0)
        }

        Method (P7, 7, NotSerialized)
        {
            Store (Package (0x07) {}, Local0)
            Store (Arg0, Index (Local0, Zero))
            Store (Arg1, Index (Local0, One))
            Store (Arg2, Index (Local0, 0x02))
            Store (Arg3, Index (Local0, 0x03))
            Store (Arg4, Index (Local0, 0x04))
            Store (Arg5, Index (Local0, 0x05))
            Store (Arg6, Index (Local0, 0x06))
            PUSH (Local0)
        }
    }

    Device (RMCF)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Method (HELP, 0, NotSerialized)
        {
            Store ("TYPE indicates type of the computer. 0: desktop, 1: laptop", Debug)
            Store ("BKLT indicates the type of backlight control. 0: IntelBacklight, 1: AppleBacklight", Debug)
            Store ("LMAX indicates max for IGPU PWM backlight. Ones: Use default, other values must match framebuffer", Debug)
        }

        Name (TYPE, One)
        Name (DAUD, One)
        Name (BKLT, One)
        Name (LMAX, Ones)
        Name (LEVW, Ones)
        Name (GRAN, Zero)
        Name (DWOU, One)
    }

    Device (_SB.ALS0)
    {
        Name (_HID, "ACPI0008")  // _HID: Hardware ID
        Name (_CID, "smc-als")  // _CID: Compatible ID
        Name (_ALI, 0x012C)  // _ALI: Ambient Light Illuminance
        Name (_ALR, Package (0x01)  // _ALR: Ambient Light Response
        {
            Package (0x02)
            {
                0x64, 
                0x012C
            }
        })
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (LEqual (0x05, Arg0))
        {
            Store (Zero, \_SB.PCI0.XHC.PMEE)
            Return (Zero)
        }

        ZPTS (Arg0)
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (LOr (LLess (Arg0, One), LGreater (Arg0, 0x05)))
        {
            Store (0x03, Arg0)
        }

        Store (ZWAK (Arg0), Local0)
        \_SI._SST (One)
        Return (Local0)
    }
}

