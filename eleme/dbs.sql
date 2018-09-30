SET NAMES UTF8;
DROP DATABASE IF EXISTS eleme;
CREATE DATABASE eleme CHARSET=UTF8;
USE eleme;

#创建用户表
CREATE TABLE user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(16), #用户名
  upwd VARCHAR(32)#用户密码
);

INSERT INTO user VALUES(
    null,'wangyu',md5('123')
);
INSERT INTO user VALUES(
    null,'wangyuwangyu',md5('123')
);

#图片轮播表
CREATE TABLE imagelist(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    title  VARCHAR(255)
);

INSERT INTO imagelist VALUES(
    null,'http://172.163.4.84:3000/img/slider/1.png','banner1'
);
INSERT INTO imagelist VALUES(
    null,'http://172.163.4.84:3000/img/slider/2.png','banner2'
);
INSERT INTO imagelist VALUES(
    null,'http://172.163.4.84:3000/img/slider/3.png','banner3'
);
INSERT INTO imagelist VALUES(
    null,'http://172.163.4.84:3000/img/slider/4.png','banner4'
);

#导航表
CREATE TABLE banner(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    title  VARCHAR(255)
);
INSERT INTO banner VALUES(
    null,'http://172.163.4.84:3000/img/list/delicious.png','美食'
);
INSERT INTO banner VALUES(
    null,'http://172.163.4.84:3000/img/list/shopping.png','商超便利'
);

INSERT INTO banner VALUES(
    null,'http://172.163.4.84:3000/img/list/firut.png','水果'
);

INSERT INTO banner VALUES(
    null,'http://172.163.4.84:3000/img/list/noontea.png','下午茶'
);

INSERT INTO banner VALUES(
    null,'http://172.163.4.84:3000/img/list/yiliao.png','医疗健康'
);

INSERT INTO banner VALUES(
    null,'http://172.163.4.84:3000/img/list/flower.png','浪漫鲜花'
);

INSERT INTO banner VALUES(
    null,'http://172.163.4.84:3000/img/list/kitchen.png','厨房生鲜'
);

INSERT INTO banner VALUES(
    null,'http://172.163.4.84:3000/img/list/smalleat.png','地方小吃'
);

INSERT INTO banner VALUES(
    null,'http://172.163.4.84:3000/img/list/eat.png','地方菜系'
);

INSERT INTO banner VALUES(
    null,'http://172.163.4.84:3000/img/list/noodles.png','麻辣烫'
);

#商家表 merchant 
CREATE TABLE merchant(
  id INT PRIMARY KEY AUTO_INCREMENT,#id
  img_url VARCHAR(255),#图片路径
  title VARCHAR(32),#标题
  sale  SMALLINT, #月售x单
  dispatching SMALLINT,  #起送费
  peisong SMALLINT,#配送费
  pingfen  VARCHAR(16),    #评分
  type  VARCHAR(16),#菜系
  distance VARCHAR(16), #配送距离
  time SMALLINT,  #配送时间
  zhuansong  VARCHAR(255),  #蜂鸟专送 
  pinpai VARCHAR(255),   #是否品牌
  iskoubei BOOL,  #是否是口碑好店
  sid  INT  #店家所属区域编号
);

INSERT INTO merchant VALUES(
  null,'http://172.163.4.84:3000/img/list/firut.png','巨饿便当(吴家厂路二店)',1832,20,3.5,4.6,'简餐',3.11,38,'http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png',1
);
INSERT INTO merchant VALUES(
  null,'http://172.163.4.84:3000/img/list/firut.png','未来餐厅概念店(吴家厂路二店)',490,20,6,4.6,'地方小吃',1.46,36,'http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png',1
);
INSERT INTO merchant VALUES(
  null,'http://172.163.4.84:3000/img/list/firut.png','巨饿便当(吴家厂路二店)',1832,20,3.5,4.6,'简餐',3.11,38,'http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png',1
);
INSERT INTO merchant VALUES(
  null,'http://172.163.4.84:3000/img/list/firut.png','未来餐厅概念店(吴家厂路二店)',490,20,6,4.6,'地方小吃',1.46,36,'http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png',1
);INSERT INTO merchant VALUES(
  null,'http://172.163.4.84:3000/img/list/firut.png','巨饿便当(吴家厂路二店)',1832,20,3.5,4.6,'简餐',3.11,38,'http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png',1
);
INSERT INTO merchant VALUES(
  null,'http://172.163.4.84:3000/img/list/firut.png','未来餐厅概念店(吴家厂路二店)',490,20,6,4.6,'地方小吃',1.46,36,'http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png',1
);INSERT INTO merchant VALUES(
  null,'http://172.163.4.84:3000/img/list/firut.png','巨饿便当(吴家厂路二店)',1832,20,3.5,4.6,'简餐',3.11,38,'http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png',1
);
INSERT INTO merchant VALUES(
  null,'http://172.163.4.84:3000/img/list/firut.png','未来餐厅概念店(吴家厂路二店)',490,20,6,4.6,'地方小吃',1.46,36,'http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png',1
);INSERT INTO merchant VALUES(
  null,'http://172.163.4.84:3000/img/list/firut.png','巨饿便当(吴家厂路二店)',1832,20,3.5,4.6,'简餐',3.11,38,'http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png',1
);
INSERT INTO merchant VALUES(
  null,'http://172.163.4.84:3000/img/list/firut.png','未来餐厅概念店(吴家厂路二店)',490,20,6,4.6,'地方小吃',1.46,36,'http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png',1
);INSERT INTO merchant VALUES(
  null,'http://172.163.4.84:3000/img/list/firut.png','巨饿便当(吴家厂路二店)',1832,20,3.5,4.6,'简餐',3.11,38,'http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png',1
);
INSERT INTO merchant VALUES(
  null,'http://172.163.4.84:3000/img/list/firut.png','未来餐厅概念店(吴家厂路二店)',490,20,6,4.6,'地方小吃',1.46,36,'http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png','http://172.163.4.84:3000/img/list/firut.png',1
);