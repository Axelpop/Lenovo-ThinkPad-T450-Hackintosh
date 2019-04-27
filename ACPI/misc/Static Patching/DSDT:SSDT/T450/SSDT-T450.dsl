DefinitionBlock ("", "SSDT", 2, "LENOVO", "T450", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.RP02, DeviceObj)
    External (_SB_.PCI0.HDEF, DeviceObj)
    External (_SB_.PCI0.IGPU, DeviceObj)
    External (_SB_.PCI0.IGPU, DeviceObj)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)
    External (_SB_.PCI0.EH01, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP._OFF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PEGP._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEGP.DGFX._OFF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEGP.DGFX._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.XHC_.PMEE, FieldUnitObj)
    External (_SI_._SST, MethodObj)    // 1 Arguments
    External (RMCF.DPTS, IntObj)
    External (RMCF.SHUT, IntObj)
    External (RMCF.SSTF, IntObj)
    External (RMCF.XPEE, IntObj)
    External (RMCF.BKLT, IntObj)
    External (RMCF.FBTP, IntObj)
    External (RMCF.GRAN, IntObj)
    External (RMCF.LEVW, IntObj)
    External (RMCF.LMAX, IntObj)
    External (RMCF.DWOU, IntObj)
    External (ZPTS, MethodObj)    // 1 Arguments
    External (ZWAK, MethodObj)    // 1 Arguments
    External (XPRW, MethodObj)    // 2 Arguments
    External (ARPT, DeviceObj)
        
    Scope (_SB.PCI0.RP02)
    {
        Device (ARPT)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x16)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "vendor-id", 
                    Buffer (0x04)
                    {
                         0xE4, 0x14, 0x00, 0x00                           // ....
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xA0, 0x43, 0x00, 0x00                           // .C..
                    }, 

                    "subsystem-id", 
                    Buffer (0x04)
                    {
                         0x12, 0x01, 0x00, 0x00                           // ....
                    }, 

                    "subsystem-vendor-id", 
                    Buffer (0x04)
                    {
                         0x6B, 0x10, 0x00, 0x00                           // k...
                    }, 

                    "vendor-id", 
                    Buffer (0x04)
                    {
                         0xE4, 0x14, 0x00, 0x00                           // ....
                    }, 

                    "name", 
                    Buffer (0x0D)
                    {
                        "pci14e4,43a0"
                    }, 

                    "model", 
                    Buffer (0x45)
                    {
                        "Apple AirPort Extreme (Broadcom BCM4360 802.11 a/b/g/n/ac WiFi Card)"
                    }, 

                    "device_type", 
                    Buffer (0x10)
                    {
                        "AirPort Extreme"
                    }, 

                    "IOName", 
                    Buffer (0x0D)
                    {
                        "pci14e4,43a0"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                             // .
                    }
                })
            }
        }
    }

    Device (_SB.PCI0.HDEF)
    {
        Name (_ADR, 0x001B0000)  // _ADR: Address
        Name (_S3D, 0x03)  // _S3D: S3 Device State
        Name (RID, Zero)
        Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
        {
            0x6D, 
            Zero
        })
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (!Arg2)
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x14)
            {
                "AAPL,slot-name", 
                Buffer (0x09)
                {
                    "Built in"
                }, 

                "layout-id", 
                Buffer (0x04)
                {
                     0x07, 0x00, 0x00, 0x00                           // ....
                }, 

                "codec-id", 
                Buffer (0x04)
                {
                     0x92, 0x02, 0xEC, 0x10                           // ....
                }, 

                "model", 
                Buffer (0x5A)
                {
                    "Apple High Definition Pro Audio Controller, (Intel Broadwell Audio, Realtek ALC292 Codec)"
                }, 

                "name", 
                Buffer (0x3E)
                {
                    "Intel Broadwell High Definition Audio, (Realtek ALC292 Codec)"
                }, 

                "device_type", 
                Buffer (0x11)
                {
                    "Audio Controller"
                }, 

                "built-in", 
                Buffer (One)
                {
                     0x00                                             // .
                }, 

                "PinConfigurations", 
                Buffer (Zero){}, 
                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "MaximumBootBeepVolume", 
                0x2F
            })
        }
    }
   
    Scope (_SB.PCI0.IGPU)
    {
        OperationRegion (RMP3, PCI_Config, Zero, 0x14)
    }

    Device (_SB.PCI0.IGPU.PNLF)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
        Name (_CID, "backlight")  // _CID: Compatible ID
        Name (_UID, Zero)  // _UID: Unique ID
        Name (_STA, 0x0B)  // _STA: Status
        Field (^RMP3, AnyAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            GDID,   16, 
            Offset (0x10), 
            BAR1,   32
        }

        OperationRegion (RMB1, SystemMemory, (BAR1 & 0xFFFFFFFFFFFFFFF0), 0x000E1184)
        Field (RMB1, AnyAcc, Lock, Preserve)
        {
            Offset (0x48250), 
            LEV2,   32, 
            LEVL,   32, 
            Offset (0x70040), 
            P0BL,   32, 
            Offset (0xC2000), 
            GRAN,   32, 
            Offset (0xC8250), 
            LEVW,   32, 
            LEVX,   32, 
            Offset (0xE1180), 
            PCHL,   32
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Local4 = One
            If (CondRefOf (\RMCF.BKLT))
            {
                Local4 = \RMCF.BKLT /* External reference */
            }

            If ((Zero == (One & Local4)))
            {
                Return (Zero)
            }

            Local0 = ^GDID /* \_SB_.PCI0.IGPU.PNLF.GDID */
            Local2 = Ones
            If (CondRefOf (\RMCF.LMAX))
            {
                Local2 = \RMCF.LMAX /* External reference */
            }

            Local3 = Zero
            If (CondRefOf (\RMCF.FBTP))
            {
                Local3 = \RMCF.FBTP /* External reference */
            }

            If ((Zero == Local3))
            {
                If ((Ones != Match (Package (0x10)
                                {
                                    0x010B, 
                                    0x0102, 
                                    0x0106, 
                                    0x1106, 
                                    0x1601, 
                                    0x0116, 
                                    0x0126, 
                                    0x0112, 
                                    0x0122, 
                                    0x0152, 
                                    0x0156, 
                                    0x0162, 
                                    0x0166, 
                                    0x016A, 
                                    0x46, 
                                    0x42
                                }, MEQ, Local0, MTR, Zero, Zero)))
                {
                    Local3 = One
                }
                Else
                {
                    Local3 = 0x02
                }
            }

            If ((One == Local3))
            {
                If ((Ones == Local2))
                {
                    Local2 = 0x0710
                }

                Local1 = (^LEVX >> 0x10)
                If (!Local1)
                {
                    Local1 = Local2
                }

                If ((Local2 != Local1))
                {
                    Local0 = ((^LEVL * Local2) / Local1)
                    Local3 = (Local2 << 0x10)
                    If ((Local2 > Local1))
                    {
                        ^LEVX = Local3
                        ^LEVL = Local0
                    }
                    Else
                    {
                        ^LEVL = Local0
                        ^LEVX = Local3
                    }
                }
            }
            ElseIf ((0x02 == Local3))
            {
                If ((Ones == Local2))
                {
                    If ((Ones != Match (Package (0x16)
                                    {
                                        0x0D26, 
                                        0x0A26, 
                                        0x0D22, 
                                        0x0412, 
                                        0x0416, 
                                        0x0A16, 
                                        0x0A1E, 
                                        0x0A1E, 
                                        0x0A2E, 
                                        0x041E, 
                                        0x041A, 
                                        0x0BD1, 
                                        0x0BD2, 
                                        0x0BD3, 
                                        0x1606, 
                                        0x160E, 
                                        0x1616, 
                                        0x161E, 
                                        0x1626, 
                                        0x1622, 
                                        0x1612, 
                                        0x162B
                                    }, MEQ, Local0, MTR, Zero, Zero)))
                    {
                        Local2 = 0x0AD9
                    }
                    ElseIf ((Ones != Match (Package (0x04)
                                    {
                                        0x3E9B, 
                                        0x3EA5, 
                                        0x3E92, 
                                        0x3E91
                                    }, MEQ, Local0, MTR, Zero, Zero)))
                    {
                        Local2 = 0xFFFF
                    }
                    Else
                    {
                        Local2 = 0x056C
                    }
                }

                If ((Zero == (0x02 & Local4)))
                {
                    Local5 = 0xC0000000
                    If (CondRefOf (\RMCF.LEVW))
                    {
                        If ((Ones != \RMCF.LEVW))
                        {
                            Local5 = \RMCF.LEVW /* External reference */
                        }
                    }

                    ^LEVW = Local5
                }

                If ((0x04 & Local4))
                {
                    If (CondRefOf (\RMCF.GRAN))
                    {
                        ^GRAN = \RMCF.GRAN /* External reference */
                    }
                    Else
                    {
                        ^GRAN = Zero
                    }
                }

                Local1 = (^LEVX >> 0x10)
                If (!Local1)
                {
                    Local1 = Local2
                }

                If ((Local2 != Local1))
                {
                    Local0 = ((((^LEVX & 0xFFFF) * Local2) / Local1) | 
                        (Local2 << 0x10))
                    ^LEVX = Local0
                }
            }

            If ((Local2 == 0x0710))
            {
                _UID = 0x0E
            }
            ElseIf ((Local2 == 0x0AD9))
            {
                _UID = 0x0F
            }
            ElseIf ((Local2 == 0x056C))
            {
                _UID = 0x10
            }
            ElseIf ((Local2 == 0x07A1))
            {
                _UID = 0x11
            }
            ElseIf ((Local2 == 0x1499))
            {
                _UID = 0x12
            }
            ElseIf ((Local2 == 0xFFFF))
            {
                _UID = 0x13
            }
            Else
            {
                _UID = 0x63
            }
        }
    }
        Scope (_SB.PCI0.LPCB.PS2K)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (!Arg2)
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x04)
            {
                "RM,oem-id", 
                "LENOVO", 
                "RM,oem-table-id", 
                "Thinkpad_ClickPad"
            })
        }

        Name (RMCF, Package (0x06)
        {
            "Mouse", 
            Package (0x02)
            {
                "ActLikeTrackpad", 
                ">y"
            }, 

            "Keyboard", 
            Package (0x08)
            {
                "ActionSwipeLeft", 
                "37 d, 21 d, 21 u, 37 u", 
                "ActionSwipeRight", 
                "37 d, 1e d, 1e u, 37 u", 
                "SleepPressTime", 
                "1500", 
                "Swap command and option", 
                ">y"
            }, 

            "Synaptics TouchPad", 
            Package (0x2C)
            {
                "BogusDeltaThreshX", 
                0x0320, 
                "BogusDeltaThreshY", 
                0x0320, 
                "Clicking", 
                ">y", 
                "DragLockTempMask", 
                0x00040004, 
                "DynamicEWMode", 
                ">n", 
                "FakeMiddleButton", 
                ">n", 
                "HWResetOnStart", 
                ">y", 
                "PalmNoAction When Typing", 
                ">y", 
                "ScrollResolution", 
                0x0320, 
                "SmoothInput", 
                ">y", 
                "UnsmootInput", 
                ">y", 
                "Thinkpad", 
                ">y", 
                "EdgeBottom", 
                Zero, 
                "FingerZ", 
                0x1E, 
                "MaxTapTime", 
                0x05F5E100, 
                "MouseMultiplierX", 
                0x04, 
                "MouseMultiplierY", 
                0x04, 
                "MouseScrollMultiplierX", 
                0x04, 
                "MouseScrollMultiplierY", 
                0x04, 
                "TrackpointScrollYMultiplier", 
                One, 
                "TrackpointScrollXMultiplier", 
                One
            }
        })
    }
    
        Device (UIAC)
    {
        Name (_HID, "UIA00000")  // _HID: Hardware ID
        Name (RMCF, Package (0x02)
        {
            "8086_9cb1", 
            Package (0x04)
            {
                "port-count", 
                Buffer (0x04)
                {
                     0x0F, 0x00, 0x00, 0x00                           // ....
                }, 

                "ports", 
                Package (0x10)
                {
                    "HSP0", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "HSP1", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x02, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "HSP2", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x03, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "HSP6", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x07, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "HSP7", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x08, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "SSP0", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x0C, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "SSP1", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x0D, 0x00, 0x00, 0x00                           // ....
                        }
                    }, 

                    "SSP2", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x0E, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                }
            }
        })
    }
    
        Device (RMCF)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Method (HELP, 0, NotSerialized)
        {
            Debug = "TYPE indicates type of the computer. 0: desktop, 1: laptop"
            Debug = "HIGH selects display type. 1: high resolution, 2: low resolution"
            Debug = "IGPI overrides ig-platform-id or snb-platform-id"
            Debug = "DPTS for laptops only. 1: enables/disables DGPU in _WAK/_PTS"
            Debug = "SHUT enables shutdown fix. bit 0: disables _PTS code when Arg0==5, bit 1: SLPE=0 when Arg0==5"
            Debug = "XPEE enables XHC.PMEE fix. 1: set XHC.PMEE to zero in _PTS when Arg0==5"
            Debug = "SSTF enables _SST LED fix. 1: enables _SI._SST in _WAK when Arg0 == 3"
            Debug = "AUDL indicates audio layout-id for patched AppleHDA. Ones: no injection"
            Debug = "BKLT indicates the type of backlight control. 0: IntelBacklight, 1: AppleBacklight"
            Debug = "LMAX indicates max for IGPU PWM backlight. Ones: Use default, other values must match framebuffer"
        }

        Name (TYPE, One)
        Name (HIGH, One)
        Name (IGPI, Ones)
        Name (DPTS, Zero)
        Name (SHUT, One)
        Name (XPEE, One)
        Name (SSTF, One)
        Name (AUDL, Ones)
        Name (DAUD, One)
        Name (BKLT, One)
        Name (LMAX, Ones)
        Name (LEVW, Ones)
        Name (GRAN, Zero)
        Name (FBTP, Zero)
        Name (DWOU, One)
    }

    Scope (_SB.PCI0)
    {
        Scope (EH01)
        {
            OperationRegion (PSTS, PCI_Config, 0x54, 0x02)
            Field (PSTS, WordAcc, NoLock, Preserve)
            {
                PSTE,   2
            }
        }

        Scope (LPCB)
        {
            OperationRegion (RMLP, PCI_Config, 0xF0, 0x04)
            Field (RMLP, DWordAcc, NoLock, Preserve)
            {
                RCB1,   32
            }

            OperationRegion (FDM1, SystemMemory, ((RCB1 & 0xFFFFFFFFFFFFC000) + 0x3418), 0x04)
            Field (FDM1, DWordAcc, NoLock, Preserve)
            {
                    ,   15, 
                FDE1,   1
            }
        }

        Device (RMD1)
        {
            Name (_HID, "RMD10000")  // _HID: Hardware ID
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                ^^EH01.PSTE = 0x03
                ^^LPCB.FDE1 = One
            }
        }
    }
     
        Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If ((0x05 == Arg0))
        {
            If (CondRefOf (\RMCF.SHUT))
            {
                If ((\RMCF.SHUT & One))
                {
                    Return (Zero)
                }

                If ((\RMCF.SHUT & 0x02))
                {
                    OperationRegion (PMRS, SystemIO, 0x1830, One)
                    Field (PMRS, ByteAcc, NoLock, Preserve)
                    {
                            ,   4, 
                        SLPE,   1
                    }

                    SLPE = Zero
                    Sleep (0x10)
                }
            }
        }

        If (CondRefOf (\RMCF.DPTS))
        {
            If (\RMCF.DPTS)
            {
                If (CondRefOf (\_SB.PCI0.PEG0.PEGP._ON))
                {
                    \_SB.PCI0.PEG0.PEGP._ON ()
                }

                If (CondRefOf (\_SB.PCI0.PEGP.DGFX._ON))
                {
                    \_SB.PCI0.PEGP.DGFX._ON ()
                }
            }
        }

        ZPTS (Arg0)
        If ((0x05 == Arg0))
        {
            If (CondRefOf (\RMCF.XPEE))
            {
                If ((\RMCF.XPEE && CondRefOf (\_SB.PCI0.XHC.PMEE)))
                {
                    \_SB.PCI0.XHC.PMEE = Zero
                }
            }
        }
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (((Arg0 < One) || (Arg0 > 0x05)))
        {
            Arg0 = 0x03
        }

        Local0 = ZWAK (Arg0)
        If (CondRefOf (\RMCF.DPTS))
        {
            If (\RMCF.DPTS)
            {
                If (CondRefOf (\_SB.PCI0.PEG0.PEGP._OFF))
                {
                    \_SB.PCI0.PEG0.PEGP._OFF ()
                }

                If (CondRefOf (\_SB.PCI0.PEGP.DGFX._OFF))
                {
                    \_SB.PCI0.PEGP.DGFX._OFF ()
                }
            }
        }

        If (CondRefOf (\RMCF.SSTF))
        {
            If (\RMCF.SSTF)
            {
                If (((0x03 == Arg0) && CondRefOf (\_SI._SST)))
                {
                    \_SI._SST (One)
                }
            }
        }

        Return (Local0)
    }
    
        Method (XOSI, 1, NotSerialized)
    {
        Local0 = Package (0x07)
            {
                "Windows", 
                "Windows 2001", 
                "Windows 2001 SP2", 
                "Windows 2006", 
                "Windows 2006 SP1", 
                "Windows 2009", 
                "Windows 2012"
            }
        Return ((Ones != Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
    }
    
        Method (GPRW, 2, NotSerialized)
    {
        While (One)
        {
            If (CondRefOf (\RMCF.DWOU))
            {
                If (!\RMCF.DWOU)
                {
                    Break
                }
            }

            If ((0x6D == Arg0))
            {
                Return (Package (0x02)
                {
                    0x6D, 
                    Zero
                })
            }

            If ((0x0D == Arg0))
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

}
            