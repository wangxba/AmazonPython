CREATE SCHEMA `smartdb1` ;

CREATE TABLE `smartdb1`.`1-1-1` (
  `id` VARCHAR(255),
  `purl` varchar(255) DEFAULT NULL COMMENT '父类类目链接',
  `col1` varchar(255) DEFAULT NULL COMMENT '预留字段',
  `col2` varchar(255) DEFAULT NULL,
  `col3` varchar(255) DEFAULT NULL,
  `smallrank` INT NULL COMMENT '小类排名',
  `name` VARCHAR(255) NULL COMMENT '小类名',
  `bigname` VARCHAR(255) NULL COMMENT '大类名',
  `title` TINYTEXT NULL COMMENT '商品标题',
  `asin` VARCHAR(255) NULL,
  `url` VARCHAR(255) NULL,
  `rank` INT NULL COMMENT '大类排名',
  `soldby` VARCHAR(255) NULL COMMENT '卖家',
  `shipby` VARCHAR(255) NULL COMMENT '物流',
  `price` FLOAT NULL COMMENT '价格',
  `score` FLOAT NULL COMMENT '打分',
  `commentnum` INT NULL COMMENT '评论数',
  `commenttime` VARCHAR(255) NULL COMMENT '第一条评论时间',
  `createtime` DATETIME NULL,
  PRIMARY KEY (`id`)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='类目表';
