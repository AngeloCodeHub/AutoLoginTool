;WIN10需注意大小寫
If @OSVersion == "WIN_10" Then
	#RequireAdmin
EndIf

;Uplay設定檔複製到"%userprofile%\AppData\Local"
RunWait("GameLauncherSetting.exe")

Run("Uplay.exe")