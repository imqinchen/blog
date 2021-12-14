/*
SQLyog Trial v13.1.8 (64 bit)
MySQL - 8.0.27 : Database - blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `blog`;

/*Table structure for table `t_blog` */

DROP TABLE IF EXISTS `t_blog`;

CREATE TABLE `t_blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `first_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `views` int DEFAULT NULL,
  `appreciation` int NOT NULL DEFAULT '0',
  `share_statement` int NOT NULL DEFAULT '0',
  `commentabled` int NOT NULL DEFAULT '0',
  `published` int NOT NULL DEFAULT '0',
  `recommend` int NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `tag_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `t_blog` */

insert  into `t_blog`(`id`,`title`,`content`,`first_picture`,`flag`,`views`,`appreciation`,`share_statement`,`commentabled`,`published`,`recommend`,`create_time`,`update_time`,`type_id`,`user_id`,`description`,`tag_ids`) values 
(1,'maven中静态资源的过滤','# maven中静态资源的过滤\r\n\r\npom.xml文件中加入下面配置\r\n\r\n### 可以过滤java和resources文件夹里面所有的的.properties和.xml文件\r\n**directory：指定资源所在的目录，目录的路径是相对于pom.xml文件的\r\nincludes：指定要包含哪些文件**\r\n**filtering标签中：false表示不过滤，true表示过滤**\r\n\r\n```java\r\n    <build>\r\n        <resources>\r\n            <resource>\r\n                <directory>src/main/java</directory>\r\n                <includes>\r\n                    <include>**/*.properties</include>\r\n                    <include>**/*.xml</include>\r\n                </includes>\r\n                <filtering>false</filtering>\r\n            </resource>\r\n            <resource>\r\n                <directory>src/main/resources</directory>\r\n                <includes>\r\n                    <include>**/*.properties</include>\r\n                    <include>**/*.xml</include>\r\n                </includes>\r\n                <filtering>false</filtering>\r\n            </resource>\r\n        </resources>\r\n    </build>\r\n```\r\n','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584367888190&di=7855ff350e759b4b3de8c614978673b4&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201612%2F07%2F20161207154722_Cmce5.thumb.400_0.gif','原创',0,1,1,1,1,1,'2020-03-12 08:25:47','2020-03-13 11:56:19',3,1,'pom.xml文件中加入下面配置\r\n可以过滤java和resources文件夹里面所有的的.properties和.xml文件','4'),
(2,'使用System.out.format()格式化输出','#### JDK5.0允许java像C语言那样直接用printf()方法来格式化输出\r\n####  System.out.format()功能与printf()一样，可以使用%d,%f等参数。\r\n使用System.out.format()完成**左对齐，补0，千位分隔符，小数点位数，本地化表达**\r\n```java\r\npublic class TestNumber {\r\n   \r\n    public static void main(String[] args) {\r\n        int year = 2020;\r\n        //左对齐，补0，千位分隔符，小数点位数，本地化表达\r\n        \r\n      //直接打印数字\r\n        System.out.println(year);\r\n          \r\n        //直接打印数字\r\n        System.out.format(\"%d%n\",year);\r\n        //总长度是8,默认右对齐\r\n        System.out.format(\"%8d%n\",year);\r\n        //总长度是8,左对齐\r\n        System.out.format(\"%-8d%n\",year);\r\n        //总长度是8,不够补0\r\n        System.out.format(\"%08d%n\",year);\r\n        //千位分隔符\r\n        System.out.format(\"%,8d%n\",year*10000);\r\n  \r\n        //保留5位小数\r\n        System.out.format(\"%.5f%n\",Math.PI);\r\n          \r\n        //不同国家的千位分隔符\r\n        System.out.format(Locale.FRANCE,\"%,.2f%n\",Math.PI*10000);\r\n        System.out.format(Locale.US,\"%,.2f%n\",Math.PI*10000);\r\n        System.out.format(Locale.UK,\"%,.2f%n\",Math.PI*10000);\r\n          \r\n    }\r\n}\r\n```\r\n输出结果：\r\n\r\n```java\r\n2020\r\n2020\r\n    2020\r\n2020    \r\n00002020\r\n20,200,000\r\n3.14159\r\n31?415,93\r\n31,415.93\r\n31,415.93\r\n```\r\n','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584368822685&di=19855856bbd158b52926a49b51e876c0&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Fcrop.0.4.1280.711%2F70745653ly1fvuflwe10zj20zk0k0n06.jpg','原创',0,1,1,1,1,1,'2019-03-12 13:42:14','2019-03-13 12:00:08',6,1,'JDK5.0允许java像C语言那样直接用printf()方法来格式化输出\r\nSystem.out.format()功能与printf()一样，可以使用%d,%f等参数。\r\n\r\n使用System.out.format()完成左对齐，补0，千位分隔符，小数点位数，本地化表达','7'),
(3,'Springboot中PageHelper 分页查询使用方法','### 一：导入依赖\r\n\r\n```java\r\n<dependency>\r\n	<groupId>com.github.pagehelper</groupId>\r\n	<artifactId>pagehelper-spring-boot-starter</artifactId>\r\n	<version>1.2.13</version>\r\n</dependency>\r\n```\r\n### 二：配置yml文件中PageHelper的属性\r\n\r\n```java\r\npagehelper:                #分页插件\r\n  helper-dialect: mysql\r\n  reasonable: true\r\n  support-methods-arguments: true\r\n  params:\r\n```\r\n### 三：在controller类中使用，\r\n##### 1.在查询方法上调用PageHelper.startPage()方法，设置分页的页数和每页信息数，\r\n##### 2.将查询出来的结果集用PageInfo的构造函数初始化为一个分页结果对象\r\n##### 3.将分页结果对象存入model，返回前端页面\r\n```java\r\n@GetMapping(\"/types\")\r\npublic String types(@RequestParam(required = false,defaultValue = \"1\",value = \"pagenum\")int pagenum, Model model){\r\n\r\n    PageHelper.startPage(pagenum, 5);  //pagenum：页数，pagesize:每页的信息数\r\n    \r\n    List<Type> allType = typeService.getAllType(); //调用业务层查询方法\r\n    \r\n    PageInfo<Type> pageInfo = new PageInfo<>(allType); //得到分页结果对象\r\n    \r\n    model.addAttribute(\"pageInfo\", pageInfo);  //携带分页结果信息\r\n    \r\n    return \"admin/types\";  //回到前端展示页面\r\n}\r\n```\r\n### 四：前端展示分页（thymeleaf+semantic-ui）,这里ui用自己的就行，比如bootstrap或layui，主要是thymeleaf的使用。\r\n\r\n```java\r\n<table  class=\"ui compact celled teal table\">\r\n  <thead>\r\n  <tr>\r\n    <th></th>\r\n    <th>名称</th>\r\n    <th>操作</th>\r\n  </tr>\r\n  </thead>\r\n  <tbody>\r\n  <tr th:each=\"type, iterStat : ${pageInfo.list}\">\r\n    <td th:text=\"${iterStat.count}\">1</td>\r\n    <td th:text=\"${type.name}\">摸鱼方法</td>\r\n    <td>\r\n      <a href=\"#\" th:href=\"@{/admin/types/{id}/input(id=${type.id})}\" class=\"ui mini teal basic button\">编辑</a>\r\n      <a href=\"#\" th:href=\"@{/admin/types/{id}/delete(id=${type.id})}\" class=\"ui mini red basic button\">删除</a>\r\n    </td>\r\n  </tr>\r\n  </tbody>\r\n  <tfoot>\r\n  <tr>\r\n    <th colspan=\"7\">\r\n      <div class=\"ui mini pagination menu\"  >\r\n        <div class=\"item\"><a th:href=\"@{/admin/types}\">首页</a></div>\r\n        <div class=\"item\"><a th:href=\"@{/admin/types(pagenum=${pageInfo.hasPreviousPage}?${pageInfo.prePage}:1)}\">上一页</a></div>\r\n        <div class=\"item\"><a th:href=\"@{/admin/types(pagenum=${pageInfo.hasNextPage}?${pageInfo.nextPage}:${pageInfo.pages})}\">下一页</a></div>\r\n        <div class=\"item\"><a th:href=\"@{/admin/types(pagenum=${pageInfo.pages})}\">尾页</a></div>\r\n      </div>\r\n      <a href=\"#\" th:href=\"@{/admin/types/input}\" class=\"ui mini right floated teal basic button\">新增</a>\r\n    </th>\r\n  </tr>\r\n  </tfoot>\r\n</table>\r\n\r\n<div class=\"ui segment m-inline-block\">\r\n  <p >当前第<span th:text=\"${pageInfo.pageNum}\"></span>页，总<span th:text=\"${pageInfo.pages}\"></span>页，共<span th:text=\"${pageInfo.total}\"></span>条记录</p>\r\n</div>\r\n```\r\n### 五：效果展示（pagesize设置为5的效果）\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200310105006168.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzQyODA0NzM2,size_16,color_FFFFFF,t_70)\r\n','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584368536828&di=460fea188bd56a9f691d87e56622b891&imgtype=0&src=http%3A%2F%2Ftc.sinaimg.cn%2Fmaxwidth.800%2Ftc.service.weibo.com%2Fp3_pstatp_com%2F5ffc4f5b05b15c5642dd59cc7341cc71.jpg','原创',0,1,0,1,1,1,'2019-03-14 17:05:58','2020-03-21 11:45:10',1,1,'1.在查询方法上调用PageHelper.startPage()方法，设置分页的页数和每页信息数，\r\n2.将查询出来的结果集用PageInfo的构造函数初始化为一个分页结果对象\r\n3.将分页结果对象存入model，返回前端页面','5,4'),
(4,'thymeleaf语法及使用','## 模板引擎\r\n\r\n简介：模板引擎(这里特指用于Web开发的模板引擎)是为了使用户界面与业务数据(内容)分离而产生的,它可以生成特定格式的文档，用于网站的模板引擎就会生成一个标准的HTML文档。\r\n模板引擎的思想：\r\n![在这里插入图片描述](https://imgconvert.csdnimg.cn/aHR0cHM6Ly9pbWFnZXMuY25ibG9ncy5jb20vY25ibG9nc19jb20venltMTk5OS8xNjQ1NDE2L29fMjAwMjExMDk1OTQxMTQucG5n?x-oss-process=image/format,png)\r\nThymeleaf就是SpringBoot给我们推荐的一种模板引擎！\r\n\r\n## Thymeleaf模板引擎\r\n\r\n#### 1.使用Thymeleaf之前的步骤\r\n\r\n 1. Thymeleaf 官网：https://www.thymeleaf.org/\r\n 2. springboot项目直接引入依赖：\r\n```java\r\n<dependency>\r\n   <groupId>org.springframework.boot</groupId>\r\n   <artifactId>spring-boot-starter-thymeleaf</artifactId>\r\n</dependency>\r\n```\r\n3.非springboot项目直接引入依赖：\r\n\r\n```java\r\n<dependency>\r\n    <groupId>org.thymeleaf</groupId>\r\n    <artifactId>thymeleaf</artifactId>\r\n    <version>2.1.4</version>\r\n</dependency>\r\n```\r\n  4.在thymeleaf的配置类ThymeleafProperties中我们可以发现：thymeleaf配置的默认前缀为：\"classpath:/templates/\"，默认后缀为：\".html\"，只要把html页面放在这个路径下，\r\n\r\nthymeleaf就可以帮我们自动渲染。\r\n\r\n```java\r\npublic class ThymeleafProperties {\r\n    private static final Charset DEFAULT_ENCODING;\r\n    public static final String DEFAULT_PREFIX = \"classpath:/templates/\";\r\n    public static final String DEFAULT_SUFFIX = \".html\";\r\n    private boolean checkTemplate = true;\r\n    private boolean checkTemplateLocation = true;\r\n    private String prefix = \"classpath:/templates/\";\r\n    private String suffix = \".html\";\r\n    private String mode = \"HTML\";\r\n...\r\n}\r\n```\r\n如图为用idea创建的springboot的项目结构：将html页面放在resources/templates中即可。\r\n![在这里插入图片描述](https://imgconvert.csdnimg.cn/aHR0cHM6Ly9pbWFnZXMuY25ibG9ncy5jb20vY25ibG9nc19jb20venltMTk5OS8xNjQ1NDE2L29fMjAwMjExMDk1OTExMTMucG5n?x-oss-process=image/format,png)\r\n#### 2.Thymeleaf语法简单使用（th:text, th:utext, th:each）\r\n编写一个controller实现跳转到一个html页面，通过Model对象携带数据\r\n\r\n```java\r\n@Controller\r\npublic class HelloController {\r\n\r\n    @RequestMapping(\"/success\")\r\n    public String success(Model model){\r\n        //存入数据\r\n        model.addAttribute(\"msg\",\"<h1>Hello</h1>\");\r\n        model.addAttribute(\"users\", Arrays.asList(\"小红\", \"小米\",\"小白\"));\r\n        //classpath:/templates/success.html\r\n        return \"success\";\r\n    }\r\n}\r\n```\r\nsuccess.html\r\n\r\n```java\r\n<!DOCTYPE html>\r\n<html lang=\"en\" xmlns:th=\"http://www.thymeleaf.org\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <title>Title</title>\r\n</head>\r\n<body>\r\n    <h1>success</h1>\r\n\r\n    <!--Thymeleaf语法：th:text就是将div中的内容设置为它指定的值-->\r\n\r\n    <div th:text=\"${msg}\">你好</div>\r\n    <!--utext：会解析html，显示相应的效果-->\r\n    <div th:utext=\"${msg}\">你好</div>\r\n    <!--each：遍历-->\r\n    <h3 th:each=\"user:${users}\" th:text=\"${user}\"></h3>\r\n\r\n</body>\r\n</html>\r\n```\r\n通过http://localhost:8080/success路径访问到success.html页面，同时成功显示数据：![在这里插入图片描述](https://imgconvert.csdnimg.cn/aHR0cHM6Ly9pbWFnZXMuY25ibG9ncy5jb20vY25ibG9nc19jb20venltMTk5OS8xNjQ1NDE2L29fMjAwMjExMTEyOTE3MTUucG5n?x-oss-process=image/format,png)\r\n#### 3.Thymeleaf基本语法（属性和表达式）\r\n**Thymeleaf标准表达式**\r\n   \r\n\r\n 1. 变量表达式：**${ }**：用于前端获取后端传递的变量值\r\n\r\n   \r\n\r\n 1. 选择表达式：***{ }**：用于绑定一个对象的属性\r\n\r\n   \r\n\r\n 1. URL链接表达式：**@{ }**：用于链接\r\n\r\n    \r\n\r\n 1. 条件表达式：**三目运算符（表达式 ？值（then）：值（else））**\r\n\r\n    \r\n\r\n\r\n    \r\n**Thymeleaf属性标签：**\r\n![在这里插入图片描述](https://imgconvert.csdnimg.cn/aHR0cHM6Ly9pbWFnZXMuY25ibG9ncy5jb20vY25ibG9nc19jb20venltMTk5OS8xNjQ1NDE2L29fMjAwMjExMTEzMTAxMTYucG5n?x-oss-process=image/format,png)\r\n\r\n \r\n\r\n','http://n.sinaimg.cn/sinacn20111/600/w1920h1080/20190331/0f41-huxwryw5226043.jpg','原创',0,1,1,1,1,1,'2020-03-14 17:01:31','2020-03-14 17:01:31',1,1,'简介：模板引擎(这里特指用于Web开发的模板引擎)是为了使用户界面与业务数据(内容)分离而产生的,它可以生成特定格式的文档，用于网站的模板引擎就会生成一个标准的HTML文档。Thymeleaf就是SpringBoot给我们推荐的一种模板引擎！','5,3'),
(5,'利用Set集合去重','### Set集合特点:\r\n#### ①     一次只存一个元素,\r\n\r\n#### ②     不能存储重复的元素\r\n\r\n#### ③     存储顺序和取出来的顺序不一定一致不能存储重复的元素\r\n\r\n可以利用②这一特点，完成去重的功能。\r\n#### 一：Set集合去掉List集合中重复元素\r\n\r\n```java\r\npublic static void main(String[] args) {\r\n	\r\n	//利用set集合 去除ArrayList集合中的重复元素\r\n	ArrayList<String> list = new ArrayList<>();\r\n	list.add(\"1\");\r\n    list.add(\"1\");\r\n    list.add(\"2\");\r\n    list.add(\"2\");\r\n    list.add(\"3\");\r\n    list.add(\"3\");\r\n    list.add(\"4\");\r\n    list.add(\"4\");\r\n    System.out.println(\"去重前的List集合：\"+list);\r\n    \r\n	Set<String> set = new HashSet<>();\r\n	set.addAll(list);\r\n	System.out.println(\"Set集合：\"+set);\r\n	\r\n	list.clear();            // 清空原有元素 放入被list去重后的元素\r\n	list.addAll(set);\r\n	System.out.println(\"去重后的List集合：\"+list);\r\n}\r\n```\r\n运行结果：\r\n\r\n```java\r\n去重前的List集合：[1, 1, 2, 2, 3, 3, 4, 4]\r\nSet集合：[1, 2, 3, 4]\r\n去重后的List集合：[1, 2, 3, 4]\r\n```\r\n\r\n#### 二：Set集合去掉字符串中重复子串\r\n\r\n```java\r\npublic static void main(String[] args) {\r\n	String str = \"aaab\";\r\n	System.out.println(\"字符串aaab 有非空子串a, b, aa, ab, aaa, aab, aaab，一共 7 个\");\r\n	\r\n	Set<String> set = new HashSet<String>();\r\n	for (int step = 0; step <= str.length() - 1; step++) {\r\n		//扫描全部子串\r\n		for (int begin = 0, end = 1 + step; end <= str.length(); begin++, end++) {     \r\n			String kid = str.substring(begin, end);   //截取字符串子串\r\n			set.add(kid);			//将子串放入set集合，完成去重\r\n		}\r\n	}\r\n	System.out.println(\"去除重复子串后的全部子串有：\"+set.size()+\"个\");\r\n	System.out.println(\"分别是：\" + set);\r\n}\r\n```\r\n运行结果：\r\n```java\r\n字符串aaab 有非空子串a, b, aa, ab, aaa, aab, aaab，一共 7 个\r\n去除重复子串后的全部子串有：7个\r\n分别是：[aa, aaa, a, ab, b, aab, aaab]\r\n```\r\n\r\n','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584366026862&di=62fd65c3b51d4c6b8052f954ef561268&imgtype=0&src=http%3A%2F%2Fimg.article.pchome.net%2F00%2F38%2F63%2F92%2Fpic_lib%2Fs960x639%2F08s960x639.jpg','原创',0,1,1,1,1,1,'2020-03-13 11:21:46','2020-03-14 16:19:35',1,1,'Set集合特点:\r\n① 一次只存一个元素,\r\n② 不能存储重复的元素\r\n③ 存储顺序和取出来的顺序不一定一致不能存储重复的元素','6'),
(6,'mybatis根据日期查询、查询日期并返回','### 方法：\r\n\r\n#### 1.查询日期，返回日期字符串\r\n```handlebars\r\n//查询所有博客对应的年份，返回一个集合\r\nList<String> findGroupYear();  \r\n```\r\n#### 2.根据日期查询\r\n```handlebars\r\n//根据年份查询博客信息\r\nList<Blog> findByYear(@Param(\"year\") String year);  \r\n```\r\n\r\n\r\n### mybatis映射:\r\n\r\n\r\n```java\r\n<select id=\"findGroupYear\" resultType=\"String\">\r\n    select DATE_FORMAT(b.update_time, \'%Y\') from t_blog b\r\n</select>\r\n\r\n\r\n<select id=\"findByYear\" resultType=\"Blog\">\r\n    select b.title, b.update_time, b.id, b.flag\r\n    from t_blog b\r\n    where DATE_FORMAT(b.update_time, \'%Y\') = #{year}\r\n</select>\r\n```\r\n\r\n## 总结：\r\n**DATE_FORMAT(date,format)：date表示日期，format表示显示的格式。**\r\n**该方法可以把date类型转换为String类型的字符串**\r\n','http://p.qpic.cn/dnfbbspic/0/dnfbbs_dnfbbs_dnf_gamebbs_qq_com_forum_202002_04_082156ifotspmtuzcffycn.jpg/0','原创',0,1,1,1,1,1,'2020-03-21 11:54:41','2021-12-14 16:28:02',1,1,'mybatis根据日期查询、查询日期并返回\r\n方法：\r\n1.查询日期，返回日期字符串','4'),
(10,'蓝桥杯：基础练习 01字串（java）','## 试题 基础练习 01字串\r\n  \r\n### 资源限制\r\n时间限制：1.0s   内存限制：256.0MB\r\n### 问题描述\r\n对于长度为5位的一个01串，每一位都可能是0或1，一共有32种可能。它们的前几个是：\r\n\r\n00000\r\n\r\n00001\r\n\r\n00010\r\n\r\n00011\r\n\r\n00100\r\n\r\n请按从小到大的顺序输出这32种01串。\r\n\r\n### 输入格式\r\n本试题没有输入。\r\n### 输出格式\r\n输出32行，按从小到大的顺序每行一个长度为5的01串。\r\n### 样例输出\r\n00000\r\n00001\r\n00010\r\n00011\r\n<以下部分省略>\r\n\r\n#### 思路：\r\n**使用Integer.toBinaryString()将十进制整数转换为二进制字符串，再判断长度是否能整除5，在前面加0输出**\r\n\r\n```java\r\npublic class 字串01 {\r\n	public static void main(String[] args) {\r\n		\r\n		for(int i = 0; i <= 31; i++) {\r\n			String s = Integer.toBinaryString(i);\r\n			int len = s.length();\r\n			switch(len % 5) {\r\n			case 1: s = \"0000\" + s;break;\r\n			case 2: s = \"000\" + s;break;\r\n			case 3: s = \"00\" + s;break;\r\n			case 4: s = \"0\" + s;break;\r\n			case 0: break;\r\n			}\r\n			System.out.println(s);\r\n		}\r\n	}\r\n}\r\n```\r\n\r\n**另一种方法，不用判断加0，也可以直接使用printf输出指定格式的整数：**\r\n```java\r\npublic class 字串01 {\r\n	public static void main(String[] args) {\r\n		\r\n		for(int i = 0; i <= 31; i++) {\r\n			String s = Integer.toBinaryString(i);\r\n			int n = Integer.parseInt(s);\r\n			System.out.printf(\"%05d\\n\",n);\r\n		}\r\n	}\r\n}\r\n```\r\n\r\n','http://5b0988e595225.cdn.sohucs.com/images/20190112/12a825d7c0f94223a0b1fc3dcddc6570.jpeg','原创',0,1,1,1,1,1,'2020-03-21 16:19:41','2021-12-14 16:24:55',1,1,'问题描述\r\n\r\n对于长度为5位的一个01串，每一位都可能是0或1，一共有32种可能。它们的前几个是：\r\n\r\n00000\r\n\r\n00001\r\n\r\n00010\r\n\r\n00011\r\n\r\n00100\r\n\r\n请按从小到大的顺序输出这32种01串。',''),
(20,'123','123','123','原创',0,1,1,1,1,1,'2021-12-14 16:39:12','2021-12-14 16:39:12',1,1,'1','4'),
(22,'456','456','456','原创',0,1,1,1,1,1,'2021-12-14 16:43:35','2021-12-14 16:43:35',1,1,'1',''),
(23,'987','654','321','原创',0,1,1,1,1,1,'2021-12-14 16:46:33','2021-12-14 16:46:33',132,1,'1',''),
(24,'123','456','789','原创',0,1,1,1,1,1,'2021-12-14 16:47:43','2021-12-14 16:47:43',651,1,'1',''),
(25,'123','456','789','原创',0,1,1,1,1,1,'2021-12-14 16:56:05','2021-12-14 16:56:05',1,1,'345','');

/*Table structure for table `t_blog_tags` */

DROP TABLE IF EXISTS `t_blog_tags`;

CREATE TABLE `t_blog_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag_id` bigint DEFAULT NULL,
  `blog_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `t_blog_tags` */

insert  into `t_blog_tags`(`id`,`tag_id`,`blog_id`) values 
(1,3,'4'),
(2,4,'1'),
(3,4,'3'),
(4,5,'3'),
(5,5,'4'),
(6,7,'2'),
(7,6,'5'),
(64,5,'3'),
(65,4,'3'),
(66,4,'6'),
(74,7,'10'),
(75,8,'11'),
(76,8,'12'),
(77,8,'13');

/*Table structure for table `t_type` */

DROP TABLE IF EXISTS `t_type`;

CREATE TABLE `t_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `t_type` */

insert  into `t_type`(`id`,`name`) values 
(1,'学习方法'),
(3,'娱乐方法'),
(4,'钓鱼方法'),
(5,'应用方法'),
(6,'动漫方法');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`nickname`,`username`,`password`,`email`,`avatar`,`type`,`create_time`,`update_time`) values 
(1,'admin','admin','e10adc3949ba59abbe56e057f20f883e','691639910@qq.com','https://gravatar.globalslb.net/avatar/6b880a99cac69419a713f398c9699f6b',1,'2020-03-08 18:25:26',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
