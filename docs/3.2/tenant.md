# TENANT多租户 #

## 一、创建租户 ##
* **Create Tenant**

	* 语法描述

	```sql
	CREATE TENANT [IF NOT EXISTS] ten_name [sessions num]
	```
	* 语句说明

	ten_name不能和已有的user，role，tenant重名，不区分大小写。
	sessions num为相同tenant所属user全部连接数的上限，不加默认无上限。

	* 应用实例

## 二、删除租户 ##
* **Drop Tenant**

	* 语法描述

	```sql
	DROP TENANT [IF EXISTS] ten_name
	```
	* 语句说明
	
	user的对应租户也会删除，所以不需要先移除user租户权限。

	* 应用实例


## 三、修改租户最大连接数 ##
* **Alter Tenant**

	* 语法描述

	```sql
	ALTER TENANT ten_name sessions num
	```
	* 语句说明

	num数量最大为2^31-1

	* 应用实例

## 四、查询租户 ##
* **Select * From Information_vds.tenants**

	* 语法描述
	
	```sql
	SELECT * FROM INFORMATION_VDS.TENANTS
	```
	* 语句说明

	查询所有租户

	* 应用实例

	```sql
	vds> create TENANT IF NOT EXISTS T1 sessions 10;

	Query OK, 0 rows affected (0.00 sec)

	vds> select * from information_vds.tenants;

	+------+---------+
	| NAME | SESSION |
	+------+---------+
	| T1   | 10      |
	+------+---------+
	1 row in set (0.51 sec)
	```

## 五、租户权限赋予##
* **grant vds**
* 
	* 语法描述

	```sql
	GRANT VDS ROLE|TENANT|[RIGHT ON SCHEMA|TABLE] TO TENANT|USER
	```

	* 语句说明

	role和right请参考H2的grant语法，H2自带grant语法未屏蔽，可以正常使用。
	tenant相当于role的权限扩展，继承了role，建议使用grant vds role to tenant。

	* 应用实例

	```sql
	vds> create user if not exists U2 password '123456';
	Query OK, 0 rows affected (0.01 sec)

	vds> create tenant if not exists T1 sessions 10;
	Query OK, 0 rows affected (0.00 sec)

	vds> select * from information_vds.ipfilters where user = 'U2';
	+------+-------+-------+--------+
	| USER | WHITE | BLACK | TENANT |
	+------+-------+-------+--------+
	| U2   | NULL  | NULL  | NULL   |
	+------+-------+-------+--------+
	1 row in set (0.01 sec)

	vds> grant vds T1 to U2;
	Query OK, 0 rows affected (0.01 sec)

	vds> select * from information_vds.ipfilters where user = 'U2';
	+------+-------+-------+--------+
	| USER | WHITE | BLACK | TENANT |
	+------+-------+-------+--------+
	| U2   | NULL  | NULL  | T1     |
	+------+-------+-------+--------+
	1 row in set (0.01 sec)
	```

## 六、移除权限##

* **Revoke vds**

	* 语法描述

	```sql
	REVOKE VDS ROLE|TENANT|[RIGHT ON SCHEMA|TABLE] FROM TENANT|USER
	```

	* 语句说明

	注意revoke与grant区别在于将to改为from。

	* 应用实例

	```sql
	vds> create user if not exists U2 password '123456';
	Query OK, 0 rows affected (0.01 sec)

	vds> create tenant if not exists T1 sessions 10;
	Query OK, 0 rows affected (0.00 sec)

	vds> select * from information_vds.ipfilters where user = 'U2';
	+------+-------+-------+--------+
	| USER | WHITE | BLACK | TENANT |
	+------+-------+-------+--------+
	| U2   | NULL  | NULL  | NULL   |
	+------+-------+-------+--------+
	1 row in set (0.01 sec)

	vds> grant vds T1 to U2;
	Query OK, 0 rows affected (0.01 sec)

	vds> select * from information_vds.ipfilters where user = 'U2';
	+------+-------+-------+--------+
	| USER | WHITE | BLACK | TENANT |
	+------+-------+-------+--------+
	| U2   | NULL  | NULL  | T1     |
	+------+-------+-------+--------+
	1 row in set (0.01 sec)

	vds> revoke vds T1 from U2;
	Query OK, 0 rows affected (0.01 sec)

	vds> select * from information_vds.ipfilters where user = 'U2';
	+------+-------+-------+--------+
	| USER | WHITE | BLACK | TENANT |
	+------+-------+-------+--------+
	| U2   | NULL  | NULL  | NULL   |
	+------+-------+-------+--------+
	1 row in set (0.00 sec)
	```

	