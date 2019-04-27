DefinitionBlock ("", "SSDT", 2, "LENOVO", "BATC", 0x00000000)
{
    
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.BAT0, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.BAT0._BIF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.BAT0._BST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.BAT0._HID, IntObj)
    External (_SB_.PCI0.LPCB.EC__.BAT0._STA, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.BAT0.XSTA, MethodObj)    // 0 Arguments    
    External (_SB_.PCI0.LPCB.EC__.BAT1, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.BAT1._BIF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.BAT1._BST, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.BAT1._HID, IntObj)
    External (_SB_.PCI0.LPCB.EC__.BAT1._STA, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.BAT1.XSTA, MethodObj)

    Scope (\_SB.PCI0.LPCB.EC) // Use FIND and REPLACE for all LPCB entries and replace with LPC. Under EXTERNAL SB.PCI0.LPC_ must be used
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
    
        Method (RE1B, 1, NotSerialized)
        {
            OperationRegion (ERAM, EmbeddedControl, Arg0, One)
            Field (ERAM, ByteAcc, NoLock, Preserve)
            {
                 BYTE,   8
            }

                 Return (BYTE) /* \_SB_.PCI0.LPCB.EC__.RE1B.BYTE */
            }

            Method (RECB, 2, Serialized)
            {
                 Arg1 >>= 0x03
                 Name (TEMP, Buffer (Arg1){})
                 Arg1 += Arg0
                 Local0 = Zero
                 While ((Arg0 < Arg1))
                 {
                      TEMP [Local0] = RE1B (Arg0)
                      Arg0++
                      Local0++
                 }

                    Return (TEMP) /* \_SB_.PCI0.LPCB.EC__.RECB.TEMP */
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

    Method (B1B2, 2, NotSerialized)
    {
        Return ((Arg0 | (Arg1 << 0x08)))
    }

    Method (B1B4, 4, NotSerialized)
    {
        Local0 = Arg3
        Local0 = (Arg2 | (Local0 << 0x08))
        Local0 = (Arg1 | (Local0 << 0x08))
        Local0 = (Arg0 | (Local0 << 0x08))
        Return (Local0)
  
    }
}    