/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-ALC292.aml, Sun Feb 24 03:44:38 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000111 (273)
 *     Revision         0x01
 *     Checksum         0x10
 *     OEM ID           "Deepak"
 *     OEM Table ID     "ALC292"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20131218 (538120728)
 */
DefinitionBlock ("", "SSDT", 1, "Deepak", "ALC292", 0x00000000)
{
    Name (_SB.PCI0.HDEF.RMCF, Package (0x02)
    {
        "CodecCommander", 
        Package (0x08)
        {
            "Custom Commands", 
            Package (0x03)
            {
                Package (0x00) {}, 
                Package (0x08)
                {
                    "Command", 
                    Buffer (0x04)
                    {
                         0x01, 0xA7, 0x07, 0x24                         
                    }, 

                    "On Init", 
                    ">y", 
                    "On Sleep", 
                    ">n", 
                    "On Wake", 
                    ">y"
                }, 

                Package (0x08)
                {
                    "Command", 
                    Buffer (0x04)
                    {
                         0x01, 0x57, 0x08, 0x83                         
                    }, 

                    "On Init", 
                    ">y", 
                    "On Sleep", 
                    ">n", 
                    "On Wake", 
                    ">y"
                }
            }, 

            "Perform Reset", 
            ">y", 
            "Send Delay", 
            0x0A, 
            "Sleep Nodes", 
            ">n"
        }
    })
}

