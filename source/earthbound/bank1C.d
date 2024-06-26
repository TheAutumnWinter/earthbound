///
module earthbound.bank1C;

import earthbound.commondefs;

/** Overworld music for every 256x128 pixel area of the map
 * Original_Address: $(DOLLAR)DCD637
 */
immutable ubyte[32][80] mapDataPerSectorMusic = [
	[0x11, 0x11, 0x11, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x2F, 0x2F, 0x2F, 0x2F, 0x3D, 0x3D, 0x3D, 0x2B, 0x2B, 0x17, 0x17, 0x17, 0x24, 0x24, 0x24, 0x47, 0x47, 0x45, 0x45, 0x46],
	[0x11, 0x11, 0x11, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x2F, 0x2F, 0x2F, 0x2F, 0x3D, 0x3D, 0x3D, 0x2B, 0x2B, 0x17, 0x17, 0x17, 0x09, 0x09, 0x09, 0x47, 0x47, 0x46, 0x47, 0x47],
	[0x11, 0x11, 0x11, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x2F, 0x2F, 0x2F, 0x2F, 0x3D, 0x3D, 0x3D, 0x2B, 0x2B, 0x17, 0x17, 0x17, 0x09, 0x09, 0x09, 0x46, 0x46, 0x40, 0x40, 0x48],
	[0x11, 0x11, 0x11, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x2F, 0x2F, 0x2F, 0x2F, 0x3D, 0x3D, 0x3D, 0x2B, 0x2B, 0x17, 0x17, 0x17, 0x09, 0x09, 0x09, 0x46, 0x46, 0x41, 0x4F, 0x4F],
	[0x3D, 0x3D, 0x3D, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x2F, 0x2F, 0x2F, 0x2F, 0x3D, 0x3D, 0x3D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x13, 0x09, 0x09, 0x44, 0x44, 0x49, 0x47, 0x47],
	[0x3D, 0x3D, 0x3D, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x2F, 0x2F, 0x2F, 0x2F, 0x3D, 0x3D, 0x3D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x13, 0x09, 0x09, 0x4F, 0x4F, 0x40, 0x3E, 0x3E],
	[0x3D, 0x3D, 0x3D, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x2F, 0x2F, 0x2F, 0x2F, 0x19, 0x3D, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x13, 0x09, 0x09, 0x44, 0x44, 0x4A, 0x47, 0x4F],
	[0x3D, 0x3D, 0x3D, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x2F, 0x2F, 0x2F, 0x2F, 0x19, 0x3D, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x13, 0x09, 0x09, 0x4B, 0x51, 0x40, 0x51, 0x3E],
	[0x3D, 0x3D, 0x3D, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0xA4, 0x2A, 0x2A, 0x2A, 0x19, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x13, 0x09, 0x09, 0x4F, 0x45, 0x4C, 0x47, 0x40],
	[0x3D, 0x3D, 0x3D, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x01, 0x2A, 0x2A, 0x2A, 0x19, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x13, 0x09, 0x09, 0x4D, 0x51, 0x50, 0x51, 0x42],
	[0x2D, 0x3C, 0x3C, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x2A, 0x2A, 0x2A, 0x2A, 0x19, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x01, 0x09, 0x09, 0x4F, 0x43, 0x4E, 0x45, 0x53],
	[0x2D, 0x3C, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x2A, 0x2A, 0x2A, 0x2A, 0x19, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x01, 0x09, 0x09, 0x54, 0x51, 0x52, 0x3F, 0x45],
	[0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x2A, 0x2A, 0x2A, 0x2A, 0x19, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x01, 0x09, 0x09, 0x68, 0x7A, 0x68, 0x7A, 0x45],
	[0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x2A, 0x2A, 0x2A, 0x2A, 0x19, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x01, 0x09, 0x09, 0x67, 0x7D, 0x69, 0x7D, 0x66],
	[0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x2A, 0x2A, 0x2A, 0x2A, 0x19, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x01, 0x09, 0x09, 0x7C, 0x7A, 0x66, 0x7A, 0x7E],
	[0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x2A, 0x2A, 0x2A, 0x2A, 0x19, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x01, 0x09, 0x09, 0x7C, 0x7D, 0x66, 0x7D, 0x6A],
	[0x07, 0x07, 0x07, 0x07, 0x29, 0x02, 0x02, 0x02, 0xA3, 0xA3, 0xA3, 0xA3, 0x31, 0x31, 0x2F, 0x2F, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x13, 0x09, 0x09, 0x09, 0x2C, 0x2C, 0x65, 0x7F, 0x6A],
	[0x07, 0x07, 0x07, 0x07, 0x29, 0x02, 0x02, 0x02, 0xA3, 0xA3, 0xA3, 0xA3, 0x2F, 0x2F, 0x2F, 0x2F, 0x05, 0x05, 0x05, 0x05, 0x05, 0x01, 0x01, 0x01, 0x09, 0x09, 0x09, 0x2C, 0x2C, 0x66, 0x66, 0x66],
	[0x07, 0x07, 0x07, 0x07, 0x29, 0x02, 0x02, 0x02, 0x12, 0x12, 0x12, 0x12, 0x2F, 0x2F, 0x2F, 0x36, 0x05, 0x05, 0x05, 0x05, 0x05, 0x01, 0x01, 0x01, 0x09, 0x09, 0x30, 0x2C, 0x2C, 0x66, 0x66, 0x66],
	[0x07, 0x07, 0x07, 0x07, 0x29, 0x02, 0x02, 0x02, 0x12, 0x12, 0x12, 0x12, 0x2F, 0x2F, 0x2F, 0x2F, 0x05, 0x05, 0x05, 0x27, 0x27, 0x31, 0x3C, 0x29, 0x09, 0x09, 0x30, 0x30, 0x2C, 0x7B, 0x7A, 0x7A],
	[0x07, 0x07, 0x07, 0x07, 0x11, 0x02, 0x02, 0x12, 0x12, 0x12, 0x12, 0x12, 0x2F, 0x2F, 0x2F, 0x2F, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x7A, 0x7A],
	[0x07, 0x07, 0x07, 0x07, 0x11, 0x02, 0x02, 0x12, 0x12, 0x12, 0x12, 0x12, 0x2F, 0x2F, 0x2F, 0x2F, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x7C, 0x7C],
	[0x07, 0x07, 0x07, 0x07, 0x02, 0x02, 0x02, 0x12, 0x12, 0x12, 0x12, 0x12, 0x2F, 0x2F, 0x2F, 0x2F, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x7C, 0x7C],
	[0x07, 0x07, 0x07, 0x07, 0x02, 0x02, 0x02, 0x12, 0x12, 0x12, 0x12, 0x12, 0x2F, 0x2F, 0x2F, 0x2F, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x7A, 0x7A],
	[0x07, 0x07, 0x07, 0x07, 0x02, 0x02, 0x02, 0x12, 0x12, 0x12, 0x12, 0x12, 0x2D, 0x2D, 0x2D, 0x3C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x7A, 0x7A],
	[0x07, 0x07, 0x07, 0x07, 0x02, 0x02, 0x02, 0x12, 0x12, 0x12, 0x12, 0x12, 0x2D, 0x2D, 0x2D, 0x3C, 0x3C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x28, 0x0C, 0x0C, 0x28, 0x28, 0x28],
	[0x07, 0x07, 0x07, 0x07, 0x32, 0x32, 0x32, 0x32, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x27, 0x27, 0x0F, 0x0F, 0x0F, 0x3C, 0x3C, 0x26, 0x26, 0x26, 0x3C, 0x28, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D],
	[0x07, 0x07, 0x07, 0x01, 0x32, 0x32, 0x32, 0x32, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0F, 0x0F, 0x0F, 0x0F, 0x3C, 0x36, 0x2D, 0x3C, 0x3C, 0x3C, 0x28, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D],
	[0x07, 0x07, 0x07, 0x3C, 0x32, 0x32, 0x32, 0x32, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0F, 0x0F, 0x0F, 0x0F, 0x15, 0x15, 0x15, 0x15, 0x34, 0x34, 0x34, 0x33, 0x3B, 0x3B, 0x3B, 0x3B],
	[0x07, 0x07, 0x07, 0x3C, 0x32, 0x32, 0x32, 0x32, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0F, 0x0F, 0x0F, 0x0F, 0x15, 0x15, 0x15, 0x15, 0x34, 0x34, 0x34, 0x33, 0x3B, 0x3B, 0x3B, 0x3B],
	[0x07, 0x07, 0x07, 0x07, 0x0D, 0x0D, 0x0D, 0x0D, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0F, 0x0F, 0x0F, 0x0F, 0x15, 0x15, 0x15, 0x15, 0x34, 0x34, 0x34, 0x34, 0x3B, 0x3B, 0x3B, 0x3B],
	[0x07, 0x07, 0x07, 0x07, 0x0D, 0x0D, 0x0D, 0x0D, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0F, 0x0F, 0x0F, 0x0F, 0x15, 0x15, 0x15, 0x15, 0x34, 0x34, 0x01, 0x34, 0x3B, 0x3B, 0x3B, 0x3B],
	[0x07, 0x07, 0x07, 0x07, 0x0D, 0x0D, 0x0D, 0x0D, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0F, 0x0F, 0x0F, 0x0F, 0x14, 0x83, 0x15, 0x15, 0x3B, 0x35, 0x35, 0x34, 0x3B, 0x3B, 0x3B, 0x3B],
	[0x07, 0x07, 0x07, 0x07, 0x0D, 0x0D, 0x0D, 0x0D, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0F, 0x0F, 0x0F, 0x0F, 0x14, 0x14, 0x15, 0x15, 0x3B, 0x35, 0x35, 0x34, 0x34, 0x3B, 0x3B, 0x3B],
	[0x07, 0x07, 0x07, 0x07, 0x0E, 0x0E, 0x0E, 0x0E, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x2D, 0x2E, 0x2E, 0x14, 0x14, 0x3B, 0x14, 0x14, 0x14, 0x35, 0x35, 0x34, 0x34, 0x3B, 0x3B, 0x3B],
	[0x07, 0x07, 0x07, 0x07, 0x0E, 0x0E, 0x0E, 0x0E, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x3C, 0x2E, 0x2E, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x35, 0x35, 0x34, 0x34, 0x3B, 0x3B, 0x3B],
	[0x07, 0x07, 0x07, 0x07, 0x0E, 0x0E, 0x0E, 0x0E, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x2D, 0x37, 0x37, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x20, 0x20, 0x20, 0x20, 0x3B, 0x3B, 0x34],
	[0x07, 0x07, 0x07, 0x07, 0x0E, 0x0E, 0x0E, 0x0E, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x3C, 0x37, 0x37, 0x14, 0x14, 0x13, 0x14, 0x14, 0x14, 0x20, 0x20, 0x20, 0x20, 0x3B, 0x3B, 0x34],
	[0x07, 0x07, 0x07, 0x07, 0x0E, 0x0E, 0x0E, 0x0E, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x2D, 0x88, 0x8C, 0x8C, 0x83, 0x81, 0x81, 0x83, 0x2B, 0x3B, 0x2B, 0x33, 0x3B, 0x3B, 0x33, 0x33],
	[0x07, 0x07, 0x07, 0x07, 0x0E, 0x0E, 0x0E, 0x0E, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x29, 0x3C, 0x8E, 0x8C, 0x8C, 0x84, 0x81, 0x81, 0x80, 0x2B, 0x2B, 0x2B, 0x33, 0x2C, 0x2C, 0x33, 0x33],
	[0x1D, 0x1D, 0x1D, 0x1D, 0x0E, 0x0E, 0x0E, 0x0E, 0x0B, 0x0B, 0x0B, 0x0B, 0x28, 0x0B, 0x0B, 0x36, 0x30, 0x8D, 0x8D, 0x8D, 0x83, 0x81, 0x81, 0x83, 0x3A, 0x38, 0x33, 0x33, 0x3A, 0x3A, 0x3A, 0x3A],
	[0x1D, 0x1D, 0x1D, 0x1D, 0x0E, 0x0E, 0x0E, 0x0E, 0x0B, 0x0B, 0x0B, 0x01, 0x28, 0x0B, 0x0B, 0x37, 0x3C, 0x8D, 0x8D, 0x8D, 0x84, 0x81, 0x81, 0x80, 0x3A, 0x3A, 0x33, 0x33, 0x38, 0x38, 0x3A, 0x3A],
	[0x1D, 0x1D, 0x1D, 0x1D, 0x0E, 0x0E, 0x0E, 0x0E, 0x2E, 0x2E, 0x37, 0x37, 0x37, 0x37, 0x30, 0x36, 0x30, 0x8A, 0x88, 0x88, 0x83, 0x81, 0x81, 0x83, 0x38, 0x33, 0x33, 0x3A, 0x3A, 0x33, 0x33, 0x3A],
	[0x1D, 0x1D, 0x1D, 0x1D, 0x0E, 0x0E, 0x0E, 0x0E, 0x2E, 0x2E, 0x37, 0x37, 0x37, 0x37, 0x29, 0x37, 0x3C, 0x8A, 0x88, 0x88, 0x84, 0x82, 0x82, 0x80, 0x33, 0x33, 0x33, 0x3A, 0x3A, 0x33, 0x33, 0x33],
	[0x1D, 0x1D, 0x1D, 0x1D, 0x0E, 0x0E, 0x0E, 0x0E, 0x37, 0x37, 0x37, 0x37, 0x37, 0x37, 0x30, 0x36, 0x30, 0x89, 0x89, 0x89, 0x83, 0x82, 0x82, 0x85, 0x38, 0x3A, 0x38, 0x3A, 0x3A, 0x3A, 0x3A, 0x38],
	[0x1D, 0x1D, 0x1D, 0x1D, 0x0E, 0x0E, 0x0E, 0x0E, 0x37, 0x37, 0x37, 0x37, 0x37, 0x37, 0x29, 0x37, 0x3C, 0x89, 0x89, 0x89, 0x84, 0x83, 0x83, 0x8B, 0x38, 0xA2, 0x34, 0x3A, 0x3A, 0x3A, 0x3A, 0x3B],
	[0x18, 0x18, 0x18, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x01, 0x3C, 0x3C, 0x30, 0x31, 0x7D, 0x89, 0x89, 0x89, 0x8A, 0x86, 0x86, 0x87, 0x38, 0x33, 0x38, 0x3A, 0x3A, 0x3A, 0x38, 0x3A],
	[0x18, 0x18, 0x18, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x01, 0x3C, 0x3C, 0x1F, 0x37, 0x3C, 0x80, 0x80, 0x80, 0x80, 0x86, 0x86, 0x8B, 0x38, 0x33, 0x38, 0x3A, 0x3A, 0x3A, 0x34, 0x3A],
	[0x18, 0x18, 0x18, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x3C, 0x3C, 0x1F, 0x1F, 0x3D, 0x3D, 0x80, 0x80, 0x80, 0x80, 0x8E, 0x8E, 0x83, 0x38, 0x33, 0x3A, 0x3A, 0x3A, 0x3A, 0x38, 0x3A],
	[0x18, 0x18, 0x18, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x3C, 0x30, 0x30, 0x1F, 0x3D, 0x3D, 0x80, 0x80, 0x80, 0x80, 0x8B, 0x8B, 0x8E, 0x38, 0x33, 0x38, 0x38, 0x3A, 0x3A, 0x3A, 0x3A],
	[0x18, 0x18, 0x18, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x30, 0x30, 0x30, 0x30, 0x3D, 0x3D, 0x80, 0x80, 0x80, 0x80, 0x8E, 0x8E, 0x81, 0x38, 0xA2, 0x38, 0x3A, 0x3A, 0x3A, 0x3A, 0x3A],
	[0x18, 0x18, 0x18, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x30, 0x30, 0x30, 0x30, 0x3D, 0x3D, 0x80, 0x80, 0x80, 0x80, 0x8C, 0x8B, 0x3D, 0x38, 0x3A, 0x3A, 0x3A, 0x3A, 0x3A, 0x3A, 0x3A],
	[0x18, 0x18, 0x18, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x30, 0x30, 0x30, 0x30, 0x2E, 0x2E, 0x80, 0x80, 0x80, 0x80, 0x88, 0x8E, 0x3D, 0x38, 0x33, 0x33, 0x33, 0x33, 0x39, 0x3A, 0x3A],
	[0x18, 0x18, 0x18, 0x01, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x30, 0x30, 0x30, 0x30, 0x2E, 0x2E, 0x80, 0x80, 0x80, 0x80, 0x8D, 0x8B, 0x8D, 0x38, 0x33, 0x33, 0x33, 0x33, 0x39, 0x3A, 0x3A],
	[0x18, 0x18, 0x18, 0x01, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x31, 0x2E, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x58, 0x58, 0x58, 0x58, 0x9A, 0x9A, 0x9A],
	[0x18, 0x18, 0x18, 0x01, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x31, 0x2E, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x58, 0x58, 0x58, 0x58, 0x2C, 0x2C, 0x2C],
	[0x08, 0x08, 0x08, 0x01, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x2E, 0x2E, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x58, 0x58, 0x58, 0x58, 0x5E, 0x5E, 0x5C],
	[0x08, 0x08, 0x08, 0x18, 0x18, 0x01, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x2E, 0x2E, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x58, 0x58, 0x58, 0x58, 0x5D, 0x63, 0x01],
	[0x08, 0x08, 0x08, 0x18, 0x18, 0x01, 0x03, 0x03, 0x03, 0x03, 0x06, 0x06, 0x06, 0x04, 0x04, 0x04, 0x04, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x58, 0x58, 0x58, 0x58, 0x64, 0x64, 0x5D],
	[0x08, 0x08, 0x08, 0x18, 0x18, 0x03, 0x03, 0x03, 0x03, 0x06, 0x06, 0x06, 0x06, 0x04, 0x04, 0x04, 0x04, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x99, 0x63, 0x57, 0x63, 0x5D, 0x56, 0x01],
	[0x08, 0x08, 0x08, 0x18, 0x18, 0x03, 0x03, 0x03, 0x03, 0x06, 0x06, 0x06, 0x06, 0x04, 0x04, 0x04, 0x04, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x5F, 0x64, 0x98, 0x5E, 0x9E, 0x5E, 0x5B],
	[0x08, 0x08, 0x08, 0x01, 0x03, 0x03, 0x03, 0x03, 0x01, 0x06, 0x06, 0x06, 0x06, 0x04, 0x04, 0x04, 0x04, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x9B, 0x60, 0x63, 0x61, 0x98, 0x55, 0x9F],
	[0x08, 0x08, 0x08, 0x03, 0x03, 0x03, 0x03, 0x29, 0x29, 0x29, 0x29, 0x1B, 0x1B, 0x04, 0x04, 0x04, 0x04, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x6B, 0x64, 0x98, 0x6C, 0xA0, 0x6D, 0x5B],
	[0x08, 0x08, 0x08, 0x03, 0x03, 0x03, 0x03, 0x29, 0x29, 0x29, 0x29, 0x1B, 0x1B, 0x04, 0x04, 0x04, 0x04, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x9B, 0x60, 0x62, 0x61, 0x98, 0x59, 0xA1],
	[0x22, 0x3A, 0x03, 0x03, 0x03, 0x03, 0x3D, 0x29, 0x29, 0x29, 0x29, 0x1B, 0x1B, 0x04, 0x04, 0x04, 0x04, 0x36, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x97, 0x97, 0x5E, 0x5E, 0x97, 0x97],
	[0x22, 0x3A, 0x03, 0x03, 0x03, 0x03, 0x3D, 0x29, 0x29, 0x29, 0x29, 0x1B, 0x1B, 0x04, 0x04, 0x04, 0x04, 0x36, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x97, 0x97, 0x5E, 0x5E, 0x97, 0x97],
	[0x22, 0x03, 0x03, 0x03, 0x03, 0x03, 0x3D, 0x29, 0x29, 0x29, 0x29, 0x2B, 0x2B, 0x2B, 0x3C, 0x3C, 0x2E, 0x2E, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x5D, 0x5D, 0x5A, 0x5A, 0x9C, 0x9C],
	[0x22, 0x03, 0x03, 0x03, 0x03, 0x03, 0x3D, 0x29, 0x29, 0x29, 0x29, 0x2B, 0x2B, 0x2B, 0x3C, 0x3C, 0x2E, 0x2E, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x5D, 0x5D, 0x5A, 0x5A, 0x25, 0x25],
	[0x22, 0x03, 0x03, 0x03, 0x03, 0x03, 0x13, 0x13, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x3C, 0x3C, 0x2E, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x93, 0x93, 0x91, 0x91, 0x63, 0x63],
	[0x22, 0x03, 0x03, 0x03, 0x03, 0x03, 0x01, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x3C, 0x3C, 0x2E, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x93, 0x93, 0x91, 0x91, 0x5E, 0x64],
	[0x22, 0x16, 0x16, 0x16, 0x01, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x01, 0x2E, 0x2E, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x94, 0x92, 0x92, 0x92, 0x94, 0x91],
	[0x22, 0x16, 0x16, 0x16, 0x01, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x2E, 0x2E, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x90, 0x92, 0x92, 0x92, 0x8F, 0x91],
	[0x22, 0x16, 0x16, 0x16, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x72, 0x79, 0x72, 0x79, 0x72, 0x72],
	[0x22, 0x16, 0x16, 0x16, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x91, 0x73, 0x91, 0x72, 0x91, 0x72],
	[0x22, 0x16, 0x16, 0x16, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x96, 0x93, 0x96, 0x93, 0x96, 0x93],
	[0x22, 0x16, 0x16, 0x16, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x3C, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x11, 0x36, 0x94, 0x74, 0x94, 0x75, 0x94, 0x6F],
	[0x22, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x3C, 0x3C, 0x06, 0x06, 0x06, 0x06, 0x30, 0x30, 0x30, 0x96, 0x6E, 0x96, 0x01, 0x95, 0x70],
	[0x22, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x30, 0x30, 0x30, 0x79, 0x76, 0x79, 0x77, 0x79, 0x71],
	[0x22, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x30, 0x30, 0x30, 0x36, 0x27, 0x01, 0x27, 0x27, 0x78],
	[0x22, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x24, 0x24, 0x24, 0x24, 0x24, 0x01, 0x23, 0x23, 0x23, 0x23, 0x23, 0x23, 0x23, 0x23, 0x78],
];
