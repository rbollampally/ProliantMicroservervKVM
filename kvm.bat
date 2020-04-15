@echo off

rem set /P drachost="Host: "
set drachost=192.168.1.4
set /p dracuser="Username: "
set "psCommand=powershell -Command "$pword = read-host 'Enter Password' -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
        [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set dracpwd=%%p

.\bin\java -cp avctKVM.jar -Djava.library.path=.\lib com.avocent.kvm.client.Main ip=%drachost% kmport=2068 vport=2068 user=%dracuser% passwd=%dracpwd% apcp=1 version=2 vmprivilege=true "helpurl=https://%drachost%:443/help/contents.html"
pause
