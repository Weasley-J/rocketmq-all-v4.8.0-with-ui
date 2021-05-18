# `rocketmq-all-4.8.0-bin-release`

> **包含`UI`套件**

`springboot`项目路径`springboot-full`：

- 生产者

`roketmq-producer`

- 消费者

`roketmq-consumer`



## 1 需要修改文件列表

| 文件名               | 位置                    |
| -------------------- | ----------------------- |
| `run_roketmq.bat`    | 修改变量`WORKPLACE`的值 |
| `run-roketmq-ui.cmd` | 修改变量`WORKPLACE`的值 |
| `run-roketmq-ui.cmd` | 修改变量`JDK8_DIR`的值  |



## 2 启动整套`MQ`服务

Windows直接壮双击`run_roketmq.bat`启动即可，Mac OS自己模仿我这个写个Linux shell命令行...

然后浏览器访问：http://127.0.0.1:8080

启动成功应该是3个窗口：

- `UI黑窗口`

![image-20210518170810913](https://alphahub-test-bucket.oss-cn-shanghai.aliyuncs.com/image/image-20210518170810913.png)

![image-20210518171057644](https://alphahub-test-bucket.oss-cn-shanghai.aliyuncs.com/image/image-20210518171057644.png)

![image-20210518170909134](https://alphahub-test-bucket.oss-cn-shanghai.aliyuncs.com/image/image-20210518170909134.png)

## 3 `MQ`总结

项目首推`RabbitMQ`，除非公司强制使用`RoketMQ`否则就不要去尝试了。

