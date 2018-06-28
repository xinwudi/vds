# IP限制功能 #

## 创建IP黑白名单

* Create IpFilter

	*语法描述
	
	```sql
	CREATE IPFILTER [IF NOT EXISTS] user_name SET WHITE = 'IP_ADDRESS'
	[, BLACK = 'IP_ADDRESS']
	```

	* 语句说明

	user_name必须为存在的user，IP_ADDRESS的格式有三种：192.168.1.1,192.168.2.*,192.168.3.17-192.168.3.38。
	IP名单为空，管理员只能本地登陆，普通用户无限制。
	以黑名单为主。本地登陆默认白名单，除非将本地登陆加入黑名单（127.0.0.1|0.0.0.0.0.0.0.1）

	* 应用实例

	```sql
	vds> CREATE IPFILTER IF NOT EXISTS U2 SET WHITE = '192.168.1.1,192.168.2.*,192.168.3.17-192.168.3.38' , BLACK = '192.168.0.1';
	```


## 删除IP黑白名单

* Drop IpFilter

	* 语法描述

	``sql
	DROP IPFILTER [IF EXISTS] user_name
	```

	* 语句说明
	删除指定user的IP限制，不会删除user。

	*应用实例


## 修改IP黑白名单

* Alter IpFilter

	* 语法描述

	```sql
	ALTER IPFILTER user_name SET WHITE = 'IP_ADDRESS' [, BLACK = 'IP_ADDRESS']
	```
	* 语句说明

	user_name必须为已存在的IPFILTER，WHITE和BLACK无先后顺序。

	* 应用实例

	```sql
	vds> ALTER IPFILTER U2 SET WHITE = '192.168.0.1' , BLACK = '192.168.1.1,192.168.2.*,192.168.3.17-192.168.3.38';
	```


## 查询IP限制信息

* Select * From Information_vds.IpFilters

	* 语法描述

	```sql
	SELECT * FROM INFORMATION_VDS.IPFILTERS
	```

	* 语句说明

	会显示所有user的IP限制信息和所属租户，没有创建IPFILTER的user也会显示。

	* 应用实例

	```sql
	vds> select * from information_vds.ipfilters;
	+------+-------+-------+--------+
	| USER | WHITE | BLACK | TENANT |
	+------+-------+-------+--------+
	| VDS  | NULL  | NULL  | ADMIN  |
	|      | NULL  | NULL  | ADMIN  |
	+------+-------+-------+--------+
	2 rows in set (0.03 sec)
	```
