# 监控功能 #

## 一、监控开启/关闭 ##
详见：[配置说明](config.html)

## 二、监控语句的使用 ##
* **创建HTML报表**</br>
	```sql
  CREATE REPORT BY DAILY/WEEKLY/MONTHLY [INTERVAL 1 s/m/h]
	``` </br>
	开始生成日报/周报/月报，数据采集间隔时间为interval后面的，如果不设置，默认为1m/6m/30m。

	```sql
  CREATE REPORT BY CUSTOM TIME 6 [INTERVAL 5s/m/h]
	``` </br>
	自定义时间报表，time为采集次数，interval为间隔时间，默认为1m。

* **结束正在进行的HTML报表**</br>
	```sql
  STOP REPORT
	``` </br>
	非自然结束报表，同一时刻只允许一个report进行，所以想重新开始先stop再create！

* **删除有记录的HTML报表**</br>
	```sql
  DROP REPORT 'reportId'
	``` </br>
	根据reportId删除对应的report记录及文件，需要在查询结果中有记录的report才能删除！

* **删除没有记录的HTML报表**</br>
	```sql
  DROP LOST RECORDS
	``` </br>
	因为vds重启后，之前的report记录都不会保留，但文件还在。使用这句可以删除所有没有记录的report文件。

* **查看HTML报表记录**</br>
	```sql
  SHOW REPORTS
	``` </br>
	查看所有report的记录，有开始、结束时间，报表类型，间隔时间，采集次数，状态等属性。

* **下载HTML报表到本地电脑**</br>
	```CMD
  mysql -p -u -N -e "SELECT value FROM METRICS.HTMLREPORT WHERE id='...'" > xxx.tar.gz
	``` </br>
	-e中的id必须为vds中存在的记录，生成的xxx.tar.gz文件不能直接用压缩文件打开，需要使用可以读取二进制数据的工具。

## 三、监控平台插件 ##
* 等待实现......
	