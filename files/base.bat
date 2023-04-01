@echo off

REM admin solicitation
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

if '%errorlevel%' NEQ '0' (
    echo Solicitando privilegios administrativos...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"   

REM basic cmd config
title SDebloat - por Lucas Gabriel (lucmsilva)
cls

REM intro
echo SDebloat - por Lucas Gabriel (lucmsilva)
echo Pagina oficial: http://lucmsilva651.github.io/sdebloat
pause
cls

REM device check
echo Veja se o celular esta conectado corretamente:
adb devices
pause
cls

REM uninstalling apps
REM ------ separator
echo O aplicativo Samsung Push Service sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.sec.app.spush
echo O script tentou desinstalar o app Samsung Push Service. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo TV Digital sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.samsung.android.app.dtv.sbtvd
echo O script tentou desinstalar o app TV Digital. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Radio FM sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.sec.android.app.fm
echo O script tentou desinstalar o app Radio FM. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Game Optimizing Service sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.samsung.android.game.gos
echo O script tentou desinstalar o app Game Optimizing Service. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Game Launcher sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.samsung.android.game.gamehome
echo O script tentou desinstalar o app Game Launcher. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Game Tools sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.samsung.android.game.gametools
echo O script tentou desinstalar o app Game Tools. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo GOS Legacy sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.enhance.gameservice
echo O script tentou desinstalar o app GOS Legacy. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Email sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.samsung.android.email.provider
echo O script tentou desinstalar o app Email. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Word sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.microsoft.word
echo O script tentou desinstalar o app Word. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Excel sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.micorosoft.excel
echo O script tentou desinstalar o app Excel. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls


REM ------ separator
echo O aplicativo PowerPoint sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.microsoft.powerpoint
echo O script tentou desinstalar o app PowerPoint. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls


REM ------ separator
echo O aplicativo Skype sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.skype.raider
echo O script tentou desinstalar o app Skype. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Samsung Max (Opera Max) sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.opera.max.oem
echo O script tentou desinstalar o app Samsung Max. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Manual do Usuario sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.sec.android.usermanual
echo O script tentou desinstalar o app Manual do Usuario. Tudo deve estar funcionando corretamente. Senao, feche esta janela e faca o comando novamente.
pause
cls

REM ------ separator
echo O aplicativo Google Duo sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.google.android.apps.tachyon
echo O script tentou desinstalar o app Google Duo. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Samsung Internet sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.sec.android.app.sbrowser
echo O script tentou desinstalar o app Samsung Internet. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Facebook App Manager sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.facebook.appmanager
echo O script tentou desinstalar o app Facebook App Manager. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Facebook Services sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.facebook.services
echo O script tentou desinstalar o app Facebook Services. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Facebook App Installer sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.facebook.system
echo O script tentou desinstalar o app Facebook App Installer. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Facebook sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.facebook.katana
echo O script tentou desinstalar o app Facebook. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Gravador de voz sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.sec.android.app.voicenote
echo O script tentou desinstalar o app Gravador de voz. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Briefing Launcher sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 flipboard.boxer.app
echo O script tentou desinstalar o app Briefing Launcher. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo OneDrive (skydrive) sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.microsoft.skydrive
echo O script tentou desinstalar o app OneDrive. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Widget Galaxy Essentials sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.sec.android.widgetapp.samsungapps
echo O script tentou desinstalar o app Widget Galaxy Essentials. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Wearable Manager Installer sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.samsung.android.app.watchmanagerstub
echo O script tentou desinstalar o app Wearable Manager Installer. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Bixby Service sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.samsung.android.bixby.service
echo O script tentou desinstalar o app Bixby Service. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Samsung Members sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.samsung.android.voc
echo O script tentou desinstalar o app Samsung Members. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Samsung Health (e seus associados) sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.sec.android.shealth
adb shell pm uninstall --user 0 com.dsi.ant.server
adb shell pm uninstall --user 0 com.dsi.ant.plugins.antplus
adb shell pm uninstall --user 0 com.dsi.ant.service.socket
adb shell pm uninstall --user 0 com.dsi.ant.acquirechannels
echo O script tentou desinstalar o app Samsung Health e seus apps relacionados. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Samsung Kids Installer sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.samsung.android.kidsinstaller
echo O script tentou desinstalar o app Samsung Kids Installer. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Samsung Checkout sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.sec.android.app.billing
echo O script tentou desinstalar o app Samsung Checkout. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Reminder sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.samsung.android.app.reminder
echo O script tentou desinstalar o app Reminder. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM ------ separator
echo O aplicativo Lock Screen Stories sera desinstalado.
pause
cls
adb shell pm uninstall --user 0 com.samsung.android.keyguardmgsupdator
echo O script tentou desinstalar o app Lock Screen Stories. Se o app nao foi desinstalado, feche esta janela, e faca o comando manualmente.
pause
cls

REM end of script
taskkill /f /im adb.exe
echo SDebloat - por Lucas Gabriel (lucmsilva)
echo Somente baixe da pagina oficial: http://lucmsilva651.github.io/sdebloat
pause
success.vbs
exit