include "./common"

struct EFI_TABLE_HEADER {
	Signature: UINT64,
	Revision: UINT32,
	HeaderSize: UINT32,
	CRC32: UINT32,
	Reserved: UINT32,
}
