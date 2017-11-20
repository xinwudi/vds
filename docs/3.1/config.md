# 配置说明


配置文件位置： `etc/user.properties`

* 监听端口配置

	`vds.server.port = {port}`
	默认值为`3088`。
* 监听线程配置

	`vds.server.group.boss = {count}`
	默认值为`1`，此线程主要用于监听连接，一般不需要改动。
* 工作线程配置

	`vds.server.group.worker = {count}`
	默认值为`4`，此线程池用于处理业务请求，是主要的工作线程。建议适当增加。
* 初始化配置

	`vds.server.init.sql = {*.sql}`
	默认值为`classpath:/system_init.sql`, 多个脚本文件以`,`分隔。
* 运行模式配置
	
	`vds.server.meta.args = {option}`
	
	* 临时模式（默认）
		
		所有DDL操作均不会被记录，只在当前进程内有效。 当VDS重启时，所有修改内容丢失。用于开发或测试。
	* 本地模式
		
		所有DDL操作均记录在本地，在进程重启后，将按顺序恢复重做。
		
		`vds.server.meta.args = h2:{file};{user};{password}`
	* 分布式模式 

		所有DDL操作通过`Zookeeper`进行协调同步。元数据变更在多个VDS实例中保持一致。
		
		`vds.server.meta.args = zookeeper:{ip:port,... };{timeout}`