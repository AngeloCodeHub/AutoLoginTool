
#include <Array.au3>
#include <File.au3>
#include <MsgBoxConstants.au3>

Local $aReadCSVArray

$filePath = "D:\【測試暫存】\OriginBF5Login.csv"

;所讀的CSV每一行維度要正確(逗號的數量要一樣)，否則讀不出來

_FileReadToArray($filePath,$aReadCSVArray,Default,",")



;$Test = _ArrayBinarySearch($aReadCSVArray,"Asure",0,0,0)
;MsgBox(0,"測試",$Test)


_ArrayDisplay($aReadCSVArray,"顯示")




