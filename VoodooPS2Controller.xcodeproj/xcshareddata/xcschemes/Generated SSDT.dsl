// Translated from RevoGirl's ssdtPRGen script v0.9
// Generated with 64W TDP, 2800MHz Max Turbo Freq
DefinitionBlock ("SSDT.aml", "SSDT", 1, "APPLE ", "CpuPm", 0x00001000)
{
    External (\_PR_.CPU0, DeviceObj)
    External (\_PR_.CPU1, DeviceObj)
    External (\_PR_.CPU2, DeviceObj)
    External (\_PR_.CPU3, DeviceObj)

    Scope (_PR.CPU0)
    {
        Name (APSN, 0x08)
        Name (APSS, Package (0x0D)
        {

            Package (0x06)
            {
                0x00000AF0,
                0x0000FA00,
                0x0000000A,
                0x0000000A,
                0x00001C00,
                0x00001C00
            },

            Package (0x06)
            {
                0x00000A8C,
                0x0000FA00,
                0x0000000A,
                0x0000000A,
                0x00001B00,
                0x00001B00
            },

            Package (0x06)
            {
                0x00000A28,
                0x0000FA00,
                0x0000000A,
                0x0000000A,
                0x00001A00,
                0x00001A00
            },

            Package (0x06)
            {
                0x000009C4,
                0x0000FA00,
                0x0000000A,
                0x0000000A,
                0x00001900,
                0x00001900
            },

            Package (0x06)
            {
                0x00000960,
                0x0000FA00,
                0x0000000A,
                0x0000000A,
                0x00001800,
                0x00001800
            },

            Package (0x06)
            {
                0x000008FC,
                0x0000FA00,
                0x0000000A,
                0x0000000A,
                0x00001700,
                0x00001700
            },

            Package (0x06)
            {
                0x00000898,
                0x0000FA00,
                0x0000000A,
                0x0000000A,
                0x00001600,
                0x00001600
            },

            Package (0x06)
            {
                0x00000834,
                0x0000FA00,
                0x0000000A,
                0x0000000A,
                0x00001500,
                0x00001500
            },

            Package (0x06)
            {
                0x000007D0,
                0x0000FA00,
                0x0000000A,
                0x0000000A,
                0x00001400,
                0x00001400
            },

            Package (0x06)
            {
                0x0000076C,
                0x000098BC,
                0x0000000A,
                0x0000000A,
                0x00001300,
                0x00001300
            },

            Package (0x06)
            {
                0x00000708,
                0x00008EF8,
                0x0000000A,
                0x0000000A,
                0x00001200,
                0x00001200
            },

            Package (0x06)
            {
                0x000006A4,
                0x00008567,
                0x0000000A,
                0x0000000A,
                0x00001100,
                0x00001100
            },

            Package (0x06)
            {
                0x00000640,
                0x00007C0A,
                0x0000000A,
                0x0000000A,
                0x00001000,
                0x00001000
            }
        })

        Method (ACST, 0, NotSerialized)
        {
            Return (Package (0x06)
            {
                One,
                0x04,
                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000000, // Address
                            0x01,               // Access Size
                            )
                    },

                    One,
                    0x03,
                    0x03E8
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000010, // Address
                            0x03,               // Access Size
                            )
                    },

                    0x03,
                    0xCD,
                    0x01F4
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000020, // Address
                            0x03,               // Access Size
                            )
                    },

                    0x06,
                    0xF5,
                    0x015E
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000030, // Address
                            0x03,               // Access Size
                            )
                    },

                    0x07,
                    0xF5,
                    0xC8
                }
            })
        }
    }

    Scope (\_PR.CPU1)
    {
        Method (APSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0.APSS)
        }
    }

    Scope (\_PR.CPU2)
    {
        Method (APSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0.APSS)
        }
    }

    Scope (\_PR.CPU3)
    {
        Method (APSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0.APSS)
        }
    }
    Method (DTGP, 5, NotSerialized)
    {
        If (LEqual (Arg0, Buffer (0x10)
        {
            /* 0000 */    0xC6, 0xB7, 0xB5, 0xA0, 0x18, 0x13, 0x1C, 0x44,
            /* 0008 */    0xB0, 0xC9, 0xFE, 0x69, 0x5E, 0xAF, 0x94, 0x9B
        }))
        {
            If (LEqual (Arg1, One))
            {
                If (LEqual (Arg2, Zero))
                {
                    Store (Buffer (One)
                    {
                        0x03
                    }, Arg4)
                    Return (One)
                }
                If (LEqual (Arg2, One))
                {
                    Return (One)
                }
            }
        }
        Store (Buffer (One)
        {
            0x00
        }, Arg4)
        Return (Zero)
    }
}
