@echo off
set "WORKPLACE=E:\ProgramFiles\rocketmq-all-4.8.0-bin-release"
:: NameServer����
start %WORKPLACE%\bin\mqnamesrv.cmd
:: Broker����
start %WORKPLACE%\bin\mqbroker.cmd -n 127.0.0.1:9876 autoCreateTopicEnable=true
:: roketmq�����������
start %WORKPLACE%\rocketmq-ui\run-roketmq-ui.cmd
ECHO.
ECHO      RocketMQ�����ɹ�
ECHO.
:: delay_3s
call delay 3s

:finished
exit 

:delay_3s
ECHO.
ECHO      ......
ECHO.
ping -n 3 127.0.0.1 >NUL
goto finished