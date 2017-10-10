	CREATE TABLE `Mr.Wordsmith`.`Users` (
	  `user_id` VARCHAR(10) NOT NULL COMMENT 'User_id\nNot null\nAuto generate by System\n',
	  `first_name` VARCHAR(45) NOT NULL,
	  `last_name` VARCHAR(45) NOT NULL,
	  `email` VARCHAR(45) NOT NULL,
	  `address` VARCHAR(45) NOT NULL,
	  `phone` VARCHAR(45) NOT NULL,
	  `birthday` DATE NOT NULL,
	  `password` VARCHAR(45) NOT NULL,
	  `sub` INT NOT NULL,
	  PRIMARY KEY (`user_id`),
	  UNIQUE INDEX `userid_UNIQUE` (`user_id` ASC),
	  UNIQUE INDEX `email_UNIQUE` (`email` ASC));


	CREATE TABLE `Mr.Wordsmith`.`products` (
	  `product_id` VARCHAR(10) NOT NULL,
	  `price` INT NULL,
	  `stock` INT NOT NULL,
	  `reorder_time` INT NOT NULL,
	  `product_name` VARCHAR(45) NOT NULL,
	  `reorder_limit` INT NOT NULL,
	  `discount` INT NOT NULL,
	  PRIMARY KEY (`product_id`),
	  UNIQUE INDEX `product_id_UNIQUE` (`product_id` ASC));


	CREATE TABLE `order_list` (
	  `product_id` varchar(10) NOT NULL,
	  `user_id` varchar(10) NOT NULL,
	  `order_id` varchar(15) NOT NULL,
	  `quantity` int(11) NOT NULL,
	  `payment` int(11) DEFAULT NULL,
	  `order_discount` int(11) NOT NULL,
	  `shipping_time` datetime DEFAULT NULL,
	  `shipping_address` varchar(45) NOT NULL,
	  `time` datetime NOT NULL,
	  `contact_number` int(11) NOT NULL,
	  PRIMARY KEY (`product_id`,`order_id`,`user_id`),
	  KEY `user_id_idx` (`user_id`),
	  CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION);


	CREATE TABLE `payment_list` (
	  `payment_id` varchar(10) NOT NULL,
	  `iduser` varchar(45) NOT NULL,
	  `type` int(11) NOT NULL,
	  `detail` varchar(45) NOT NULL,
	  PRIMARY KEY (`payment_id`,`iduser`),
	  KEY `iduser_idx` (`iduser`),
	  CONSTRAINT `iduser` FOREIGN KEY (`iduser`) REFERENCES `Users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
	);


	CREATE TABLE `reminder_list` (
	  `reminder_id` varchar(10) NOT NULL,
	  `userid` varchar(45) NOT NULL,
	  `time` date NOT NULL,
	  `message` varchar(100) DEFAULT NULL,
	  PRIMARY KEY (`reminder_id`,`userid`),
	  KEY `user_id_idx` (`userid`),
	  CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `Users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
	);


	CREATE TABLE `stuffs` (
	  `stuff_id` varchar(10) NOT NULL,
	  `password` varchar(45) NOT NULL,
	  `email` varchar(45) NOT NULL,
	  `address` varchar(45) NOT NULL,
	  `first_name` varchar(45) NOT NULL,
	  `last_name` varchar(45) NOT NULL,
	  `phone` varchar(45) NOT NULL,
	  `admin` varchar(10) NOT NULL,
	  PRIMARY KEY (`stuff_id`),
	  UNIQUE KEY `stuff_id_UNIQUE` (`stuff_id`)
	);


	CREATE TABLE `customized` (
	  `customized_id` varchar(10) NOT NULL,
	  `uid` varchar(45) NOT NULL,
	  `orderid` varchar(45) NOT NULL,
	  `option1` int(11) DEFAULT NULL,
	  `option2` int(11) DEFAULT NULL,
	  `option3` int(11) DEFAULT NULL,
	  `option4` int(11) DEFAULT NULL,
	  `option5` int(11) DEFAULT NULL,
	  `option6` int(11) DEFAULT NULL,
	  `option7` int(11) DEFAULT NULL,
	  `option8` int(11) DEFAULT NULL,
	  `option9` int(11) DEFAULT NULL,
	  `option10` int(11) DEFAULT NULL,
	  `option11` int(11) DEFAULT NULL,
	  `option12` int(11) DEFAULT NULL,
	  `option13` int(11) DEFAULT NULL,
	  `option14` int(11) DEFAULT NULL,
	  PRIMARY KEY (`customized_id`,`uid`),
	  KEY `uid_idx` (`uid`),
	  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `Users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
	);

