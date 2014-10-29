CREATE DATABASE `automag`;

CREATE TABLE `advertisement` (
  `adv_id` bigint(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `title` varchar(45) NOT NULL,
  `make` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `model_no` varchar(45) DEFAULT NULL,
  `make_year` varchar(10) DEFAULT NULL,
  `reg_year` varchar(10) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `additional_info` varchar(200) DEFAULT NULL,
  `approved` int(11) DEFAULT NULL,
  `post_dt` datetime DEFAULT NULL,
  `publish_dt` datetime DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `engine_capacity` int(11) DEFAULT NULL,
  `gear` varchar(45) DEFAULT NULL,
  `mileage` int(11) DEFAULT NULL,
  `available` int(1) DEFAULT NULL,
  PRIMARY KEY (`adv_id`)
);