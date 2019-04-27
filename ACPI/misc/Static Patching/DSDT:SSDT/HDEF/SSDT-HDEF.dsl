/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-HDEF.aml, Sun Feb 24 03:39:11 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001EA (490)
 *     Revision         0x02
 *     Checksum         0x9E
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "HDEF"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190108 (538509576)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "HDEF", 0x00000000)
{
    External (_SB_.PCI0.HDEF, DeviceObj)    // (from opcode)

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
            If (LNot (Arg2))
            {
                Return (Buffer (One)
                {
                     0x03                                           
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
                     0x07, 0x00, 0x00, 0x00                         
                }, 

                "codec-id", 
                Buffer (0x04)
                {
                     0x92, 0x02, 0xEC, 0x10                         
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
                     0x00                                           
                }, 

                "PinConfigurations", 
                Buffer (Zero) {}, 
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
}

