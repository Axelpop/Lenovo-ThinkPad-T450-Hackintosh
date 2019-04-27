/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT4.aml, Thu Jan 31 23:20:30 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000152 (338)
 *     Revision         0x01
 *     Checksum         0xA0
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "Rmv_Batt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "Rmv_Batt", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPC_.EC__.BAT1, DeviceObj)
    External (_SB_.PCI0.LPC_.EC__.BAT1.B1ST, IntObj)
    External (_SB_.PCI0.LPC_.EC__.BAT1.SBLI, IntObj)
    External (_SB_.PCI0.LPC_.EC__.BAT1.XB1S, IntObj)
    External (_SB_.PCI0.LPC_.EC__.CLPM, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC_.EC__.HB1A, FieldUnitObj)
    External (_SB_.PCI0.LPC_.EC__.HKEY.MHKQ, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (MDBG, MethodObj)    // Imported: 1 Arguments

    Scope (\_SB.PCI0.LPC.EC.BAT1)
    {
        Method (_Q4C, 0, NotSerialized)  // _Qxx: EC Query
        {
            \_SB.PCI0.LPC.EC.CLPM ()
            If (\_SB.PCI0.LPC.EC.HB1A)
            {
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4010)
            }
            Else
            {
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4011)
                If (\_SB.PCI0.LPC.EC.BAT1.XB1S)
                {
                    Notify (\_SB.PCI0.LPC.EC.BAT1, 0x03)
                }
            }
        }

        Method (_EJ0, 1, NotSerialized)  // _EJx: Eject Device
        {
            If (Arg0)
            {
                Store (0x00, \_SB.PCI0.LPC.EC.BAT1.B1ST)
                Store (0x01, \_SB.PCI0.LPC.EC.BAT1.SBLI)
                Store (0x00, \_SB.PCI0.LPC.EC.BAT1.XB1S)
            }
        }
    }
}

