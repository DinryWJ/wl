
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL DEFAULT '未命名',
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