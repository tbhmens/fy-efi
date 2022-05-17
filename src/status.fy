include "./common.fy"

const EFI_SUCCESS:              EFI_STATUS = 0x0000000000000000
const EFI_ERR:                  EFI_STATUS = 0x8000000000000000
const EFI_LOAD_ERROR:           EFI_STATUS = EFI_ERR | 0x01
const EFI_INVALID_PARAMETER:    EFI_STATUS = EFI_ERR | 0x02
const EFI_UNSUPPORTED:          EFI_STATUS = EFI_ERR | 0x03
const EFI_BAD_BUFFER_SIZE:      EFI_STATUS = EFI_ERR | 0x04
const EFI_BUFFER_TOO_SMALL:     EFI_STATUS = EFI_ERR | 0x05
const EFI_NOT_READY:            EFI_STATUS = EFI_ERR | 0x06
const EFI_DEVICE_ERROR:         EFI_STATUS = EFI_ERR | 0x07
const EFI_WRITE_PROTECTED:      EFI_STATUS = EFI_ERR | 0x08
const EFI_OUT_OF_RESOURCES:     EFI_STATUS = EFI_ERR | 0x09
const EFI_VOLUME_CORRUPTED:     EFI_STATUS = EFI_ERR | 0x0a
const EFI_VOLUME_FULL:          EFI_STATUS = EFI_ERR | 0x0b
const EFI_NO_MEDIA:             EFI_STATUS = EFI_ERR | 0x0c
const EFI_MEDIA_CHANGED:        EFI_STATUS = EFI_ERR | 0x0d
const EFI_NOT_FOUND:            EFI_STATUS = EFI_ERR | 0x0e
const EFI_ACCESS_DENIED:        EFI_STATUS = EFI_ERR | 0x0f
const EFI_NO_RESPONSE:          EFI_STATUS = EFI_ERR | 0x10
const EFI_NO_MAPPING:           EFI_STATUS = EFI_ERR | 0x11
const EFI_TIMEOUT:              EFI_STATUS = EFI_ERR | 0x12
const EFI_NOT_STARTED:          EFI_STATUS = EFI_ERR | 0x13
const EFI_ALREADY_STARTED:      EFI_STATUS = EFI_ERR | 0x14
const EFI_ABORTED:              EFI_STATUS = EFI_ERR | 0x15
const EFI_ICMP_ERROR:           EFI_STATUS = EFI_ERR | 0x16
const EFI_TFTP_ERROR:           EFI_STATUS = EFI_ERR | 0x17
const EFI_PROTOCOL_ERROR:       EFI_STATUS = EFI_ERR | 0x18
const EFI_INCOMPATIBLE_VERSION: EFI_STATUS = EFI_ERR | 0x19
const EFI_SECURITY_VIOLATION:   EFI_STATUS = EFI_ERR | 0x1a
const EFI_CRC_ERROR:            EFI_STATUS = EFI_ERR | 0x1b
const EFI_END_OF_MEDIA:         EFI_STATUS = EFI_ERR | 0x1c
const EFI_END_OF_FILE:          EFI_STATUS = EFI_ERR | 0x1f
const EFI_INVALID_LANGUAGE:     EFI_STATUS = EFI_ERR | 0x20
const EFI_COMPROMISED_DATA:     EFI_STATUS = EFI_ERR | 0x21
const EFI_IP_ADDRESS_CONFLICT:  EFI_STATUS = EFI_ERR | 0x22
const EFI_HTTP_ERROR:           EFI_STATUS = EFI_ERR | 0x23
