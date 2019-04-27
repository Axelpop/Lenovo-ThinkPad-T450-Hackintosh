DefinitionBlock ("", "SSDT", 2, "LENOVO", "FNKY", 0x00000000)
{
    External (_SB_.PCI0.LPC_.EC__, DeviceObj)
    External (_SB_.PCI0.LPC_.PS2K, DeviceObj)

    Scope (_SB.PCI0.LPC.EC)
    {
        Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (PS2K, 0x0406)
        }

        Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (PS2K, 0x0405)
        }

        Method (_Q6A, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (PS2K, 0x033E)
        }

        Method (_Q16, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (PS2K, 0x046E)
        }

        Method (_Q64, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (PS2K, 0x0342)
        }

        Method (_Q66, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (PS2K, 0x0367)
        }

        Method (_Q67, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (PS2K, 0x0368)
        }

        Method (_Q68, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (PS2K, 0x0369)
        }

        Method (_Q69, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (PS2K, 0x036A)
        }
    }
}

