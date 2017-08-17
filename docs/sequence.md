###SEQUENCE序列
####MAPPINGSEQUENCE映射序列
* 语法

  ```sql
  CREATE MAPPING SEQUENCE [ IF NOT EXISTS ] newSequenceName 
        [ ON  PHYSICAL_DATABASE_NAME ]
        [ START WITH long ]
        [ INCREMENT BY long ]
        [ MINVALUE long | NOMINVALUE | NO MINVALUE ] 
        [ MAXVALUE long | NOMAXVALUE | NO MAXVALUE ]
        [ CYCLE | NOCYCLE |  NO CYCLE ]
        [ CACHE long |  NOCACHE |  NO CACHE ]
  ```  
* 说明

  映射序列是逻辑序列，在后端物理库以表的方式存储，在VDS中对其数据处理和操作，实现序列的功能。
  具体的语句意义与其他sql语言大致相同。在下方示例中会标注。
* 示例
  ```sql
  CREATE MAPPING  SEQUENCE  IF NOT EXISTS seq1 ON 'vds'
  --序列从5开始
        START WITH 5
  --序列每次增加1
        INCREMENT BY 1
  --序列值最小为2
        MINVALUE 2
  --序列最大值为10
        MAXVALUE 10
  --开启序列循环
        CYCLE
  --设置缓存10个序列
        CACHE  10;
  ```
####DEFAULTSEQUENCE默认序列

* 语法
  ```sql
  CREATE SEQUEBCE SEQUENCE_NAME ;
  ```
* 说明
  
  内部使用雪花算法，把时间戳，工作机器id，组合在一起，实现非连续性增长的序列，创建时只需要指定名称即可。
* 示例
  ```sql
  create sequence seq1;
  ```