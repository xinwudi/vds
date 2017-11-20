# 安装说明

* 解压vds-server.tar.gz文件，得到目录结构如下：

	``` 
	.
	├── bin
	│   ├── vds-server
	│   └── vds-server.bat
	├── etc
	│   ├── log4j2.xml
	│   ├── user.properties
	├── lib
	│   ├── h2-1.4.193.jar
	│   ├── mysql-connector-java-5.1.42.jar
	│   ├── netty-all-4.1.6.Final.jar
	│   ├── ......
	├── logs
	│   └── vds.log
	└── vds
	    ├── vds-core-{version}.jar
	    └── vds-server-{version}.jar
	```
	
* 给`vds-server`或`vds-server.bat`增加执行权限

	`chmod +x vds-server`
* 启动vds

	`Usage: ./vds-server {start|stop|restart|status|info|debug}`