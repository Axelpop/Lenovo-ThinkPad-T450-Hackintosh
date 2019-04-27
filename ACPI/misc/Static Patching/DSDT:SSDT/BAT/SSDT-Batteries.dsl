

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

Device (ADP1)
{
    Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
    Name (_UID, Zero)  // _UID: Unique ID
    Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
    {
        _SB
    })
    Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
    {
        If (H8DR)
        {
            Return (HPAC) /* \_SB_.PCI0.LPC_.EC__.HPAC */
        }
        ElseIf ((RBEC (0x46) & 0x10))
        {
            Return (One)
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (_STA, 0, NotSerialized)  // _STA: Status
    {
        Return (0x0F)
    }

    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
    {
        0x1C, 
        0x03
    })
}