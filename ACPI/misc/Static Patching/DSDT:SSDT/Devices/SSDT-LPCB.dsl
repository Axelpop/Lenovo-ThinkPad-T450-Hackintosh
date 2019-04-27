/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLdmU4sj.aml, Sun Feb 24 04:28:34 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000022A (554)
 *     Revision         0x02
 *     Checksum         0x75
 *     OEM ID           "APPLE "
 *     OEM Table ID     "LPC_"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190108 (538509576)
 */
DefinitionBlock ("", "SSDT", 2, "APPLE ", "LPC_", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)

    Scope (_SB.PCI0.LPCB)
    {
        OperationRegion (RMP2, PCI_Config, 0x02, 0x02)
        Field (RMP2, AnyAcc, NoLock, Preserve)
        {
            LDID,   16
        }

        Name (LPDL, Package (0x17)
        {
            0x9D48, 
            0xA14E, 
            0x8CC6, 
            0x8CC4, 
            0x8CC3, 
            0x8C4B, 
            0xA145, 
            Zero, 
            Package (0x04)
            {
                "device-id", 
                Buffer (0x04)
                {
                     0xC3, 0x9C, 0x00, 0x00                           // ....
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,9cc3"
                }
            }
        })
    }

    Method (_SB.PCI0.LPCB._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Local0 = Match (LPDL, MEQ, LDID, MTR, Zero, Zero)
        If ((Ones != Local0))
        {
            Local0 = Match (LPDL, MEQ, Zero, MTR, Zero, (Local0 + One))
            Return (DerefOf (LPDL [(Local0 + One)]))
        }

        Return (Package (0x0E)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built In"
            }, 

            "name", 
            Buffer (0x23)
            {
                "Apple Computers LPC Bus Controller"
            }, 

            "model", 
            Buffer (0x66)
            {
                "Intel Series 9 Chipset PCIe LPC Bus Controller, (Intel Broadwell Wildcat Point-LP LPC Bus Controller)"
            }, 

            "device_type", 
            Buffer (0x13)
            {
                "LPC Bus Controller"
            }, 

            "device-id", 
            Buffer (0x04)
            {
                 0xC3, 0x9C, 0x00, 0x00                           // ....
            }, 

            "vendor-id", 
            Buffer (0x04)
            {
                 0x86, 0x80, 0x00, 0x00                           // ....
            }, 

            "built-in", 
            Buffer (One)
            {
                 0x00                                             // .
            }
        })
    }
}

