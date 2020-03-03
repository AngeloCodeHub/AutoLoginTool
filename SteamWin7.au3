#include <MsgBoxConstants.au3>

;WIN10需注意大小寫
If @OSVersion == "WIN_10" Then
	MsgBox(0,"","作業系統版本不符")
Else
	RunWait("reg import x64.reg")
	Run("steam.exe")
EndIf


#comments-start
登錄檔內容(格式：UTF16LE帶簽名)
====================================================================================================

Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\steam]
@="URL:steam protocol"
"URL Protocol"=""
[HKEY_CLASSES_ROOT\steam\DefaultIcon]
@="Steam.exe"
[HKEY_CLASSES_ROOT\steam\Shell\Open\Command]
@="\"D:\\Game\\SteamWin7\\Steam.exe\" -- \"%1\""

[HKEY_CURRENT_USER\Software\Classes\steam]
@="URL:steam protocol"
"URL Protocol"=""
[HKEY_CURRENT_USER\Software\Classes\steam\DefaultIcon]
@="Steam.exe"
[HKEY_CURRENT_USER\Software\Classes\steam\Shell\Open\Command]
@="\"D:\\Game\\SteamWin7\\Steam.exe\" -- \"%1\""

[HKEY_CURRENT_USER\Software\Valve\Steam]
"SteamExe"="d:/game/SteamWin7/steam.exe"
"SteamPath"="d:/game/SteamWin7"
"SuppressAutoRun"=dword:00000000
"Restart"=dword:00000000
"AutoLoginUser"=""
"RememberPassword"=dword:00000000
"RunningAppID"=dword:00000000
"Language"="tchinese"
"BigPictureInForeground"=dword:00000000
"SourceModInstallPath"="D:\\Game\\SteamWin7\\steamapps\\sourcemods"
"AlreadyRetriedOfflineMode"=dword:00000000
"DWriteEnable"=dword:00000001
"DPIScaling"=dword:00000001
"StartupMode"=dword:00000000
[HKEY_CURRENT_USER\Software\Valve\Steam\ActiveProcess]
"pid"=dword:00000000
"SteamClientDll"="D:\\Game\\SteamWin7\\steamclient.dll"
"SteamClientDll64"="D:\\Game\\SteamWin7\\steamclient64.dll"
"Universe"="Public"
"ActiveUser"=dword:00000000

[HKEY_LOCAL_MACHINE\SOFTWARE\Classes\steam]
@="URL:steam protocol"
"URL Protocol"=""
[HKEY_LOCAL_MACHINE\SOFTWARE\Classes\steam\DefaultIcon]
@="steam.exe"
[HKEY_LOCAL_MACHINE\SOFTWARE\Classes\steam\Shell\Open\Command]
@="\"D:\\Game\\SteamWin7\\steam.exe\" -- \"%1\""

[HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Valve\Steam]
"TempAppCmdLine"=""
"InstallPath"="D:\\Game\\SteamWin7"
"SteamPID"=dword:00000000

#comments-end