CREATE TABLE `t_complaint` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` varchar(300) NOT NULL,
  `img` varchar(200) NOT NULL,
  `time` datetime NOT NULL,
  `goods_num` varchar(45) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `handler_id` int(11) NOT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_num` int(11) NOT NULL,
  `s_address` varchar(45) NOT NULL,
  `e_address` varchar(45) NOT NULL,
  `updatetime` datetime NOT NULL,
  `createtime` datetime NOT NULL,
  `s_user_id` int(11) NOT NULL,
  `r_user_id` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  `intro` varchar(45) NOT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t_logistics` (
  `logistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `m_address` varchar(400) NOT NULL,
  `m_time` varchar(400) NOT NULL,
  `updatetime` datetime NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`logistics_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t_staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `station_id` int(11) NOT NULL,
  `position` varchar(45) NOT NULL,
  `phone` int(13) NOT NULL,
  `address` varchar(45) NOT NULL,
  `type` tinyint(4) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t_station` (
  `station_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `intro` varchar(45) NOT NULL,
  `phone` int(13) NOT NULL,
  PRIMARY KEY (`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL DEFAULT 'Î´ÃüÃû',
  `address` varchar(45) NOT NULL,
  `phone` int(13) NOT NULL,
  `integral` int(11) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` int(11) NOT NULL,
  `updatetime` datetime NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;