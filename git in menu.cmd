winget install -e --id Git.Git --location "C:\MyPrograms\Git"

        @echo off

    :: change the path below to match your installed version
    SET GitGUI=C:\MyPrograms\Git\cmd\git-gui.exe
    SET GitBASH=C:\MyPrograms\Git\git-bash.exe


    echo Adding file entries
    @reg add "HKEY_CLASSES_ROOT\*\shell\git_gui" /t REG_SZ /v "" /d "Open with git GUI <3<3"   /f
    @reg add "HKEY_CLASSES_ROOT\*\shell\git_gui" /t REG_EXPAND_SZ /v "Icon" /d "%GitGUI%,0" /f
    @reg add "HKEY_CLASSES_ROOT\*\shell\git_gui\command" /t REG_SZ /v "" /d ""%GitGUI%" "--working-dir" "%%1"" /f
     
    echo Adding within a folder entries
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\git_gui" /t REG_SZ /v "" /d "Open with git GUI <3<3"   /f
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\git_gui" /t REG_EXPAND_SZ /v "Icon" /d "%GitGUI%,0" /f
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\git_gui\command" /t REG_SZ /v "" /d ""%GitGUI%" "--working-dir" "%%V"" /f

    echo Adding folder entries
    @reg add "HKEY_CLASSES_ROOT\Directory\shell\git_gui" /t REG_SZ /v "" /d "Open with git GUI <3<3"   /f
    @reg add "HKEY_CLASSES_ROOT\Directory\shell\git_gui" /t REG_EXPAND_SZ /v "Icon" /d "%GitGUI%,0" /f
    @reg add "HKEY_CLASSES_ROOT\Directory\shell\git_gui\command" /t REG_SZ /v "" /d ""%GitGUI%" "--working-dir" "%%1"" /f



    echo Adding file entries
    @reg add "HKEY_CLASSES_ROOT\*\shell\git_shell" /t REG_SZ /v "" /d "Open with git BASH <3<3"   /f
    @reg add "HKEY_CLASSES_ROOT\*\shell\git_shell" /t REG_EXPAND_SZ /v "Icon" /d "%GitBASH%,0" /f
    @reg add "HKEY_CLASSES_ROOT\*\shell\git_shell\command" /t REG_SZ /v "" /d ""%GitBASH%" "--cd=%%1"" /f
     
    echo Adding within a folder entries
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\git_shell" /t REG_SZ /v "" /d "Open with git BASH <3<3"   /f
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\git_shell" /t REG_EXPAND_SZ /v "Icon" /d "%GitBASH%,0" /f
    @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\git_shell\command" /t REG_SZ /v "" /d ""%GitBASH%" "--cd=%%V"" /f

    echo Adding folder entries
    @reg add "HKEY_CLASSES_ROOT\Directory\shell\git_shell" /t REG_SZ /v "" /d "Open with git BASH <3<3"   /f
    @reg add "HKEY_CLASSES_ROOT\Directory\shell\git_shell" /t REG_EXPAND_SZ /v "Icon" /d "%GitBASH%,0" /f
    @reg add "HKEY_CLASSES_ROOT\Directory\shell\git_shell\command" /t REG_SZ /v "" /d ""%GitBASH%" "--cd=%%1"" /f

    pause 
