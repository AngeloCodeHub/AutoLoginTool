#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Outfile_x64=F:\SharedRW_103\AutoLogin.Exe
#AutoIt3Wrapper_Compression=0
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

#include <AutoItConstants.au3>

;Title:登入暴雪Battle.net
;Class:Qt5QWindowIcon

;Local $Username01 = "type username"
;Local $Password01 = "My Password"


;封鎖滑鼠鍵盤輸入
BlockInput($BI_DISABLE)
;Run("D:\tool\BattleNet\play.bat")
RunWait("PDataBattlenet.exe",@WorkingDir)
RunWait("RoaBattlenet.exe",@WorkingDir)
Run("Battle.net Launcher.exe",@WorkingDir)

If WinWaitActive("登入暴雪Battle.net","",60) Then
	Local $Username01 = "angelohu0614@gmail.com"
	Local $Password01 = "GXv'y9G$Gh{!}J_Y"
	;有時電腦較慢或是網路不好登入器下面會一直轉圈圈，因此還是需要等
	Sleep(8000)
	send($Username01)
	send("{TAB}")
	send($Password01)
	;實際測試只需要按2次TAB...這裡需要3次(不明)
	send("{TAB}")
	send("{TAB}")
	send("{TAB}")
	send("{ENTER}")
	BlockInput($BI_ENABLE)
;Else
	;BattleNet啟動失敗，請重新執行
EndIf




