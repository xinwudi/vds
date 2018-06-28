## 分库分表语法
### 分库语法
* hash分库 

  * 语法：
    ```sql
    HASH(expr) SEGMENTS num(
            segment_definition,
                          ...)
    ```
  * 说明：
  
    以`expr`作为分库键，通过hash方法在多个segment_definition中分库。
  
  * 示例：
    ```sql
    CREATE TABLE IF NOT EXISTS T1 (
            a int, 
            b int, 
            c int, 
            PRIMARY KEY(a))
    ENGINE=VDS SHARDING BY HASH(A) SEGMENTS 2(
            'T1@B1',
            'T1@B2');
    ```
* case分库  
  
  * 语法：
  
    ```sql
    CASE(expr_1)(
              WHEN(expr_2) segment_definition
              [,...],
              ELSE segment_definition)
    ```
  * 说明：
  
    case方法分库的用法有些类似java中的case方法。`expr_1`是分库键，`expr_2`是分库键的可能出现的值。
    当这种情况出现时，数据写入跟在语句后面的物理库；`ELSE`否则写入其他物理库。
  
  * 示例：
    ```sql
    CREATE TABLE IF NOT EXISTS T1 (
              a int, 
              b int, 
              c int, PRIMARY KEY(a))
    ENGINE=VDS SHARDING BY CASE(A) ( 
    --当A的值为4时，存入B1物理库，否则存入B2物理库
              WHEN(4) 'T1@B1', 
              ELSE 'T1@B2');
    ```

* rang分库  
  
  * 语法：
    ```sql
    RANGE(expr_1)(
              LESS THAN (expr_2) segment_definition
              [,...],
              ELSE segment_definition)
    ```
  
  * 说明：
  
    `expr_1`是分库键，当分库键的值小于`expr_2`的值，写入语句中紧跟的物理库，`ELSE`
    否则，写入语句后的物理库。
  
  * 示例：
    ```sql
    CREATE TABLE IF NOT EXISTS T1 (
              a int, 
              b int, 
              c int, PRIMARY KEY(a))
    ENGINE=VDS SHARDING BY RANGE(A)(
              LESS THAN (4) 'T1@B1', 
              ELSE 'T1@B2');
    ```

* list分库  
  
  * 语法：
    ```sql
    LIST(expr_1)(
              IN (expr_2, ...) segment_definition
              [,...],
              ELSE segment_definition)
    ```
  
  * 说明：
  
    `expr_1`是分库键，`expr_2`列举出一些分库键可能出现的值。当出现其中的值时，此行数据写入语句紧跟的
    物理库中；`ELSE`否则，写入语句后的物理库。
  
  * 示例：
    ```sql
    CREATE TABLE IF NOT EXISTS T1 (
              a int, 
              b int, 
              c int, PRIMARY KEY(a))
    ENGINE=VDS SHARDING BY LIST(A)(
              IN (1,3,5) 'T1@B1', 
              ELSE 'T1@B2');
    ```
    
### 分表语法
* 语法：
    ```sql
    SEGMENTS NUM(
              'TABLE_NAME[NUM_1-NUM_2]@BACKEND',[...]);
    ```
  
* 说明： 
   
    分表操作会在后端物理库中对表自动生成编号表，在VDS中操作时，只需要对建表时的表名进行操作即可。
    创建分表的具体操作是在`NUM`指定共分为多少张表，`NUM_1-NUM_2`
    编号范围内（包括）的表建立在`BACKEND`物理库中。
  
* 示例：

  * 分库表的分表操作：
    ```sql
    CREATE TABLE IF NOT EXISTS T1(
              a int,
              b int,
              c int, PRIMARY KEY(a))
      ENGINE=VDS SHARDING BY HASH(A) SEGMENTS 10(
              'T1[0-4]@B1',
              'T1[5-9]@B2');
    ```
