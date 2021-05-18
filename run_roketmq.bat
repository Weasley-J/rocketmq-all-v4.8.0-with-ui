@echo off
set "WORKPLACE=E:\ProgramFiles\rocketmq-all-4.8.0-bin-release"
:: NameServer启动
start %WORKPLACE%\bin\mqnamesrv.cmd
:: Broker启动
start %WORKPLACE%\bin\mqbroker.cmd -n 127.0.0.1:9876 autoCreateTopicEnable=true
:: roketmq管理界面启动
start %WORKPLACE%\rocketmq-ui\run-roketmq-ui.cmd
ECHO.
ECHO      RocketMQ启动成功
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