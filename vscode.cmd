winget install vscode --location "C:\MyPrograms\VSCode"
     
   @echo off

    :: change the path below to match your installed version
    SET PATH=C:\MyPrograms\VSCode\Code.exe
    
    echo Adding file entries
    @reg add "HKEY_CLASSES_ROOT\*\shell\VSCode" /t REG_SZ /v "" /d "Open with VSCode <3<3"   /f
    @reg add "HKEY_CLASSES_ROOT\*\shell\VSCode" /t REG_EXPAND_SZ /v "Icon" /d "%PATH%,0" /f
    @reg add "HKEY_CLASSES_ROOT\*\shell\VSCode\command" /t REG_SZ /v "" /d "%PATH% "%%1"" /f
     
    echo Adding within a folder entries
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\VSCode" /t REG_SZ /v "" /d "Open with VSCode <3<3"   /f
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\VSCode" /t REG_EXPAND_SZ /v "Icon" /d "%PATH%,0" /f
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\VSCode\command" /t REG_SZ /v "" /d "%PATH% "%%V"" /f

    echo Adding folder entries
    @reg add "HKEY_CLASSES_ROOT\Directory\shell\VSCode" /t REG_SZ /v "" /d "Open with VSCode <3<3"   /f
    @reg add "HKEY_CLASSES_ROOT\Directory\shell\VSCode" /t REG_EXPAND_SZ /v "Icon" /d "%PATH%,0" /f
    @reg add "HKEY_CLASSES_ROOT\Directory\shell\VSCode\command" /t REG_SZ /v "" /d "%PATH% "%%1"" /f

    pause