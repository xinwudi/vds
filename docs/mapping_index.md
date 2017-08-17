####MAPPINGINDEX 映射索引

* 语法

   ```sql
  CREATE MAPPING INDEX [IF NOT EXISTS] INDEX_NAME 
        ON TABLE_NAME( INDEXCOLUMN_1[,...]) 
        {[USING sql]
        |[TO TABLE_NAME_INDEX(INDEXCOLUMN_2[,...])
        [WITH (expression[,...])]}
    ```
* 说明
    映射索引是对某张表的某列与另一张表的分库键做关系映射，在查询时先查询映射表的分库键，
    查询出的结果根据映射关系可以得到原表的分库键条件，再以分库键条件查询原表。
    其中`INDEXCOLUMN_1`代表index的应用对象表的列名；`INDEXCOLUMN_2`代表index的存储表的分库键列名。
    
* 用法示例

    首先，建立一张表 T1（此表应是分库表，为全局表建立映射索引没有意义），为这张表建立映射索引。
    表T1可以有a,b,c三列，并且以a为分库键，用hash方法分库（建表语句请参照sql语法文档或分库分表文档）。
    ```sql
  --对此表插入数据。
    INSERT INTO T1 (a,b,c) values(1,2,3);
    INSERT INTO T1 (a,b,c) values(4,5,6);
    ```
    然后，再建立一张表，用于存储mappingindex的数据，与上表做关联映射。表结构不必和上表相同。
    例如可以有a,b两列，分库键为b，以hash方法分库。
    ```sql
  --插入数据，这张表的数据需要手动插入。
    INSERT INTO T1_INDEX_TABLE (a,b) values(1,2);
    INSERT INTO T1_INDEX_TABLE (a,b) values(4,5);
    ```
    映射索引创建示例一：TO结构
    
    ```sql
  --指令分库键对应关系
    CREATE MAPPING INDEX IF NOT EXISTS MAPPINGINDEX_1 
        ON T1 (B)
        TO T1_INDEX_TABLE(B);
  --当需要创建索引的列的列名与映射到的列名相同时，可以不用指定列名。
  --可以将TO语句换为TO T1_INDEX_TABLE。
    ```
    映射索引创建示例二：with结构    
    ```sql
    --条件对应关系
    CREATE MAPPING INDEX IF NOT EXISTS MAPPINGINDEX_2 
        ON T1 (B)
        TO T1_INDEX_TABLE(B) 
    --WITH后面跟的是查询时的where条件列。
        WITH (B);
    ```
    映射索引创建示例三：using结构    
    ```sql
    CREATE MAPPING INDEX IF NOT EXISTS MAPPINGINDEX_3
        ON T1 (B)
  --using的sql语句是对映射表而不是原表进行查询，where条件是分库键的列
        USING "SELECT A FROM T1_INDEX_TABLE WHERE B = ? ";
  --这三种结构实现的是同样的功能。
    ```


