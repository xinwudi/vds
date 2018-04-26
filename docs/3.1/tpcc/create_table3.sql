/* vds性能测试建表语句 */

CREATE BACKEND IF NOT EXISTS B1(
  url 'jdbc:mysql://172.168.1.223:3003/tpcc_400wh',
  username 'root',
  password 'tydic',
  initial_size 1,
  min_active 100,
  max_active 200
);
CREATE BACKEND IF NOT EXISTS B2(
  url 'jdbc:mysql://172.168.1.224:3004/tpcc_400wh',
  username 'root',
  password 'tydic',
  initial_size 1,
  min_active 100,
  max_active 200
);
CREATE BACKEND IF NOT EXISTS B3(
  url 'jdbc:mysql://172.168.1.223:3005/tpcc_400wh',
  username 'root',
  password 'tydic',
  initial_size 1,
  min_active 100,
  max_active 200
);
CREATE BACKEND IF NOT EXISTS B4(
  url 'jdbc:mysql://172.168.1.224:3006/tpcc_400wh',
  username 'root',
  password 'tydic',
  initial_size 1,
  min_active 100,
  max_active 200
);

CREATE SCHEMA IF NOT EXISTS tpcc_400wh;

USE tpcc_400wh;

drop table if exists WAREHOUSE;


create table IF NOT EXISTS WAREHOUSE (
w_id smallint not null,
w_name varchar(10),
w_street_1 varchar(20),
w_street_2 varchar(20),
w_city varchar(20),
w_state char(2),
w_zip char(9),
w_tax decimal(4,2),
w_ytd decimal(12,2),
primary key (w_id) )
ENGINE=VDS
SHARDING BY HASH(w_id)
SEGMENTS 32(
  'WAREHOUSE[1-8]@B1',
  'WAREHOUSE[1-8]@B2',
  'WAREHOUSE[1-8]@B3',
  'WAREHOUSE[1-8]@B4'
);

drop table if exists DISTRICT;


create table IF NOT EXISTS DISTRICT (
d_id tinyint not null,
d_w_id smallint not null,
d_name varchar(10),
d_street_1 varchar(20),
d_street_2 varchar(20),
d_city varchar(20),
d_state char(2),
d_zip char(9),
d_tax decimal(4,2),
d_ytd decimal(12,2),
d_next_o_id int,
primary key (d_w_id, d_id) )
ENGINE=VDS
SHARDING BY HASH(d_w_id)
SEGMENTS 32(
  'DISTRICT[1-8]@B1',
  'DISTRICT[1-8]@B2',
  'DISTRICT[1-8]@B3',
  'DISTRICT[1-8]@B4'
);

drop table if exists CUSTOMER;


create table IF NOT EXISTS CUSTOMER (
c_id int not null,
c_d_id tinyint not null,
c_w_id smallint not null,
c_first varchar(16),
c_middle char(2),
c_last varchar(16),
c_street_1 varchar(20),
c_street_2 varchar(20),
c_city varchar(20),
c_state char(2),
c_zip char(9),
c_phone char(16),
c_since datetime,
c_credit char(2),
c_credit_lim bigint,
c_discount decimal(4,2),
c_balance decimal(12,2),
c_ytd_payment decimal(12,2),
c_payment_cnt smallint,
c_delivery_cnt smallint,
c_data text,
PRIMARY KEY(c_w_id, c_d_id, c_id) )
ENGINE=VDS
SHARDING BY HASH(c_w_id)
SEGMENTS 32(
  'CUSTOMER[1-8]@B1',
  'CUSTOMER[1-8]@B2',
  'CUSTOMER[1-8]@B3',
  'CUSTOMER[1-8]@B4'
);

drop table if exists HISTORY;


create table IF NOT EXISTS HISTORY (
h_c_id int,
h_c_d_id tinyint,
h_c_w_id smallint,
h_d_id tinyint,
h_w_id smallint,
h_date datetime,
h_amount decimal(6,2),
h_data varchar(24) )
ENGINE=VDS
SHARDING BY HASH(h_w_id)
SEGMENTS 32(
  'HISTORY[1-8]@B1',
  'HISTORY[1-8]@B2',
  'HISTORY[1-8]@B3',
  'HISTORY[1-8]@B4',
);

drop table if exists NEW_ORDERS;


create table IF NOT EXISTS NEW_ORDERS (
no_o_id int not null,
no_d_id tinyint not null,
no_w_id smallint not null,
PRIMARY KEY(no_w_id, no_d_id, no_o_id))
ENGINE=VDS
SHARDING BY HASH(no_w_id)
SEGMENTS 32(
  'NEW_ORDERS[1-8]@B1',
  'NEW_ORDERS[1-8]@B2',
  'NEW_ORDERS[1-8]@B3',
  'NEW_ORDERS[1-8]@B4'
);

drop table if exists ORDERS;


create table IF NOT EXISTS ORDERS (
o_id int not null,
o_d_id tinyint not null,
o_w_id smallint not null,
o_c_id int,
o_entry_d datetime,
o_carrier_id tinyint,
o_ol_cnt tinyint,
o_all_local tinyint,
PRIMARY KEY(o_w_id, o_d_id, o_id) )
ENGINE=VDS
SHARDING BY HASH(o_w_id)
SEGMENTS 32(
  'ORDERS[1-8]@B1',
  'ORDERS[1-8]@B2',
  'ORDERS[1-8]@B3',
  'ORDERS[1-8]@B4'
);

drop table if exists ORDER_LINE;


create table IF NOT EXISTS ORDER_LINE (
ol_o_id int not null,
ol_d_id tinyint not null,
ol_w_id smallint not null,
ol_number tinyint not null,
ol_i_id int,
ol_supply_w_id smallint,
ol_delivery_d datetime,
ol_quantity tinyint,
ol_amount decimal(6,2),
ol_dist_info char(24),
PRIMARY KEY(ol_w_id, ol_d_id, ol_o_id, ol_number) )
ENGINE=VDS
SHARDING BY HASH(ol_w_id)
SEGMENTS 32(
  'ORDER_LINE[1-8]@B1',
  'ORDER_LINE[1-8]@B2',
  'ORDER_LINE[1-8]@B3',
  'ORDER_LINE[1-8]@B4'
);

drop table if exists ITEM;


create table IF NOT EXISTS ITEM (
i_id int not null,
i_im_id int,
i_name varchar(24),
i_price decimal(5,2),
i_data varchar(50),
PRIMARY KEY(i_id) )
ENGINE=VDS
SHARDING BY HASH(i_id)
SEGMENTS 32(
  'ITEM[1-8]@B1',
  'ITEM[1-8]@B2',
  'ITEM[1-8]@B3',
  'ITEM[1-8]@B4'
);

drop table if exists STOCK;


create table IF NOT EXISTS STOCK (
s_i_id int not null,
s_w_id smallint not null,
s_quantity smallint,
s_dist_01 char(24),
s_dist_02 char(24),
s_dist_03 char(24),
s_dist_04 char(24),
s_dist_05 char(24),
s_dist_06 char(24),
s_dist_07 char(24),
s_dist_08 char(24),
s_dist_09 char(24),
s_dist_10 char(24),
s_ytd decimal(8,0),
s_order_cnt smallint,
s_remote_cnt smallint,
s_data varchar(50),
PRIMARY KEY(s_w_id, s_i_id) )
ENGINE=VDS
SHARDING BY HASH(s_w_id)
SEGMENTS 32(
  'STOCK[1-8]@B1',
  'STOCK[1-8]@B2',
  'STOCK[1-8]@B3',
  'STOCK[1-8]@B4'
);

