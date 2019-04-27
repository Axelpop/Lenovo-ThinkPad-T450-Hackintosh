/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-XHC.aml, Sun Feb 24 04:21:56 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000026D (621)
 *     Revision         0x02
 *     Checksum         0x55
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "XHC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190108 (538509576)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "XHC", 0x00000000)
{
    External (_SB_.PCI0.XHC_, DeviceObj)    // (from opcode)

    Method (\_SB.PCI0.XHC._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LNot (Arg2))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Store (Package (0x1A)
            {
                "AAPL,clock-id", 
                Buffer (0x04)
                {
                     0x02                                           
                }, 

                "AAPL,slot-name", 
                "Built In", 
                "name", 
                "Intel Series 9 Chipset XHC USB Controller", 
                "model", 
                "Intel Series 9 Chipset PCIe XHC USB Controller, (Broadwell Wildcat Point-LP XHC USB Host Controller)", 
                "device_type", 
                Buffer (0x0F)
                {
                    "XHC Controller"
                }, 

                "AAPL,current-available", 
                Buffer (0x04)
                {
                     0x34, 0x08, 0x00, 0x00                         
                }, 

                "AAPL,current-extra", 
                Buffer (0x04)
                {
                     0x98, 0x08, 0x00, 0x00                         
                }, 

                "AAPL,current-in-sleep", 
                Buffer (0x04)
                {
                     0x40, 0x06, 0x00, 0x00                         
                }, 

                "AAPL,current-extra-in-sleep", 
                Buffer (0x04)
                {
                     0x40, 0x06, 0x00, 0x00                         
                }, 

                "AAPL,max-port-current-in-sleep", 
                Buffer (0x04)
                {
                     0x34, 0x08, 0x00, 0x00                         
                }, 

                "AAPL,device-internal", 
                Buffer (0x04)
                {
                     0x02, 0x00, 0x00, 0x00                         
                }, 

                "subsystem-id", 
                Buffer (0x04)
                {
                     0x07, 0x50, 0x00, 0x00                         
                }, 

                "subsystem-vendor-id", 
                Buffer (0x04)
                {
                     0x58, 0x14, 0x00, 0x00                         
                }
            }, Local0)
        If (CondRefOf (\_SB.PCI0.RMD2))
        {
            CreateDWordField (DerefOf (Index (Local0, One)), Zero, PR2F)
            Store (0x3FFF, PR2F)
        }

        Return (Local0)
    }
}

