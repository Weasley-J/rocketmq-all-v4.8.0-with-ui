@echo off
set "WORKPLACE=E:\ProgramFiles\rocketmq-all-4.8.0-bin-release"
set "JDK8_DIR=C:\Program Files\Java\jdk1.8.0_291\bin\java"
:: roketmq管理界面jar
set "rocketmq_console=%WORKPLACE%\rocketmq-ui\rocketmq-console-ng-1.0.0.jar"
:: if this value is empty,use env value rocketmq.config.namesrvAddr  NAMESRV_ADDR | now, 
:: you can set it in ops page.default localhost:9876
set "JAVA_OPTS=--rocketmq.config.namesrvAddr=127.0.0.1:9876 --server.port=8080"
"%JDK8_DIR%" -jar %rocketmq_console% %JAVA_OPTS%
pause && exit