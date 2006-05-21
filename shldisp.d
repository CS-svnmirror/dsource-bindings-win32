/***********************************************************************\
*                              shldisp.d                                *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*                 Translated from MinGW Windows headers                 *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module win32.shldisp;
private import win32.unknwn;

const ACO_AUTOSUGGEST = 0x01;

interface IAutoComplete : public IUnknown {
	HRESULT Init(HWND, IUnknown*, LPCOLESTR, LPCOLESTR);
	HRESULT Enable(BOOL);
}
alias IAutoComplete* LPAUTOCOMPLETE;

interface IAutoComplete2 : public IAutoComplete {
	HRESULT SetOptions(DWORD);
	HRESULT GetOptions(DWORD*);
}
alias IAutoComplete2* LPAUTOCOMPLETE2;
