# 异构索引


功能说明：数据表查询时，需使用非原表分库健进行查询，使用异构索引，可以额外指定分库建，vds会建立原表与索引之间关联，目的是提高查询效率。

* 配置语法
       
	```sql
        CREATE ISOMERISM INDEX [IF NOT EXISTS] index_name ON  
        table_name(column_define ...) [USING table_name]
           {
                 hash_sharding
		    		| case_sharding
		    		| range_sharding
		    		| list_sharding
		    };

	```
		 		
* 配置实例

    ```sql
     CREATE ISOMERISM INDEX IF NOT EXISTS emp_job_index ON
	 EMP(JOB) USING EMP_JOB_INDEX_TABLE
     SHARDING BY  HASH(JOB) SEGMENTS 100(
     'VDS.EMP_JOB_INDEX_TABLE[00-49]@mysql3307',
     'VDS.EMP_JOB_INDEX_TABLE[50-99]@mysql3308');
	```
* 目标效果描述

	为某已存在的表增加异构索引，vds会异步自动同步数据，如果查询条件中使用了异构索引，将使用异构索引查询异构数据表，通过设置的相应的分库健作为查询条件进行查询，结果集结构以原表达式结构为准。
* 注意

   异构索引同步数据目前采用的是异步方式同步数据，可能会遇到时间窗口延误或其他原因导致的同步数据失败，目前采用的方式是打印异常错误日志，但主流程即原表的数据操作不会 受到影响。
   
* 问题说明：
	
    1.性能问题
    待验证
    2.容错性问题
    待验证解决
       
   	
