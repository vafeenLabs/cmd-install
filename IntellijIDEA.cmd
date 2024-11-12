winget install JetBrains.IntelliJIDEA.Community --location "C:\MyPrograms\IntelliJ IDEA"
   
   @echo off

    :: change the path below to match your installed version
    SET PATH=C:\MyPrograms\IntelliJ IDEA\bin\idea64.exe
    
    echo Adding file entries
    @reg add "HKEY_CLASSES_ROOT\*\shell\IntelliJ IDEA" /t REG_SZ /v "" /d "Open with IntelliJ IDEA <3<3"   /f
    @reg add "HKEY_CLASSES_ROOT\*\shell\IntelliJ IDEA" /t REG_EXPAND_SZ /v "Icon" /d "%PATH%,0" /f
    @reg add "HKEY_CLASSES_ROOT\*\shell\IntelliJ IDEA\command" /t REG_SZ /v "" /d "%PATH% "%%1"" /f
     
    echo Adding within a folder entries
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\IntelliJ IDEA" /t REG_SZ /v "" /d "Open with IntelliJ IDEA <3<3"   /f
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\IntelliJ IDEA" /t REG_EXPAND_SZ /v "Icon" /d "%PATH%,0" /f
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\IntelliJ IDEA\command" /t REG_SZ /v "" /d "%PATH% "%%V"" /f

    echo Adding folder entries
    @reg add "HKEY_CLASSES_ROOT\Directory\shell\IntelliJ IDEA" /t REG_SZ /v "" /d "Open with IntelliJ IDEA <3<3"   /f
    @reg add "HKEY_CLASSES_ROOT\Directory\shell\IntelliJ IDEA" /t REG_EXPAND_SZ /v "Icon" /d "%PATH%,0" /f
    @reg add "HKEY_CLASSES_ROOT\Directory\shell\IntelliJ IDEA\command" /t REG_SZ /v "" /d "%PATH% "%%1"" /f

    pause