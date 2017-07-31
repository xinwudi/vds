# VDS SQL语法


## DML

### Explain

* 语法描述
* 语句说明

### Explain Analyze

## DAL

### SHOW

* show backends

	* 语法描述
	
	```sql
	SHOW BACKENDS
	```
	* 语句说明
	
		显示系统内所有的后端物理数据源信息。
	* 应用实例
	
	```sql
	vds>show backends;
    +-----------+---------------------------------+-------+-----------+------------+
    | NAME      | URL                             | TYPE  | USER_NAME | MAX_ACTIVE |
    +-----------+---------------------------------+-------+-----------+------------+
    | mysql3307 | jdbc:mysql://vds.tydic.com:3307 | mysql | root      | 200        |
    | mysql3308 | jdbc:mysql://vds.tydic.com:3308 | mysql | root      | 200        |
    +-----------+---------------------------------+-------+-----------+------------+
    2 rows in set (0.01 sec)

	```

* show backend status

	* 语法描述
	
	```sql
	SHOW BACKEND STATUS [FROM BKD_NAME]
	```
	* 语句说明
	
		显示后端物理数据源的状态信息。
		FROM BKD_NAME子句可以查看指定数据源的状态信息。
	* 应用实例
	
	```sql
	vds>show backend status;
    +-----------+---------------------------------+-------+-----------+-------------+------------+---------+---------+---------+
    | BKD_NAME  | URL                             | TYPE  | USER_NAME | INITIALSIZE | MAX_ACTIVE | MINIDLE | MAXIDLE | MAXWAIT |
    +-----------+---------------------------------+-------+-----------+-------------+------------+---------+---------+---------+
    | mysql3307 | jdbc:mysql://vds.tydic.com:3307 | mysql | root      | 1           | 200        | 0       | 8       | -1      |
    | mysql3308 | jdbc:mysql://vds.tydic.com:3308 | mysql | root      | 1           | 200        | 0       | 8       | -1      |
    +-----------+---------------------------------+-------+-----------+-------------+------------+---------+---------+---------+
    2 rows in set (0.01 sec)
	```
* show variables

	* 语法描述
	
	```sql
	SHOW VARIABLES
	```
	* 语句说明
	
		显示系统变量的值。
	* 应用实例
	
	```sql
	vds> show variables;
    +------------------------+----------+
    | VARIABLE_NAME          | VALUE    |
    +------------------------+----------+
    | lower_case_file_system | ON       |
    | lower_case_table_names | 1        |
    | max_allowed_packet     | 16777216 |
    +------------------------+----------+
    3 rows in set (0.00 sec)
	```
* show warnings
	* 语法描述
	
	```sql
	SHOW WARNINGS 
	```
	* 语句说明
	
		显示在当前会话中执行语句所产生的条件(错误、警告和注释)的信息。
	* 应用实例
	
	```sql
	vds>show warnings;
    Empty set (0.01 sec)
	```
	
* show full tables
	* 语法描述
	
	```sql
	SHOW FULL TABLES FROM DB_NAME
	```
	* 语句说明
	
		显示指定数据库的表的信息
	* 应用实例
	
	```sql
	vds> show full tables from scott;
    +--------------------+--------------+
    | TABLE_NAME         | TABLE_SCHEMA |
    +--------------------+--------------+
    | dept_emp_relation2 | scott        |
    | emp_mgr            | scott        |
    | dept               | scott        |
    | dept_emp_relation1 | scott        |
    | salgrade           | scott        |
    | emp                | scott        |
    | bonus              | scott        |
    | dept_emp_relation  | scott        |
    +--------------------+--------------+
    8 rows in set (0.01 sec)

	```
* show full columns
	* 语法描述
	
	```sql
	SHOW FULL COLUMNS FROM TBL_NAME [FROM DB_NAME]
	```
	* 语句说明
	
		显示系统的表的列的信息
	* 应用实例
	
	```sql
	vds> show full columns from dept from scott;
    +-------+-------+--------+---------+-----------------+------+------+---------+-------+---------------------------------+---------+
    | DB    | TABLE | FIELD  | TYPE    | COLLATION       | NULL | KEY  | DEFAULT | EXTRA | PRIVILEGES                      | COMMENT |
    +-------+-------+--------+---------+-----------------+------+------+---------+-------+---------------------------------+---------+
    | scott | dept  | deptno | integer | utf8_general_ci | NO   |      | NULL    |       | select,insert,update,references |         |
    | scott | dept  | dname  | varchar | utf8_general_ci | YES  |      | NULL    |       | select,insert,update,references |         |
    | scott | dept  | loc    | varchar | utf8_general_ci | YES  |      | NULL    |       | select,insert,update,references |         |
    +-------+-------+--------+---------+-----------------+------+------+---------+-------+---------------------------------+---------+
    3 rows in set (0.01 sec)

	```
* show index
	* 语法描述
	
	```sql
	SHOW FULL INDEX FROM TBL_NAME [FROM DB_NAME]
	```
	* 语句说明
	
		显示系统的索引信息
	* 应用实例
	
	```sql
	 vds> use scott;
    Database changed
  vds> show index from dept;
    +-------+-------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+---------+------------+
    | DB    | TABLE | NON_UNIQUE | KEY_NAME | SEQ_IN_INDEX | COLUMN_NAME | COLLATION | CARDINALITY | SUB_PART | PACKED | NULL | COMMENT | INDEX_TYPE |
    +-------+-------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+---------+------------+
    | scott | dept  |          1 | INDEX    |            1 | deptno      | A         |           0 |     NULL |   NULL |      |         | a          |
    | scott | dept  |          1 | INDEX    |            2 | dname       | A         |           0 |     NULL |   NULL |      |         | a          |
    | scott | dept  |          1 | INDEX    |            3 | loc         | A         |           0 |     NULL |   NULL |      |         | a          |
    | scott | dept  |          1 | INDEX    |            1 | deptno      | A         |           0 |     NULL |   NULL |      |         | a          |
    | scott | dept  |          1 | INDEX    |            2 | dname       | A         |           0 |     NULL |   NULL |      |         | a          |
    | scott | dept  |          1 | INDEX    |            3 | loc         | A         |           0 |     NULL |   NULL |      |         | a          |
    +-------+-------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+---------+------------+
    6 rows in set (0.01 sec)
	```
* show tables
	* 语法描述
	
	```sql
	SHOW TABLES [FROM DB_NAME]
	```
	* 语句说明
	
		显示指定数据库的表的信息
	* 应用实例
	
	```sql
	 vds>use scott;	
    Database changed
  vds> show tables;
    +--------------------+--------------+
    | TABLE_NAME         | TABLE_SCHEMA |
    +--------------------+--------------+
    | bonus              | scott        |
    | dept               | scott        |
    | dept_emp_relation  | scott        |
    | dept_emp_relation1 | scott        |
    | dept_emp_relation2 | scott        |
    | emp                | scott        |
    | emp_mgr            | scott        |
    | salgrade           | scott        |
    +--------------------+--------------+
    8 rows in set (0.01 sec)

	```
* show table status
	* 语法描述
	
	```sql
	SHOW TABLE STATUS FROM DB_NAME
	```
	* 语句说明
	
		显示系统表的状态信息
	* 应用实例
	
	```sql
	vds> show table status from scott;
    +--------------+--------------------+--------+---------+------------+------+----------------+-------------+-----------------+--------------+-----------+----------------+-------------+-------------+------------+-----------------+----------+----------------+----------------------+
    | TABLE_SCHEMA | TABLE_NAME         | ENGINE | VERSION | ROW_FORMAT | ROWS | AVG_ROW_LENGTH | DATA_LENGTH | MAX_DATA_LENGTH | INDEX_LENGTH | DATA_FREE | AUTO_INCREMENT | CREATE_TIME | UPDATE_TIME | CHECK_TIME | COLLATION       | CHECKSUM | CREATE_OPTIONS | COMMENT              |
    +--------------+--------------------+--------+---------+------------+------+----------------+-------------+-----------------+--------------+-----------+----------------+-------------+-------------+------------+-----------------+----------+----------------+----------------------+
    | scott        | dept_emp_relation2 | InnoDB |      10 | Compact    |    0 |              0 |       16384 |               0 |            0 |         0 |           NULL |        NULL |        NULL |       NULL | utf8_general_ci |     NULL |                | InnoDB free: 4096 kB |
    | scott        | emp_mgr            | InnoDB |      10 | Compact    |    0 |              0 |       16384 |               0 |            0 |         0 |           NULL |        NULL |        NULL |       NULL | utf8_general_ci |     NULL |                | InnoDB free: 4096 kB |
    | scott        | dept               | InnoDB |      10 | Compact    |    0 |              0 |       16384 |               0 |            0 |         0 |           NULL |        NULL |        NULL |       NULL | utf8_general_ci |     NULL |                | InnoDB free: 4096 kB |
    | scott        | dept_emp_relation1 | InnoDB |      10 | Compact    |    0 |              0 |       16384 |               0 |            0 |         0 |           NULL |        NULL |        NULL |       NULL | utf8_general_ci |     NULL |                | InnoDB free: 4096 kB |
    | scott        | salgrade           | InnoDB |      10 | Compact    |    0 |              0 |       16384 |               0 |            0 |         0 |           NULL |        NULL |        NULL |       NULL | utf8_general_ci |     NULL |                | InnoDB free: 4096 kB |
    | scott        | emp                | InnoDB |      10 | Compact    |    0 |              0 |       16384 |               0 |            0 |         0 |           NULL |        NULL |        NULL |       NULL | utf8_general_ci |     NULL |                | InnoDB free: 4096 kB |
    | scott        | bonus              | InnoDB |      10 | Compact    |    0 |              0 |       16384 |               0 |            0 |         0 |           NULL |        NULL |        NULL |       NULL | utf8_general_ci |     NULL |                | InnoDB free: 4096 kB |
    | scott        | dept_emp_relation  | InnoDB |      10 | Compact    |    0 |              0 |       16384 |               0 |            0 |         0 |           NULL |        NULL |        NULL |       NULL | utf8_general_ci |     NULL |                | InnoDB free: 4096 kB |
    +--------------+--------------------+--------+---------+------------+------+----------------+-------------+-----------------+--------------+-----------+----------------+-------------+-------------+------------+-----------------+----------+----------------+----------------------+
    8 rows in set (0.01 sec)
	```
* show create table
	* 语法描述
	
	```sql
	SHOW CREATE TABLE TBL_NAME
	```
	* 语句说明
	
		显示建表语句信息
	* 应用实例
	
	```sql
	vds>  show create table dept;
    +-------+------------------------------------------------------------------------------------------------------------------------------+
    | TABLE | CREATE TABLE                                                                                                                 |
    +-------+------------------------------------------------------------------------------------------------------------------------------+
    | DEPT  | CREATE TABLE SCOTT.DEPT(\n    DEPTNO INT NOT NULL,\n    DNAME VARCHAR(30) DEFAULT NULL,\n    LOC VARCHAR(30) DEFAULT NULL\n) |
    +-------+------------------------------------------------------------------------------------------------------------------------------+
    1 row in set (0.00 sec)
	
	```
* show columns
	* 语法描述
	
	```sql
	SHOW COLUMNS FROM TBL_NAME [FROM DB_NAME]
	```
	
	* 语句说明
	
		查看列的信息
	* 应用实例
	
	```sql
	vds> show columns from scott.dept;
    +--------+-------------+------+------+---------+------------------+
    | FIELD  | TYPE        | NULL | KEY  | DEFAULT | ORDINAL_POSITION |
    +--------+-------------+------+------+---------+------------------+
    | deptno | integer(10) | NO   |      | NULL    |                1 |
    | dname  | varchar(30) | YES  |      | NULL    |                2 |
    | loc    | varchar(30) | YES  |      | NULL    |                3 |
    +--------+-------------+------+------+---------+------------------+
    3 rows in set (0.01 sec)
	```
* show logic index
 
	* 语法描述
	
	```sql
	SHOW LOGIC INDEX FROM tbl_name
	```
	
	* 语句说明
	
		查看逻辑索引的信息
	* 应用实例
	
	```sql
	vds>show logic index from scott.dept;
    +-------+-------+----------+---------------+
    | DB    | TABLE | INDEX_ID | INDEX_TYPE    |
    +-------+-------+----------+---------------+
    | SCOTT | DEPT  | 50       | ScanIndex     |
    | SCOTT | DEPT  | 49       | ShardingIndex |
    +-------+-------+----------+---------------+
    2 rows in set (0.01 sec)
	```
* show session status
	* 语法描述
	
	```sql
	SHOW SESSION STATUS
	```
	
	* 语句说明
	
		查看当前会话的状态
	* 应用实例
	
	```sql
	vds>show session status;
    +---------------------+------+---------------+----------------+
    | CURRENT_SCHEMA_NAME | USER | LOCK_TIME_OUT | QUERY_TIME_OUT |
    +---------------------+------+---------------+----------------+
    | PUBLIC              | VDS  | 2000          | 0              |
    +---------------------+------+---------------+----------------+
    1 row in set (0.01 sec)
	```
* show current transaction
	* 语法描述
	
	```sql
	SHOW CURRENT TRANSACTION
	```
	* 语句说明
	
		查看当前事务的状态。
	* 应用实例
	
	```sql
	vds>show current transaction;
    +-----------------------------------+------------------+----------------+
    |               URL                 | CONNECTION_TYPE  | START_TIME     |
    +-----------------------------------+------------------+----------------+
    |jdbc:mysql://vds.tydic.com:3307/VDS| PooledConnection | 20170720 16154 |
    +-----------------------------------+------------------+----------------+
    |jdbc:mysql://vds.tydic.com:3308/VDS| PooledConnection | 20170720 16154 |
    +-----------------------------------+------------------+----------------+
	```
* show segment
	* 语法描述
	
	```sql
	SHOW SEGMENT FROM tbl_name
	```
	* 语句说明
	
		显示vds分段，每个分段对应现实存在的物理表。
	* 应用实例
	
	```sql
	vds>show segment from scott.dept;
    +-------+-------+---------------------------------+---------------+----------------+
    | DB    | TABLE | URL                             | SEGMENT_COUNT | PHYSICAL_TABLE |
    +-------+-------+---------------------------------+---------------+----------------+
    | SCOTT | DEPT  | jdbc:mysql://vds.tydic.com:3308 | 1             | VDS.DEPT       |
    | SCOTT | DEPT  | jdbc:mysql://vds.tydic.com:3307 | 1             | VDS.DEPT       |
    +-------+-------+---------------------------------+---------------+----------------+
    2 rows in set (0.15 sec)
	```
* show help
	* 语法描述
	
	```sql
	SHOW HELP
	```
	* 语句说明
	
		显示系统内所有的指令信息。
	* 应用实例
	
	```sql
	vds>show help;
    +--------------------------+----------------------------+
    | STATEMENT                | DESCRIPTION                |
    +--------------------------+----------------------------+
    | show backends            | Report backends            |
    | show backend status      | Report backend status      |
    | show current transaction | Report current transaction |
    | show help                | Report VDS command         |
    | show index               | Report VDS index           |
    | show logic index         | Report logic index         |
    | show segment             | Report segment             |
    | show session status      | Report session status      |
    +--------------------------+----------------------------+
	```
* show slow querys
	* 语法描述
	
	```sql
	SHOW SLOW QUERYS [LIMIT row_count]
	```
	* 语句说明
	
		显示系统内的慢SQL语句，只记录最近的一千条慢SQL语句。LIMIT子句可以设置显示的记录数。
	* 应用实例
	
	```sql
	vds> show slow querys limit 3;
     +---------------------------------------------+-------------+
     | SLOW_QUERY                                  | TIME_MILLIS |
     +---------------------------------------------+-------------+
     | DROP TABLE T1 CASCADE BACKENDS              | 46          |
     | DROP TABLE T1 CASCADE BACKENDS              | 38          |
     | insert into T1 values(1,2,3,'rt')           | 32          |                                                                                                         
     +---------------------------------------------+-------------+                             
     3 rows in set (0.00 sec)
	```
* show druid monitor
	* 语法描述
	
	```sql
	SHOW DRUID MONITOR
	```
	* 语句说明
	
		显示druid的监控信息。
	* 应用实例
	
	```sql
	vds> show druid monitor;
    +-----------------------------------+-------------+---------------+----------------+-----------------------------+--------------+------------------+----------------------------+---------------+--------------+--------------+--------------+
    |URL                                |TYPE         |POOLING_COUNT  |POOLING_PEAK    |POOLING_PEAKTIME             |ACTIVE_COUNT  |ACTIVE_PEAK       |ACTIVE_PEAKTIME             |CONNECT_COUNT  |COMMIT_COUNT  |ERROR_COUNT   |EXECUTE_COUNT |
    +-----------------------------------+-------------+---------------+----------------+-----------------------------+--------------+------------------+----------------------------+---------------+--------------+--------------+--------------+
    |jdbc:mysql://vds.tydic.com:3307/VDS|    mysql    |       1       |        1       | Mon Jul 24 14:45:23 CST 2017|       0      |        1         |Mon Jul 24 14:45:23 CST 2017|      9        |       1      |       0      |       7      |
    +-----------------------------------+-------------+---------------+----------------+-----------------------------+--------------+------------------+----------------------------+---------------+--------------+--------------+--------------+
    |jdbc:mysql://vds.tydic.com:3308/VDS|    mysql    |       1       |        1       | Mon Jul 24 14:45:23 CST 2017|       0      |        1         |Mon Jul 24 14:45:23 CST 2017|      9        |       0      |       0      |       7      |
    +--------------+--------------------+-------------+---------------+----------------+-----------------------------+--------------+------------------+---------------+------------+---------------+--------------+--------------+--------------+
    2 rows in set (0.01 sec)	    
	```

### SET

## DDL

### Create Backend

* 语法描述
	
	```sql
	CREATE BACKEND [IF NOT EXISTS] bac_name (create_definition, ...)
	
	create_definition:
		{
			URL string
			| DRIVER_CLASS string
			| USERNAME string
			| PASSWORD string
			| MAX_ACTIVE int
			| MAX_WAIT int
			| INITIAL_SIZE int
			| MIN_IDLE int
		}
	
	```
* 语法说明
* 应用实例

	```sql
	CREATE BACKEND IF NOT EXISTS mysql3307(
  		url 'jdbc:mysql://vds.tydic.com:3307',
  		username 'root',
  		password '1234qwer',
  		initial_size 1,
  		max_active 200
	);
	```

### Create Table 

* 语法描述
	
	```sql
		CREATE TABLE [IF NOT EXISTS] tbl_name
		    (create_definition,...)
		    ENGINE = VDS
		    sharding_options
		    
		sharding_options:
			SHARDING BY 
		    	{
		    		shared_definition
		    		| hash_sharding 
		    		| case_sharding 
		    		| range_sharding
		    		| list_sharding
		    	}
		    	
		shared_definition:
			SHARED [SEGMENTS(segment_definition,...)]
		
		hash_sharding:
			HASH(expr) SEGMENTS num(
				segment_definition,
				...)
			
		case_sharding:
			CASE(expr)(
				WHEN(expr) segment_definition
				[,...],
				ELSE segment_definition)
			
		range_sharding:
			RANGE(expr)(
				LESS THAN (expr) segment_definition
				[,...],
				ELSE segment_definition)
			
		list_sharding:
			LIST(expr)(
				IN (expr, ...) segment_definition
				[,...],
				ELSE segment_definition)
		
		segment_definition:
			'db_name.tbl_name@{backend_name | jdbc_url}'
	```
	
* 语句说明
	
* 应用实例


### Create Mapping Sequence

* 语法描述
	
	```sql
	CREATE MAPPING SEQUENCE [ IF NOT EXISTS ] [ON  PHYSICAL_DATABASE_NAME]
		[ START WITH long ]
		[ INCREMENT BY long ]
	        [ MINVALUE long | NOMINVALUE | NO MINVALUE ] 
		[ MAXVALUE long | NOMAXVALUE | NO MAXVALUE ]
		[ CYCLE | NOCYCLE |  NO CYCLE ]
		[ CACHE long |  NOCACHE |  NO CACHE ]
		
		
	
	```
* 语法说明
   
   `PHYSICAL_DATABASE_NAME`是物理数据库名。如果使用`[ON]`，物理数据库名必须加单引号，例如`on 'vds'`。不使用`[ON]`，序列将会创建到默认的物理库。
   
* 应用实例

	```sql
	CREATE MAPPING  SEQUENCE  IF NOT EXISTS seq1 ON 'vds'
     START WITH 5
     INCREMENT BY 10
     MINVALUE 2
     MAXVALUE 999999999
     CYCLE
     CACHE  10;
	```
### Create Mapping index
    
 * 语法描述
 
 ```sql
	CREATE MAPPING INDEX [IF NOT EXISTS] INDEX_NAME 
        ON TABLE_NAME( INDEXCOLUMN_1[,...]) 
        {[USING sql]
        |[TO TABLE_NAME_INDEX(INDEXCOLUMN_2[,...])[WITH (expression[,...])]}
	```
    
 * 语法说明
 
 	`TABLE_NAME`是建立映射索引的分库表。
	`TABLE_NAME_INDEX`是存储映射索引的分库表。
	`INDEXCOLUMN_1`是建立映射索引的分库表的列名。
	`INDEXCOLUMN_2`是存储映射索引的分库表的列名（分库条件列）。
       
  * 应用实例
  
  ```sql
	
    	CREATE MAPPING  INDEX  IF NOT EXISTS MAPPING_INDEX 
         ON TABLEA(B)
         TO MAPPING_INDEX_TABLE(B) 
         WITH(B);
	 
    ```		

### Drop Table 
* 语法描述
	
	``` sql
	DROP TABLE [ IF EXISTS ] tableName [,...] [ RESTRICT | CASCADE [BACKENDS] ]
		
	```
* 语句说明
		
	增加了`[BACKENDS]`选项，带有此选项将会级联删除后端物理表。 删除物理表！！删除物理表！！删除物理表！！ 重要的事情说三遍！
		
* 应用实例
	
	``` sql
	DROP TABLE IF EXISTS DEPT CASCADE BACKENDS;
	```
