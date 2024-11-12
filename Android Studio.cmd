winget install -e --id Google.AndroidStudio

        @echo off

    :: change the path below to match your installed version
    SET AndroidStudioPath=C:\Program Files\Android\Android Studio\bin\studio64.exe
     
    echo Adding file entries
    @reg add "HKEY_CLASSES_ROOT\*\shell\AndroidStudio" /t REG_SZ /v "" /d "Open with AndroidStudio <3<3"   /f
    @reg add "HKEY_CLASSES_ROOT\*\shell\AndroidStudio" /t REG_EXPAND_SZ /v "Icon" /d "%AndroidStudioPath%,0" /f
    @reg add "HKEY_CLASSES_ROOT\*\shell\AndroidStudio\command" /t REG_SZ /v "" /d "%AndroidStudioPath% "%%1"" /f
     
    echo Adding within a folder entries
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\AndroidStudio" /t REG_SZ /v "" /d "Open with AndroidStudio <3<3"   /f
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\AndroidStudio" /t REG_EXPAND_SZ /v "Icon" /d "%AndroidStudioPath%,0" /f
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\AndroidStudio\command" /t REG_SZ /v "" /d "%AndroidStudioPath% "%%V"" /f

    echo Adding folder entries
    @reg add "HKEY_CLASSES_ROOT\Directory\shell\AndroidStudio" /t REG_SZ /v "" /d "Open with AndroidStudio <3<3"   /f
    @reg add "HKEY_CLASSES_ROOT\Directory\shell\AndroidStudio" /t REG_EXPAND_SZ /v "Icon" /d "%AndroidStudioPath%,0" /f
    @reg add "HKEY_CLASSES_ROOT\Directory\shell\AndroidStudio\command" /t REG_SZ /v "" /d "%AndroidStudioPath% "%%1"" /f

    pause