module win32.lmapibuf;
private import win32.windef;
private import win32.lmcons;

extern (Windows):
NET_API_STATUS NetApiBufferAllocate(DWORD,PVOID*);
NET_API_STATUS NetApiBufferFree(PVOID);
NET_API_STATUS NetApiBufferReallocate(PVOID,DWORD,PVOID*);
NET_API_STATUS NetApiBufferSize(PVOID,PDWORD);
NET_API_STATUS NetapipBufferAllocate(DWORD,PVOID*);
