# FAQ

1. VDS默认监听的端口是多少？ 
	
	答：默认为3088，可在`etc/user.properties`文件中修改。


2. VDS中的以不同条件创建的表的分别代表什么？

    答：SHARED SEGMENTS建表方式为全局表，所有后端物理库保存完整的数据；
        HASH,CASE,RAMGE,LIST创建的表都是以不同的分库方法，把表内数据分别存储在物理库上的分库表。
        
    <span id="3"/>
 
3. VDS分表操作如何进行？

    答：例如--下表分为两个库，共分为四张表，1-2在B1，3-4在B2
    ```sql
    CREATE TABLE ~~~ SHARDING BY HASH(a) SEGMENTS 4(
      'TABLE_NAME[1-2]@B1',
      'TABLE_NAME[3-4]@B2'
    );
    ``` 
    
    <span id="4"/>
        
4. 如何在VDS中对后端物理库进行直接操作？

    答：在sql语句前添加`@BACKEND_NAME`可以对`BACKEND_NAME`对应的物理库进行直接操作。
     对于物理库中原有但VDS中没有的数据，也可以操作。
     但是当表名代表的是VDS中的分表时，不能通过这种方式来删除这组分表中的所有表。
     这种方式操作的必须是物理库中真实的表名。

 	<span id="5"/> 
    
5. 在VDS中数据删除是物理上的意义吗？

    答：DROP操作不会删除后端物理库数据，只有加入`CASCADE BACKENDS`才会级联删除后端物理数据。
    如果没有VDS中没有这张表的记录，则级联删除无效。
    
    DELETE操作则会影响到物理库数据，但同样只能影响VDS中有记录的数据。
 
  	<span id="6"/>   
    
6. VDS中自定义的索引和序列在物理库中以何种和方式存在？

    答：自定义的索引和序列在物理库中都是以表的方式存在，在VDS中对表的数据进行处理，实现索引和序列的功能。
    
 	<span id="7"/>
 	   
7. VDS中的MappingIndex，IsomerismIndex的有什么区别？
   
    答：MappingIndex映射索引创建关系映射表与原表的某一列数据进行关联，需要自行创建映射表，需要自行插入数据，先查询映射表，再根据结果查询原表分库键，实现查询加速。
    IsomerismIndex异构索引通过以不同的维度冗余数据查询加速，在创建索引时创建异构索引表，根据原表数据以异步方式同步数据。查询时从异构索引表查询。
    
 	<span id="8"/>
 	   
8. VDS中的数据操作会自动提交吗？
    
   答：默认情况下，VDS的自动提交是关闭的。 可以用命令开启自动提交,语句为`SET AUTOCOMMIT=1;`。 当
    使用jdbc连接VDS时，mysql的驱动会自动发送`set autocommit=1`。
 
	<span id="9"/> 
	
9. 在VDS上建表的同时是否可以建立索引？

	答：VDS的建表语句只包含基本的表结构（列+主键）， 索引在VDS是未处理的； 所以在VDS上建表时，不要同时创建索引；普通索引可通过@backendName 直接向后端数据库发送alter table指令 或 create index 指令。 

	<span id="10"/>

10. 在分组查询时，Select后面是否可以使用非group by 字段？ 

	答：VDS只支持`ONLY_FULL_GROUP_BY`, 也就是说Select后面不可以使用非group by字段。 但是在特殊情况下，也有例外。 比如：SQL经过解析、拆分成若干个SQL在mysql上面执行、然后将结果合并返回。 这样的过程绕过了vds内部的SQL引擎，所以是否为`ONLY_FULL_GROUP_BY`取决于mysql。在mysql的新版本中默认开启了`ONLY_FULL_GROUP_BY`，建议在使用时，尽量使用`ONLY_FULL_GROUP_BY`的SQL.


    
    

    

    
