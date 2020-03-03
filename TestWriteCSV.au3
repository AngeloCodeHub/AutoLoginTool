
#include <Date.au3>
#include <File.au3>

$filePath = "D:\【測試暫存】\OriginBF5Login.csv"


Local $aUserPass[7][3]
$aUserPass[0][0] = "hhuangzhishun1989@gmail.com"
$aUserPass[0][1] = "hxaAIu1C9IWi"
$aUserPass[0][2] = "本店帳號1"

If Not FileExists($filePath) Then
	FileWriteLine($filePath,'"' & _NowCalc() & '"' & ",創建此檔案,Array維度")
EndIf

;檔案不存在時不會自動新增，因此要先新增檔案，寫檔格式為UTF-8
_FileWriteToLine ($filePath,"1",'"' & _NowCalc() & '","' & @ComputerName & '","' & $aUserPass[0][2] & '"')


#cs
所選帳號先判斷登入時間差距是否大於1小時...
是：直接登
否：判斷要登的帳號最後登入的台號是否和現在一樣，如果一樣可以登，如不一樣就無法以此帳號登(顯示使用中，請選其他帳號)

自動選只會show"目前所有帳號皆在使用中"，或是直接進遊戲

#ce


