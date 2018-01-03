### 什么是VDS?
	
	
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
VDS(Virtual DataSource) - 虚拟数据源，是一款面向关系型数据库的***分库分表***中间件。 兼容Mysql通信协议，支持`Mysql官方驱动`、`Mysql命令行`、`DbVisualizer`、`Navicat`等工具。采用JDBC驱动连接物理数据源，支持`Oracle`、`Mysql`、`DB2`等作为后端物理数据源接入。

### 文档索引
* [3.0 版本](3.0/index.html)
* [3.1 版本](3.1/index.html)
* [联系我们](3.0/contact.html)

### 更新记录


<span id="3.1"/>
* 3.1 版本
	* 详细信息
		
		Server version: 5.0.8 (VDS)
		Tydic Virtual DataSource Version 3.1
		SVN Revision: 740613  Build Time: 20180103-110242

	* 新增功能
		
		* 提供多种监控指标，包括JVM资源使用情况、指令处理速率、响应时间等。
		* 提供报表功能，支持定时收集指标信息，并产生html报表。
		* 实现Vds session与Mysql Session之间的关系查询。
		* 实现根据Segment（tableName@backendName）查看所属Table。
		* 支持mysql:replication协议 (主从同步\读写分离)。
		* 增加客户端模式支持。
		* 在mysql命令行欢迎界面显示详细版本信息。
		* 支持script table tableName导出表结构和数据。
		* 兼容mysql官方驱动版本5.1.1-5.1.44（5.1.9例外)。
		* 对映射序列进行调整，在创建时可以指定backend。
		* 增加若干函数的支持。
		
	* BUG修复
		* 解决twitter id 生成器, 每毫秒内从奇数开始的BUG		* 默认序列不再自动调整为映射序列，解决backend中出现nullvds_sequence表的问题		* 解决了嵌套查询类型转换异常的问题		* 解决DDL数据修改事务未提交的问题		* 解决double、float的精度显示问题		* 解决因SQL异常断开连接的BUG		* 解决部分函数触发NullException的问题.