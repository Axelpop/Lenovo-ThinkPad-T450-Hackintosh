/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-LPC.aml, Sun Feb 24 04:21:56 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000022A (554)
 *     Revision         0x02
 *     Checksum         0x2E
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "LPC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "LPC", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0.LPC)
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
                     0xC3, 0x9C, 0x00, 0x00                         
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,9cc3"
                }
            }
        })
    }

    Method (_SB.PCI0.LPC._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Store (Match (LPDL, MEQ, LDID, MTR, Zero, Zero), Local0)
        If (LNotEqual (Ones, Local0))
        {
            Store (Match (LPDL, MEQ, Zero, MTR, Zero, Add (Local0, One)), Local0)
            Return (DerefOf (Index (LPDL, Add (Local0, One))))
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
                 0xC3, 0x9C, 0x00, 0x00                         
            }, 

            "vendor-id", 
            Buffer (0x04)
            {
                 0x86, 0x80, 0x00, 0x00                         
            }, 

            "built-in", 
            Buffer (One)
            {
                 0x00                                           
            }
        })
    }
}

