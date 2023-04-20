///
module earthbound.bank20;

import earthbound.commondefs;

/// $E00000
@ROMSource(0x200000, 1876)
immutable(ubyte)[] textWindowGraphics;

/// $E00751
@ROMSource(0x200754, 76)
immutable(ubyte)[] flavouredTextGraphics;

/// $E01FB9
immutable TextWindowPropertiesEntry[5] textWindowProperties = [
	TextWindowPropertiesEntry(0x00, 1),
	TextWindowPropertiesEntry(0x40, 8),
	TextWindowPropertiesEntry(0x80, 8),
	TextWindowPropertiesEntry(0xC0, 8),
	TextWindowPropertiesEntry(0x100, 8),
];

/// $E01FC8
immutable RGB[32][6] textWindowFlavourPalettes = [
	[
		RGB(0, 0, 0),
		RGB(30, 30, 30),
		RGB(25, 18, 14),
		RGB(2, 2, 2),
		RGB(0, 28, 14),
		RGB(30, 30, 30),
		RGB(19, 20, 16),
		RGB(2, 2, 2),
		RGB(0, 28, 14),
		RGB(30, 30, 30),
		RGB(31, 5, 19),
		RGB(31, 5, 19),
		RGB(0, 28, 14),
		RGB(30, 30, 30),
		RGB(14, 10, 31),
		RGB(2, 2, 2),
		RGB(0, 28, 14),
		RGB(30, 30, 30),
		RGB(18, 16, 21),
		RGB(18, 18, 29),
		RGB(0, 28, 14),
		RGB(7, 7, 7),
		RGB(5, 5, 5),
		RGB(2, 2, 2),
		RGB(0, 28, 14),
		RGB(30, 30, 30),
		RGB(14, 7, 26),
		RGB(14, 7, 26),
		RGB(0, 28, 14),
		RGB(30, 30, 30),
		RGB(17, 18, 18),
		RGB(2, 2, 2),
	],
	[
		RGB(0, 0, 0),
		RGB(30, 30, 23),
		RGB(6, 31, 14),
		RGB(5, 1, 5),
		RGB(0, 28, 14),
		RGB(31, 31, 29),
		RGB(13, 19, 14),
		RGB(5, 1, 5),
		RGB(0, 28, 14),
		RGB(30, 30, 23),
		RGB(31, 5, 19),
		RGB(31, 5, 19),
		RGB(0, 28, 14),
		RGB(31, 29, 21),
		RGB(15, 10, 30),
		RGB(5, 1, 5),
		RGB(0, 28, 14),
		RGB(30, 30, 23),
		RGB(12, 19, 21),
		RGB(12, 26, 23),
		RGB(0, 28, 14),
		RGB(7, 7, 7),
		RGB(5, 5, 5),
		RGB(2, 2, 2),
		RGB(0, 28, 14),
		RGB(30, 30, 23),
		RGB(18, 10, 30),
		RGB(18, 10, 30),
		RGB(0, 28, 14),
		RGB(31, 29, 21),
		RGB(13, 26, 23),
		RGB(7, 6, 10),
	],
	[
		RGB(0, 0, 0),
		RGB(30, 30, 23),
		RGB(28, 12, 11),
		RGB(5, 1, 5),
		RGB(0, 28, 14),
		RGB(31, 31, 29),
		RGB(19, 20, 15),
		RGB(5, 1, 5),
		RGB(0, 28, 14),
		RGB(30, 30, 23),
		RGB(27, 0, 7),
		RGB(27, 0, 7),
		RGB(0, 28, 14),
		RGB(31, 29, 21),
		RGB(14, 10, 31),
		RGB(5, 1, 5),
		RGB(0, 28, 14),
		RGB(30, 30, 23),
		RGB(26, 13, 18),
		RGB(31, 17, 21),
		RGB(0, 28, 14),
		RGB(7, 7, 7),
		RGB(5, 5, 5),
		RGB(2, 2, 2),
		RGB(0, 28, 14),
		RGB(30, 30, 23),
		RGB(16, 10, 28),
		RGB(16, 10, 28),
		RGB(0, 28, 14),
		RGB(31, 29, 25),
		RGB(31, 18, 21),
		RGB(8, 4, 9),
	],
	[
		RGB(0, 0, 0),
		RGB(30, 30, 23),
		RGB(13, 27, 7),
		RGB(5, 1, 5),
		RGB(0, 28, 14),
		RGB(31, 31, 25),
		RGB(17, 18, 16),
		RGB(5, 1, 5),
		RGB(0, 28, 14),
		RGB(30, 30, 23),
		RGB(31, 5, 19),
		RGB(31, 5, 19),
		RGB(0, 28, 14),
		RGB(31, 29, 21),
		RGB(15, 10, 30),
		RGB(5, 1, 5),
		RGB(0, 28, 14),
		RGB(6, 4, 4),
		RGB(22, 21, 13),
		RGB(27, 28, 6),
		RGB(0, 28, 14),
		RGB(7, 7, 7),
		RGB(5, 5, 5),
		RGB(2, 2, 2),
		RGB(0, 28, 14),
		RGB(30, 30, 23),
		RGB(18, 10, 30),
		RGB(18, 10, 30),
		RGB(0, 28, 14),
		RGB(31, 31, 26),
		RGB(29, 31, 11),
		RGB(9, 6, 10),
	],
	[
		RGB(0, 0, 0),
		RGB(30, 30, 23),
		RGB(25, 16, 5),
		RGB(5, 1, 5),
		RGB(0, 28, 14),
		RGB(30, 31, 24),
		RGB(19, 19, 14),
		RGB(5, 1, 5),
		RGB(0, 28, 14),
		RGB(30, 30, 23),
		RGB(31, 5, 19),
		RGB(31, 5, 19),
		RGB(0, 28, 14),
		RGB(31, 29, 21),
		RGB(15, 10, 30),
		RGB(5, 1, 5),
		RGB(0, 28, 14),
		RGB(30, 30, 23),
		RGB(22, 13, 14),
		RGB(27, 18, 6),
		RGB(0, 28, 14),
		RGB(7, 7, 7),
		RGB(5, 5, 5),
		RGB(2, 2, 2),
		RGB(0, 28, 14),
		RGB(30, 30, 23),
		RGB(18, 10, 30),
		RGB(18, 10, 30),
		RGB(0, 28, 14),
		RGB(31, 29, 21),
		RGB(28, 20, 10),
		RGB(8, 3, 5),
	],
	[
		RGB(0, 0, 0),
		RGB(31, 16, 11),
		RGB(28, 10, 11),
		RGB(5, 1, 5),
		RGB(0, 28, 14),
		RGB(31, 21, 20),
		RGB(24, 8, 9),
		RGB(5, 1, 5),
		RGB(0, 28, 14),
		RGB(31, 28, 21),
		RGB(31, 7, 26),
		RGB(31, 7, 26),
		RGB(0, 28, 14),
		RGB(31, 26, 18),
		RGB(18, 10, 30),
		RGB(5, 1, 5),
		RGB(0, 28, 14),
		RGB(31, 22, 17),
		RGB(25, 5, 13),
		RGB(21, 4, 7),
		RGB(0, 28, 14),
		RGB(7, 7, 7),
		RGB(5, 5, 5),
		RGB(2, 2, 2),
		RGB(0, 28, 14),
		RGB(31, 26, 19),
		RGB(18, 10, 30),
		RGB(18, 10, 30),
		RGB(0, 28, 14),
		RGB(31, 26, 18),
		RGB(24, 8, 9),
		RGB(14, 5, 9),
	]
];
immutable RGB[32] textWindowDeathPalette =[
	RGB(0, 28, 14),
	RGB(30, 30, 30),
	RGB(22, 15, 7),
	RGB(5, 1, 5),
	RGB(0, 28, 14),
	RGB(30, 30, 30),
	RGB(19, 20, 16),
	RGB(5, 1, 5),
	RGB(0, 28, 14),
	RGB(30, 30, 30),
	RGB(31, 5, 24),
	RGB(31, 5, 24),
	RGB(0, 28, 14),
	RGB(30, 30, 30),
	RGB(15, 10, 30),
	RGB(5, 1, 5),
	RGB(0, 28, 14),
	RGB(30, 30, 30),
	RGB(18, 16, 21),
	RGB(18, 18, 29),
	RGB(0, 28, 14),
	RGB(7, 7, 7),
	RGB(5, 5, 5),
	RGB(2, 2, 2),
	RGB(0, 28, 14),
	RGB(30, 30, 30),
	RGB(15, 10, 30),
	RGB(15, 10, 30),
	RGB(0, 28, 14),
	RGB(30, 30, 30),
	RGB(17, 18, 18),
	RGB(5, 1, 5),
];

/// $E02190
@([ROMSource(0x2021A8, 10104), ROMSource(0x204920, 7681), ROMSource(0x206721, 7256), ROMSource(0x208379, 10811), ROMSource(0x20ADB4, 6717), ROMSource(0x20C7F1, 9490)])
immutable(ubyte[])[] townMapGraphicsPointerTable;
