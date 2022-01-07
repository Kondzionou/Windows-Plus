@echo off


::NORMALNE USTAWIENIA 
color 0B
title Windows 11+

::MENU
:menu 
cls
::LOGO
    echo.
    echo.
    echo.
    echo            ##      ##  ##  ###   ## #######    #######  ##      ##  #######    ##    ##       
    echo            ##      ##  ##  ####  ## ##     ## ##     ## ##      ## ##        ####  ####  ##   
    echo            ##  ##  ##  ##  ## ## ## ##     ## ##     ## ##  ##  ##  ######     ##    ## #### 
    echo            ##  ##  ##  ##  ##  #### ##     ## ##     ## ##  ##  ##       ##    ##    ##  ##   
    echo             ########   ##  ##   ### #######    #######   ########  #######     ##    ##   
    echo. 
    echo.
    echo.
    echo --------------------------------------------------------------------------------------------------------

    ::GŁÓWNE OPCJE
    echo.
    ECHO 1. Off User Acces Control (UAC) on/off RESTART PC!
    ECHO 2. Delete Temporary/Log Files
    ECHO 3. Game Optimalization
    ECHO 4. Debload
    ECHO Q. Quit
    ECHO R. Reload
    ECHO C. CMD
    ECHO D. DEV
    echo.
    echo --------------------------------------------------------------------------------------------------------

    
        ::WYBÓR OPCJI ZMIENNA main - %main%
        set /p main=

            ::OPCJA 1
            IF '%main%'=='1' GOTO uac

            ::OPCJA 2
            IF '%main%'=='2' GOTO clear

            ::OPCJA 3
            IF '%main%'=='3' GOTO gameop

            ::OPCJA 4
            IF '%main%'=='4' GOTO debload

            ::WYCHODZI
            IF '%main%'=='Q' GOTO exit
            IF '%main%'=='q' GOTO exit

            ::PRZEŁADOWUJE PROGRAM
            IF '%main%'=='R' GOTO reload
            IF '%main%'=='r' GOTO reload

            ::OTWIERA CMD
            IF '%main%'=='C' GOTO cmd
            IF '%main%'=='c' GOTO cmd

            ::DEVELOPER
            IF '%main%'=='D' GOTO developer
            IF '%main%'=='d' GOTO developer



::UAC
:uac
cls
    echo.
    echo.
    echo.
    echo            ##      ##  ##  ###   ## #######    #######  ##      ##  #######    ##    ##       
    echo            ##      ##  ##  ####  ## ##     ## ##     ## ##      ## ##        ####  ####  ##   
    echo            ##  ##  ##  ##  ## ## ## ##     ## ##     ## ##  ##  ##  ######     ##    ## #### 
    echo            ##  ##  ##  ##  ##  #### ##     ## ##     ## ##  ##  ##       ##    ##    ##  ##   
    echo             ########   ##  ##   ### #######    #######   ########  #######     ##    ##   
    echo.
    echo.
    echo.

        ECHO User Acces Control 
        ECHO 1. OFF UAC
        ECHO 2. ON UAC
        ECHO 3. Back
        pause > nul
        set /p uac= 
        cls
        IF '%uac%'=='1' goto uacoff
        IF '%uac%'=='2' goto uacon
        IF '%uac%'=='3' goto reload

            ::UAC OFF
            :uacoff
                cls
                C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
                goto open2s
                exit

            ::UAC ON
            :uacon
                cls
                C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 1 /f
                goto open2s
                exit
                
    

::WSZYSTKIE LOGI ITP
:clear 
    cls
        echo.
        echo.
        echo.
        echo            ##      ##  ##  ###   ## #######    #######  ##      ##  #######    ##    ##       
        echo            ##      ##  ##  ####  ## ##     ## ##     ## ##      ## ##        ####  ####  ##   
        echo            ##  ##  ##  ##  ## ## ## ##     ## ##     ## ##  ##  ##  ######     ##    ## #### 
        echo            ##  ##  ##  ##  ##  #### ##     ## ##     ## ##  ##  ##       ##    ##    ##  ##   
        echo             ########   ##  ##   ### #######    #######   ########  #######     ##    ##   
        echo.
        echo.
        echo.

        ECHO DELETE LOG AND 
        ECHO 1. Delete Temporary Files
        ECHO 2. Delete Log File
        ECHO 3. Back
        pause > nul
        set /p clears= 
        cls
        IF '%clears%'=='1' goto tempomary
        IF '%clears%'=='2' goto log
        IF '%clears%'=='3' goto reload

            ::USUWANIE TEMP
            :tempomary
                cls
                del C:\Windows\Prefetch /Q
                rd "C:\Windows\Temp" /s /q
                md "C:\Windows\Temp" 
                rd %temp% /s /q
                md %temp%
                cls
                call "Main.bat" 


            ::USUWANIE LOG
            :log
                cd/
                del *.log /a /s /q /f
                cd /d %~dp0
                call "Main.bat"
                exit



::REGISTRY Z OPTYMALIZACJAMI 
:gameop
    cls
        echo.
        echo.
        echo.
        echo            ##      ##  ##  ###   ## #######    #######  ##      ##  #######    ##    ##       
        echo            ##      ##  ##  ####  ## ##     ## ##     ## ##      ## ##        ####  ####  ##   
        echo            ##  ##  ##  ##  ## ## ## ##     ## ##     ## ##  ##  ##  ######     ##    ## #### 
        echo            ##  ##  ##  ##  ##  #### ##     ## ##     ## ##  ##  ##       ##    ##    ##  ##   
        echo             ########   ##  ##   ### #######    #######   ########  #######     ##    ##   
        echo.
        echo.
        echo.

        ECHO Game Optimalizations  
        ECHO 1. General Game Optimalizations on/off
        ECHO 2. Less Ram on/off
        ECHO 3. Fullscreen FPS boost on/off
        ECHO 4. Disable DVR on/off
        ECHO 5. Back 
        pause > nul
        set /p gop= 
        cls
        IF '%gop%'=='1' goto generalgop
        IF '%gop%'=='2' goto lessram
        IF '%gop%'=='3' goto Fullscreen
        IF '%gop%'=='4' goto dvr
        IF '%gop%'=='5' goto reload


            ::WSZYSTKO
            :generalgop
                cls
                echo.
                echo.
                echo.
                echo            ##      ##  ##  ###   ## #######    #######  ##      ##  #######    ##    ##       
                echo            ##      ##  ##  ####  ## ##     ## ##     ## ##      ## ##        ####  ####  ##   
                echo            ##  ##  ##  ##  ## ## ## ##     ## ##     ## ##  ##  ##  ######     ##    ## #### 
                echo            ##  ##  ##  ##  ##  #### ##     ## ##     ## ##  ##  ##       ##    ##    ##  ##   
                echo             ########   ##  ##   ### #######    #######   ########  #######     ##    ##   
                echo.
                echo.
                echo.

                ECHO Game Optimalizations  
                ECHO 1. General Game Optimalizations ON
                ECHO 2. General Game Optimalizations OFF
                ECHO 3. Back 
                pause > nul
                set /p ggop= 
                cls
                IF '%ggop%'=='1' goto ongeneralgop
                IF '%ggop%'=='2' goto offgeneralgop
                IF '%ggop%'=='3' goto gameop


                ::WSZYTSKO WŁĄCZONE 
                :ongeneralgop
                    cls
                        C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
                        C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
                        C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d High /f
                        C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d High /f
                        C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0 /f
                    cls
                    call "Main.bat" 


                ::WSZYTSKO WYŁĄCZONE 
                :offgeneralgop
                    cls
                        C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 2 /f
                        C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
                        C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d Medium /f
                        C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d Normal /f
                        C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 10 /f
                    cls
                    call "Main.bat" 

            ::RAM
            :lessram
                cls
                echo.
                echo.
                echo.
                echo            ##      ##  ##  ###   ## #######    #######  ##      ##  #######    ##    ##       
                echo            ##      ##  ##  ####  ## ##     ## ##     ## ##      ## ##        ####  ####  ##   
                echo            ##  ##  ##  ##  ## ## ## ##     ## ##     ## ##  ##  ##  ######     ##    ## #### 
                echo            ##  ##  ##  ##  ##  #### ##     ## ##     ## ##  ##  ##       ##    ##    ##  ##   
                echo             ########   ##  ##   ### #######    #######   ########  #######     ##    ##   
                echo.
                echo.
                echo.

                ECHO Less Ram 
                ECHO 1. Less Ram ON
                ECHO 2. Less Ram OFF
                ECHO 3. Back 
                pause > nul
                set /p lram= 
                cls
                IF '%lram%'=='1' goto lramon
                IF '%lram%'=='2' goto lramoff
                IF '%lram%'=='3' goto gameop


                ::MNIEJ RAMU ON
                :lramon
                    cls
                        echo.
                        echo.
                        echo.
                        echo            ##      ##  ##  ###   ## #######    #######  ##      ##  #######    ##    ##       
                        echo            ##      ##  ##  ####  ## ##     ## ##     ## ##      ## ##        ####  ####  ##   
                        echo            ##  ##  ##  ##  ## ## ## ##     ## ##     ## ##  ##  ##  ######     ##    ## #### 
                        echo            ##  ##  ##  ##  ##  #### ##     ## ##     ## ##  ##  ##       ##    ##    ##  ##   
                        echo             ########   ##  ##   ### #######    #######   ########  #######     ##    ##   
                        echo.
                        echo.
                        echo.

                        ECHO How Much Ram do You Have?
                        ECHO 1. 4 GB
                        ECHO 2. 6 GB
                        ECHO 3. 8 GB
                        ECHO 4. 12 GB
                        ECHO 5. 16 GB
                        ECHO 6. 24 GB
                        ECHO 7. 32 GB
                        ECHO 8. 48 GB
                        ECHO 9. 64 GB
                        ECHO 10. Other
                        ECHO 11. Back 
                        pause > nul
                        set /p howmuchram= 
                        cls
                        IF '%howmuchram%'=='1' goto 4gbram
                        IF '%howmuchram%'=='2' goto 6gbram
                        IF '%howmuchram%'=='3' goto 8gbram
                        IF '%howmuchram%'=='4' goto 12gbram
                        IF '%howmuchram%'=='5' goto 16gbram
                        IF '%howmuchram%'=='6' goto 24gbram
                        IF '%howmuchram%'=='7' goto 32gbram
                        IF '%howmuchram%'=='8' goto 48gbram
                        IF '%howmuchram%'=='9' goto 64gbram
                        IF '%howmuchram%'=='10' goto otherram
                        IF '%howmuchram%'=='11' goto gameop


                        ::4gbramu
                        :4gbram
                        cls
                            C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x4194304 /f
                        cls
                        call "Main.bat"

                        ::6gbramu
                        :6gbram
                        cls
                            C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x6291456 /f
                        cls
                        call "Main.bat"

                        ::8gbramu
                        :8gbram
                        cls
                            C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x8388608 /f
                        cls
                        call "Main.bat"

                        ::12gbramu
                        :12gbram
                        cls
                            C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x12582912 /f
                        cls
                        call "Main.bat"

                        ::16gbramu
                        :16gbram
                        cls
                            C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x16777216 /f
                        cls
                        call "Main.bat"

                        ::24gbramu
                        :24gbram
                        cls
                            C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x25165824 /f
                        cls
                        call "Main.bat"

                        ::32gbramu
                        :32gbram
                        cls
                            C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x33554432 /f
                        cls
                        call "Main.bat"

                        ::48gbramu
                        :48gbram
                        cls
                            C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x50528256 /f
                        cls
                        call "Main.bat"

                        ::64gbramu
                        :64gbram
                        cls
                            C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x67108864 /f
                        cls
                        call "Main.bat"

                        
                        ::inne
                        :otherram
                        cls
                            C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x4000000 /f
                        cls
                        call "Main.bat"



                ::MNIEJ RAMU OFF
                :lramoff
                    cls
                        C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x380000 /f
                    cls
                    call "Main.bat"


::Windows jest zjebany i nawet fullscreen trzeba naprawiac japierdole
:Fullscreen
cls
echo.
echo.
echo.
echo            ##      ##  ##  ###   ## #######    #######  ##      ##  #######    ##    ##       
echo            ##      ##  ##  ####  ## ##     ## ##     ## ##      ## ##        ####  ####  ##   
echo            ##  ##  ##  ##  ## ## ## ##     ## ##     ## ##  ##  ##  ######     ##    ## #### 
echo            ##  ##  ##  ##  ##  #### ##     ## ##     ## ##  ##  ##       ##    ##    ##  ##   
echo             ########   ##  ##   ### #######    #######   ########  #######     ##    ##   
echo. 
echo.
echo.

ECHO Fullscreen
ECHO 1. Fullscreen on 
ECHO 2. Fullscreen off
ECHO 3. Back
pause > nul
set /p fscreen=
IF '%fscreen%'=='1' goto fscron
IF '%fscreen%'=='2' goto fscroff
IF '%fscreen%'=='3' goto gameop

::ON OFF BO CHUJ TO WIE 
:fscron
cls
C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d 2 /f
C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d 1 /f
C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 /f
C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d 1 /f
cls
call "Main.bat" 

:fscroff
cls
C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d 2 /f
C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d 0 /f
C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d 0 /f
C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d 0 /f
cls
call "Main.bat" 


::Chuj wie juz mi sie nie chce xD 
:dvr
cls
echo.
echo.
echo.
echo            ##      ##  ##  ###   ## #######    #######  ##      ##  #######    ##    ##       
echo            ##      ##  ##  ####  ## ##     ## ##     ## ##      ## ##        ####  ####  ##   
echo            ##  ##  ##  ##  ## ## ## ##     ## ##     ## ##  ##  ##  ######     ##    ## #### 
echo            ##  ##  ##  ##  ##  #### ##     ## ##     ## ##  ##  ##       ##    ##    ##  ##   
echo             ########   ##  ##   ### #######    #######   ########  #######     ##    ##   
echo. 
echo.
echo.

ECHO DVR
ECHO 1. DVR off 
ECHO 2. DVR on
ECHO 3. Back
pause > nul
set /p fscreen=
IF '%fscreen%'=='1' goto dvroff
IF '%fscreen%'=='2' goto dvron
IF '%fscreen%'=='3' goto gameop

::ON OFF BO CHUJ TO WIE 
:dvroff
cls
C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f
C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d 0 /f
cls
call "Main.bat" 

:dvron
cls
C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d 1 /f
C:\Windows\System32\cmd.exe /c %windir%\System32\reg.exe ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d 1 /f
cls
call "Main.bat" 


::DEBLOAD
:debload
cls
echo.
echo.
echo.
echo            ##      ##  ##  ###   ## #######    #######  ##      ##  #######    ##    ##       
echo            ##      ##  ##  ####  ## ##     ## ##     ## ##      ## ##        ####  ####  ##   
echo            ##  ##  ##  ##  ## ## ## ##     ## ##     ## ##  ##  ##  ######     ##    ## #### 
echo            ##  ##  ##  ##  ##  #### ##     ## ##     ## ##  ##  ##       ##    ##    ##  ##   
echo             ########   ##  ##   ### #######    #######   ########  #######     ##    ##   
echo. 
echo.
echo.

ECHO Debload
ECHO 1. 3D Paint 
ECHO 2. Random Usless Stuff
ECHO 3. Cortana
ECHO 4. Hello - Face
ECHO 5. Maps
ECHO 6. OneDrive
ECHO 7. Gethelp
ECHO 8. Random Usless Stuff v2
ECHO 9. Office, OneNote, StickiNotes
ECHO 10. Solitare Collection
ECHO 11. boost SSD
ECHO 12. Alarms and clock
ECHO 13. Your Phone
ECHO 14. Feedback
ECHO 15. BING 
ECHO 16. Dyktafon

pause > nul
set /p debload1=
IF '%debload1%'=='1' goto 3dpaint
IF '%debload1%'=='2' goto rus1
IF '%debload1%'=='3' goto cortana
IF '%debload1%'=='4' goto hface
IF '%debload1%'=='5' goto maps
IF '%debload1%'=='6' goto onedrive
IF '%debload1%'=='7' goto gethelp
IF '%debload1%'=='8' goto rus2
IF '%debload1%'=='9' goto offices
IF '%debload1%'=='10' goto solitarec
IF '%debload1%'=='11' goto bssd
IF '%debload1%'=='12' goto aclock
IF '%debload1%'=='13' goto phone
IF '%debload1%'=='14' goto feedback
IF '%debload1%'=='15' goto bing
IF '%debload1%'=='16' goto dyktafon



::PAINT
:3dpaint
cls
for /f "tokens=1* delims=" %I in (' reg query "HKEY_CLASSES_ROOT\SystemFileAssociations" /s /k /f "3D Edit" ^| find /i "3D Edit" ') do (reg delete "%I" /f )
for /f "tokens=1* delims=" %I in (' reg query "HKEY_CLASSES_ROOT\SystemFileAssociations" /s /k /f "3D Print" ^| find /i "3D Print" ') do (reg delete "%I" /f )
goto open2s
exit

::RandomUslessStuff
:rus1
cls
sc delete DiagTrack
sc delete dmwappushservice
sc delete WerSvc
sc delete OneSyncSvc
sc delete MessagingService
sc delete wercplsupport
sc delete PcaSvc
sc config wlidsvc start=demand
sc delete wisvc
sc delete RetailDemo
sc delete diagsvc
sc delete shpamsvc 
sc delete TermService
sc delete UmRdpService
sc delete SessionEnv
sc delete TroubleshootingSvc
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "wscsvc" ^| find /i "wscsvc"') do (reg delete %I /f)
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "OneSyncSvc" ^| find /i "OneSyncSvc"') do (reg delete %I /f)
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "MessagingService" ^| find /i "MessagingService"') do (reg delete %I /f)
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "PimIndexMaintenanceSvc" ^| find /i "PimIndexMaintenanceSvc"') do (reg delete %I /f)
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "UserDataSvc" ^| find /i "UserDataSvc"') do (reg delete %I /f)
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "UnistoreSvc" ^| find /i "UnistoreSvc"') do (reg delete %I /f)
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "BcastDVRUserService" ^| find /i "BcastDVRUserService"') do (reg delete %I /f)
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "Sgrmbroker" ^| find /i "Sgrmbroker"') do (reg delete %I /f)
sc delete diagnosticshub.standardcollector.service
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v Start /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v AITEnable /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisableInventory /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisablePCA /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisableUAR /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe" /v Debugger /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DeviceCensus.exe" /v Debugger /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
goto open2s
exit


::JCORTANA
:cortana
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules"  /v "{2765E0F4-2918-4A46-B9C9-43CDD8FCBA2B}" /t REG_SZ /d  "BlockCortana|Action=Block|Active=TRUE|Dir=Out|App=C:\windows\systemapps\microsoft.windows.cortana_cw5n1h2txyewy\searchui.exe|Name=Search  and Cortana  application|AppPkgId=S-1-15-2-1861897761-1695161497-2927542615-642690995-327840285-2659745135-2630312742|" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD /d 0 /f

Powershell.exe -executionpolicy remotesigned -File  %~dp0ps\p1.ps1


::hello face
:hface
schtasks /Change /TN "\Microsoft\Windows\HelloFace\FODCleanupTask" /Disable

Powershell.exe -executionpolicy remotesigned -File  %~dp0\ps\p2.ps1

::maps
:maps
sc delete MapsBroker
sc delete lfsvc
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /disable
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsToastTask" /disable

Powershell.exe -executionpolicy remotesigned -File  %~dp0\ps\p3.ps1

::OneDrive
:onedrive
%SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall
rd "%UserProfile%\OneDrive" /s /q
rd "%LocalAppData%\Microsoft\OneDrive" /s /q
rd "%ProgramData%\Microsoft OneDrive" /s /q
rd "C:\OneDriveTemp" /s /q
del "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk" /s /f /q
goto open2s
exit

::GETHELP UWU
:gethelp
install_wim_tweak /o /c Microsoft-Windows-ContactSupport /r

Powershell.exe -executionpolicy remotesigned -File  %~dp0\ps4\ps.ps1

::RandomUslessStuff1
:rus2
schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\AitAgent" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /disable
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /disable
schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /disable
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /disable
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /disable
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /disable
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyMonitor" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyRefresh" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /disable
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /disable
schtasks /Change /TN "Microsoft\Windows\Clip\License Validation" /disable
schtasks /Change /TN "\Microsoft\Windows\ApplicationData\DsSvcCleanup" /disable
schtasks /Change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable
schtasks /Change /TN "\Microsoft\Windows\PushToInstall\LoginCheck" /disable
schtasks /Change /TN "\Microsoft\Windows\PushToInstall\Registration" /disable
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitor" /disable
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitorToastTask" /disable
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyRefreshTask" /disable
schtasks /Change /TN "\Microsoft\Windows\Subscription\EnableLicenseAcquisition" /disable
schtasks /Change /TN "\Microsoft\Windows\Subscription\LicenseAcquisition" /disable
schtasks /Change /TN "\Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /disable
schtasks /Change /TN "\Microsoft\Windows\Diagnosis\Scheduled" /disable
schtasks /Change /TN "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable
del /F /Q "C:\Windows\System32\Tasks\Microsoft\Windows\SettingSync\*" 
goto open2s
exit

::Office etc.
:offices
cls
Powershell.exe -executionpolicy remotesigned -File  %~dp0ps\p1.ps1
PING -n 20 127.0.0.1
goto open2s
exit

::Solitare
:solitarec


::boooooost ssd
:bssd


::alarmy
:aclock


::Phone
:phone


::feedback
:feedback


::bing
:bing


::dyktafon
:dyktafon



:open2s
cd /d %~dp0
cls
call "Main.bat"


::PRZELADOAWNIE
:reload
    cls
    call "Main.bat" 
    cls


::ODPALA CMD
:cmd
    start cmd 
    call "Main.bat" 

::EXIT BO IDIOTA JESTEM
:exit
exit
