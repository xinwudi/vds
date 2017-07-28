# 快速入门

* 第一步： 连接到VDS。
	
	* 使用命令行连接
		
		
		`mysql -h {ip} -P {port} -u {user} -p -A --prompt='vds>'`
	* 通过jdbc连接
		
		`jdbc:mysql://{ip}:{port}`
		

		
		初始用户信息：vds/tydic

* 第二步： 创建Backend。

	* 说明：
		
		Backend，后端数据源，即实际存储数据的物理数据库。在使用VDS前，首先应该创建若干个Backend。
	* 示例：
	
	``` sql
	CREATE BACKEND IF NOT EXISTS B1(
  		url 'jdbc:mysql://vds.tydic.com:3307/vds',
  		username 'root',
  		password '1234qwer',
  		initial_size 1,
  		max_active 200
	);
	CREATE BACKEND IF NOT EXISTS B2(
 	 	url 'jdbc:mysql://vds.tydic.com:3308/vds',
 		username 'root',
  		password '1234qwer',
  		initial_size 1,
  		max_active 200
	);	
	```
	
	
* 第三步： 创建Table。

	* 说明：
		
		VDS中的Table是一种逻辑表，本身只存储表结构，数据分布规则等；真实的数据根据路由规则映射到Backend上面。
	* 示例：
	
	``` sql
	-- 以a作为分库键，通过hash规则进行分库
	CREATE TABLE IF NOT EXISTS T1 (
 		a int,
  		b int,
  		c int,
  		PRIMARY KEY(a)) 
	ENGINE=VDS SHARDING BY HASH(a) SEGMENTS 2(
  		'T1@B1',
  		'T1@B2'
	);
	``` 

