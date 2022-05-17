include "../common"
include "./locate" // EFI_LOCATE_SEARCH_TYPE
include "../protocols/device-path"

type EFI_INTERFACE_TYPE = int32 // C enum
	const EFI_NATIVE_INTERFACE = 0
type EFI_INSTALL_PROTOCOL_INTERFACE = *fun(Handle: *EFI_HANDLE, Protocol: *EFI_GUID, InterfaceType: EFI_INTERFACE_TYPE, Interface: EFI_PTR_VOID): EFI_STATUS
type EFI_UNINSTALL_PROTOCOL_INTERFACE = *fun(Handle: *EFI_HANDLE, Protocol: *EFI_GUID, Interface: EFI_PTR_VOID): EFI_STATUS
type EFI_REINSTALL_PROTOCOL_INTERFACE = *fun(Handle: *EFI_HANDLE, Protocol: *EFI_GUID, OldInterface: EFI_PTR_VOID, NewInterface: EFI_PTR_VOID): EFI_STATUS
type EFI_REGISTER_PROTOCOL_NOTIFY = *fun(Protocol: *EFI_GUID, Event: EFI_EVENT, Registration: *EFI_PTR_VOID): EFI_STATUS

type EFI_LOCATE_HANDLE = *fun(SearchType: EFI_LOCATE_SEARCH_TYPE, Protocol: *EFI_GUID, SearchKey: EFI_PTR_VOID, BufferSize: *UINTN, Buffer: *EFI_HANDLE): EFI_STATUS
type EFI_HANDLE_PROTOCOL = *fun(Handle: EFI_HANDLE, Protocol: *EFI_GUID, Interface: *EFI_PTR_VOID): EFI_STATUS

type EFI_LOCATE_DEVICE_PATH = *fun(Protocol: *EFI_GUID, DevicePath: **EFI_DEVICE_PATH_PROTOCOL, Device: *EFI_HANDLE): EFI_STATUS

type EFI_OPEN_PROTOCOL = *fun(Handle: EFI_HANDLE, Protocol: *EFI_GUID, Interface: *EFI_PTR_VOID, AgentHandle: EFI_HANDLE, ControllerHandle: EFI_HANDLE, Attributes: UINT32): EFI_STATUS
const EFI_OPEN_PROTOCOL_BY_HANDLE_PROTOCOL  = 0b1
const EFI_OPEN_PROTOCOL_GET_PROTOCOL        = 0b10
const EFI_OPEN_PROTOCOL_TEST_PROTOCOL       = 0b100
const EFI_OPEN_PROTOCOL_BY_CHILD_CONTROLLER = 0b1000
const EFI_OPEN_PROTOCOL_BY_DRIVER           = 0b10000
const EFI_OPEN_PROTOCOL_EXCLUSIVE           = 0b100000

type EFI_CLOSE_PROTOCOL = *fun(Handle: EFI_HANDLE, Protocol: *EFI_GUID, AgentHandle: EFI_HANDLE, ControllerHandle: EFI_HANDLE): EFI_STATUS
struct EFI_OPEN_PROTOCOL_INFORMATION_ENTRY {
	AgentHandle: EFI_HANDLE,
	ControllerHandle: EFI_HANDLE,
	Attributes: UINT32,
	OpenCount: UINT32,
}
type EFI_OPEN_PROTOCOL_INFORMATION = *fun(Handle: EFI_HANDLE, Protocol: *EFI_GUID, EntryBuffer: **EFI_OPEN_PROTOCOL_INFORMATION_ENTRY, EntryCount: *UINTN): EFI_STATUS
