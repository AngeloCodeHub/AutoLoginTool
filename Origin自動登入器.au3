
#include <AutoItConstants.au3>
#RequireAdmin
#include <Date.au3>
#include <File.au3>


;$hourDiff = _DateDiff("h","2020/2/23 16:00:00",_NowCalc())
;要紀錄機台號碼，同一台號碼可重複登

;Autoit宣告陣列一定要用Local,否則執行沒反應
Local $aUserPass[7][3] = [ _
["hhuangzhishun1989@gmail.com","hxaAIu1C9IWi","帳號01"], _
["angelohu0614@gmail.com"     ,"hxaAIu1C9IWi","帳號02"], _
["Honray2019aaa@gmail.com"    ,"hxaAIu1C9IWi","帳號03"], _
["Honray2019aba@gmail.com"    ,"hxaAIu1C9IWi","帳號04"], _
["xxie91796@gmail.com"        ,"hxaAIu1C9IWi","帳號05"], _
["xjiawei91994@gmail.com"     ,"hxaAIu1C9IWi","帳號06"], _
["aa3662855@gmail.com"        ,"hxaAIu1C9IWi","帳號07"] ]


;封鎖滑鼠鍵盤輸入
BlockInput($BI_DISABLE)
Run("D:\Origin\Origin.exe","D:\Origin")

If WinWaitActive("Origin","",30) Then

	;有時電腦較慢或是網路不好登入器會讀取會一直轉圈圈，因此還是需要等
	Sleep(8000)
	send($aUserPass[0][0])
	send("{TAB}")
	send($aUserPass[0][1])
	;實際測試只需要按2次TAB...這裡需要3次(不明)
	send("{TAB}")
	send("{TAB}")
	send("{ENTER}")
Else
	;BattleNet啟動失敗，請重新執行
EndIf

BlockInput($BI_ENABLE)


#cs
備註1

#ce

