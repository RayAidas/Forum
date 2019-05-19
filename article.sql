-- MySQL dump 10.13  Distrib 8.0.15, for Linux (x86_64)
--
-- Host: localhost    Database: mybatis
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `f_article`
--

DROP TABLE IF EXISTS `f_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `f_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(80) NOT NULL,
  `article_describe` varchar(200) NOT NULL,
  `article_tag` varchar(40) NOT NULL,
  `article_author` varchar(20) NOT NULL,
  `article_createtime` datetime DEFAULT NULL,
  `article_content` varchar(10000) DEFAULT NULL,
  `article_author_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_article`
--

LOCK TABLES `f_article` WRITE;
/*!40000 ALTER TABLE `f_article` DISABLE KEYS */;
INSERT INTO `f_article` VALUES (19,' 框架的游戏：2019 年 JavaScript 流行趋势','Andrew Stetsenko 译者 | 李志 JavaScript 生态系统复杂多变，各种框架让人眼花缭乱。究竟孰优孰劣，如今的发展趋势是怎样的，用人单位又需要怎样的人才？','前端','RayAias','2019-05-19 10:49:26','JavaScript 生态系统复杂多变，各种框架让人眼花缭乱。究竟孰优孰劣，如今的发展趋势是怎样的，用人单位又需要怎样的人才？本文站在一个中立者的角度，客观分析了当前这场“框架的游戏”中，JavaScript 的流行趋势。<br/>\r\n<br/>\r\nJavascript 的生态环境让我想到了战场。TypeScript 对战 ES6，React 对战 Angular，Jest 对战 Mocha……就像在看热播的电视剧一样，这些激烈的冲突让 JS 的粉丝们焦急地等待着更新，并不禁扪心自问：我下一步究竟该学什么？与此同时，每种技术的粉丝军团仅仅是在火上浇油而已。<br/>\r\n<br/>\r\n我们在 CV Compiler 平台每周帮助几十个 JS 开发者完善他们的简历，所以我们也在持续跟进着“框架的游戏”，定期分析着用人单位的需求。但在这篇文章中，我不会去支持或反对任何一种技术——只会站在一个中立的角度，来分析一下当前 JavaScript 的流行趋势。<br/>\r\n<br/>\r\n当今 JS 开发者需要具备的能力：我们基于数据的研究<br/>\r\n我们从 AngleList、StackOverflow、LinkedIn 和一些全世界范围内发展很快的科技公司的招聘页面等多个平台上选取了 300 个 JavaScript 开发岗的招聘要求。我们利用自己的文本分析工具，计算出了这些要求中最常提到的一些术语，如下图所示（图中数字表示各术语被提及的频率）。<br/>\r\n<br/>\r\n主要收获<br/>\r\n在我们的评级中没有被展示出的非 JS 语言中，提及频率最高的是 C＃和 PHP。至于数据库管理系统，MySQL 和 MongoDB 也马上要冲进评级榜单了。令人惊讶的是，常见的 Express.js 被提及的频率较低，Flow 也是如此。<br/>\r\n<br/>\r\n虽然图表中没有提到 Agile（敏捷）这个术语，但它比 Git 或 Redux 被提及的频率更高，这说明 JS 开发者们除了要获得开发岗位必须的硬技能，软技能同样不可忽视。UX 也是如此。当然，你没有必要为此专门参加一个高级的 UX（User experience）课程（如果可以参加的话自然就更好了），但作为一个前端开发者，你需要知道如何在技术层面为用户提供更流畅的体验，而不是在设计层面。<br/>\r\n<br/>\r\n我们还遇到了可扩展性（Scalability）、云计算（Cloud Computing）和安全性（Security）这样的术语。这一事实表明，JS 继承了开发人员行业的趋势。<br/>\r\n<br/>\r\n你可能已经注意到，在我们的技能评级中，Vue.js 的排名并不高。我估计这有几点原因。首先，很多公司还没有准备好将产品迁移到 Vue.js 而放弃他们目前很稳定、常规的前端解决方案。其次，可能有些用人单位想要让员工在工作过程中学习 Vue.js，所以他们在招聘要求里并没有提到这个词。<br/>\r\n<br/>\r\n无论如何，基于全球范围内的调研，Vue.js 是十分流行的——28.8% 的受试者在 JavaScript 2018 问卷调查中使用 Vue.js，并表示愿意再次使用它。另外一个有趣的结论是：34% 的受试者在同一份问卷中表示使用过 Angular，但不愿意再次使用。然而，这并不表示这三种技术（React，Angular 或 Vue.js）中的任意一个会举手投降。选择哪种前端框架取决于很多因素，如项目的规模、架构以及企业特征。<br/>\r\n<br/>\r\n对于 GraphQL 来说同样如此。虽然它在表中排名并不靠前，但确实增长飞快。在 2018 年 Node.js 用户调查问卷中，21% 的受试者已经在工作中使用它了。2018 年 4 月 30 日，52 个用户下载了 Apollo（GraphQL 的客户端）。而在此后正好一年的时间里，有 10794 个用户下载了它。<br/>\r\n<br/>\r\n在编译工具方面，也有一个很有趣的竞争关系：Parcel 和 Webpack。2018 年 JavaScript 新星调查中显示，Parcel 越来越流行，其热度已经逐渐超过了 Webpack。然而，虽然 Parcel 具有几个很有吸引力的内置功能，如开箱即用的配置、开发服务器和热模块替换，它仍然没有取代优秀的 Webpack。在 JS 2018 问卷调查中，超过 16000 名受试者使用 Webpack 来编译他们的项目。而在我们的调查中，300 份招聘说明中没有见到 Parcel 的影子。<br/>',16),(20,'JavaScript 个性特点：编程语言界的平头哥','JavaScript 这家伙已经疯球了，什么都不在乎的。无论你把什么玩意儿丢给他，他都能给你摆平。根本不要在这位老哥面前提什么编译错误。  作者: John Charles McLaughlin  译者: 李志','JavaScript','admin','2019-05-19 11:32:49','JavaScript 这家伙已经疯球了，什么都不在乎的。无论你把什么玩意儿丢给他，他都能给你摆平。根本不要在这位老哥面前提什么编译错误。就是一坨??? 老哥都能给你运行。什么，你在担心他会给出一个错误的结果？都给你结果了还要啥自行车？如果你担心结果会是错的，那自己用 jest 或 mocha 弄一个测试就结了。<br/>\r\n<br/>\r\nJavaScript 测试框架也是啥都不在乎。你用他测试啥都行。不要给我说什么依赖注入、接口过度泛化、反射机制！老哥跑测试就是一把梭！存根（stub），监视（spy），模拟（mock），抄起 sinon 就是干！端到端测试用 webdriverio，API 测试用 lodash-match-pattern，稳如狗！<br/>\r\n<br/>\r\n你说 JavaScript 邋邋遢遢、不够帅气？人家根本就不在乎好吧。你要是嫌弃，就用 eslint、standardize it、prettier 这些工具来给老哥打扮打扮吧。<br/>\r\n<br/>\r\n平头哥 JavaScript 浑身是胆，根本不在乎你怎么看。在老哥这里不要提什么私有（private）变量、保护（protected）变量。你尽管检查对象、更改函数，管你啥时候。平头哥一身正气，从不藏着掖着。你问他为啥会这样？艺高人胆大啊！<br/>\r\n<br/>\r\nJavaScript 老哥从不磨叽。等什么等啊，一看就不是平头哥的作风。JavaScript 从来不等那些数据库存取、API 调用什么的。错过了 await 关键字、没完成 Promise 对象，没关系！还是该吃吃该睡睡！<br/>\r\n<br/>\r\n想来点静态类？老哥请 TypeScript 或 Flow 兄弟们来帮忙就成。不过你可能会觉得这有点像给平头哥戴个游泳圈。是有点违和，最后任何类型的声明都能把他轻松击败。（不过，现在还有人在乎“类型安全”什么的吗？）<br/>\r\n<br/>\r\nlast count（http://www.modulecounts.com/）统计出，NPM 包的项目里有超过 800,000 个模块——大约是 Maven（Java）的三倍了。所以就算这里面的大部分模块和泥蛋一样又脏又丑又怎样，每个月有 180 亿的下载量呢，不服都不行。<br/>\r\n<br/>\r\n平头哥啥都能吃：毒蛇、猛禽蛋、蝎子，来者不拒，最爱的是蜜蜂幼虫。是什么东西不重要，在平头哥眼里都是“吃的”。JavaScript 也能消化一切东西，管你喂给他什么，对他来说全是“对象”。更绝的是，解构和展开语法让 JavaScript 能把对象嚼得碎碎的，吃得更美味、更有营养。<br/>\r\n<br/>\r\nJavaScript 才不在乎怎么和别的语言接口：protobuf 啦，swagger 定义啦，RESTish 啦，graphQL 啦，都招呼上来。老哥就是干这活的，大杂烩 API 把所有接口方式照单全收，交给他处理就行。<br/>\r\n<br/>\r\nLodash 也是个狠角儿。你要是觉得 JavaScript 中还需要用 for 循环 while 循环什么的，Lodash 就笑笑不说话。如果你在 JavaScript 里还用原始的 foreach、map、filter 等语句，Lodash 表示不想理你。如果你在做字符串处理、类型检查或给对象集变形时还在自己手动写代码，Lodash 只能对你说：对不起我们不认识。<br/>\r\n<br/>\r\n在操控日期方面，momentjs 有自己的想法。他不会在意什么时区、时间存档，甚至连你在哪儿他都不在乎。无论你输入的日期格式有多蠢，他都能抽丝剥茧找到其本质所在，然后输出你所在时区的正确时间格式。<br/>\r\n<br/>\r\n让我们来看看还有哪个老实人需要 ORM（对象关系映射），我们来嘲笑他。反正 JavaScript 不需要。关系型数据表本质不是 OOP 对象，它还想骗你多动脑筋。有了 knexjs，JavaScript 可以避免数据库 / 对象不匹配问题、有漏洞的 ORM 抽象问题，而且一般都能跳过冗余的 OOP 模型定义，因为有 SQL 数据模型就够了。<br/>\r\n<br/>\r\n你是谁，你来自哪里，你现在要做什么？passport 模型能帮你回答这一深奥的哲学问题。<br/>\r\n<br/>\r\n忘了你那神圣的前端 MVC 模式吧！React 以及他的朋友 redux，vue 等等已经彻底毁灭了这一误用的、过度泛化的教条。<br/>\r\n<br/>\r\n还有一些工具如 bluebird、axios、babel 等等，这些兄弟们一起协助 JavaScript，让平头哥更加无所畏惧。<br/>\r\n被用了那么多年，也被骂了那么多年，JavaScript 脸皮已经相当厚了。各种编程实践都离不开他，世界各地的开发者们也都在吐槽他。但无论如何，老哥在 GitHub 上每年有 230 万下载量，我管你怎么想叻～<br/>\r\n<br/>\r\n英文原文链接：<br/>\r\nhttps://hackernoon.com/javascript-is-the-honey-badger-of-languages-117ebe631bc7\r\n',17);
/*!40000 ALTER TABLE `f_article` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-19 12:30:53
