/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50546
Source Host           : localhost:3306
Source Database       : blogdb

Target Server Type    : MYSQL
Target Server Version : 50546
File Encoding         : 65001

Date: 2017-05-25 23:00:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `blog`
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL COMMENT '博文标题',
  `Context` text COMMENT '博文内容',
  `CreatedTime` datetime DEFAULT NULL COMMENT '发布时间',
  `ClassId` int(4) NOT NULL COMMENT '所属分类编号',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', 'Java语言简介', 'Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程[1]  。\r\nJava具有简单性、面向对象、分布式、健壮性、安全性、平台独立与可移植性、多线程、动态性等特点[2]  。Java可以编写桌面应用程序、Web应用程序、分布式系统和嵌入式系统应用程序等[3]  。', '2017-05-25 13:03:36', '1');
INSERT INTO `blog` VALUES ('2', 'JavaScript语言', 'JavaScript一种直译式脚本语言，是一种动态类型、弱类型、基于原型的语言，内置支持类型。它的解释器被称为JavaScript引擎，为浏览器的一部分，广泛用于客户端的脚本语言，最早是在HTML（标准通用标记语言下的一个应用）网页上使用，用来给HTML网页增加动态功能。\r\n在1995年时，由Netscape公司的Brendan Eich，在网景导航者浏览器上首次设计实现而成。因为Netscape与Sun合作，Netscape管理层希望它外观看起来像Java，因此取名为JavaScript。但实际上它的语法风格与Self及Scheme较为接近。[1] \r\n为了取得技术优势，微软推出了JScript，CEnvi推出ScriptEase，与JavaScript同样可在浏览器上运行。为了统一规格，因为JavaScript兼容于ECMA标准，因此也称为ECMAScript。', '2017-05-25 13:04:40', '2');
INSERT INTO `blog` VALUES ('3', 'Java中abstract class和interface的区别', '<p><span style=\"font-size: large;\">abstract class 和 interface 的区别： 在Java语言中,abstract class 和interface 是支持抽象类定义的两种机制。 </span></p>\r\n<p><span style=\"font-size: large;\">正是由于这两种机制的存在，才赋予了Java强大的面向对象能力。 abstract class和interface之间在对于抽象类定义的支持方面具有很大的相似性，甚至可以相互替换， 因此很多开发者在进行抽象类定义时对于abstract class和interface的选择显得比较随意。 abstract class 和 interface 在Java语言中都是用来进行抽象类定义的 </span></p>\r\n<p><span style=\"font-size: large;\">1.abstract class 在 Java 语言中表示的是一种继承关系，一个类只能使用一次继承关系。 但是，一个类却可以实现多个interface。</span></p>\r\n<p><span style=\"font-size: large;\"> 2.在abstract class 中可以有自己的数据成员，也可以有非abstarct的成员方法， 而在interface中，只能够有静态的不能被修改的数据成员（也就是必须是static final的， 不过在 interface中一般不定义数据成员），所有的成员方法都是abstract的。 </span></p>\r\n<p><span style=\"font-size: large;\">3.abstract class和interface所反映出的设计理念不同。其实abstract class表示的是&quot;is-a&quot;关系， interface表示的是&quot;like-a&quot;关系。</span></p>\r\n<p><span style=\"font-size: large;\"> 4.实现抽象类和接口的类必须实现其中的所有方法。抽象类中可以有非抽象方法。接口中则不能有实现方法。</span></p>\r\n<p><span style=\"font-size: large;\"> 5.接口中定义的变量默认是public static final 型，且必须给其初值，所以实现类中不能重新定义，也不能改变其值。 </span></p>\r\n<p><span style=\"font-size: large;\">6.抽象类中的变量默认是 friendly 型，其值可以在子类中重新定义，也可以重新赋值。</span></p>\r\n<p><span style=\"font-size: large;\"> 7.接口中的方法默认都是 public,abstract 类型的。 含有abstract修饰符的class即为抽象类，abstract 类不能创建实例对象, abstract class 类中定义抽象方法必须在具体(Concrete)子类中实现，所以，不能有抽象构造方法或抽象静态方法 含有 abstract 方法的类必须定义为 abstract class，abstract class 类中的方法不必是抽象的。 如果子类没有实现抽象父类中的所有抽象方法，那么子类也必须定义为 abstract 类型。 接口（interface）可以说成是抽象类的一种特例，接口中的所有方法都必须是抽象的。 接口中的方法定义默认为 public abstract 类型，接口中的成员变量类型默认为 public static final。</span></p>\r\n<p><span style=\"font-size: large;\"> 语法区别：</span></p>\r\n<p><span style=\"font-size: large;\"> 1.抽象类可以有构造方法，接口中不能有构造方法。</span></p>\r\n<p><span style=\"font-size: large;\"> 2.抽象类中可以有普通成员变量，接口中没有普通成员变量 </span></p>\r\n<p><span style=\"font-size: large;\">3.抽象类中可以包含非抽象的普通方法，接口中的所有方法必须都是抽象的，不能有非抽象的普通方法。 抽象类中的抽象方法的访问类型可以是 public，protected 和（默认类型,虽然 eclipse下不报错，但应该也不行），但接口中的抽象方法只能是 public 类型的，并且默认即为 public abstract 类型。 抽象类中可以包含静态方法，接口中不能包含静态方法 抽象类和接口中都可以包含静态成员变量，抽象类中的静态成员变量的访问类型可以任意， 但接口中定义的变量只能是 public static final 类型，并且默认即为 public static final 类型。 一个类可以实现多个接口，但只能继承一个抽象类。 两者在应用上的区别： 接口更多的是在系统架构设计方法发挥作用，主要用于定义模块之间的通信契约。 而抽象类在代码实现方面发挥作用，可以实现代码的重用</span></p>', '2017-05-25 13:06:55', '1');

-- ----------------------------
-- Table structure for `class`
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL COMMENT '分类名称',
  `Sort` int(4) NOT NULL COMMENT '排序',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '后端技术', '1');
INSERT INTO `class` VALUES ('2', '前端技术', '2');
INSERT INTO `class` VALUES ('3', '数据库技术', '3');
INSERT INTO `class` VALUES ('4', '框架技术', '4');
INSERT INTO `class` VALUES ('5', '大数据技术', '5');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `Context` text COMMENT '评论内容',
  `CreatedTime` datetime NOT NULL COMMENT '评论时间',
  `UserName` varchar(50) NOT NULL COMMENT '评论人',
  `BlogId` int(4) NOT NULL COMMENT '评论的博文编号',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '大神写的真好！', '2017-05-25 13:53:01', '上山不易', '1');
INSERT INTO `comment` VALUES ('2', '大神带我装逼带我飞', '2017-05-25 13:53:33', '上山不易', '1');
INSERT INTO `comment` VALUES ('10', '大神！', '2017-05-25 15:01:32', '上山不易', '2');
INSERT INTO `comment` VALUES ('11', '大神带我飞！', '2017-05-25 15:01:41', '上山不易', '2');
INSERT INTO `comment` VALUES ('12', '厉害了我的哥！', '2017-05-25 15:31:27', '上山不易', '3');
INSERT INTO `comment` VALUES ('13', '', '2017-05-25 15:34:15', '上山不易', '2');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `UserName` varchar(16) NOT NULL COMMENT '用户名',
  `Password` varchar(16) NOT NULL COMMENT '密码',
  `Email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `Power` varchar(50) NOT NULL COMMENT '身份：admin表示管理员，user表示一般用户',
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('admin', '49ba59abbe56e057', 'jkdkjdf@163.com', 'admin');
INSERT INTO `users` VALUES ('上山不易', '1511b4f6020ec61d', '3232678@163.com', 'user');
