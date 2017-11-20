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
	
* 执久化配置
	
	`vds.server.meta.persistent = {true|false}` 默认值为false
	
	* true
		
		所有DDL操作均被记录 当VDS重启时，将自动恢复。
		
	* false
		
		所有DDL操作均不记录，VDS重启后，会恢复到初始状态。
		
* 监控配置
	
	`vds.server.metrics.status = {true|false}` 默认值为false.
	
	* true 开启指标监控
	* false 关闭指标监控