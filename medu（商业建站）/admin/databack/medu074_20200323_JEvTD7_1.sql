#MetInfo.cn Created version:7.0.0 
#http://localhost/medu074/
#met_
# --------------------------------------------------------


DROP TABLE IF EXISTS met_admin_array;
CREATE TABLE `met_admin_array` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `array_name` varchar(255) NOT NULL DEFAULT '',
  `admin_type` text NOT NULL,
  `admin_ok` int(11) NOT NULL DEFAULT '0',
  `admin_op` varchar(30) NOT NULL DEFAULT 'metinfo',
  `admin_issueok` int(11) NOT NULL DEFAULT '0',
  `admin_group` int(11) NOT NULL DEFAULT '0',
  `user_webpower` int(11) NOT NULL DEFAULT '0',
  `array_type` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(50) NOT NULL DEFAULT '',
  `langok` varchar(255) NOT NULL DEFAULT 'metinfo',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO met_admin_array VALUES('1','管理员','metinfo','1','metinfo','0','10000','256','2','metinfo','metinfo');
INSERT INTO met_admin_array VALUES('2','代理商','','0','','0','0','2','1','cn','');

DROP TABLE IF EXISTS met_admin_column;
CREATE TABLE `met_admin_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `bigclass` int(11) DEFAULT '0',
  `field` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '0',
  `list_order` int(11) DEFAULT '0',
  `icon` varchar(255) DEFAULT '',
  `info` text,
  `display` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

INSERT INTO met_admin_column VALUES('1','lang_administration','manage','0','1301','1','0','manage','','1');
INSERT INTO met_admin_column VALUES('2','lang_htmColumn','column','0','1201','1','1','column','','1');
INSERT INTO met_admin_column VALUES('3','lang_feedback_interaction','','0','1202','1','2','feedback-interaction','','1');
INSERT INTO met_admin_column VALUES('4','lang_seo_set_v6','seo','0','1404','1','3','seo','','1');
INSERT INTO met_admin_column VALUES('5','lang_appearance','app/met_template','0','1405','1','4','template','','1');
INSERT INTO met_admin_column VALUES('6','lang_myapp','myapp','0','1505','1','5','application','','1');
INSERT INTO met_admin_column VALUES('7','lang_the_user','','0','1506','1','6','user','','1');
INSERT INTO met_admin_column VALUES('8','lang_safety','','0','1200','1','7','safety','','1');
INSERT INTO met_admin_column VALUES('9','lang_multilingual','language','0','1002','1','8','multilingualism','','1');
INSERT INTO met_admin_column VALUES('10','lang_unitytxt_39','','0','1100','1','9','setting','','1');
INSERT INTO met_admin_column VALUES('11','cooperation_platform','partner','0','1508','1','10','partner','','1');
INSERT INTO met_admin_column VALUES('21','lang_mod8','feed_feedback_8','3','1509','2','0','feedback','','1');
INSERT INTO met_admin_column VALUES('22','lang_mod7','feed_message_7','3','1510','2','1','message','','1');
INSERT INTO met_admin_column VALUES('23','lang_mod6','feed_job_6','3','1511','2','2','recruit','','1');
INSERT INTO met_admin_column VALUES('24','lang_customerService','online','3','1106','2','3','online','','1');
INSERT INTO met_admin_column VALUES('25','lang_indexlink','link','4','1406','2','0','link','','0');
INSERT INTO met_admin_column VALUES('26','lang_member','user','7','1601','2','0','member','','1');
INSERT INTO met_admin_column VALUES('27','lang_managertyp2','admin/user','7','1603','2','1','administrator','','1');
INSERT INTO met_admin_column VALUES('28','lang_safety_efficiency','safe','8','1004','2','0','safe','','1');
INSERT INTO met_admin_column VALUES('29','lang_data_processing','databack','8','1005','2','1','databack','','1');
INSERT INTO met_admin_column VALUES('30','lang_upfiletips7','webset','10','1007','2','0','information','','1');
INSERT INTO met_admin_column VALUES('31','lang_indexpic','imgmanage','10','1003','2','1','picture','','1');
INSERT INTO met_admin_column VALUES('32','lang_banner_manage','banner','10','1604','2','2','banner','','1');
INSERT INTO met_admin_column VALUES('33','lang_the_menu','menu','10','1605','2','3','bottom-menu','','1');
INSERT INTO met_admin_column VALUES('34','lang_checkupdate','update','37','1104','2','4','update','','0');
INSERT INTO met_admin_column VALUES('35','lang_appinstall','appinstall','6','1800','2','0','appinstall','','0');
INSERT INTO met_admin_column VALUES('36','lang_dlapptips6','appuninstall','6','1801','2','0','appuninstall','','0');
INSERT INTO met_admin_column VALUES('37','lang_top_menu','top_menu','0','1900','1','0','top_menu','','0');
INSERT INTO met_admin_column VALUES('38','lang_clearCache','clear_cache','37','1901','2','0','clear_cache','','0');
INSERT INTO met_admin_column VALUES('39','lang_funcCollection','function_complete','37','1902','2','0','function_complete','','0');
INSERT INTO met_admin_column VALUES('40','lang_environmental_test','environmental_test','37','1903','2','0','environmental_test','','0');
INSERT INTO met_admin_column VALUES('41','lang_navSetting','navSetting','6','1904','2','0','navSetting','','0');
INSERT INTO met_admin_column VALUES('42','lang_style_settings','style_settings','5','1905','2','0','style_settings','','0');

DROP TABLE IF EXISTS met_admin_logs;
CREATE TABLE `met_admin_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `module` varchar(255) NOT NULL DEFAULT '',
  `current_url` varchar(255) NOT NULL DEFAULT '',
  `brower` varchar(255) NOT NULL DEFAULT '',
  `result` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `client` varchar(50) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `user_agent` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_admin_table;
CREATE TABLE `met_admin_table` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_type` text,
  `admin_id` char(20) NOT NULL DEFAULT '',
  `admin_pass` char(64) NOT NULL DEFAULT '',
  `admin_name` varchar(30) NOT NULL DEFAULT '',
  `admin_sex` tinyint(1) DEFAULT '1',
  `admin_tel` varchar(20) DEFAULT '',
  `admin_mobile` varchar(20) DEFAULT '',
  `admin_email` varchar(150) DEFAULT '',
  `admin_qq` varchar(12) DEFAULT '',
  `admin_msn` varchar(40) DEFAULT '',
  `admin_taobao` varchar(40) DEFAULT '',
  `admin_introduction` text,
  `admin_login` int(11) DEFAULT '0',
  `admin_modify_ip` varchar(20) DEFAULT '',
  `admin_modify_date` datetime DEFAULT NULL,
  `admin_register_date` datetime DEFAULT NULL,
  `admin_approval_date` datetime DEFAULT NULL,
  `admin_ok` int(11) DEFAULT '0',
  `admin_op` varchar(30) DEFAULT 'metinfo',
  `admin_issueok` int(11) DEFAULT '0',
  `admin_group` int(11) DEFAULT '0',
  `companyname` varchar(255) DEFAULT '',
  `companyaddress` varchar(255) DEFAULT '',
  `companyfax` varchar(255) DEFAULT '',
  `usertype` int(11) DEFAULT '0',
  `checkid` int(1) DEFAULT '0',
  `companycode` varchar(50) DEFAULT '',
  `companywebsite` varchar(50) DEFAULT '',
  `cookie` text,
  `admin_shortcut` text,
  `lang` varchar(50) DEFAULT '',
  `content_type` int(11) DEFAULT '0',
  `langok` varchar(255) DEFAULT 'metinfo',
  `admin_login_lang` varchar(50) DEFAULT '' COMMENT '登录默认语言',
  `admin_check` int(11) DEFAULT '0' COMMENT '发布信息需要审核才能正常显示',
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO met_admin_table VALUES('1','metinfo','admin','e10adc3949ba59abbe56e057f20f883e','','1','','11','met@qq.com','','','','创始人','1','::1','2020-03-23 15:49:34','0000-00-00 00:00:00','','1','metinfo','0','10000','','','','3','0','','','{\"time\":1584950355,\"metinfo_admin_name\":\"admin\",\"metinfo_admin_pass\":\"e10adc3949ba59abbe56e057f20f883e\",\"metinfo_admin_id\":\"1\",\"metinfo_admin_type\":\"3\",\"metinfo_admin_pop\":\"metinfo\",\"metinfo_admin_time\":\"1584949774\",\"metinfo_admin_lang\":\"metinfo\",\"languser\":\"cn\"}','[{\"name\":\"lang_skinbaseset\",\"url\":\"system/basic.php?anyid=9&lang=cn\",\"bigclass\":\"1\",\"field\":\"s1001\",\"type\":\"2\",\"list_order\":\"10\",\"protect\":\"1\",\"hidden\":\"0\",\"lang\":\"lang_skinbaseset\"},{\"name\":\"lang_indexcolumn\",\"url\":\"column/index.php?anyid=25&lang=cn\",\"bigclass\":\"1\",\"field\":\"s1201\",\"type\":\"2\",\"list_order\":\"0\",\"protect\":\"1\",\"hidden\":\"0\",\"lang\":\"lang_indexcolumn\"},{\"name\":\"lang_unitytxt_75\",\"url\":\"interface/skin_editor.php?anyid=18&lang=cn\",\"bigclass\":\"1\",\"field\":\"s1101\",\"type\":\"2\",\"list_order\":\"0\",\"protect\":\"1\",\"hidden\":\"0\",\"lang\":\"lang_unitytxt_75\"},{\"name\":\"lang_tmptips\",\"url\":\"interface/info.php?anyid=24&lang=cn\",\"bigclass\":\"1\",\"field\":\"\",\"type\":\"2\",\"list_order\":\"0\",\"protect\":\"1\",\"hidden\":\"0\",\"lang\":\"lang_tmptips\"},{\"name\":\"lang_mod2add\",\"url\":\"content/article/content.php?action=add&lang=cn\",\"bigclass\":\"1\",\"field\":\"\",\"type\":\"2\",\"list_order\":\"0\",\"protect\":\"0\",\"hidden\":\"0\",\"lang\":\"lang_mod2add\"},{\"name\":\"lang_mod3add\",\"url\":\"content/product/content.php?action=add&lang=cn\",\"bigclass\":\"1\",\"field\":\"\",\"type\":2,\"list_order\":\"0\",\"protect\":0}]','','1','metinfo','','0');

DROP TABLE IF EXISTS met_app_config;
CREATE TABLE `met_app_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `appno` int(20) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `lang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_app_plugin;
CREATE TABLE `met_app_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `no_order` int(11) NOT NULL DEFAULT '0',
  `no` int(11) NOT NULL DEFAULT '0',
  `m_name` varchar(255) NOT NULL DEFAULT '',
  `m_action` varchar(255) NOT NULL DEFAULT '',
  `effect` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_applist;
CREATE TABLE `met_applist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `no` int(11) NOT NULL DEFAULT '0',
  `ver` varchar(50) NOT NULL DEFAULT '',
  `m_name` varchar(50) NOT NULL DEFAULT '',
  `m_class` varchar(50) NOT NULL DEFAULT '',
  `m_action` varchar(50) NOT NULL DEFAULT '',
  `appname` varchar(50) NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `updatetime` int(11) NOT NULL DEFAULT '0',
  `target` int(11) NOT NULL DEFAULT '0',
  `display` int(11) NOT NULL DEFAULT '1',
  `depend` varchar(100) NOT NULL,
  `mlangok` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO met_applist VALUES('1','0','','ueditor','index','doindex','百度编辑器','编辑器','0','0','0','0','','0');
INSERT INTO met_applist VALUES('2','10070','1.4','met_sms','index','doindex','短信功能','短信接口','0','0','0','1','','0');
INSERT INTO met_applist VALUES('3','50002','1.0','met_template','temtool','dotemlist','官方模板管理工具','官方商业模板请在此进行管理操作','0','0','0','1','','1');

DROP TABLE IF EXISTS met_column;
CREATE TABLE `met_column` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `foldername` varchar(50) NOT NULL DEFAULT '',
  `filename` varchar(50) NOT NULL DEFAULT '',
  `bigclass` int(11) NOT NULL DEFAULT '0',
  `samefile` int(11) NOT NULL DEFAULT '0',
  `module` int(11) NOT NULL DEFAULT '0',
  `no_order` int(11) NOT NULL DEFAULT '0',
  `wap_ok` int(1) NOT NULL DEFAULT '0',
  `wap_nav_ok` int(11) NOT NULL DEFAULT '0',
  `if_in` int(1) NOT NULL DEFAULT '0',
  `nav` int(1) NOT NULL DEFAULT '0',
  `ctitle` varchar(200) NOT NULL DEFAULT '',
  `keywords` varchar(200) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `description` text NOT NULL,
  `other_info` text NOT NULL,
  `custom_info` text NOT NULL,
  `list_order` int(11) NOT NULL DEFAULT '0',
  `new_windows` varchar(50) NOT NULL DEFAULT '',
  `classtype` int(11) NOT NULL DEFAULT '1',
  `out_url` varchar(200) NOT NULL DEFAULT '',
  `index_num` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `indeximg` varchar(255) NOT NULL DEFAULT '',
  `columnimg` varchar(255) NOT NULL DEFAULT '',
  `isshow` int(11) NOT NULL DEFAULT '1',
  `lang` varchar(50) NOT NULL DEFAULT '',
  `namemark` varchar(255) NOT NULL DEFAULT '',
  `releclass` int(11) NOT NULL DEFAULT '0',
  `display` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(100) NOT NULL DEFAULT '',
  `nofollow` int(1) NOT NULL DEFAULT '0',
  `text_size` int(11) NOT NULL DEFAULT '0',
  `text_color` varchar(100) NOT NULL DEFAULT '',
  `thumb_list` varchar(50) NOT NULL DEFAULT '',
  `thumb_detail` varchar(50) NOT NULL DEFAULT '',
  `list_length` int(11) NOT NULL DEFAULT '0',
  `tab_num` int(11) NOT NULL DEFAULT '0',
  `tab_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

INSERT INTO met_column VALUES('1','会员中心','member','','82','0','10','99','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','82','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('2','站内搜索','search','','82','0','11','99','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','82','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('3','新闻中心','news','','0','0','2','3','0','0','0','3','','','','','','','1','0','1','','0','0','','','1','cn','','0','0','','0','14','','800|500','','6','0','');
INSERT INTO met_column VALUES('4','设计方案','product','','0','0','3','1','0','0','0','3','','','','','','','1','0','1','','0','0','','','1','cn','','0','0','','0','14','','640|800','320|400','4','3','解决方案|设计思路|备注说明||');
INSERT INTO met_column VALUES('34','关于我们','about','','0','0','1','4','0','0','0','3','','','','','','','0','0','1','','0','0','','','0','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('35','公司新闻','news','','3','0','2','0','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('36','行业资讯','news','','3','0','2','1','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('38','案例展示','img','','0','0','5','2','0','0','0','3','','','','','','','1','0','1','','0','0','','','1','cn','','0','0','','0','14','','555|390','555|390','4','0','');
INSERT INTO met_column VALUES('39','了解我们','about','','34','0','1','0','0','0','0','0','','','<h1 style=\"text-align: center;\"><span style=\"font-size: 24px; color: rgb(0, 0, 0);\"><strong>公司简介/about us</strong></span></h1><p><span style=\"font-size: 14px;\"><br/></span></p><p><span style=\"font-size: 14px;\">米拓企业建站系统（原名：MetInfo企业网站管理系统）自2009年发布至今，已成为众多企业建站的主流工具。</span><br/></p><p><span style=\"font-size: 14px;\"><strong>米拓企业建站系统支持将1个网站内容轻松同步到10种终端展示（电脑、手机、平板、微官网、微信小程序、百度小程序、支付宝小程序、字节跳动小程序[今日头条、抖音]、360小程序、QQ小程序），开源免费，适合用于搭建专业的网站。</strong></span></p><p><span style=\"font-size: 14px;\">米拓企业建站系统采用PHP+MySQL架构，支持SQLite数据库，全站内置了SEO搜索引擎优化机制，支持用户自定义语言（全球各种语言），支持可视化编辑管理，拥有企业网站常用的功能模块（简介模块、文章模块、产品模块、下载模块、图片模块、招聘模块、在线留言、反馈系统、在线交流、友情链接、网站地图、会员与权限管理、TAG标签），强大的SEO及伪静态设置功能，支持自定义网站颜色风格，支持按栏目自定义Banner图和数据调用，支持手机底部菜单，支持用户自主二次开发，商业模板支持在线升级。系统内置标准的应用插件开发接口，拥有丰富的免费插件和收费插件，如短信接口、robots文件修改、模板制作助手、小程序、支付接口、商城模块、系统诊所、图片加速、网站广告插件等。无论你是技术大咖还是建站小白，都可以使用MetInfo快速搭建一个功能齐全的响应式专业网站。</span></p><p>&nbsp;</p><p style=\"text-align: center\"><img src=\"../upload/202002/1582624573320199.jpg\" data-width=\"1180\" width=\"1180\" data-height=\"664\" height=\"664\" alt=\"1516066438664023.jpg\" title=\"1582624573320199.jpg\"/></p><p><br/></p>','公司简介/about us米拓企业建站系统（原名：MetInfo|米拓企业建站系统）自2009年发布至今，已成为众多企业建站的主流工具。米拓企业建站系统支持将1个网站内容轻松同步到10种终端展示（电脑、手机、平板、微官网、微信小程序、百度小程序、支付宝小程序、字节跳动小程序[今日头条、抖音]、360小程序、QQ小程序），开源免费，适合用于搭建专业的网站。米拓企业建站系统采用PHP+MySQL架构，','','','1','0','2','','0','0','','','1','cn','','0','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('42','在线留言','message','','34','0','7','3','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','34','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('43','人才招聘','job','','34','0','6','2','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','34','0','','0','14','','','','0','0','');
INSERT INTO met_column VALUES('73','网站地图','sitemap','','82','0','12','99','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','82','0','','0','0','','','','0','0','');
INSERT INTO met_column VALUES('74','聚合标签','tags','','82','0','13','99','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','82','0','','0','0','','','','0','0','');
INSERT INTO met_column VALUES('77','企业文化','about','lianxiwomenweb','34','0','1','1','0','0','0','0','','','<h1 style=\"white-space: normal; text-align: center;\"><span style=\"font-size: 24px;\"></span></h1><h1 style=\"white-space: normal; text-align: center;\"><span style=\"font-size: 24px; color: rgb(0, 0, 0);\"><strong>企业文化/corporate culture</strong></span></h1><p style=\"white-space: normal;\"><span style=\"font-size: 14px;\"><span style=\"font-size: 14px;\"><br/></span></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 14px;\"><span style=\"font-size: 14px;\">我们秉承“为合作伙伴创造价值”的核心价值观，并以“诚实、宽容、创新、服务”为企业精神，通过自主创新和真诚合作为电子商务及信息服务行业创造价值。</span></span></p><p><br style=\"box-sizing: inherit; max-width: 100%;\"/></p><p><strong><span style=\"font-size: 14px;\">关于“为合作伙伴创造价值”</span></strong></p><p><span style=\"font-size: 14px;\">我们认为客户、供应商、公司股东、公司员工等一切和自身有合作关系的单位和个人都是自己的合作伙伴，并只有通过努力为合作伙伴创造价值，才能体现自身的价值并获得发展和成功。</span></p><p><br style=\"box-sizing: inherit; max-width: 100%;\"/></p><p><strong><span style=\"font-size: 14px;\">关于“诚实、宽容、创新、服务”</span></strong></p><p><span style=\"font-size: 14px;\">我们认为诚信是一切合作的基础，宽容是解决问题的前提，创新是发展事业的利器，服务是创造价值的根本。</span></p><p><span style=\"font-size: 14px;\"><br/></span></p><p style=\"text-align: center;\"><span style=\"font-size: 14px; text-align: center;\"></span></p><p><span style=\"font-size: 14px; text-align: center;\"></span></p>','企业文化/corporate culture我们秉承“为合作伙伴创造价值”的核心价值观，并以“诚实、宽容、创新、服务”为企业精神，通过自主创新和真诚合作为电子商务及信息服务行业创造价值。关于“为合作伙伴创造价值”我们认为客户、供应商、公司股东、公司员工等一切和自身有合作关系的单位和个人都是自己的合作伙伴，并只有通过努力为合作伙伴创造价值，才能体现自身的价值并获得发展和成功。关于“诚实、宽容、创新、','','','1','0','2','','0','0','','','1','cn','','0','0','','0','0','','','','0','0','');
INSERT INTO met_column VALUES('81','联系我们','about1','','0','0','1','5','0','0','0','1','','','<p style=\"white-space: normal;\"><br/></p><h1 style=\"white-space: normal; text-align: center;\"><span style=\"font-size: 24px;\"><strong>联系我们/c<strong>ontact</strong>&nbsp;us</strong></span></h1><p style=\"white-space: normal;\"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"white-space: normal;\"><strong>长沙米拓信息技术有限公司</strong><br/></p><p><span style=\"font-size: 14px;\">地址：湖南.长沙.洋湖总部经济区洋湖公馆写字楼12层1219#</span></p><p><span style=\"font-size: 14px;\">电话：0731-85514433 4000084433</span></p><p><span style=\"font-size: 14px;\">网址：</span><span style=\"font-size: 14px; text-decoration: underline;\"><a href=\"https://www.mituo.cn/\" target=\"_blank\" title=\"米拓建站\" textvalue=\"www.mituo.cn\" style=\"font-size: 14px; text-decoration: underline;\">www.mituo.cn</a></span></p><p><br/></p>','联系我们/contact us长沙米拓信息技术有限公司地址：湖南.长沙.洋湖总部经济区洋湖公馆写字楼12层1219#电话：0731-85514433 4000084433网址：www.mituo.cn','','','1','0','1','','0','0','','','1','cn','','0','0','','0','0','','','','0','0','');
INSERT INTO met_column VALUES('82','功 能','about2','','0','0','1','99','0','0','0','2','','','','','','','1','0','1','','0','0','','','1','cn','','0','0','','0','0','','','','0','0','');
INSERT INTO met_column VALUES('83','家居展厅','img','','38','0','5','1','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','0','0','','0','0','','','','0','0','');
INSERT INTO met_column VALUES('84','科技展厅','img','','38','0','5','0','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','0','0','','0','0','','','','0','0','');
INSERT INTO met_column VALUES('94','终端展示','img1','','0','0','5','10','0','0','0','0','','','','','','','1','0','1','','0','0','','','1','cn','','0','0','','0','0','','','','0','0','');
INSERT INTO met_column VALUES('101','电脑网站','img1','','94','0','5','0','0','0','0','0','','','','','','','1','0','2','','0','0','','../upload/202002/1582603568.png','1','cn','','0','0','icon fa-newspaper-o','0','0','','|','|','0','0','');
INSERT INTO met_column VALUES('102','平板网站','img1','','94','0','5','1','0','0','0','0','','','','','','','1','0','2','','0','0','','../upload/202002/1582603668.png','1','cn','','0','0','icon fa-link','0','0','','|','|','0','0','');
INSERT INTO met_column VALUES('103','手机网站','img1','','94','0','5','2','0','0','0','0','','','','','','','1','0','2','','0','0','','../upload/202002/1582604175.png','1','cn','','0','0','icon wb-share','0','0','','|','|','0','0','');
INSERT INTO met_column VALUES('104','微官网','img1','','94','0','5','3','0','0','0','0','','','','','','','1','0','2','','0','0','','../upload/202002/1582603842.png','1','cn','','0','0','icon fa-map-pin','0','0','','|','|','0','0','');
INSERT INTO met_column VALUES('105','微信小程序','img1','','94','0','5','4','0','0','0','0','','','','','','','1','0','2','','0','0','','../upload/202002/1582604069.png','1','cn','','0','0','icon fa-drivers-license-o','0','0','','|','|','0','0','');
INSERT INTO met_column VALUES('106','百度小程序','img1','','94','0','5','5','0','0','0','0','','','','','','','1','0','2','','0','0','','../upload/202002/1582604392.png','1','cn','','0','0','icon fa-bars','0','0','','|','|','0','0','');
INSERT INTO met_column VALUES('107','支付宝小程序','img1','','94','0','5','6','0','0','0','0','','','','','','','1','0','2','','0','0','','../upload/202002/1582604274.png','1','cn','','0','0','','0','0','','','','0','0','');
INSERT INTO met_column VALUES('108','字节跳动小程序','img1','','94','0','5','7','0','0','0','0','','','','','','','1','0','2','','0','0','','../upload/202002/1582603981.png','1','cn','','0','0','','0','0','','','','0','0','');
INSERT INTO met_column VALUES('109','QQ小程序','img1','','94','0','5','8','0','0','0','0','','','','','','','1','0','2','','0','0','','../upload/202002/1582603792.png','1','cn','','0','0','','0','0','','','','0','0','');
INSERT INTO met_column VALUES('110','360小程序','img1','','94','0','5','9','0','0','0','0','','','','','','','1','0','2','','0','0','','../upload/202002/1582603735.png','1','cn','','0','0','','0','0','','','','0','0','');
INSERT INTO met_column VALUES('111','博物馆展厅','img','','38','0','5','2','0','0','0','0','','','','','','','1','0','2','','0','0','','','1','cn','','0','0','','0','0','','','','0','0','');

DROP TABLE IF EXISTS met_config;
CREATE TABLE `met_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `mobile_value` text NOT NULL,
  `columnid` int(11) NOT NULL DEFAULT '0',
  `flashid` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=464 DEFAULT CHARSET=utf8;

INSERT INTO met_config VALUES('1','metcms_v','7.0.0','','0','0','metinfo');
INSERT INTO met_config VALUES('2','met_host','api.metinfo.cn','','0','0','metinfo');
INSERT INTO met_config VALUES('3','met_adminfile','9626k1yDhwTy+UEvnusgMWahnI7/uzBEoErEoZbV1jugFg','','0','0','metinfo');
INSERT INTO met_config VALUES('4','met_ch_lang','0','','0','0','metinfo');
INSERT INTO met_config VALUES('5','met_lang_mark','0','','0','0','metinfo');
INSERT INTO met_config VALUES('6','met_admin_type_ok','0','','0','0','metinfo');
INSERT INTO met_config VALUES('7','met_admin_type','cn','','0','0','metinfo');
INSERT INTO met_config VALUES('8','met_sitemap_lang','1','','0','0','metinfo');
INSERT INTO met_config VALUES('9','met_sitemap_not2','1','','0','0','metinfo');
INSERT INTO met_config VALUES('10','met_sitemap_not1','0','','0','0','metinfo');
INSERT INTO met_config VALUES('11','met_sitemap_txt','0','','0','0','metinfo');
INSERT INTO met_config VALUES('12','met_sitemap_xml','1','','0','0','metinfo');
INSERT INTO met_config VALUES('13','met_index_type','cn','','0','0','metinfo');
INSERT INTO met_config VALUES('14','met_member_force','crmrbix','','0','0','metinfo');
INSERT INTO met_config VALUES('15','met_tablename','admin_array|admin_column|admin_logs|admin_table|app_config|app_plugin|applist|column|config|cv|download|feedback|flash|flash_button|flist|ifcolumn|ifcolumn_addfile|ifmember_left|img|infoprompt|job|label|lang|lang_admin|language|link|menu|message|mlist|news|online|otherinfo|para|parameter|plist|product|skin_table|tags|templates|ui_config|ui_list|user|user_group|user_group_pay|user_list|user_other','','0','0','metinfo');
INSERT INTO met_config VALUES('16','met_agents_logo_login','../app/system/include/templates/admin/images/login-logo.png','','0','0','metinfo');
INSERT INTO met_config VALUES('17','met_agents_logo_index','../app/system/include/templates/admin/images/logo.png','','0','0','metinfo');
INSERT INTO met_config VALUES('18','met_agents_copyright_foot','Powered by <b><a href=https://www.metinfo.cn target=_blank title=CMS>MetInfo $metcms_v</a></b> &copy;2008-$m_now_year &nbsp;<a href=https://www.mituo.cn target=_blank title=米拓建站>mituo.cn</a>','','0','0','metinfo');
INSERT INTO met_config VALUES('19','met_agents_type','0','','0','0','metinfo');
INSERT INTO met_config VALUES('20','met_agents_code','','','0','0','metinfo');
INSERT INTO met_config VALUES('21','met_agents_backup','metinfo','','0','0','metinfo');
INSERT INTO met_config VALUES('22','met_agents_sms','1','','0','0','metinfo');
INSERT INTO met_config VALUES('23','met_agents_app','1','','0','0','metinfo');
INSERT INTO met_config VALUES('24','met_agents_img','public/images/metinfo.gif','','0','0','metinfo');
INSERT INTO met_config VALUES('25','met_patch','0','','0','0','metinfo');
INSERT INTO met_config VALUES('26','met_agents_thanks','感谢使用 Metinfo','','0','0','cn-metinfo');
INSERT INTO met_config VALUES('27','met_agents_depict_login','MetInfo','','0','0','cn-metinfo');
INSERT INTO met_config VALUES('28','met_agents_name','MetInfo|米拓企业建站系统','','0','0','cn-metinfo');
INSERT INTO met_config VALUES('29','met_agents_copyright','长沙米拓信息技术有限公司（MetInfo Inc.）','','0','0','cn-metinfo');
INSERT INTO met_config VALUES('30','met_agents_about','关于我们','','0','0','cn-metinfo');
INSERT INTO met_config VALUES('31','met_agents_thanks','thanks use Metinfo','','0','0','en-metinfo');
INSERT INTO met_config VALUES('32','met_agents_depict_login','Metinfo Build marketing value corporate website','','0','0','en-metinfo');
INSERT INTO met_config VALUES('33','met_agents_name','Metinfo CMS','','0','0','en-metinfo');
INSERT INTO met_config VALUES('34','met_agents_copyright','China Changsha MetInfo Information Co., Ltd.','','0','0','en-metinfo');
INSERT INTO met_config VALUES('35','met_agents_about','About Us','','0','0','en-metinfo');
INSERT INTO met_config VALUES('36','met_secret_key','','','0','0','metinfo');
INSERT INTO met_config VALUES('37','met_host_new','app.metinfo.cn','','0','0','metinfo');
INSERT INTO met_config VALUES('38','met_editor','ueditor','','0','0','metinfo');
INSERT INTO met_config VALUES('39','met_sms_url','https://u.mituo.cn/api/sms','','0','0','metinfo');
INSERT INTO met_config VALUES('40','met_sms_token','','','0','0','metinfo');
INSERT INTO met_config VALUES('41','met_smsprice','0.1','','0','0','metinfo');
INSERT INTO met_config VALUES('42','met_agents_metmsg','1','','0','0','metinfo');
INSERT INTO met_config VALUES('43','met_safe_prompt','1','','0','0','metinfo');
INSERT INTO met_config VALUES('44','met_uiset_guide','0','','0','0','metinfo');
INSERT INTO met_config VALUES('45','met_api','https://u.mituo.cn/api/client','','0','0','metinfo');
INSERT INTO met_config VALUES('46','met_agents_pageset_name','Metinfo','','0','0','metinfo');
INSERT INTO met_config VALUES('47','met_agents_agents_logo_index','app/system/include/public/ui/admin/images/logo.png','','0','0','metinfo');
INSERT INTO met_config VALUES('48','met_301jump','0','','0','0','metinfo');
INSERT INTO met_config VALUES('49','met_https','0','','0','0','metinfo');
INSERT INTO met_config VALUES('50','disable_cssjs','0','','0','0','metinfo');
INSERT INTO met_config VALUES('51','met_copyright_nofollow','0','','0','0','metinfo');
INSERT INTO met_config VALUES('52','global_search_range','all','','0','0','cn');
INSERT INTO met_config VALUES('53','global_search_type','0','','0','0','cn');
INSERT INTO met_config VALUES('54','global_search_module','2','','0','0','cn');
INSERT INTO met_config VALUES('55','global_search_column','3','','0','0','cn');
INSERT INTO met_config VALUES('56','column_search_range','parent','','0','0','cn');
INSERT INTO met_config VALUES('57','column_search_type','0','','0','0','cn');
INSERT INTO met_config VALUES('58','advanced_search_range','all','','0','0','cn');
INSERT INTO met_config VALUES('59','advanced_search_type','1','','0','0','cn');
INSERT INTO met_config VALUES('60','advanced_search_column','3','','0','0','cn');
INSERT INTO met_config VALUES('61','advanced_search_linkage','1','','0','0','cn');
INSERT INTO met_config VALUES('62','tag_show_range','0','','0','0','cn');
INSERT INTO met_config VALUES('63','tag_show_number','4','','0','0','cn');
INSERT INTO met_config VALUES('64','tag_search_type','module','','0','0','cn');
INSERT INTO met_config VALUES('65','global_search_type','0','','0','0','cn');
INSERT INTO met_config VALUES('66','access_type','1','','0','0','cn');
INSERT INTO met_config VALUES('67','met_webname','数字化展厅设计公司免费网站模板','','0','0','cn');
INSERT INTO met_config VALUES('68','met_api','https://u.mituo.cn/api/client','','0','0','cn');
INSERT INTO met_config VALUES('69','met_logo','../upload/202003/1584675787.png','','0','0','cn');
INSERT INTO met_config VALUES('70','met_mobile_logo','../upload/202003/1584676047.png','','0','0','cn');
INSERT INTO met_config VALUES('71','met_404content','<p>404错误，页面不见了。。。</p>','','0','0','cn');
INSERT INTO met_config VALUES('72','met_data_null','没有找到数据','','0','0','cn');
INSERT INTO met_config VALUES('73','met_skin_user','medu074','','0','0','cn');
INSERT INTO met_config VALUES('74','met_big_wate','0','','0','0','cn');
INSERT INTO met_config VALUES('75','met_thumb_wate','0','','0','0','cn');
INSERT INTO met_config VALUES('76','met_wate_class','1','','0','0','cn');
INSERT INTO met_config VALUES('77','met_wate_img','','','0','0','cn');
INSERT INTO met_config VALUES('78','met_wate_bigimg','','','0','0','cn');
INSERT INTO met_config VALUES('79','met_thumb_kind','2','','0','0','cn');
INSERT INTO met_config VALUES('80','met_text_wate','MetInfo','','0','0','cn');
INSERT INTO met_config VALUES('81','met_text_size','10','','0','0','cn');
INSERT INTO met_config VALUES('82','met_text_bigsize','35','','0','0','cn');
INSERT INTO met_config VALUES('83','met_text_fonts','../include/fonts/arial.ttf','','0','0','cn');
INSERT INTO met_config VALUES('84','met_text_color','#000000','','0','0','cn');
INSERT INTO met_config VALUES('85','met_text_angle','0','','0','0','cn');
INSERT INTO met_config VALUES('86','met_watermark','0','','0','0','cn');
INSERT INTO met_config VALUES('87','met_newsimg_x','800','','0','0','cn');
INSERT INTO met_config VALUES('88','met_newsimg_y','500','','0','0','cn');
INSERT INTO met_config VALUES('89','met_productimg_x','800','','0','0','cn');
INSERT INTO met_config VALUES('90','met_productimg_y','500','','0','0','cn');
INSERT INTO met_config VALUES('91','met_imgs_x','800','','0','0','cn');
INSERT INTO met_config VALUES('92','met_imgs_y','500','','0','0','cn');
INSERT INTO met_config VALUES('93','met_keywords','免费模板,响应式模板,网站制作,网站建设,数字化展厅设计公司免费网站模板','','0','0','cn');
INSERT INTO met_config VALUES('94','met_description','米拓建站专注于为中小企业提供高质量的建站服务，海量模板请登录www.mituo.cn，本站为数字化展厅设计公司免费网站模板，响应式布局，自适应PC+PAD+手机+微官网，本站点为演示站点。','','0','0','cn');
INSERT INTO met_config VALUES('95','met_title_type','2','','0','0','cn');
INSERT INTO met_config VALUES('96','met_seo','<p>后台-营销-SEO-头部优化文字处修改</p>','','0','0','cn');
INSERT INTO met_config VALUES('97','met_alt','图片关键词','','0','0','cn');
INSERT INTO met_config VALUES('98','met_atitle','链接关键词','','0','0','cn');
INSERT INTO met_config VALUES('99','met_linkname','某某公司网站','','0','0','cn');
INSERT INTO met_config VALUES('100','met_footright','我的网站 版权所有 2008-2020 湘ICP备8888888','','0','0','cn');
INSERT INTO met_config VALUES('101','met_footaddress','本站涵盖的内容、图片、视频等模板演示数据，部分未能与原作者取得联系。若涉及版权问题，请及时通知我们并提供相关证明材料，我们将支付合理报酬或立即予以删除！','','0','0','cn');
INSERT INTO met_config VALUES('102','met_foottel','','','0','0','cn');
INSERT INTO met_config VALUES('103','met_footother','<p>米拓企业建站系统和本套免费模板可免费用于商业网站，但请务必遵守<a href=\"https://www.metinfo.cn/metinfo/license.html\" target=\"_blank\" title=\"用户协议\">《米拓企业建站系统最终用户授权许可协议》</a>，如需修改或去除官方版权标识，请购买“<a href=\"https://www.mituo.cn/copyright/\" target=\"_blank\" title=\"版权标识修改许可\">版权标识修改许可</a>”（可点击<a href=\"https://url.cn/5wBN48B?_type=wpa&qidian=true\" target=\"_blank\" title=\"申请成为代理商\" style=\"color: rgb(255, 0, 0); text-decoration: underline;\"><span style=\"color: rgb(255, 0, 0);\">申请成为米拓代理商</span></a>）。</p>','','0','0','cn');
INSERT INTO met_config VALUES('104','met_foottext','','','0','0','cn');
INSERT INTO met_config VALUES('105','met_footstat','<script>\r\nvar _hmt = _hmt || [];\r\n(function() {\r\n  var hm = document.createElement(\"script\");\r\n  hm.src = \"https://hm.baidu.com/hm.js?ae53144d9b0b29e4dce621c970c016e0\";\r\n  var s = document.getElementsByTagName(\"script\")[0]; \r\n  s.parentNode.insertBefore(hm, s);\r\n})();\r\n</script>','','0','0','cn');
INSERT INTO met_config VALUES('106','met_product_list','8','','0','0','cn');
INSERT INTO met_config VALUES('107','met_news_list','8','','0','0','cn');
INSERT INTO met_config VALUES('108','met_download_list','8','','0','0','cn');
INSERT INTO met_config VALUES('109','met_img_list','8','','0','0','cn');
INSERT INTO met_config VALUES('110','met_job_list','3','','0','0','cn');
INSERT INTO met_config VALUES('111','met_message_list','10','','0','0','cn');
INSERT INTO met_config VALUES('112','met_search_list','10','','0','0','cn');
INSERT INTO met_config VALUES('113','met_fd_fromname','米拓信息','','0','0','cn');
INSERT INTO met_config VALUES('114','met_fd_smtp','61.152.188.131','','0','0','cn');
INSERT INTO met_config VALUES('115','met_fd_usename','test@mail.metinfo.cn','','0','0','cn');
INSERT INTO met_config VALUES('116','met_fd_password','passwordhidden','','0','0','cn');
INSERT INTO met_config VALUES('117','met_skin_css','metinfo.css','','0','0','cn');
INSERT INTO met_config VALUES('118','met_autothumb_ok','0','','0','0','cn');
INSERT INTO met_config VALUES('119','met_member_use','1','','0','0','cn');
INSERT INTO met_config VALUES('120','met_member_register','0','','0','0','cn');
INSERT INTO met_config VALUES('121','met_member_idvalidate','0','','0','0','cn');
INSERT INTO met_config VALUES('122','met_idvalid_key','','','0','0','cn');
INSERT INTO met_config VALUES('123','met_newsdays','3','','0','0','cn');
INSERT INTO met_config VALUES('124','met_hot','100','','0','0','cn');
INSERT INTO met_config VALUES('125','met_listtime','Y-m-d','','0','0','cn');
INSERT INTO met_config VALUES('126','met_contenttime','Y-m-d H:i:s','','0','0','cn');
INSERT INTO met_config VALUES('127','met_member_vecan','4','','0','0','cn');
INSERT INTO met_config VALUES('128','met_membercontrol','欢迎注册为【米拓信息】www.metinfo.cn会员，会员激活后您可以享受更多的专业服务！','','0','0','cn');
INSERT INTO met_config VALUES('129','met_pseudo','0','','0','0','cn');
INSERT INTO met_config VALUES('130','met_online_skin','1','','0','0','cn');
INSERT INTO met_config VALUES('131','met_online_type','0','','0','0','cn');
INSERT INTO met_config VALUES('132','met_online_color','#2eb6ff','','0','0','cn');
INSERT INTO met_config VALUES('133','met_onlinetel','<p>服务热线：<br/>0731-0000-0000</p>','','0','0','cn');
INSERT INTO met_config VALUES('134','met_online_x','10','','0','0','cn');
INSERT INTO met_config VALUES('135','met_online_y','300','','0','0','cn');
INSERT INTO met_config VALUES('136','met_onlinenameok','0','','0','0','cn');
INSERT INTO met_config VALUES('137','met_qq_type','3','','0','0','cn');
INSERT INTO met_config VALUES('138','met_msn_type','1','','0','0','cn');
INSERT INTO met_config VALUES('139','met_taobao_type','2','','0','0','cn');
INSERT INTO met_config VALUES('140','met_alibaba_type','10','','0','0','cn');
INSERT INTO met_config VALUES('141','met_skype_type','11','','0','0','cn');
INSERT INTO met_config VALUES('142','met_addlinkopen','1','','0','0','cn');
INSERT INTO met_config VALUES('143','met_pageskin','8','','0','0','cn');
INSERT INTO met_config VALUES('144','met_indexskin','','','0','0','cn');
INSERT INTO met_config VALUES('145','met_urlblank','0','','0','0','cn');
INSERT INTO met_config VALUES('146','met_pnorder','0','','0','0','cn');
INSERT INTO met_config VALUES('147','met_hitsok','','','0','0','cn');
INSERT INTO met_config VALUES('148','met_product_page','0','','0','0','cn');
INSERT INTO met_config VALUES('149','met_img_page','0','','0','0','cn');
INSERT INTO met_config VALUES('150','met_product_detail','1','','0','0','cn');
INSERT INTO met_config VALUES('151','met_img_detail','1','','0','0','cn');
INSERT INTO met_config VALUES('152','met_productdetail_x','800','','0','0','cn');
INSERT INTO met_config VALUES('153','met_productdetail_y','500','','0','0','cn');
INSERT INTO met_config VALUES('154','met_imgdetail_x','800','','0','0','cn');
INSERT INTO met_config VALUES('155','met_imgdetail_y','500','','0','0','cn');
INSERT INTO met_config VALUES('156','met_file_format','rar|zip|sql|doc|pdf|jpg|xls|png|gif|mp3|mp4|jpeg|bmp|swf|flv|ico','','0','0','cn');
INSERT INTO met_config VALUES('157','met_file_maxsize','8','','0','0','cn');
INSERT INTO met_config VALUES('158','met_memberlogin_code','1','','0','0','cn');
INSERT INTO met_config VALUES('159','met_login_code','0','','0','0','cn');
INSERT INTO met_config VALUES('160','met_webhtm','0','','0','0','cn');
INSERT INTO met_config VALUES('161','met_htmtype','html','','0','0','cn');
INSERT INTO met_config VALUES('162','met_htmpagename','2','','0','0','cn');
INSERT INTO met_config VALUES('163','met_listhtmltype','1','','0','0','cn');
INSERT INTO met_config VALUES('164','met_htmlistname','1','','0','0','cn');
INSERT INTO met_config VALUES('165','met_htmway','0','','0','0','cn');
INSERT INTO met_config VALUES('166','met_pageclick','1','','0','0','cn');
INSERT INTO met_config VALUES('167','met_pagetime','1','','0','0','cn');
INSERT INTO met_config VALUES('168','met_pageprint','1','','0','0','cn');
INSERT INTO met_config VALUES('169','met_pageclose','1','','0','0','cn');
INSERT INTO met_config VALUES('170','met_deleteimg','0','','0','0','cn');
INSERT INTO met_config VALUES('171','met_columnshow','0','','0','0','cn');
INSERT INTO met_config VALUES('172','met_kzqie','1','','0','0','cn');
INSERT INTO met_config VALUES('173','met_tools_ok','1','','0','0','cn');
INSERT INTO met_config VALUES('174','met_tools_code','<div class=\"bdsharebuttonbox\"><a href=\"#\" class=\"bds_more\" data-cmd=\"more\"></a><a href=\"#\" class=\"bds_qzone\" data-cmd=\"qzone\" title=\"分享到QQ空间\"></a><a href=\"#\" class=\"bds_tsina\" data-cmd=\"tsina\" title=\"分享到新浪微博\"></a><a href=\"#\" class=\"bds_tqq\" data-cmd=\"tqq\" title=\"分享到腾讯微博\"></a><a href=\"#\" class=\"bds_renren\" data-cmd=\"renren\" title=\"分享到人人网\"></a><a href=\"#\" class=\"bds_weixin\" data-cmd=\"weixin\" title=\"分享到微信\"></a></div><script>window._bd_share_config={\"common\":{\"bdSnsKey\":{},\"bdText\":\"\",\"bdMini\":\"2\",\"bdMiniList\":false,\"bdPic\":\"\",\"bdStyle\":\"1\",\"bdSize\":\"16\"},\"share\":{}};with(document)0[(getElementsByTagName(\"head\")[0]||body).appendChild(createElement(\"script\")).src=\"http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\"+~(-new Date()/36e5)];</script>','','0','0','cn');
INSERT INTO met_config VALUES('175','met_hometitle','数字化展厅设计公司免费网站模板-数字化展厅设计公司免费网页模板|响应式模板|网站制作|网站建站','','0','0','cn');
INSERT INTO met_config VALUES('176','met_img_rename','1','','0','0','cn');
INSERT INTO met_config VALUES('177','met_index_content','<div><img alt=\"\" src=\"upload/images/20120716_094159.jpg\" style=\"line-height: 2; margin: 8px; width: 196px; float: left; height: 209px;\" /></div><div style=\"padding-top:10px;\"><span style=\"font-size:14px;\"><strong>关于&ldquo;为合作伙伴创造价值&rdquo;</strong></span></div><div>米拓信息认为客户、供应商、公司股东、公司员工等一切和自身有合作关系的单位和个人都是自己的合作伙伴，并只有通过努力为合作伙伴创造价值，才能体现自身的价值并获得发展和成功。</div><div>&nbsp;</div><div><span style=\"font-size:14px;\"><strong>关于&ldquo;诚实、宽容、创新、服务&rdquo;</strong></span></div><div><span style=\"font-size:12px;\">米拓信息认为诚信是一切合作的基础，宽容是解决问题的前提，创新是发展事业的利器，服务是创造价值的根本。</span></div><div>&nbsp;</div>','','0','0','cn');
INSERT INTO met_config VALUES('178','met_fd_port','25','','0','0','cn');
INSERT INTO met_config VALUES('179','met_fd_way','tls','','0','0','cn');
INSERT INTO met_config VALUES('180','met_headstat','','','0','0','cn');
INSERT INTO met_config VALUES('181','met_sitemap_auto','1','','0','0','cn');
INSERT INTO met_config VALUES('182','met_maplng','112.947724','','0','0','cn');
INSERT INTO met_config VALUES('183','met_maplat','28.147538','','0','0','cn');
INSERT INTO met_config VALUES('184','met_mapzoom','15','','0','0','cn');
INSERT INTO met_config VALUES('185','met_maptitle','演示公司名称','','0','0','cn');
INSERT INTO met_config VALUES('186','met_mapcontents','地址：长沙市岳麓区#<br/>电话：0000-88888888 0000-8888888','','0','0','cn');
INSERT INTO met_config VALUES('187','met_productTabname','详细信息','','0','0','cn');
INSERT INTO met_config VALUES('188','met_productTabname_1','规格参数','','0','0','cn');
INSERT INTO met_config VALUES('189','met_productTabname_2','包装','','0','0','cn');
INSERT INTO met_config VALUES('190','met_productTabname_3','选项卡四','','0','0','cn');
INSERT INTO met_config VALUES('191','met_productTabname_4','选项卡五','','0','0','cn');
INSERT INTO met_config VALUES('192','met_productTabok','3','','0','0','cn');
INSERT INTO met_config VALUES('193','met_htmlurl','0','','0','0','cn');
INSERT INTO met_config VALUES('194','met_defult_lang','0','0','0','0','cn');
INSERT INTO met_config VALUES('195','met_headstat_mobile','','','0','0','cn');
INSERT INTO met_config VALUES('196','met_footstat_mobile','<script>\r\nvar _hmt = _hmt || [];\r\n(function() {\r\n  var hm = document.createElement(\"script\");\r\n  hm.src = \"https://hm.baidu.com/hm.js?ae53144d9b0b29e4dce621c970c016e0\";\r\n  var s = document.getElementsByTagName(\"script\")[0]; \r\n  s.parentNode.insertBefore(hm, s);\r\n})();\r\n</script>','','0','0','cn');
INSERT INTO met_config VALUES('197','met_weixin_appid','','','0','0','cn');
INSERT INTO met_config VALUES('198','met_weixin_appsecret','','','0','0','cn');
INSERT INTO met_config VALUES('199','met_weibo_appkey','','','0','0','cn');
INSERT INTO met_config VALUES('200','met_weibo_appsecret','','','0','0','cn');
INSERT INTO met_config VALUES('201','met_qq_appid','','','0','0','cn');
INSERT INTO met_config VALUES('202','met_qq_appsecret','','','0','0','cn');
INSERT INTO met_config VALUES('203','met_weixin_open','1','','0','0','cn');
INSERT INTO met_config VALUES('204','met_weibo_open','1','','0','0','cn');
INSERT INTO met_config VALUES('205','met_qq_open','1','','0','0','cn');
INSERT INTO met_config VALUES('206','met_weixin_gz_appid','','','0','0','cn');
INSERT INTO met_config VALUES('207','met_weixin_gz_appsecret','','','0','0','cn');
INSERT INTO met_config VALUES('208','met_member_bgcolor','','','0','0','cn');
INSERT INTO met_config VALUES('209','met_member_bgimage','','','0','0','cn');
INSERT INTO met_config VALUES('210','met_member_email_reg_title','{webname} 会员中心 注册验证','','0','0','cn');
INSERT INTO met_config VALUES('211','met_member_email_reg_content','<div style=\"width:500px;margin:20px auto;\"><div class=\"header clearfix\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39; line-height: 23.7999992370605px; background-color: rgb(255, 255, 255);\"><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname} 会员中心</strong></a></div><p>&nbsp;</p><div class=\"content\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39; line-height: 23.7999992370605px; border: 1px solid rgb(233, 233, 233); margin: 2px 0px 0px; padding: 30px; background: none 0px 0px repeat scroll rgb(255, 255, 255);\"><p style=\"line-height: 23.7999992370605px;\">您好：</p><p style=\"line-height: 23.7999992370605px;\">这是您在 {webname} 会员中心 上的重要邮件, 功能是进行&nbsp;会员中心 注册验证, 请点击下面的连接完成验证</p><p style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); margin-top: 15px; margin-bottom: 25px; padding: 15px;\">请点击链接继续：{opurl}</p><p style=\"line-height: 23.7999992370605px;\">&nbsp;</p><p class=\"footer\" style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); padding-top: 6px; margin-top: 25px; color: rgb(131, 131, 131);\">请勿回复本邮件, 此邮箱未受监控, 您不会得到任何回复。<br/><br/><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname}会员中心</strong></a></p></div></div>','','0','0','cn');
INSERT INTO met_config VALUES('212','met_member_email_password_title','{webname} 会员中心 密码找回','','0','0','cn');
INSERT INTO met_config VALUES('213','met_member_email_password_content','<div style=\"width:500px;margin:20px auto;\"><div class=\"header clearfix\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39; line-height: 23.7999992370605px; background-color: rgb(255, 255, 255);\"><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname} 会员中心</strong></a></div><p>&nbsp;</p><div class=\"content\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39; line-height: 23.7999992370605px; border: 1px solid rgb(233, 233, 233); margin: 2px 0px 0px; padding: 30px; background: none 0px 0px repeat scroll rgb(255, 255, 255);\"><p style=\"line-height: 23.7999992370605px;\">您好：</p><p style=\"line-height: 23.7999992370605px;\">这是您在 {webname} 会员中心 上的重要邮件, 功能是进行&nbsp;会员中心 密码找回, 请点击下面的连接完成验证</p><p style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); margin-top: 15px; margin-bottom: 25px; padding: 15px;\">请点击链接继续：{opurl}</p><p style=\"line-height: 23.7999992370605px;\">&nbsp;</p><p class=\"footer\" style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); padding-top: 6px; margin-top: 25px; color: rgb(131, 131, 131);\">请勿回复本邮件, 此邮箱未受监控, 您不会得到任何回复。<br/><br/><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname}会员中心</strong></a></p></div></div>','','0','0','cn');
INSERT INTO met_config VALUES('214','met_member_email_safety_title','{webname} 会员中心 修改绑定邮箱','','0','0','cn');
INSERT INTO met_config VALUES('215','met_member_email_safety_content','<div style=\"width:500px;margin:20px auto;\"><div class=\"header clearfix\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39; line-height: 23.7999992370605px; background-color: rgb(255, 255, 255);\"><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname} 会员中心</strong></a></div><p>&nbsp;</p><div class=\"content\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39; line-height: 23.7999992370605px; border: 1px solid rgb(233, 233, 233); margin: 2px 0px 0px; padding: 30px; background: none 0px 0px repeat scroll rgb(255, 255, 255);\"><p style=\"line-height: 23.7999992370605px;\">您好：</p><p style=\"line-height: 23.7999992370605px;\">这是您在 {webname} 会员中心 上的重要邮件, 功能是进行&nbsp;会员中心 绑定邮箱修改, 请点击下面的连接完成验证</p><p style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); margin-top: 15px; margin-bottom: 25px; padding: 15px;\">请点击链接继续：{opurl}</p><p style=\"line-height: 23.7999992370605px;\">&nbsp;</p><p class=\"footer\" style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); padding-top: 6px; margin-top: 25px; color: rgb(131, 131,131);\">请勿回复本邮件,此邮箱未受监控,您不会得到任何回复。<br/><br/><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname}会员中心</strong></a></p></div></div>','','0','0','cn');
INSERT INTO met_config VALUES('216','met_fd_word','','','0','0','cn');
INSERT INTO met_config VALUES('217','met_logo_keyword','数字化展厅设计公司响应式网站模板','','0','0','cn');
INSERT INTO met_config VALUES('218','met_logs','0','','0','0','cn');
INSERT INTO met_config VALUES('219','met_member_agreement','0','','0','0','cn');
INSERT INTO met_config VALUES('220','met_member_agreement_content','','','0','0','cn');
INSERT INTO met_config VALUES('221','debug','0','','0','0','cn');
INSERT INTO met_config VALUES('391','flash_10000','3|980|300|1','','0','10000','cn');
INSERT INTO met_config VALUES('392','flash_10001','1|980|600|','','0','10001','cn');
INSERT INTO met_config VALUES('393','flash_1','3|980|300|1','','0','1','cn');
INSERT INTO met_config VALUES('394','flash_2','3|980|300|1','','0','2','cn');
INSERT INTO met_config VALUES('395','flash_3','3|980|300|1','','0','3','cn');
INSERT INTO met_config VALUES('397','flash_38','3|980|300|1','','0','38','cn');
INSERT INTO met_config VALUES('398','flash_42','3|980|300|1','','0','42','cn');
INSERT INTO met_config VALUES('399','flash_43','3|980|300|1','','0','43','cn');
INSERT INTO met_config VALUES('400','flash_34','3|980|300|1','','0','34','cn');
INSERT INTO met_config VALUES('401','flash_39','3|980|300|1','','0','39','cn');
INSERT INTO met_config VALUES('403','flash_35','3|980|300|1','','0','35','cn');
INSERT INTO met_config VALUES('404','flash_36','3|980|300|1','','0','36','cn');
INSERT INTO met_config VALUES('405','flash_21','3|980|300|1','','0','21','cn');
INSERT INTO met_config VALUES('406','flash_28','3|980|300|1','','0','28','cn');
INSERT INTO met_config VALUES('407','flash_9','3|980|300|1','','0','9','cn');
INSERT INTO met_config VALUES('408','flash_27','3|980|300|1','','0','27','cn');
INSERT INTO met_config VALUES('409','flash_13','3|980|300|1','','0','13','cn');
INSERT INTO met_config VALUES('410','flash_33','3|980|300|1','','0','33','cn');
INSERT INTO met_config VALUES('411','flash_26','3|980|300|1','','0','26','cn');
INSERT INTO met_config VALUES('412','flash_20','3|980|300|1','','0','20','cn');
INSERT INTO met_config VALUES('413','flash_14','3|980|300|1','','0','14','cn');
INSERT INTO met_config VALUES('414','flash_32','3|980|300|1','','0','32','cn');
INSERT INTO met_config VALUES('416','flash_19','3|980|300|1','','0','19','cn');
INSERT INTO met_config VALUES('422','flash_30','3|980|300|1','','0','30','cn');
INSERT INTO met_config VALUES('426','flash_8','3|980|300|1','','0','8','cn');
INSERT INTO met_config VALUES('427','flash_31','3|980|300|1','','0','31','cn');
INSERT INTO met_config VALUES('429','flash_29','3|980|300|1','','0','29','cn');
INSERT INTO met_config VALUES('433','flash_4','3|980|300|1','','0','4','cn');
INSERT INTO met_config VALUES('435','met_msg_ok','1','','42','0','cn');
INSERT INTO met_config VALUES('436','met_msg_time','120','','42','0','cn');
INSERT INTO met_config VALUES('437','met_msg_name_field','137','','42','0','cn');
INSERT INTO met_config VALUES('438','met_msg_content_field','140','','42','0','cn');
INSERT INTO met_config VALUES('439','met_msg_show_type','1',' ','42','0','cn');
INSERT INTO met_config VALUES('440','met_msg_type','','','42','0','cn');
INSERT INTO met_config VALUES('441','met_msg_to','','','42','0','cn');
INSERT INTO met_config VALUES('442','met_msg_admin_tel','','','42','0','cn');
INSERT INTO met_config VALUES('443','met_msg_back','','','42','0','cn');
INSERT INTO met_config VALUES('444','met_msg_email_field','186','','42','0','cn');
INSERT INTO met_config VALUES('445','met_msg_title','','','42','0','cn');
INSERT INTO met_config VALUES('446','met_msg_content','','','42','0','cn');
INSERT INTO met_config VALUES('447','met_msg_sms_back','','','42','0','cn');
INSERT INTO met_config VALUES('448','met_msg_sms_field','138','','42','0','cn');
INSERT INTO met_config VALUES('449','met_msg_sms_content','','','42','0','cn');
INSERT INTO met_config VALUES('450','met_cv_time','120','','43','0','cn');
INSERT INTO met_config VALUES('451','met_cv_image','175','','43','0','cn');
INSERT INTO met_config VALUES('452','met_cv_showcol','163|167|169','','43','0','cn');
INSERT INTO met_config VALUES('453','met_cv_emtype','0','','43','0','cn');
INSERT INTO met_config VALUES('454','met_cv_type','','','43','0','cn');
INSERT INTO met_config VALUES('455','met_cv_to','','','43','0','cn');
INSERT INTO met_config VALUES('456','met_cv_email','168','','43','0','cn');
INSERT INTO met_config VALUES('457','met_cv_job_tel','','','43','0','cn');
INSERT INTO met_config VALUES('458','met_cv_back','0','','43','0','cn');
INSERT INTO met_config VALUES('459','met_cv_title','','','43','0','cn');
INSERT INTO met_config VALUES('460','met_cv_content','','','43','0','cn');
INSERT INTO met_config VALUES('461','met_cv_sms_back','','','43','0','cn');
INSERT INTO met_config VALUES('462','met_cv_sms_tell','167','','43','0','cn');
INSERT INTO met_config VALUES('463','met_cv_sms_content','','','43','0','cn');

DROP TABLE IF EXISTS met_cv;
CREATE TABLE `met_cv` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `addtime` datetime NOT NULL,
  `readok` int(11) NOT NULL DEFAULT '0',
  `customerid` varchar(50) NOT NULL DEFAULT '0',
  `jobid` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(50) NOT NULL DEFAULT '',
  `ip` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_download;
CREATE TABLE `met_download` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `ctitle` varchar(200) NOT NULL DEFAULT '',
  `keywords` varchar(200) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `class1` int(11) NOT NULL DEFAULT '0',
  `class2` int(11) NOT NULL DEFAULT '0',
  `class3` int(11) NOT NULL DEFAULT '0',
  `no_order` int(11) NOT NULL DEFAULT '0',
  `new_ok` int(1) NOT NULL DEFAULT '0',
  `wap_ok` int(1) NOT NULL DEFAULT '0',
  `downloadurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` varchar(100) NOT NULL DEFAULT '',
  `com_ok` int(1) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `updatetime` datetime NOT NULL,
  `addtime` datetime NOT NULL,
  `issue` varchar(100) NOT NULL DEFAULT '',
  `access` int(11) NOT NULL DEFAULT '0',
  `top_ok` int(1) NOT NULL DEFAULT '0',
  `downloadaccess` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(50) NOT NULL DEFAULT '',
  `recycle` int(11) NOT NULL DEFAULT '0',
  `displaytype` int(11) NOT NULL DEFAULT '1',
  `tag` text NOT NULL,
  `links` varchar(200) NOT NULL DEFAULT '',
  `text_size` int(11) NOT NULL DEFAULT '0',
  `text_color` varchar(100) NOT NULL DEFAULT '',
  `other_info` text NOT NULL,
  `custom_info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_feedback;
CREATE TABLE `met_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `class1` int(11) NOT NULL DEFAULT '0',
  `fdtitle` varchar(255) NOT NULL DEFAULT '',
  `fromurl` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(255) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL,
  `readok` int(11) NOT NULL DEFAULT '0',
  `useinfo` text NOT NULL,
  `customerid` varchar(30) NOT NULL DEFAULT '0',
  `lang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_flash;
CREATE TABLE `met_flash` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module` text NOT NULL,
  `img_title` varchar(255) NOT NULL DEFAULT '',
  `img_path` varchar(255) NOT NULL DEFAULT '',
  `img_link` varchar(255) NOT NULL DEFAULT '',
  `flash_path` varchar(255) NOT NULL DEFAULT '',
  `flash_back` varchar(255) NOT NULL DEFAULT '',
  `no_order` int(11) NOT NULL DEFAULT '0',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `wap_ok` int(11) NOT NULL DEFAULT '0',
  `img_title_color` varchar(100) NOT NULL DEFAULT '',
  `img_des` varchar(255) NOT NULL DEFAULT '',
  `img_des_color` varchar(100) NOT NULL DEFAULT '',
  `img_text_position` varchar(100) NOT NULL DEFAULT '4',
  `img_title_fontsize` int(11) NOT NULL DEFAULT '0',
  `img_des_fontsize` int(11) NOT NULL DEFAULT '0',
  `height_m` int(11) NOT NULL DEFAULT '0',
  `height_t` int(11) NOT NULL DEFAULT '0',
  `mobile_img_path` varchar(255) NOT NULL DEFAULT '',
  `img_title_mobile` varchar(255) NOT NULL DEFAULT '',
  `img_title_color_mobile` varchar(100) NOT NULL DEFAULT '',
  `img_text_position_mobile` varchar(100) NOT NULL DEFAULT '4',
  `img_title_fontsize_mobile` int(11) NOT NULL DEFAULT '0',
  `img_des_mobile` varchar(255) NOT NULL DEFAULT '',
  `img_des_color_mobile` varchar(100) NOT NULL DEFAULT '',
  `img_des_fontsize_mobile` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(50) NOT NULL DEFAULT '',
  `target` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO met_flash VALUES('4',',10001,','','../upload/202003/1584677885.jpg','../product/','','','0','0','0','0','','','','4','0','0','0','0','../upload/202003/1584678156.jpg','','','4','0','','','0','cn','0');
INSERT INTO met_flash VALUES('5',',10001,','','../upload/202003/1584677785.jpg','','','','0','0','0','0','','','','4','0','0','0','0','../upload/202003/1584677479.jpg','','','4','0','','','0','cn','1');
INSERT INTO met_flash VALUES('6',',4,38,84,83,111,3,35,36,34,39,77,43,42,81,94,101,102,103,104,105,106,107,108,109,110,82,74,73,2,1,','专 注 展 厅 创 意 性 设 计 展 示','../upload/202003/1584678065.jpg','','','','0','0','0','0','#ffffff','智 能 化  、数 字 化  、知 识 化  、生 态 化','#ffffff','4','27','18','0','0','../upload/202003/1584678059.jpg','','','4','0','','','0','cn','1');

DROP TABLE IF EXISTS met_flash_button;
CREATE TABLE `met_flash_button` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `flash_id` int(11) NOT NULL DEFAULT '0',
  `but_text` varchar(255) NOT NULL DEFAULT '',
  `but_url` varchar(255) NOT NULL DEFAULT '',
  `but_text_size` int(11) NOT NULL DEFAULT '0',
  `but_text_color` varchar(100) NOT NULL DEFAULT '',
  `but_text_hover_color` varchar(100) NOT NULL DEFAULT '',
  `but_color` varchar(100) NOT NULL DEFAULT '',
  `but_hover_color` varchar(100) NOT NULL DEFAULT '',
  `but_size` varchar(100) NOT NULL DEFAULT '',
  `is_mobile` int(11) NOT NULL DEFAULT '0',
  `no_order` int(11) NOT NULL DEFAULT '0',
  `target` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO met_flash_button VALUES('3','2','10合1建站','https://www.mituo.cn/','0','#30b3ff','#007cfe','#ffffff','#ffffff','','0','0','1','cn');
INSERT INTO met_flash_button VALUES('4','1','10合1建站','https://www.mituo.cn/','0','#30b3ff','#007cfe','#ffffff','#ffffff','','0','2','1','cn');
INSERT INTO met_flash_button VALUES('5','3','联系客服','https://www.mituo.cn/','0','#30b3ff','#007cfe','#ffffff','#ffffff','','0','0','1','cn');
INSERT INTO met_flash_button VALUES('6','6','了解详情','https://www.mituo.cn/','16','#ffffff','#ffffff','#00a6ff','#2eb6ff','','0','0','0','cn');

DROP TABLE IF EXISTS met_flist;
CREATE TABLE `met_flist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL DEFAULT '0',
  `paraid` int(11) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `lang` varchar(50) NOT NULL DEFAULT '',
  `imgname` varchar(255) NOT NULL DEFAULT '',
  `module` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_ifcolumn;
CREATE TABLE `met_ifcolumn` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `no` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `appname` varchar(50) NOT NULL DEFAULT '',
  `addfile` int(1) NOT NULL DEFAULT '1',
  `memberleft` int(1) NOT NULL DEFAULT '0',
  `uniqueness` int(1) NOT NULL DEFAULT '0',
  `fixed_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_ifcolumn_addfile;
CREATE TABLE `met_ifcolumn_addfile` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `no` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `m_name` varchar(255) NOT NULL DEFAULT '',
  `m_module` varchar(255) NOT NULL DEFAULT '',
  `m_class` varchar(255) NOT NULL DEFAULT '',
  `m_action` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_ifmember_left;
CREATE TABLE `met_ifmember_left` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `no` int(11) NOT NULL DEFAULT '0',
  `columnid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `foldername` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `target` int(11) NOT NULL DEFAULT '0',
  `own_order` varchar(11) NOT NULL DEFAULT '',
  `effect` int(1) NOT NULL DEFAULT '0',
  `lang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_img;
CREATE TABLE `met_img` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `ctitle` varchar(200) NOT NULL DEFAULT '',
  `keywords` varchar(200) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `class1` int(11) NOT NULL DEFAULT '0',
  `class2` int(11) NOT NULL DEFAULT '0',
  `class3` int(11) NOT NULL DEFAULT '0',
  `no_order` int(11) NOT NULL DEFAULT '0',
  `wap_ok` int(1) NOT NULL DEFAULT '0',
  `new_ok` int(1) NOT NULL DEFAULT '0',
  `imgurl` varchar(255) NOT NULL DEFAULT '',
  `imgurls` varchar(255) NOT NULL DEFAULT '',
  `displayimg` text NOT NULL,
  `com_ok` int(1) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `updatetime` datetime NOT NULL,
  `addtime` datetime NOT NULL,
  `issue` varchar(100) NOT NULL DEFAULT '',
  `access` int(11) NOT NULL DEFAULT '0',
  `top_ok` int(1) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(50) NOT NULL DEFAULT '',
  `content1` text NOT NULL,
  `content2` text NOT NULL,
  `content3` text NOT NULL,
  `content4` text NOT NULL,
  `contentinfo` varchar(255) NOT NULL DEFAULT '',
  `contentinfo1` varchar(255) NOT NULL DEFAULT '',
  `contentinfo2` varchar(255) NOT NULL DEFAULT '',
  `contentinfo3` varchar(255) NOT NULL DEFAULT '',
  `contentinfo4` varchar(255) NOT NULL DEFAULT '',
  `recycle` int(11) NOT NULL DEFAULT '0',
  `displaytype` int(11) NOT NULL DEFAULT '1',
  `tag` text NOT NULL,
  `links` varchar(200) NOT NULL DEFAULT '',
  `imgsize` varchar(200) NOT NULL DEFAULT '',
  `text_size` int(11) NOT NULL DEFAULT '0',
  `text_color` varchar(100) NOT NULL DEFAULT '',
  `other_info` text NOT NULL,
  `custom_info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

INSERT INTO met_img VALUES('22','博物馆展厅案例Ⅱ','','','此次项目，承担了馆内大部分多媒体互动设备的制作，其中包括馆内音效、影片等，从内容设计、硬件制作到工程安装。几项多媒体互动设备的制作中，最值得一提的是博物馆第4分厅「抗英血战镇海口」中，一处半景化的历史场景还原。半景化的内容，是19世纪镇海抗英作战中，某座海防碉堡内的一处局部景观。景观中，有一处是连接垛墙的门，由城砖砌成。我们采用背投影和激光平面多点触控的方式，将这扇门做成历史影片的播放载体。堆砌的','<p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">此次项目，承担了馆内大部分多媒体互动设备的制作，其中包括馆内音效、影片等，从内容设计、硬件制作到工程安装。<br style=\"font-family: \" microsoft=\"\" font-size:=\"\" white-space:=\"\"/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">几项多媒体互动设备的制作中，最值得一提的是博物馆第4分厅「抗英血战镇海口」中，一处半景化的历史场景还原。半景化的内容，是19世纪镇海抗英作战中，某座海防碉堡内的一处局部景观。景观中，有一处是连接垛墙的门，由城砖砌成。我们采用背投影和激光平面多点触控的方式，将这扇门做成历史影片的播放载体。堆砌的城砖之内，是一块钢化玻璃加工而成的背投影幕，用虚实结合的形式，将门外硝烟弥漫的战争场景展示在观众面前。观众可上前，用手指触摸此门，则硝烟散开，并与观众展开一系列的互动，通过最贴近自然表现形式的人机交互，将镇海抗英的历史事迹还原给观众。</span></p>','38','111','0','0','0','0','../upload/202003/1584686572.jpg','','博物馆展厅案例Ⅱ*../upload/202003/1584686950.jpg*800x500','0','0','2020-03-20 14:32:34','2020-03-19 22:46:10','admin','0','0','','cn','','','','','','','','','','0','1','','','800x500','0','','','');
INSERT INTO met_img VALUES('23','博物馆展厅案例Ⅰ','','','几项多媒体互动设备的制作中，最值得一提的是博物馆第4分厅「抗英血战镇海口」中，一处半景化的历史场景还原。半景化的内容，是19世纪镇海抗英作战中，某座海防碉堡内的一处局部景观。景观中，有一处是连接垛墙的门，由城砖砌成。我们采用背投影和激光平面多点触控的方式，将这扇门做成历史影片的播放载体。堆砌的城砖之内，是一块钢化玻璃加工而成的背投影幕，用虚实结合的形式，将门外硝烟弥漫的战争场景展示在观众面前。观众','<p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">几项多媒体互动设备的制作中，最值得一提的是博物馆第4分厅「抗英血战镇海口」中，一处半景化的历史场景还原。半景化的内容，是19世纪镇海抗英作战中，某座海防碉堡内的一处局部景观。景观中，有一处是连接垛墙的门，由城砖砌成。我们采用背投影和激光平面多点触控的方式，将这扇门做成历史影片的播放载体。堆砌的城砖之内，是一块钢化玻璃加工而成的背投影幕，用虚实结合的形式，将门外硝烟弥漫的战争场景展示在观众面前。观众可上前，用手指触摸此门，则硝烟散开，并与观众展开一系列的互动，通过最贴近自然表现形式的人机交互，将镇海抗英的历史事迹还原给观众。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">此次项目，承担了馆内大部分多媒体互动设备的制作，其中包括馆内音效、影片等，从内容设计、硬件制作到工程安装。</span></p>','38','111','0','0','0','0','../upload/202003/1584686949.jpg','','博物馆展厅案例Ⅰ*../upload/202003/1584686164.jpg*800x500','0','0','2020-03-20 14:32:47','2020-03-19 22:46:59','admin','0','0','','cn','','','','','','','','','','0','1','','','800x500','0','','','');
INSERT INTO met_img VALUES('24','企业展厅案例Ⅳ','','','家具有限公司是一家集红木设计和生产于一体的企业,已开多家专卖店. 公司坚持以“质量第一,信誉第一,品质至上,精工细啄”为企业的宗旨. 坚持以市场为导向,不断创新产品,扩大销售网络,完善售后服务.我们公司的60寸多点触控橱窗使商户普通的橱窗变成超大尺寸的互动广告触摸屏。借助这一非常特殊的多媒体技术，可以让室内原本普普通通的玻璃橱窗和墙面变成最为理想的信息交流平台。参与者可以根据自己的喜好调阅感兴趣的','<p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">家具有限公司是一家集红木设计和生产于一体的企业,已开多家专卖店. 公司坚持以“质量第一,信誉第一,品质至上,精工细啄”为企业的宗旨. 坚持以市场为导向,不断创新产品,扩大销售网络,完善售后服务.<br style=\"font-family: Microsoft Yahei, 微软雅黑, Simsun, 宋体, Arial, sans-serif; font-size: 12px; white-space: normal\"/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">我们公司的60寸多点触控橱窗使商户普通的橱窗变成超大尺寸的互动广告触摸屏。借助这一非常特殊的多媒体技术，可以让室内原本普普通通的玻璃橱窗和墙面变成最为理想的信息交流平台。参与者可以根据自己的喜好调阅感兴趣的内容，在橱窗上用手任意放大缩小视频或图片进行浏览，这是一种非常有效并且有趣的新型信息展示载体。</span></p>','38','83','0','0','0','0','../upload/202003/1584686919.jpg','','企业展厅案例Ⅳ*../upload/202003/1584686918.jpg*800x500','0','0','2020-03-20 14:34:30','2020-03-19 22:47:24','admin','0','0','','cn','','','','','','','','','','0','1','','','800x500','0','','','');
INSERT INTO met_img VALUES('25','企业展厅案例Ⅲ','','','“质量第一,信誉第一,品质至上,精工细啄”为企业的宗旨. 坚持以市场为导向,不断创新产品,扩大销售网络,完善售后服务.我们公司的60寸多点触控橱窗使商户普通的橱窗变成超大尺寸的互动广告触摸屏。借助这一非常特殊的多媒体技术，可以让室内原本普普通通的玻璃橱窗和墙面变成最为理想的信息交流平台。参与者可以根据自己的喜好调阅感兴趣的内容，在橱窗上用手任意放大缩小视频或图片进行浏览，这是一种非常有效并且有趣的','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">“质量第一,信誉第一,品质至上,精工细啄”为企业的宗旨. 坚持以市场为导向,不断创新产品,扩大销售网络,完善售后服务.<br style=\"font-family: \" microsoft=\"\" font-size:=\"\"/></span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">我们公司的60寸多点触控橱窗使商户普通的橱窗变成超大尺寸的互动广告触摸屏。借助这一非常特殊的多媒体技术，可以让室内原本普普通通的玻璃橱窗和墙面变成最为理想的信息交流平台。参与者可以根据自己的喜好调阅感兴趣的内容，在橱窗上用手任意放大缩小视频或图片进行浏览，这是一种非常有效并且有趣的新型信息展示载体。<span style=\"font-size: 14px; text-indent: 32px;\">家具有限公司是一家集红木设计和生产于一体的企业,已开多家专卖店。</span></span></p>','38','83','0','0','0','0','../upload/202003/1584686778.jpg','','企业展厅案例Ⅲ*../upload/202003/1584686546.jpg*800x500','0','0','2020-03-20 14:34:35','2020-03-19 22:49:44','admin','0','0','','cn','','','','','','','','','','0','1','','','800x500','0','','','');
INSERT INTO met_img VALUES('26','企业展厅案例Ⅱ','','','我们公司的60寸多点触控橱窗使商户普通的橱窗变成超大尺寸的互动广告触摸屏。借助这一非常特殊的多媒体技术，可以让室内原本普普通通的玻璃橱窗和墙面变成最为理想的信息交流平台。参与者可以根据自己的喜好调阅感兴趣的内容，在橱窗上用手任意放大缩小视频或图片进行浏览，这是一种非常有效并且有趣的新型信息展示载体。家具有限公司是一家集红木设计和生产于一体的企业,已开多家专卖店。“质量第一,信誉第一,品质至上,精工','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\"></span><span style=\"font-size: 14px; text-indent: 2em;\">我们公司的60寸多点触控橱窗使商户普通的橱窗变成超大尺寸的互动广告触摸屏。借助这一非常特殊的多媒体技术，可以让室内原本普普通通的玻璃橱窗和墙面变成最为理想的信息交流平台。参与者可以根据自己的喜好调阅感兴趣的内容，在橱窗上用手任意放大缩小视频或图片进行浏览，这是一种非常有效并且有趣的新型信息展示载体。家具有限公司是一家集红木设计和生产于一体的企业,已开多家专卖店。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 32px;\">“质量第一,信誉第一,品质至上,精工细啄”为企业的宗旨. 坚持以市场为导向,不断创新产品,扩大销售网络,完善售后服务。</span></span></p>','38','83','0','0','0','0','../upload/202003/1584686152.jpg','','企业展厅案例Ⅱ*../upload/202003/1584686320.jpg*800x500','0','0','2020-03-20 14:34:45','2020-03-19 22:50:39','admin','0','0','','cn','','','','','','','','','','0','1','','','800x500','0','','','');
INSERT INTO met_img VALUES('27','企业展厅案例Ⅰ','','','借助这一非常特殊的多媒体技术，可以让室内原本普普通通的玻璃橱窗和墙面变成最为理想的信息交流平台。参与者可以根据自己的喜好调阅感兴趣的内容，在橱窗上用手任意放大缩小视频或图片进行浏览，这是一种非常有效并且有趣的新型信息展示载体。家具有限公司是一家集红木设计和生产于一体的企业,已开多家专卖店。“质量第一,信誉第一,品质至上,精工细啄”为企业的宗旨. 坚持以市场为导向,不断创新产品,扩大销售网络,完善售','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\"></span><span style=\"font-size: 14px; text-indent: 2em;\">借助这一非常特殊的多媒体技术，可以让室内原本普普通通的玻璃橱窗和墙面变成最为理想的信息交流平台。参与者可以根据自己的喜好调阅感兴趣的内容，在橱窗上用手任意放大缩小视频或图片进行浏览，这是一种非常有效并且有趣的新型信息展示载体。家具有限公司是一家集红木设计和生产于一体的企业,已开多家专卖店。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\"><span style=\"text-indent: 32px;\">“质量第一,信誉第一,品质至上,精工细啄”为企业的宗旨. 坚持以市场为导向,不断创新产品,扩大销售网络,完善售后服务。<span style=\"font-size: 14px; text-indent: 28px;\">我们公司的60寸多点触控橱窗使商户普通的橱窗变成超大尺寸的互动广告触摸屏。</span></span></span></p>','38','83','0','0','0','0','../upload/202003/1584686945.jpg','','企业展厅案例Ⅰ*../upload/202003/1584686132.jpg*800x500','0','0','2020-03-20 14:34:51','2020-03-19 22:51:09','admin','0','0','','cn','','','','','','','','','','0','1','','','800x500','0','','','');
INSERT INTO met_img VALUES('28','科技展厅案例Ⅳ','','','根据展馆现场情况，为方便了参观人员对展馆资料的查阅，我们为展览馆设置虚拟翻书系统。同时运用两屏地面互动一套，让参观人员在查阅资料之余，通过地面互动系统，与大自然进行虚拟的互动。城市虚拟漫游系统是针对城市规划馆、房地产展厅优化的解决方案之一。观众站在一个大型弧幕前，以简易舒适的操作方式（摇杆、轨迹球、多点触摸或体感）控制画面中视角的移动与变化，使观众可以在虚拟的3D世界中随意漫游。这是一种非常直观的','<p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">根据展馆现场情况，为方便了参观人员对展馆资料的查阅，我们为展览馆设置虚拟翻书系统。同时运用两屏地面互动一套，让参观人员在查阅资料之余，通过地面互动系统，与大自然进行虚拟的互动。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">城市虚拟漫游系统是针对城市规划馆、房地产展厅优化的解决方案之一。观众站在一个大型弧幕前，以简易舒适的操作方式（摇杆、轨迹球、多点触摸或体感）控制画面中视角的移动与变化，使观众可以在虚拟的3D世界中随意漫游。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">这是一种非常直观的展示手段，它使一个城市的规划更容易被观众所理解和接受。3D世界漫游让观众把握了主导权，超越传统的填鸭展示，以一种零死角的观察角度将城市全方位展现在观众面前，市政设施、城市风光等都将在强大的3D建模技术支持下一览无遗。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">城市虚拟漫游系统是多媒体投影沙盘的最佳拍档。通过中控主机的联动调配，可以实现漫游与沙盘定位的同步，获得“所见即所得”的效果。另外，这样的组合在展示设计上也允许更多的灵活性。如随着沙盘叙述的时间变换，一个城市从现在进入未来，虚拟漫游的内容将相应地发生变化，观众从现在走入未来，在获得“恍若隔世”的体验的同时，也切实感受到城市“蜕变”后的美好。</span></p>','38','84','0','0','0','0','../upload/202003/1584687081.jpg','','科技展厅案例Ⅳ*../upload/202003/1584686555.jpg*800x500','0','0','2020-03-20 14:35:33','2020-03-19 22:51:33','admin','0','0','','cn','','','','','','','','','','0','1','','','800x500','0','','','');
INSERT INTO met_img VALUES('29','科技展厅案例Ⅲ','','','观众站在一个大型弧幕前，以简易舒适的操作方式（摇杆、轨迹球、多点触摸或体感）控制画面中视角的移动与变化，使观众可以在虚拟的3D世界中随意漫游。这是一种非常直观的展示手段，它使一个城市的规划更容易被观众所理解和接受。3D世界漫游让观众把握了主导权，超越传统的填鸭展示，以一种零死角的观察角度将城市全方位展现在观众面前，市政设施、城市风光等','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">城市虚拟漫游系统是针对城市规划馆、房地产展厅优化的解决方案之一。观众站在一个大型弧幕前，以简易舒适的操作方式（摇杆、轨迹球、多点触摸或体感）控制画面中视角的移动与变化，使观众可以在虚拟的3D世界中随意漫游。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">这是一种非常直观的展示手段，它使一个城市的规划更容易被观众所理解和接受。3D世界漫游让观众把握了主导权，超越传统的填鸭展示，以一种零死角的观察角度将城市全方位展现在观众面前，市政设施、城市风光等都将在强大的3D建模技术支持下一览无遗。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">城市虚拟漫游系统是多媒体投影沙盘的最佳拍档。通过中控主机的联动调配，可以实现漫游与沙盘定位的同步，获得“所见即所得”的效果。另外，这样的组合在展示设计上也允许更多的灵活性。如随着沙盘叙述的时间变换，一个城市从现在进入未来，虚拟漫游的内容将相应地发生变化，观众从现在走入未来，在获得“恍若隔世”的体验的同时，也切实感受到城市“蜕变”后的美好。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\"><span style=\"font-size: 14px; text-indent: 32px;\">根据展馆现场情况，为方便了参观人员对展馆资料的查阅，我们为展览馆设置虚拟翻书系统。同时运用两屏地面互动一套，让参观人员在查阅资料之余，通过地面互动系统，与大自然进行虚拟的互动。</span></span></p>','38','84','0','0','0','0','../upload/202003/1584687003.jpg','','科技展厅案例Ⅲ*../upload/202003/1584686873.jpg*800x500','0','0','2020-03-20 14:35:45','2020-03-19 22:52:29','admin','0','0','','cn','','','','','','','','','','0','1','','','800x500','0','','','');
INSERT INTO met_img VALUES('30','科技展厅案例Ⅱ','','','这是一种非常直观的展示手段，它使一个城市的规划更容易被观众所理解和接受。3D世界漫游让观众把握了主导权，超越传统的填鸭展示，以一种零死角的观察角度将城市全方位展现在观众面前，市政设施、城市风光等都将在强大的3D建模技术支持下一览无遗。城市虚拟漫游系统是多媒体投影沙盘的最佳拍档。通过中控主机的联动调配，可以实现漫游与沙盘定位的同步，获得“所见即所得”的效果。另外，这样的组合在展示设计上也允许更多的灵','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">这是一种非常直观的展示手段，它使一个城市的规划更容易被观众所理解和接受。3D世界漫游让观众把握了主导权，超越传统的填鸭展示，以一种零死角的观察角度将城市全方位展现在观众面前，市政设施、城市风光等都将在强大的3D建模技术支持下一览无遗。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">城市虚拟漫游系统是多媒体投影沙盘的最佳拍档。通过中控主机的联动调配，可以实现漫游与沙盘定位的同步，获得“所见即所得”的效果。另外，这样的组合在展示设计上也允许更多的灵活性。如随着沙盘叙述的时间变换，一个城市从现在进入未来，虚拟漫游的内容将相应地发生变化，观众从现在走入未来，在获得“恍若隔世”的体验的同时，也切实感受到城市“蜕变”后的美好。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">根据展馆现场情况，为方便了参观人员对展馆资料的查阅，我们为展览馆设置虚拟翻书系统。同时运用两屏地面互动一套，让参观人员在查阅资料之余，通过地面互动系统，与大自然进行虚拟的互动。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\"><span style=\"font-size: 14px; text-indent: 28px;\">城市虚拟漫游系统是针对城市规划馆、房地产展厅优化的解决方案之一。观众站在一个大型弧幕前，以简易舒适的操作方式（摇杆、轨迹球、多点触摸或体感）控制画面中视角的移动与变化，使观众可以在虚拟的3D世界中随意漫游。</span></span></p><p><br/></p>','38','84','0','0','0','0','../upload/202003/1584686605.jpg','','科技展厅案例Ⅱ*../upload/202003/1584686634.jpg*800x500','0','1','2020-03-20 14:35:47','2020-03-19 22:52:50','admin','0','0','','cn','','','','','','','','','','0','1','','','800x500','0','','','');
INSERT INTO met_img VALUES('31','科技展厅案例Ⅰ','','','城市虚拟漫游系统是多媒体投影沙盘的最佳拍档。通过中控主机的联动调配，可以实现漫游与沙盘定位的同步，获得“所见即所得”的效果。另外，这样的组合在展示设计上也允许更多的灵活性。如随着沙盘叙述的时间变换，一个城市从现在进入未来，虚拟漫游的内容将相应地发生变化，观众从现在走入未来，在获得“恍若隔世”的体验的同时，也切实感受到城市“蜕变”后的美好。根据展馆现场情况，为方便了参观人员对展馆资料的查阅，我们为展','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">城市虚拟漫游系统是多媒体投影沙盘的最佳拍档。通过中控主机的联动调配，可以实现漫游与沙盘定位的同步，获得“所见即所得”的效果。另外，这样的组合在展示设计上也允许更多的灵活性。如随着沙盘叙述的时间变换，一个城市从现在进入未来，虚拟漫游的内容将相应地发生变化，观众从现在走入未来，在获得“恍若隔世”的体验的同时，也切实感受到城市“蜕变”后的美好。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">根据展馆现场情况，为方便了参观人员对展馆资料的查阅，我们为展览馆设置虚拟翻书系统。同时运用两屏地面互动一套，让参观人员在查阅资料之余，通过地面互动系统，与大自然进行虚拟的互动。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\"><span style=\"text-indent: 28px;\">城市虚拟漫游系统是针对城市规划馆、房地产展厅优化的解决方案之一。观众站在一个大型弧幕前，以简易舒适的操作方式（摇杆、轨迹球、多点触摸或体感）控制画面中视角的移动与变化，使观众可以在虚拟的3D世界中随意漫游。</span></span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\"><span style=\"text-indent: 28px;\"><span style=\"font-size: 14px; text-indent: 28px;\">这是一种非常直观的展示手段，它使一个城市的规划更容易被观众所理解和接受。3D世界漫游让观众把握了主导权，超越传统的填鸭展示，以一种零死角的观察角度将城市全方位展现在观众面前，市政设施、城市风光等都将在强大的3D建模技术支持下一览无遗。</span></span></span></p>','38','84','0','0','0','0','../upload/202003/1584686421.jpg','','科技展厅案例Ⅰ*../upload/202003/1584686371.jpg*800x500','0','3','2020-03-20 14:35:51','2020-03-19 22:53:36','admin','0','0','','cn','','','','','','','','','','0','1','','','800x500','0','','','');

DROP TABLE IF EXISTS met_infoprompt;
CREATE TABLE `met_infoprompt` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `newstitle` varchar(120) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '',
  `member` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(35) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `see_ok` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO met_infoprompt VALUES('1','0','','','https://www.metinfo.cn/news/2729.html','','metinfo','1581641514','0','metinfo');
INSERT INTO met_infoprompt VALUES('2','0','','','https://www.metinfo.cn/news/2728.html','','metinfo','1581382485','0','metinfo');
INSERT INTO met_infoprompt VALUES('3','0','','','https://www.metinfo.cn/news/2727.html','','metinfo','1581035259','0','metinfo');
INSERT INTO met_infoprompt VALUES('4','0','','','https://www.metinfo.cn/news/2726.html','','metinfo','1580950887','0','metinfo');
INSERT INTO met_infoprompt VALUES('5','0','','','https://www.metinfo.cn/news/2725.html','','metinfo','1579656967','0','metinfo');
INSERT INTO met_infoprompt VALUES('6','0','','','https://www.metinfo.cn/news/2724.html','','metinfo','1579569074','0','metinfo');
INSERT INTO met_infoprompt VALUES('7','0','','','https://www.metinfo.cn/news/2722.html','','metinfo','1579397889','0','metinfo');
INSERT INTO met_infoprompt VALUES('8','0','','','https://www.metinfo.cn/news/2719.html','','metinfo','1579052451','0','metinfo');
INSERT INTO met_infoprompt VALUES('9','0','','','https://www.metinfo.cn/news/2718.html','','metinfo','1578964950','0','metinfo');
INSERT INTO met_infoprompt VALUES('10','0','','','https://www.metinfo.cn/news/2717.html','','metinfo','1578877341','0','metinfo');
INSERT INTO met_infoprompt VALUES('11','0','','','https://www.metinfo.cn/news/2730.html','','metinfo','1582074419','0','metinfo');
INSERT INTO met_infoprompt VALUES('12','0','','','https://www.metinfo.cn/news/2731.html','','metinfo','1582679122','0','metinfo');
INSERT INTO met_infoprompt VALUES('13','0','','','https://www.metinfo.cn/news/2732.html','','metinfo','1584061053','0','metinfo');
INSERT INTO met_infoprompt VALUES('14','0','','','https://www.metinfo.cn/news/2733.html','','metinfo','1584578428','0','metinfo');

DROP TABLE IF EXISTS met_job;
CREATE TABLE `met_job` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `position` varchar(200) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `place` varchar(200) NOT NULL DEFAULT '',
  `deal` varchar(200) NOT NULL DEFAULT '',
  `addtime` date NOT NULL,
  `updatetime` date NOT NULL,
  `useful_life` int(11) NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  `access` int(11) NOT NULL DEFAULT '0',
  `class1` int(11) NOT NULL DEFAULT '0',
  `class2` int(11) NOT NULL DEFAULT '0',
  `class3` int(11) NOT NULL DEFAULT '0',
  `no_order` int(11) NOT NULL DEFAULT '0',
  `wap_ok` int(1) NOT NULL DEFAULT '0',
  `top_ok` int(1) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(50) NOT NULL DEFAULT '',
  `displaytype` int(11) NOT NULL DEFAULT '1',
  `text_size` int(11) NOT NULL DEFAULT '0',
  `text_color` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO met_job VALUES('1','环境推进专员','1','长沙','8K+','2018-01-11','2018-04-11','0','<p><strong><span style=\"font-size: 14px;\">岗位职责</span></strong><span style=\"font-size: 14px;\">：</span></p><p><span style=\"font-size: 14px;\">1、跟踪和熟知与企业相关的环境法规动向及要求；</span></p><p><span style=\"font-size: 14px;\">2、公司内外部环境相关法律法规教育活动；</span></p><p><span style=\"font-size: 14px;\">3、积极开展公司内外的环境保护推进活动；</span></p><p><span style=\"font-size: 14px;\">4、协助上司完成部门内推进工作。</span></p><p><strong><span style=\"font-size: 14px;\">任职要求</span></strong><span style=\"font-size: 14px;\">：</span></p><p><span style=\"font-size: 14px;\">1、本科及以上学历，环境或法律相关专业；</span></p><p><span style=\"font-size: 14px;\">2、5年以上电子或机械产品环境推进经验，五百强企业工作经验优先；</span></p><p><span style=\"font-size: 14px;\">3、了解RoHS、WEEE相关知识，并熟悉环境标识及能效标识等环境法规标准；</span></p><p><span style=\"font-size: 14px;\">4、良好的人际沟通能力及团队合作学习能力。</span></p>','0','43','0','0','0','0','0','','','cn','1','14','');
INSERT INTO met_job VALUES('2','开发工程师','1','长沙','10K+','2018-01-11','2018-01-11','0','<p style=\"line-height: normal;\"><strong><span style=\"font-size: 14px;\">岗位职责</span></strong><span style=\"font-size: 14px;\">：<br/>1、小程序、APP等前端后端开发、二次开发及日常运维；</span></p><p style=\"line-height: normal;\"><span style=\"font-size: 14px;\">2、搭建FTP，负责对FTP以及云主机进行日常运维；</span></p><p style=\"line-height: normal;\"><span style=\"font-size: 14px;\">3、参与公司官网、商城网站的后续开发和后台以及有关服务器和数据库的运维。&nbsp;</span></p><p style=\"line-height: normal;\"><strong><span style=\"font-size: 14px;\">任职要求</span></strong><span style=\"font-size: 14px;\">：</span></p><p style=\"line-height: normal;\"><span style=\"font-size: 14px;\">1、计算机相关专业，本科及以上学历，三年及以上工作经验；</span></p><p style=\"line-height: normal;\"><span style=\"font-size: 14px;\">2、熟悉Python、Java、JS等相关编程语言；</span></p><p style=\"line-height: normal;\"><span style=\"font-size: 14px;\">3、精通Linux（CentOS）和Windows操作系统以及网络服务器架设，能够进行系统性能监控调优，并熟练应用shell辅助管理；</span></p><p style=\"line-height: normal;\"><span style=\"font-size: 14px;\">4、\r\n熟悉并能掌握MySQL，sqlserverOracle等常规数据库；</span></p><p style=\"line-height: normal;\"><span style=\"font-size: 14px;\">5、\r\n具有扎实的网络搭建和运维基础，熟悉TCPIP及各种路由交换协议，局域网和广域网技术，对交换机、路由器、防火墙、VPN、负载均衡有一定的实施能力；</span></p><p style=\"line-height: normal;\"><span style=\"font-size: 14px;\">6、熟悉云服务器、nginx、Apache、tomcat、IIS、FTP、LVS等服务的安装配置，并具有丰富的故障排查经验等的搭建、维护；熟悉服务器、存储、网络、虚拟化、安全等相关产品；</span></p><p style=\"line-height: normal;\"><span style=\"font-size: 14px;\">7、了解IaaSPaaSSaaS系统开发者优先考虑。</span></p>','0','43','0','0','0','0','0','','','cn','1','14','');

DROP TABLE IF EXISTS met_label;
CREATE TABLE `met_label` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `oldwords` varchar(255) NOT NULL DEFAULT '',
  `newwords` varchar(255) NOT NULL DEFAULT '',
  `newtitle` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `num` int(11) NOT NULL DEFAULT '99',
  `lang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_lang;
CREATE TABLE `met_lang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `useok` int(1) NOT NULL DEFAULT '0',
  `no_order` int(11) NOT NULL DEFAULT '0',
  `mark` varchar(50) NOT NULL DEFAULT '',
  `synchronous` varchar(50) NOT NULL DEFAULT '',
  `flag` varchar(100) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `newwindows` int(1) NOT NULL DEFAULT '0',
  `met_webhtm` int(1) NOT NULL DEFAULT '0',
  `met_htmtype` varchar(50) NOT NULL DEFAULT '',
  `met_weburl` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO met_lang VALUES('1','简体中文','1','1','cn','cn','cn.gif','','0','0','html','','cn');

DROP TABLE IF EXISTS met_lang_admin;
CREATE TABLE `met_lang_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `useok` int(1) NOT NULL DEFAULT '1',
  `no_order` int(11) NOT NULL DEFAULT '0',
  `mark` varchar(50) NOT NULL DEFAULT '',
  `synchronous` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO met_lang_admin VALUES('1','简体中文','1','1','cn','cn','','cn');
INSERT INTO met_lang_admin VALUES('2','English','1','2','en','cn','','en');

DROP TABLE IF EXISTS met_language;
CREATE TABLE `met_language` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `site` int(1) NOT NULL DEFAULT '0',
  `no_order` int(11) NOT NULL DEFAULT '0',
  `array` int(11) NOT NULL DEFAULT '0',
  `app` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5277 DEFAULT CHARSET=utf8;

INSERT INTO met_language VALUES('1','system','系统参数','0','1','0','0','cn');
INSERT INTO met_language VALUES('2','search','搜索','0','16','1','0','cn');
INSERT INTO met_language VALUES('3','home','网站首页','0','17','1','0','cn');
INSERT INTO met_language VALUES('4','success','操作成功!','0','19','1','0','cn');
INSERT INTO met_language VALUES('5','Title','标题','0','24','1','0','cn');
INSERT INTO met_language VALUES('6','Content','内容','0','25','1','0','cn');
INSERT INTO met_language VALUES('7','Online','在线交流','0','30','1','0','cn');
INSERT INTO met_language VALUES('8','Noinfo','没有了','0','32','1','0','cn');
INSERT INTO met_language VALUES('9','displayimg','展示图片','0','40','1','0','cn');
INSERT INTO met_language VALUES('10','default','默认','0','41','1','0','cn');
INSERT INTO met_language VALUES('11','membercode','验证码错误！','0','1','2','0','cn');
INSERT INTO met_language VALUES('12','memberpassno','密码错误！','0','3','2','0','cn');
INSERT INTO met_language VALUES('13','access','您没有阅读该信息的权限！','0','4','2','0','cn');
INSERT INTO met_language VALUES('14','login','登录','0','5','2','0','cn');
INSERT INTO met_language VALUES('15','register','注册','0','6','2','0','cn');
INSERT INTO met_language VALUES('16','Page','页','0','2','3','0','cn');
INSERT INTO met_language VALUES('17','PagePre','上一页','0','6','3','0','cn');
INSERT INTO met_language VALUES('18','PageNext','下一页','0','7','3','0','cn');
INSERT INTO met_language VALUES('19','PageGo','转至第','0','8','3','0','cn');
INSERT INTO met_language VALUES('20','memberLogin','会员登录','0','2','4','0','cn');
INSERT INTO met_language VALUES('21','memberPassword','请输入密码','0','4','4','0','cn');
INSERT INTO met_language VALUES('22','memberName','会员名','0','6','4','0','cn');
INSERT INTO met_language VALUES('23','memberImgCode','验证码','0','8','4','0','cn');
INSERT INTO met_language VALUES('24','memberTip1','看不清？点击更换验证码','0','9','4','0','cn');
INSERT INTO met_language VALUES('25','memberGo','登录','0','11','4','0','cn');
INSERT INTO met_language VALUES('26','memberRegister','立即注册','0','12','4','0','cn');
INSERT INTO met_language VALUES('27','memberForget','忘记密码？','0','14','4','0','cn');
INSERT INTO met_language VALUES('28','memberIndex3','会员中心','0','17','4','0','cn');
INSERT INTO met_language VALUES('29','memberIndex9','个人信息','0','23','4','0','cn');
INSERT INTO met_language VALUES('30','memberIndex10','退出登录','0','24','4','0','cn');
INSERT INTO met_language VALUES('31','memberbasicUserName','用户名','0','32','4','0','cn');
INSERT INTO met_language VALUES('32','memberbasicCell','手机','0','38','4','0','cn');
INSERT INTO met_language VALUES('33','memberbasicLoginNum','登录次数','0','40','4','0','cn');
INSERT INTO met_language VALUES('34','memberbasicLastIP','最后登录IP','0','42','4','0','cn');
INSERT INTO met_language VALUES('35','memberbasicType','会员类型','0','50','4','0','cn');
INSERT INTO met_language VALUES('36','memberReg','会员注册','0','58','4','0','cn');
INSERT INTO met_language VALUES('37','memberDetail','查看','0','60','4','0','cn');
INSERT INTO met_language VALUES('38','messageeditorReply','管理员回复留言','0','74','4','0','cn');
INSERT INTO met_language VALUES('39','getNotice','会员找回密码','0','83','4','0','cn');
INSERT INTO met_language VALUES('40','NoidJS','没有此用户','0','87','4','0','cn');
INSERT INTO met_language VALUES('41','getTip1','您的密码重置请求已经得到验证。请点击以下链接输入您的新密码：','0','89','4','0','cn');
INSERT INTO met_language VALUES('42','getTip2','取回密码的方法已经通过 Email 发送到您的信箱中。请在 3 天之内到网站修改您的密码。','0','90','4','0','cn');
INSERT INTO met_language VALUES('43','getTip3','您提交的找回密码邮件发送失败！请联系网站管理员！。','0','91','4','0','cn');
INSERT INTO met_language VALUES('44','getTip5','密码找回','0','93','4','0','cn');
INSERT INTO met_language VALUES('45','getOK','发送成功','0','97','4','0','cn');
INSERT INTO met_language VALUES('46','getFail','发送失败','0','98','4','0','cn');
INSERT INTO met_language VALUES('47','membernodo','该用户尚未激活，请即时与管理员联系!','0','99','4','0','cn');
INSERT INTO met_language VALUES('48','hello','您好！','0','100','4','0','cn');
INSERT INTO met_language VALUES('49','fileOK','文件上传成功','0','1','5','0','cn');
INSERT INTO met_language VALUES('50','js1','操作失败！','0','1','6','0','cn');
INSERT INTO met_language VALUES('51','js2','管理员身份登录！','0','2','6','0','cn');
INSERT INTO met_language VALUES('52','js4','无法激活此用户,请与管理员联系！','0','4','6','0','cn');
INSERT INTO met_language VALUES('53','js5','已成功激活,请登录！','0','5','6','0','cn');
INSERT INTO met_language VALUES('54','js6','用户名输入有误!','0','6','6','0','cn');
INSERT INTO met_language VALUES('55','js7','用户名不能小于3位','0','7','6','0','cn');
INSERT INTO met_language VALUES('56','js10','两次密码输入不一致','0','10','6','0','cn');
INSERT INTO met_language VALUES('57','js14','请输入验证码！','0','14','6','0','cn');
INSERT INTO met_language VALUES('58','js15','此用户名已经被使用','0','15','6','0','cn');
INSERT INTO met_language VALUES('59','js16','会员激活','0','16','6','0','cn');
INSERT INTO met_language VALUES('60','js18','请您点击','0','18','6','0','cn');
INSERT INTO met_language VALUES('61','js23','文件格式不允许上传。','0','23','6','0','cn');
INSERT INTO met_language VALUES('62','js25','注册成功！','0','25','6','0','cn');
INSERT INTO met_language VALUES('63','Download','点击下载','0','8','7','0','cn');
INSERT INTO met_language VALUES('64','Submit','提交信息','0','16','7','0','cn');
INSERT INTO met_language VALUES('65','TextLink','文字链接','0','34','7','0','cn');
INSERT INTO met_language VALUES('66','PictureLink','图片链接','0','35','7','0','cn');
INSERT INTO met_language VALUES('67','Contact','联系方式','0','36','7','0','cn');
INSERT INTO met_language VALUES('68','ApplyLink','申请友情链接','0','37','7','0','cn');
INSERT INTO met_language VALUES('69','SubmitInfo','提交留言','0','39','7','0','cn');
INSERT INTO met_language VALUES('70','Reply','管理员回复','0','42','7','0','cn');
INSERT INTO met_language VALUES('71','Feedback1','请不要在','0','49','7','0','cn');
INSERT INTO met_language VALUES('72','Feedback2','秒内重复提交信息，谢谢合作！','0','50','7','0','cn');
INSERT INTO met_language VALUES('73','Feedback3','反馈信息中不能包含','0','51','7','0','cn');
INSERT INTO met_language VALUES('74','Feedback5','反馈已经被关闭','0','52','7','0','cn');
INSERT INTO met_language VALUES('75','AddTime','提交时间','0','55','7','0','cn');
INSERT INTO met_language VALUES('76','SourcePage','来源页面','0','56','7','0','cn');
INSERT INTO met_language VALUES('77','Feedback4','反馈信息已成功提交，谢谢！','0','57','7','0','cn');
INSERT INTO met_language VALUES('78','Choice','请选择','0','58','1','0','cn');
INSERT INTO met_language VALUES('79','Empty','不能为空','0','59','7','0','cn');
INSERT INTO met_language VALUES('80','MessageInfo1','在线留言','0','63','7','0','cn');
INSERT INTO met_language VALUES('81','MessageInfo2','您的留言已成功提交，谢谢！','0','64','7','0','cn');
INSERT INTO met_language VALUES('82','MessageInfo5','该留言功能已经被关闭','0','67','7','0','cn');
INSERT INTO met_language VALUES('83','SearchInfo1','请输入搜索关键词！','0','71','7','0','cn');
INSERT INTO met_language VALUES('84','SearchInfo2','全站搜索','0','72','7','0','cn');
INSERT INTO met_language VALUES('85','SearchInfo3','没有含有','0','73','7','0','cn');
INSERT INTO met_language VALUES('86','SearchInfo4','的信息内容','0','74','7','0','cn');
INSERT INTO met_language VALUES('87','Job1','不限','0','75','7','0','cn');
INSERT INTO met_language VALUES('88','cvtitle','在线应聘','0','78','7','0','cn');
INSERT INTO met_language VALUES('89','cv','查看简历','0','79','7','0','cn');
INSERT INTO met_language VALUES('90','wap','手机版','0','87','7','0','cn');
INSERT INTO met_language VALUES('91','fliptext1','查看更多','0','48','1','0','cn');
INSERT INTO met_language VALUES('92','fliptext2','加载中...','0','49','1','0','cn');
INSERT INTO met_language VALUES('93','downloadtext1','下载','0','50','1','0','cn');
INSERT INTO met_language VALUES('94','tagweb','标签','0','66','1','0','cn');
INSERT INTO met_language VALUES('95','formerror1','请填写此字段。','0','0','1','0','cn');
INSERT INTO met_language VALUES('96','formerror2','请从这些选项中选择一个。','0','0','1','0','cn');
INSERT INTO met_language VALUES('97','formerror3','请输入正确的手机号码。','0','0','1','0','cn');
INSERT INTO met_language VALUES('98','formerror4','请输入正确的Email地址。','0','0','1','0','cn');
INSERT INTO met_language VALUES('99','formerror5','两次输入的密码不一致，请重新输入。','0','0','1','0','cn');
INSERT INTO met_language VALUES('100','formerror6','请输入至少&metinfo&个字符。','0','0','1','0','cn');
INSERT INTO met_language VALUES('101','formerror7','输入不能超过&metinfo&个字符。','0','0','1','0','cn');
INSERT INTO met_language VALUES('102','formerror8','输入的字符数必须在&metinfo&之间。','0','0','1','0','cn');
INSERT INTO met_language VALUES('103','read','阅读','0','0','1','0','cn');
INSERT INTO met_language VALUES('104','js46','不能重复','0','0','1','0','cn');
INSERT INTO met_language VALUES('105','emailchecktips1','感谢您的注册！激活链接已经发送到您的邮箱','0','103','4','0','cn');
INSERT INTO met_language VALUES('106','emailchecktips2','点击邮件里的链接即可激活账户','0','104','4','0','cn');
INSERT INTO met_language VALUES('107','emailchecktips3','还没收到确认邮件？','0','105','4','0','cn');
INSERT INTO met_language VALUES('108','emailchecktips4','尝试到广告邮件、垃圾邮件目录里找找看','0','106','4','0','cn');
INSERT INTO met_language VALUES('109','emailchecktips5','再次发送确认邮件','0','107','4','0','cn');
INSERT INTO met_language VALUES('110','accsafe','账号安全','0','108','4','0','cn');
INSERT INTO met_language VALUES('111','resend','重发','0','109','4','0','cn');
INSERT INTO met_language VALUES('112','getmemberImgCode','获取验证码','0','110','4','0','cn');
INSERT INTO met_language VALUES('113','password','密码','0','113','4','0','cn');
INSERT INTO met_language VALUES('114','userhave','用户名已存在','0','114','4','0','cn');
INSERT INTO met_language VALUES('115','emailhave','邮箱已被注册','0','115','4','0','cn');
INSERT INTO met_language VALUES('116','memberemail','邮箱','0','116','4','0','cn');
INSERT INTO met_language VALUES('117','memberMoreInfo','更多资料','0','117','4','0','cn');
INSERT INTO met_language VALUES('118','select','选择','0','118','4','0','cn');
INSERT INTO met_language VALUES('119','acchave','已有账号？','0','119','4','0','cn');
INSERT INTO met_language VALUES('120','accpassword','帐号密码','0','120','4','0','cn');
INSERT INTO met_language VALUES('121','accsaftips1','用于保护帐号信息和登录安全','0','121','4','0','cn');
INSERT INTO met_language VALUES('122','modify','修改','0','122','4','0','cn');
INSERT INTO met_language VALUES('123','accemail','邮箱绑定','0','123','4','0','cn');
INSERT INTO met_language VALUES('124','accsaftips2','邮箱绑定可以用于登录帐号，重置密码或其他安全验证','0','124','4','0','cn');
INSERT INTO met_language VALUES('125','acctel','手机绑定','0','125','4','0','cn');
INSERT INTO met_language VALUES('126','accsaftips3','手机绑定可以用于登录帐号，重置密码或其他安全验证','0','126','4','0','cn');
INSERT INTO met_language VALUES('127','modifypassword','密码修改','0','127','4','0','cn');
INSERT INTO met_language VALUES('128','oldpassword','原密码','0','128','4','0','cn');
INSERT INTO met_language VALUES('129','newpassword','新密码','0','129','4','0','cn');
INSERT INTO met_language VALUES('130','confirm','确定','0','130','4','0','cn');
INSERT INTO met_language VALUES('131','cancel','取消','0','131','4','0','cn');
INSERT INTO met_language VALUES('132','emailaddress','邮箱地址','0','132','4','0','cn');
INSERT INTO met_language VALUES('133','telnum','手机号码','0','134','4','0','cn');
INSERT INTO met_language VALUES('134','teluse','手机号码已被绑定','0','135','4','0','cn');
INSERT INTO met_language VALUES('135','telok','请输入正确的手机号码','0','136','4','0','cn');
INSERT INTO met_language VALUES('136','modifyacctel','修改手机绑定','0','137','4','0','cn');
INSERT INTO met_language VALUES('137','modifyinfo','保存资料','0','138','4','0','cn');
INSERT INTO met_language VALUES('138','emailnow','当前邮箱：','0','139','4','0','cn');
INSERT INTO met_language VALUES('139','newemail','新邮箱','0','140','4','0','cn');
INSERT INTO met_language VALUES('140','modifyaccemail','修改绑定邮箱','0','142','4','0','cn');
INSERT INTO met_language VALUES('141','renewpassword','重复密码','0','144','4','0','cn');
INSERT INTO met_language VALUES('142','inputcode','请输入验证码','0','145','4','0','cn');
INSERT INTO met_language VALUES('143','next','下一步','0','146','4','0','cn');
INSERT INTO met_language VALUES('144','logintips','用户名/邮箱/手机','0','147','4','0','cn');
INSERT INTO met_language VALUES('145','otherlogin','其它方式登录','0','148','4','0','cn');
INSERT INTO met_language VALUES('146','logintips1','没有账号？现在去注册','0','149','4','0','cn');
INSERT INTO met_language VALUES('147','rememberImgCode','重发验证码','0','150','4','0','cn');
INSERT INTO met_language VALUES('148','relogin','返回登录','0','151','4','0','cn');
INSERT INTO met_language VALUES('149','getpasswordtips','邮箱/手机','0','152','4','0','cn');
INSERT INTO met_language VALUES('150','regclose','注册功能已关闭','0','153','4','0','cn');
INSERT INTO met_language VALUES('151','regfail','注册失败','0','154','4','0','cn');
INSERT INTO met_language VALUES('152','codetimeout','验证码已超时','0','155','4','0','cn');
INSERT INTO met_language VALUES('153','telcheckfail','手机号码与短信验证号码不一致','0','156','4','0','cn');
INSERT INTO met_language VALUES('154','regsuc','注册成功！','0','157','4','0','cn');
INSERT INTO met_language VALUES('155','activesuc','激活成功，请登录！','0','158','4','0','cn');
INSERT INTO met_language VALUES('156','emailvildtips1','验证信息错误','0','159','4','0','cn');
INSERT INTO met_language VALUES('157','emailvildtips2','验证信息错误或已超时','0','160','4','0','cn');
INSERT INTO met_language VALUES('158','telreg','手机号已被注册','0','161','4','0','cn');
INSERT INTO met_language VALUES('159','Sendfrequent','发送过于频繁，请稍后再试','0','162','4','0','cn');
INSERT INTO met_language VALUES('160','emailsuc','邮件发送成功！','0','163','4','0','cn');
INSERT INTO met_language VALUES('161','emailfail','邮件发送失败，请确认邮箱是否正确或联系网站管理人员解决。','0','164','4','0','cn');
INSERT INTO met_language VALUES('162','modifysuc','修改成功','0','165','4','0','cn');
INSERT INTO met_language VALUES('163','binding','绑定','0','166','4','0','cn');
INSERT INTO met_language VALUES('164','notbound','未绑定','0','167','4','0','cn');
INSERT INTO met_language VALUES('165','accnotmodify','帐号无法修改','0','168','4','0','cn');
INSERT INTO met_language VALUES('166','emailsuclink','邮件发送成功！请点击邮件里的验证链接完成操作！','0','169','4','0','cn');
INSERT INTO met_language VALUES('167','bindingok','绑定成功','0','170','4','0','cn');
INSERT INTO met_language VALUES('168','opfail','操作失败','0','171','4','0','cn');
INSERT INTO met_language VALUES('169','modifypasswordsuc','密码修改成功！','0','172','4','0','cn');
INSERT INTO met_language VALUES('170','lodpasswordfail','原密码错误','0','173','4','0','cn');
INSERT INTO met_language VALUES('171','membererror1','用户名或密码错误','0','174','4','0','cn');
INSERT INTO met_language VALUES('172','membererror2','请开启session！','0','175','4','0','cn');
INSERT INTO met_language VALUES('173','membererror3','授权失败','0','176','4','0','cn');
INSERT INTO met_language VALUES('174','membererror4','未知错误','0','177','4','0','cn');
INSERT INTO met_language VALUES('175','membererror6','账号未激活，请联系管理员','0','174','4','0','cn');
INSERT INTO met_language VALUES('176','emailsucpass','密码找回邮件已经发送至您的邮箱，点击邮件里的链接即可重设密码。','0','178','4','0','cn');
INSERT INTO met_language VALUES('177','emailvildtips3','请输入正确的邮箱或手机号码','0','179','4','0','cn');
INSERT INTO met_language VALUES('178','membererror5','发送失败！错误码：','0','180','4','0','cn');
INSERT INTO met_language VALUES('179','noempty','此项不能为空','0','181','4','0','cn');
INSERT INTO met_language VALUES('180','usernamecheck','用户名必须在2-30个字符之间','0','182','4','0','cn');
INSERT INTO met_language VALUES('181','passwordcheck','密码必须在6-30个字符之间','0','183','4','0','cn');
INSERT INTO met_language VALUES('182','passwordsame','两次密码输入不一致','0','184','4','0','cn');
INSERT INTO met_language VALUES('183','emailcheck','请输入正确的Email地址','0','184','4','0','cn');
INSERT INTO met_language VALUES('184','Previous_news','上一篇','0','9','3','0','cn');
INSERT INTO met_language VALUES('185','Next_news','下一篇','0','10','3','0','cn');
INSERT INTO met_language VALUES('186','close','关闭','0','0','0','0','cn');
INSERT INTO met_language VALUES('187','browserupdatetips','你正在使用一个 <strong>过时</strong> 的浏览器。请 <a href=https://browsehappy.com/ target=_blank>升级您的浏览器</a>，以提高您的体验。','0','0','0','0','cn');
INSERT INTO met_language VALUES('188','newFeedback','收到了新的反馈','0','0','0','0','cn');
INSERT INTO met_language VALUES('189','opfailed','操作失败','0','0','1','0','cn');
INSERT INTO met_language VALUES('190','jobPrompt','收到了新的简历','0','0','0','0','cn');
INSERT INTO met_language VALUES('191','reMessage1','您的网站','0','0','0','0','cn');
INSERT INTO met_language VALUES('192','reMessage2','，请尽快登录网站后台查看','0','0','0','0','cn');
INSERT INTO met_language VALUES('193','messagePrompt','收到了新的留言','0','0','0','0','cn');
INSERT INTO met_language VALUES('194','formaterror','格式错误','0','0','0','0','cn');
INSERT INTO met_language VALUES('195','listcom','推荐','0','0','0','0','cn');
INSERT INTO met_language VALUES('196','listnew','最新','0','0','0','0','cn');
INSERT INTO met_language VALUES('197','listhot','热门','0','0','0','0','cn');
INSERT INTO met_language VALUES('198','weball','全部','0','0','0','0','cn');
INSERT INTO met_language VALUES('199','columnall','全部栏目','0','0','0','0','cn');
INSERT INTO met_language VALUES('200','accsaftips4','绑定用户证实身份信息','0','9','2','0','cn');
INSERT INTO met_language VALUES('201','rnvalidate','实名认证','0','9','2','0','cn');
INSERT INTO met_language VALUES('202','notauthen','未认证','0','9','2','0','cn');
INSERT INTO met_language VALUES('203','authen','已认证','0','9','1','0','cn');
INSERT INTO met_language VALUES('204','realname','真实姓名','0','9','2','0','cn');
INSERT INTO met_language VALUES('205','idcode','身份证号码','0','9','2','0','cn');
INSERT INTO met_language VALUES('206','idvalidok','实名认证成功','0','9','2','0','cn');
INSERT INTO met_language VALUES('207','idvalidfailed','实名认证失败','0','9','2','0','cn');
INSERT INTO met_language VALUES('208','systips1','您没有权限访问这个内容！请登录后访问！','0','0','0','0','cn');
INSERT INTO met_language VALUES('209','systips2','您所在用户组没有权限访问这个内容！','0','0','0','0','cn');
INSERT INTO met_language VALUES('210','usercheckok','验证成功！','0','0','1','0','cn');
INSERT INTO met_language VALUES('211','usereadinfo','阅读权限值必需大于0','0','0','0','0','cn');
INSERT INTO met_language VALUES('212','userselectname','选项卡','0','0','0','0','cn');
INSERT INTO met_language VALUES('213','userwenxinclose','微信登录功能已关闭','0','0','0','0','cn');
INSERT INTO met_language VALUES('214','userwenboclose','微博登录功能已关闭','0','0','0','0','cn');
INSERT INTO met_language VALUES('215','userqqclose','QQ登录功能已关闭','0','0','0','0','cn');
INSERT INTO met_language VALUES('216','userbuy','购买','0','0','0','0','cn');
INSERT INTO met_language VALUES('217','userbuylist','订单','0','0','0','0','cn');
INSERT INTO met_language VALUES('218','usesendcode','验证码为','0','0','0','0','cn');
INSERT INTO met_language VALUES('219','usesendcodeinfo','请及时输入验证','0','0','0','0','cn');
INSERT INTO met_language VALUES('220','feedbackinquiry','在线询价','0','0','0','0','cn');
INSERT INTO met_language VALUES('221','templatesusererror','当前语言模板未配置或模板文件不存在','0','0','0','0','cn');
INSERT INTO met_language VALUES('222','phonecode','获取手机验证码','0','0','0','0','cn');
INSERT INTO met_language VALUES('223','phonecodeerror','手机验证码错误','0','0','0','0','cn');
INSERT INTO met_language VALUES('224','memberbuytitle','付费升级会员组','0','0','0','0','cn');
INSERT INTO met_language VALUES('225','img_px_tips','图片尺寸超出系统限制(图片宽高不超过2000px)','0','0','1','0','cn');
INSERT INTO met_language VALUES('226','member_cv','简历','0','0','1','0','cn');
INSERT INTO met_language VALUES('227','please_login','请先登录！','0','0','0','0','cn');
INSERT INTO met_language VALUES('228','user_agreement','用户协议','0','0','0','0','cn');
INSERT INTO met_language VALUES('229','user_agreement_tips1','我已认真阅读','0','0','0','0','cn');
INSERT INTO met_language VALUES('230','user_agreement_tips2','并同意注册','0','0','0','0','cn');
INSERT INTO met_language VALUES('231','user_agreement_tips3','请阅读并勾选同意','0','0','0','0','cn');
INSERT INTO met_language VALUES('232','tag','TAG标签','0','0','0','0','cn');
INSERT INTO met_language VALUES('233','columnSearchInfo','请输入你感兴趣的关键词','0','0','0','0','cn');
INSERT INTO met_language VALUES('234','advancedSearchInfo','请输入你感兴趣的关键词','0','0','0','0','cn');
INSERT INTO met_language VALUES('235','notemptips','当前语言没有设置网站模板，请到“风格-网站模板”中选择1套模板','0','0','0','0','cn');
INSERT INTO met_language VALUES('236','AddDate','发布时间','0','0','0','0','cn');
INSERT INTO met_language VALUES('237','listsales','销量','0','0','0','0','cn');
INSERT INTO met_language VALUES('475','cooperation_platform','企业超市','1','436','0','0','cn');
INSERT INTO met_language VALUES('476','feedback_interaction','反馈互动','1','437','0','0','cn');
INSERT INTO met_language VALUES('477','banner_manage','Banner管理','1','437','0','0','cn');
INSERT INTO met_language VALUES('478','unitytxt_71','二维码','1','435','0','0','cn');
INSERT INTO met_language VALUES('479','unitytxt_69','安装文件删除','1','433','8','0','cn');
INSERT INTO met_language VALUES('480','unitytxt_70','上传文件','1','434','8','0','cn');
INSERT INTO met_language VALUES('481','unitytxt_39','基本设置','1','403','1','0','cn');
INSERT INTO met_language VALUES('482','unitytxt_42','列表页每页显示条数','1','406','0','0','cn');
INSERT INTO met_language VALUES('483','unitytxt_38','代码会放在 &lt;/body&gt; 标签以上','1','402','39','0','cn');
INSERT INTO met_language VALUES('484','unitytxt_37','代码会放在 &lt;/head&gt; 标签以上','1','401','39','0','cn');
INSERT INTO met_language VALUES('485','unitytxt_33','权限设置','1','397','39','0','cn');
INSERT INTO met_language VALUES('486','unitytxt_34','资料文档上传','1','398','40','0','cn');
INSERT INTO met_language VALUES('487','unitytxt_36','PC端第三方代码（一般用于放置百度商桥代码、站长统计代码、谷歌翻译代码等）','1','400','39','0','cn');
INSERT INTO met_language VALUES('488','unitytxt_25','关键词设置','1','389','32','0','cn');
INSERT INTO met_language VALUES('489','unitytxt_26','优化文字设置（可用于增加关键词密度，需要网站模板支持）','1','390','32','0','cn');
INSERT INTO met_language VALUES('490','unitytxt_15','其它设置','1','379','0','0','cn');
INSERT INTO met_language VALUES('491','unitytxt_13','底部信息设置（显示在网站前台底部）','1','377','39','0','cn');
INSERT INTO met_language VALUES('492','unitytxt_14','样式设置','1','378','23','0','cn');
INSERT INTO met_language VALUES('493','unitytxt_10','仅适用用于中文前台语言（语言标识为cn或zh时生效），浏览者可以在简繁体之间切换。','1','374','16','0','cn');
INSERT INTO met_language VALUES('494','unitytxt_9','同步官方参数','1','373','16','0','cn');
INSERT INTO met_language VALUES('495','unitytxt_8','该语言设置了独立域名，需要修改网站网址请在<font class=\'red\'>语言设置</font>中修改。','1','372','39','0','cn');
INSERT INTO met_language VALUES('496','unitytxt_7','备份包下载后建议及时删除备份文件，以免影响空间大小（如果你的虚拟主机限定流量，你可以通过FTP下载节省流量）','1','371','0','0','cn');
INSERT INTO met_language VALUES('497','unitytxt_6','版本不一致','1','370','0','0','cn');
INSERT INTO met_language VALUES('498','unitytxt_2','勾选则采用默认设置','1','366','0','0','cn');
INSERT INTO met_language VALUES('499','ssl','SSL服务方式','1','362','39','0','cn');
INSERT INTO met_language VALUES('500','tls','TLS服务方式','1','363','39','0','cn');
INSERT INTO met_language VALUES('501','loginFail','操作失败!','1','359','8','0','cn');
INSERT INTO met_language VALUES('502','NoidJS','没有此用户','1','349','38','0','cn');
INSERT INTO met_language VALUES('503','jsx32','登录超时，请重新登录！','1','344','0','0','cn');
INSERT INTO met_language VALUES('504','jsx27','静态页面名已存在','1','339','0','0','cn');
INSERT INTO met_language VALUES('505','jsx20','正在检测...','1','332','0','0','cn');
INSERT INTO met_language VALUES('506','jsx17','上传成功！','1','329','0','0','cn');
INSERT INTO met_language VALUES('507','jsx15','上传','1','327','1','0','cn');
INSERT INTO met_language VALUES('508','jsx10','错误','1','322','0','0','cn');
INSERT INTO met_language VALUES('509','jsx2','请至少选一种语言！','1','314','0','0','cn');
INSERT INTO met_language VALUES('510','jsx3','请先选择需要复制的表单','1','315','0','0','cn');
INSERT INTO met_language VALUES('511','jsx1','载入中...','1','313','0','0','cn');
INSERT INTO met_language VALUES('512','js67','请至少选择一个所属栏目','1','309','0','0','cn');
INSERT INTO met_language VALUES('513','js55','返回','1','297','1','0','cn');
INSERT INTO met_language VALUES('514','js56','移动为一级栏目必须设置一个新的目录名称(目录名只能是数字或字母)','1','298','0','0','cn');
INSERT INTO met_language VALUES('515','js46','不能重复','1','288','0','0','cn');
INSERT INTO met_language VALUES('516','js49','撤销','1','291','0','0','cn');
INSERT INTO met_language VALUES('517','js41','不能为空！','1','283','0','0','cn');
INSERT INTO met_language VALUES('518','js36','请选择语言','1','278','0','0','cn');
INSERT INTO met_language VALUES('519','js35','上传临时文件夹（upload_tmp_dir）不可写或者域名/后台文件夹/include/uploadify.php没有访问权限。','1','277','0','0','cn');
INSERT INTO met_language VALUES('520','js25','图片地址不能为空！','1','267','0','0','cn');
INSERT INTO met_language VALUES('521','js23','没有选中的记录!','1','265','0','0','cn');
INSERT INTO met_language VALUES('522','js18','原文字不能为空','1','260','0','0','cn');
INSERT INTO met_language VALUES('523','js15','请选择上传文件','1','257','0','0','cn');
INSERT INTO met_language VALUES('524','js16','下载地址不能为空','1','258','0','0','cn');
INSERT INTO met_language VALUES('525','js14','请选择二级及三级栏目','1','256','0','0','cn');
INSERT INTO met_language VALUES('526','js10','您的修改内容还没有保存，您确定离开吗？','1','252','0','0','cn');
INSERT INTO met_language VALUES('527','js6','两次输入的密码不一样','1','248','0','0','cn');
INSERT INTO met_language VALUES('528','js7','确定要删除选中的信息吗？一旦删除将不能恢复！','1','249','1','0','cn');
INSERT INTO met_language VALUES('529','js5','email不能为空','1','247','0','0','cn');
INSERT INTO met_language VALUES('530','js4','登录密码不能为空','1','246','0','0','cn');
INSERT INTO met_language VALUES('531','js2','数据出错了','1','244','0','0','cn');
INSERT INTO met_language VALUES('532','js1','请稍等,系统检测中....','1','243','0','0','cn');
INSERT INTO met_language VALUES('533','dataerror','数据错误','1','242','0','0','cn');
INSERT INTO met_language VALUES('534','jsok','操作成功','1','241','1','0','cn');
INSERT INTO met_language VALUES('535','marks','：','1','238','0','0','cn');
INSERT INTO met_language VALUES('536','displayimg','展示图片','1','235','0','0','cn');
INSERT INTO met_language VALUES('537','Operating','操作系统','1','233','37','0','cn');
INSERT INTO met_language VALUES('538','noorderinfo','数值越小越靠前','1','234','0','0','cn');
INSERT INTO met_language VALUES('539','contentdetail','详细内容','1','227','0','0','cn');
INSERT INTO met_language VALUES('540','content','内容','1','226','1','0','cn');
INSERT INTO met_language VALUES('541','webaccess','访问权限','1','225','0','0','cn');
INSERT INTO met_language VALUES('542','keywordsinfo','多个关键词请用\",\"隔开','1','223','0','0','cn');
INSERT INTO met_language VALUES('543','keywords','关键词','1','222','0','0','cn');
INSERT INTO met_language VALUES('544','hits','点击次数','1','221','0','0','cn');
INSERT INTO met_language VALUES('545','addtime','发布时间','1','220','0','0','cn');
INSERT INTO met_language VALUES('546','updatetime','更新时间','1','219','0','0','cn');
INSERT INTO met_language VALUES('547','access3','管理员','1','218','0','0','cn');
INSERT INTO met_language VALUES('548','access2','代理商','1','217','0','0','cn');
INSERT INTO met_language VALUES('549','access1','普通会员','1','216','0','0','cn');
INSERT INTO met_language VALUES('550','access0','不限','1','215','0','0','cn');
INSERT INTO met_language VALUES('551','access','权限','1','214','0','0','cn');
INSERT INTO met_language VALUES('552','read','已读','1','210','0','0','cn');
INSERT INTO met_language VALUES('553','parameter','参数','1','208','0','0','cn');
INSERT INTO met_language VALUES('554','search','搜索','1','206','0','0','cn');
INSERT INTO met_language VALUES('555','manager','内容管理','1','205','19','0','cn');
INSERT INTO met_language VALUES('556','top','置顶','1','202','0','0','cn');
INSERT INTO met_language VALUES('557','wap','wap','1','201','0','0','cn');
INSERT INTO met_language VALUES('558','recom','推荐','1','200','0','0','cn');
INSERT INTO met_language VALUES('559','image','图片','1','198','0','0','cn');
INSERT INTO met_language VALUES('560','title','标题','1','197','0','0','cn');
INSERT INTO met_language VALUES('561','description','简短描述','1','196','0','0','cn');
INSERT INTO met_language VALUES('562','selected','选择','1','192','0','0','cn');
INSERT INTO met_language VALUES('563','metinfo','MetInfo|米拓企业建站系统','1','189','0','0','cn');
INSERT INTO met_language VALUES('564','no','否','1','188','0','0','cn');
INSERT INTO met_language VALUES('565','yes','是','1','187','0','0','cn');
INSERT INTO met_language VALUES('566','sort','排序','1','186','0','0','cn');
INSERT INTO met_language VALUES('567','type','类型','1','185','0','0','cn');
INSERT INTO met_language VALUES('568','close','关闭','1','184','0','0','cn');
INSERT INTO met_language VALUES('569','open','开启','1','183','0','0','cn');
INSERT INTO met_language VALUES('570','operate','操作','1','182','0','0','cn');
INSERT INTO met_language VALUES('571','preview','预览','1','181','0','0','cn');
INSERT INTO met_language VALUES('572','delete','删除','1','180','0','0','cn');
INSERT INTO met_language VALUES('573','modify','修改','1','179','0','0','cn');
INSERT INTO met_language VALUES('574','View','查看','1','178','0','0','cn');
INSERT INTO met_language VALUES('575','editor','编辑','1','177','0','0','cn');
INSERT INTO met_language VALUES('576','add','添加','1','176','0','0','cn');
INSERT INTO met_language VALUES('577','addsubcolumn','添加子栏目','1','176','0','0','cn');
INSERT INTO met_language VALUES('578','Submit','保存','1','171','0','0','cn');
INSERT INTO met_language VALUES('579','Submitall','提交','1','172','26','0','cn');
INSERT INTO met_language VALUES('580','Copy','复制','1','174','0','0','cn');
INSERT INTO met_language VALUES('581','langadderr4','无法同步官网语言包。','1','166','16','0','cn');
INSERT INTO met_language VALUES('582','langadderr5','您删除的是默认语言！请先设置一个其它语言为默认语言再操作！','1','167','16','0','cn');
INSERT INTO met_language VALUES('583','basictips7','邮箱设置正确！','1','162','39','0','cn');
INSERT INTO met_language VALUES('584','basictips6','<b>解决办法：</b>请检查帐号密码和smtp是否有误或查看邮箱是否开启smtp服务。','1','161','39','0','cn');
INSERT INTO met_language VALUES('585','basictips5','<b>错误提示：</b>测试发送邮件失败！','1','160','39','0','cn');
INSERT INTO met_language VALUES('586','basictips3','邮件发送测试','1','158','39','0','cn');
INSERT INTO met_language VALUES('587','basictips4','收到邮件说明您网站的系统邮箱设置正确。','1','159','39','0','cn');
INSERT INTO met_language VALUES('588','upfileFail10','不支持imagejpeg函数','1','125','8','0','cn');
INSERT INTO met_language VALUES('589','upfileFail11','不支持imagepng函数','1','126','8','0','cn');
INSERT INTO met_language VALUES('590','upfileFail9','不支持imagegif函数','1','124','8','0','cn');
INSERT INTO met_language VALUES('591','upfileFail8','文件损坏,缩略图生成失败','1','123','8','0','cn');
INSERT INTO met_language VALUES('592','upfileFail7','不支持当前文件格式生成缩略图，请上传JPG,GIF,PNG图片','1','122','8','0','cn');
INSERT INTO met_language VALUES('593','upfileFail6','空间不支持GD库，无法生成缩略图','1','121','8','0','cn');
INSERT INTO met_language VALUES('594','upfileFail5','bmp的格式无法自动生成缩图','1','120','8','0','cn');
INSERT INTO met_language VALUES('595','upfileFail4','创建目录失败','1','119','8','0','cn');
INSERT INTO met_language VALUES('596','upfileOver4','upload文件夹没有写权限,请联系空间商修改。','1','116','8','0','cn');
INSERT INTO met_language VALUES('597','upfileOver5','上传临时文件夹(upload_tmp_dir)没有写权限,请联系空间商修改。','1','117','8','0','cn');
INSERT INTO met_language VALUES('598','upfileOver3','没有文件被上传。','1','115','8','0','cn');
INSERT INTO met_language VALUES('599','upfileOver2','文件只有部分被上传。','1','114','8','0','cn');
INSERT INTO met_language VALUES('600','upfileOver','上传的文件超过了 php.ini 中 upload_max_filesize 选项限制的值。','1','112','8','0','cn');
INSERT INTO met_language VALUES('601','upfileOver1','上传文件的大小超过了 HTML 表单中 MAX_FILE_SIZE 选项指定的值。','1','113','8','0','cn');
INSERT INTO met_language VALUES('602','upfileTip3','文件格式不允许上传。','1','110','8','0','cn');
INSERT INTO met_language VALUES('603','upfileTip1','，不能上传。','1','108','8','0','cn');
INSERT INTO met_language VALUES('604','upfileFail2','创建图片目录失败','1','103','8','0','cn');
INSERT INTO met_language VALUES('605','upfileMax','大小超出系统限定值','1','106','8','0','cn');
INSERT INTO met_language VALUES('606','upfileFile','上传文件','1','105','8','0','cn');
INSERT INTO met_language VALUES('607','funNav4','都显示','1','94','5','0','cn');
INSERT INTO met_language VALUES('608','indexfeedbackm','反馈信息管理','1','79','8','0','cn');
INSERT INTO met_language VALUES('609','indexlink','友情链接','1','78','8','0','cn');
INSERT INTO met_language VALUES('610','indexhtm','静态页面生成','1','74','8','0','cn');
INSERT INTO met_language VALUES('611','indexhtmset','静态页面','1','73','8','0','cn');
INSERT INTO met_language VALUES('612','indexcv','招聘系统配置','1','70','8','0','cn');
INSERT INTO met_language VALUES('613','indexflash','Banner 管理','1','67','4','0','cn');
INSERT INTO met_language VALUES('614','indexbbs','技术支持','1','63','8','0','cn');
INSERT INTO met_language VALUES('615','indexcode','商业授权','1','61','8','0','cn');
INSERT INTO met_language VALUES('616','indexlang','语言设置','1','54','8','0','cn');
INSERT INTO met_language VALUES('617','indexloginout','退出','1','51','8','0','cn');
INSERT INTO met_language VALUES('618','indexuser','用户管理','1','47','8','0','cn');
INSERT INTO met_language VALUES('619','indexadmin','常用功能','1','50','8','0','cn');
INSERT INTO met_language VALUES('620','indexadminname','管理员管理','1','80','8','0','cn');
INSERT INTO met_language VALUES('621','indexcontent','内容管理','1','44','8','0','cn');
INSERT INTO met_language VALUES('622','loginall','你没有添加、修改、删除信息的权限，请联系管理员开通','1','39','8','0','cn');
INSERT INTO met_language VALUES('623','loginedit','你没有修改信息的权限，请联系管理员开通','1','38','0','0','cn');
INSERT INTO met_language VALUES('624','loginadd','你没有添加信息的权限，请联系管理员开通','1','37','8','0','cn');
INSERT INTO met_language VALUES('625','logindelete','你没有删除信息的权限，请联系管理员开通','1','36','8','0','cn');
INSERT INTO met_language VALUES('626','loginpass','用户名或密码错误','1','35','8','0','cn');
INSERT INTO met_language VALUES('627','loginname','用户名或密码错误','1','34','18','0','cn');
INSERT INTO met_language VALUES('628','logincodeerror','验证码错误','1','33','18','0','cn');
INSERT INTO met_language VALUES('629','loginconfirm','登录','1','32','18','0','cn');
INSERT INTO met_language VALUES('630','loginforget','忘记密码?','1','31','18','0','cn');
INSERT INTO met_language VALUES('631','loginusename','用户名','1','27','8','0','cn');
INSERT INTO met_language VALUES('632','loginpassword','密码','1','28','8','0','cn');
INSERT INTO met_language VALUES('633','logincode','验证码','1','29','8','0','cn');
INSERT INTO met_language VALUES('634','loginlanguage','后台语言','1','26','18','0','cn');
INSERT INTO met_language VALUES('635','loginmetinfo','MetInfo','1','25','8','0','cn');
INSERT INTO met_language VALUES('636','loginadmin','管理员登录','1','24','18','0','cn');
INSERT INTO met_language VALUES('637','logintitle','后台登录','1','21','18','0','cn');
INSERT INTO met_language VALUES('638','myapp','应用插件','1','20','36','0','cn');
INSERT INTO met_language VALUES('639','myapps','我的插件','1','20','36','0','cn');
INSERT INTO met_language VALUES('640','recycle','内容回收站','1','17','29','0','cn');
INSERT INTO met_language VALUES('641','managertyp5','自定义','1','9','2','0','cn');
INSERT INTO met_language VALUES('642','managertyp4','内容管理员','1','9','2','0','cn');
INSERT INTO met_language VALUES('643','managertyp2','管理员','1','7','2','0','cn');
INSERT INTO met_language VALUES('644','managertyp3','优化推广员','1','8','2','0','cn');
INSERT INTO met_language VALUES('645','managertyp1','创始人','1','6','2','0','cn');
INSERT INTO met_language VALUES('646','uplaoderr1','上传失败！','1','3','8','0','cn');
INSERT INTO met_language VALUES('647','clickview','点击查看','1','1','8','0','cn');
INSERT INTO met_language VALUES('648','membertips1','注册时间','1','105','38','0','cn');
INSERT INTO met_language VALUES('649','memberjstxt2','请输入登录密码！','1','95','7','0','cn');
INSERT INTO met_language VALUES('650','memberCheck','是否激活','1','92','38','0','cn');
INSERT INTO met_language VALUES('651','memberMan','先生','1','81','36','0','cn');
INSERT INTO met_language VALUES('652','memberCell','手机','1','84','7','0','cn');
INSERT INTO met_language VALUES('653','memberTip','不修改请留空','1','78','7','0','cn');
INSERT INTO met_language VALUES('654','memberName','姓名','1','76','7','0','cn');
INSERT INTO met_language VALUES('655','memberCV','简历','1','74','15','0','cn');
INSERT INTO met_language VALUES('656','memberEmail','邮箱地址','1','67','7','0','cn');
INSERT INTO met_language VALUES('657','memberAdd','添加会员','1','62','2','0','cn');
INSERT INTO met_language VALUES('658','memberChecked','已激活','1','60','38','0','cn');
INSERT INTO met_language VALUES('659','memberUnChecked','未激活','1','61','38','0','cn');
INSERT INTO met_language VALUES('660','memberManage','会员管理','1','58','2','0','cn');
INSERT INTO met_language VALUES('661','memberlogin','会员注册','1','51','38','0','cn');
INSERT INTO met_language VALUES('662','hello','您好！','1','47','7','0','cn');
INSERT INTO met_language VALUES('663','getTip5','找回密码','1','45','7','0','cn');
INSERT INTO met_language VALUES('664','getTip3','创建新密码链接的电子邮件已经发送到您的邮箱，请尽快修改您的密码。','1','43','10','0','cn');
INSERT INTO met_language VALUES('665','getTip2','感谢您对MetInfo的支持与厚爱，希望MetInfo能为您的网站创造价值！','1','42','10','0','cn');
INSERT INTO met_language VALUES('666','getTip1','您的密码重置请求已经得到验证。请点击以下链接输入您的新密码：','1','41','10','0','cn');
INSERT INTO met_language VALUES('667','getNotice','管理员密码找回','1','40','10','0','cn');
INSERT INTO met_language VALUES('668','adminpassTitle','修改个人信息','1','39','2','0','cn');
INSERT INTO met_language VALUES('669','adminSelectAll','全部选择','1','37','2','0','cn');
INSERT INTO met_language VALUES('670','adminOperate4','删除信息','1','35','2','0','cn');
INSERT INTO met_language VALUES('671','adminOperate3','修改信息','1','34','2','0','cn');
INSERT INTO met_language VALUES('672','adminOperate1','完全控制','1','32','2','0','cn');
INSERT INTO met_language VALUES('673','adminOperate2','添加信息','1','33','2','0','cn');
INSERT INTO met_language VALUES('674','adminPower','信息权限','1','29','2','0','cn');
INSERT INTO met_language VALUES('675','adminTip2','只允许查看自己发表的信息','1','30','2','0','cn');
INSERT INTO met_language VALUES('676','adminTip3','发布信息需要审核才能正常显示','1','30','2','0','cn');
INSERT INTO met_language VALUES('677','adminOperate','操作权限','1','31','2','0','cn');
INSERT INTO met_language VALUES('678','adminpassword1','密码确认','1','21','2','0','cn');
INSERT INTO met_language VALUES('679','adminpassword','登录密码','1','20','7','0','cn');
INSERT INTO met_language VALUES('680','adminLastLogin','最后登录时间','1','18','0','0','cn');
INSERT INTO met_language VALUES('681','adminLastIP','最后登录IP','1','19','0','0','cn');
INSERT INTO met_language VALUES('682','metadmin','管理员','1','12','0','0','cn');
INSERT INTO met_language VALUES('683','adminusername','用户名','1','13','0','0','cn');
INSERT INTO met_language VALUES('684','adminname','姓名','1','14','0','0','cn');
INSERT INTO met_language VALUES('685','admin_email','管理员邮箱','1','14','0','0','cn');
INSERT INTO met_language VALUES('686','admin_email_error','管理员邮箱已被占用','1','14','0','0','cn');
INSERT INTO met_language VALUES('687','adminLoginNum','登录次数','1','17','38','0','cn');
INSERT INTO met_language VALUES('688','admintips7','管理员权限设置','1','11','2','0','cn');
INSERT INTO met_language VALUES('689','adminjurisd','语言权限','1','5','2','0','cn');
INSERT INTO met_language VALUES('690','admintips1','所有语言','1','6','0','0','cn');
INSERT INTO met_language VALUES('691','admintips2','至少选择一个','1','7','2','0','cn');
INSERT INTO met_language VALUES('692','admintips5','用户组','1','10','0','0','cn');
INSERT INTO met_language VALUES('693','admintips4','新增栏目权限','1','9','2','0','cn');
INSERT INTO met_language VALUES('694','webcompre','整站压缩包','1','3','8','0','cn');
INSERT INTO met_language VALUES('695','admininfo','管理员基本信息','1','4','0','0','cn');
INSERT INTO met_language VALUES('696','uploadfile','上传文件夹','1','2','8','0','cn');
INSERT INTO met_language VALUES('697','database','数据库','1','1','8','0','cn');
INSERT INTO met_language VALUES('698','dlapptips6','卸载','1','294','6','0','cn');
INSERT INTO met_language VALUES('699','dlapptips5','打开','1','293','6','0','cn');
INSERT INTO met_language VALUES('700','mobiletips3','添加内容','1','284','0','0','cn');
INSERT INTO met_language VALUES('701','smstips64','全部状态','1','245','6','0','cn');
INSERT INTO met_language VALUES('702','smstips24','操作时间','1','206','6','0','cn');
INSERT INTO met_language VALUES('703','smstips22','账户余额','1','204','6','0','cn');
INSERT INTO met_language VALUES('704','smstips18','操作类型','1','200','6','0','cn');
INSERT INTO met_language VALUES('705','smstips19','充值','1','201','6','0','cn');
INSERT INTO met_language VALUES('706','smstips17','序列','1','199','6','0','cn');
INSERT INTO met_language VALUES('707','smstips9','元','1','191','6','0','cn');
INSERT INTO met_language VALUES('708','smstips6','当前余额','1','188','6','0','cn');
INSERT INTO met_language VALUES('709','smstips7','付款方式','1','189','6','0','cn');
INSERT INTO met_language VALUES('710','smstips1','批量发送','1','183','6','0','cn');
INSERT INTO met_language VALUES('711','smstips2','发送记录','1','184','6','0','cn');
INSERT INTO met_language VALUES('712','statip','IP','1','132','6','0','cn');
INSERT INTO met_language VALUES('713','smsrecharge','充值','1','113','6','0','cn');
INSERT INTO met_language VALUES('714','physicalfunction4','文件夹','1','103','1','0','cn');
INSERT INTO met_language VALUES('715','physicaldelok','删除成功','1','47','6','0','cn');
INSERT INTO met_language VALUES('716','physicalgenok','生成成功','1','49','6','0','cn');
INSERT INTO met_language VALUES('717','usertype3','普通商业授权','1','35','0','0','cn');
INSERT INTO met_language VALUES('718','usertype4','高级商业授权','1','36','0','0','cn');
INSERT INTO met_language VALUES('719','appinstall','安装','1','38','1','0','cn');
INSERT INTO met_language VALUES('720','appupgrade','升级','1','40','3','0','cn');
INSERT INTO met_language VALUES('721','usertype1','免费','1','33','3','0','cn');
INSERT INTO met_language VALUES('722','csvnodata','没有数据','1','26','16','0','cn');
INSERT INTO met_language VALUES('723','wapdimensionalsize','尺寸','1','20','6','0','cn');
INSERT INTO met_language VALUES('724','dltips7','下载超时','1','195','0','0','cn');
INSERT INTO met_language VALUES('725','columnarrangement2','切换为','1','197','19','0','cn');
INSERT INTO met_language VALUES('726','columnarrangement3','按模块分类','1','198','19','0','cn');
INSERT INTO met_language VALUES('727','columnarrangement4','按栏目分类','1','199','19','0','cn');
INSERT INTO met_language VALUES('728','dltips6','远程服务器请求错误','1','194','0','0','cn');
INSERT INTO met_language VALUES('729','dltips5','您所请求的文件不存在','1','193','0','0','cn');
INSERT INTO met_language VALUES('730','dltips4','请升级程序','1','192','0','0','cn');
INSERT INTO met_language VALUES('731','dltips3','您没有权限下载此文件','1','191','0','0','cn');
INSERT INTO met_language VALUES('732','dltips2','文件下载失败，请检查本地目录权限和空间大小','1','190','0','0','cn');
INSERT INTO met_language VALUES('733','dltips1','无法连接上远程服务器，请检查网络','1','189','0','0','cn');
INSERT INTO met_language VALUES('734','seotips18','过滤外部模块','1','182','5','0','cn');
INSERT INTO met_language VALUES('735','seotips19','网站语言范围','1','183','32','0','cn');
INSERT INTO met_language VALUES('736','seotips20','当前语言','1','184','32','0','cn');
INSERT INTO met_language VALUES('737','seotips15_3','适合雅虎，','1','179','32','0','cn');
INSERT INTO met_language VALUES('738','seotips16','过滤栏目及内容','1','180','32','0','cn');
INSERT INTO met_language VALUES('739','seotips15_2','适合谷歌和百度，','1','178','32','0','cn');
INSERT INTO met_language VALUES('740','seotips15','地图网址','1','176','32','0','cn');
INSERT INTO met_language VALUES('741','seotips6','首页','1','166','0','0','cn');
INSERT INTO met_language VALUES('742','seotips9','内容页','1','169','32','0','cn');
INSERT INTO met_language VALUES('743','seotips14_1','怎样提交给搜索引擎？','1','175','32','0','cn');
INSERT INTO met_language VALUES('744','seotips14','网站地图（Sitemap）有助于加快网站被搜索引擎收录','1','174','32','0','cn');
INSERT INTO met_language VALUES('745','seotips12','是否立即生成所有静态页面？','1','172','11','0','cn');
INSERT INTO met_language VALUES('746','seotips11','是否删除所有已生成的静态页面？','1','171','11','0','cn');
INSERT INTO met_language VALUES('747','uiset_descript_v6','勾选的应用将出现在导航栏【常用功能】下拉列表中','1','0','0','0','cn');
INSERT INTO met_language VALUES('748','seotips1','多个关键词请用英文状态下的逗号 \",\" 隔开，建议3到4个关键词。','1','161','32','0','cn');
INSERT INTO met_language VALUES('749','statips27','时间','1','124','0','0','cn');
INSERT INTO met_language VALUES('750','statips2','统计设置','1','101','0','0','cn');
INSERT INTO met_language VALUES('751','linkRecommend','推荐站点','1','91','17','0','cn');
INSERT INTO met_language VALUES('752','linkPass','审核通过','1','90','17','0','cn');
INSERT INTO met_language VALUES('753','linkLOGO','网站LOGO','1','87','17','0','cn');
INSERT INTO met_language VALUES('754','linkcontact','联系方式','1','88','0','0','cn');
INSERT INTO met_language VALUES('755','linktip1','相同状态的站点，数字越大排序越靠前','1','89','17','0','cn');
INSERT INTO met_language VALUES('756','linktip2','审核通过的才能在前台显示，推荐站点排序靠前显示','1','89','17','0','cn');
INSERT INTO met_language VALUES('757','linkUrl','网站地址','1','86','17','0','cn');
INSERT INTO met_language VALUES('758','linkKeys','网站关键词','1','83','17','0','cn');
INSERT INTO met_language VALUES('759','linkCheck','审核','1','84','17','0','cn');
INSERT INTO met_language VALUES('760','linkName','网站标题','1','82','17','0','cn');
INSERT INTO met_language VALUES('761','linkType4','文字链接','1','80','17','0','cn');
INSERT INTO met_language VALUES('762','linkType5','LOGO链接','1','81','17','0','cn');
INSERT INTO met_language VALUES('763','linkType1','未审核链接','1','77','17','0','cn');
INSERT INTO met_language VALUES('764','linkType2','推荐链接','1','78','17','0','cn');
INSERT INTO met_language VALUES('765','linkType','链接类型','1','75','17','0','cn');
INSERT INTO met_language VALUES('766','htmCreateAll','生成所有页面','1','63','11','0','cn');
INSERT INTO met_language VALUES('767','htmsitemap','网站地图','1','61','0','0','cn');
INSERT INTO met_language VALUES('768','htmAll','所有页面','1','59','11','0','cn');
INSERT INTO met_language VALUES('769','htmTip1','生成内容页面','1','57','11','0','cn');
INSERT INTO met_language VALUES('770','htmTip2','生成列表页面','1','58','11','0','cn');
INSERT INTO met_language VALUES('771','htmColumn','栏目管理','1','56','0','0','cn');
INSERT INTO met_language VALUES('772','htmHome','网站首页','1','54','4','0','cn');
INSERT INTO met_language VALUES('773','sethtmsitemap4','xml网站地图','1','53','32','0','cn');
INSERT INTO met_language VALUES('774','sethtmlist','列表页面名称','1','47','11','0','cn');
INSERT INTO met_language VALUES('775','sethtmlist1','默认文件名+class+页码（如product_1_1)','1','48','11','0','cn');
INSERT INTO met_language VALUES('776','sethtmlist2','所在文件夹名称+class+页码（如software_1_1)','1','49','11','0','cn');
INSERT INTO met_language VALUES('777','sethtmpage4','<span style=float:right;>不建议频繁更换，以确保SEO效果（修改后请重新生成所有静态页面）</span>静态页面名称规则','1','50','11','0','cn');
INSERT INTO met_language VALUES('778','sethtmpage3','所在文件夹名称+ID（如product10)','1','43','11','0','cn');
INSERT INTO met_language VALUES('779','setlisthtmltype','列表页面类型','1','44','11','0','cn');
INSERT INTO met_language VALUES('780','setlisthtmltype1','显示所有栏目id（如product_1_2_3）','1','45','11','0','cn');
INSERT INTO met_language VALUES('781','setlisthtmltype2','只显示本栏目id（如product_1）','1','46','11','0','cn');
INSERT INTO met_language VALUES('782','sethtmpage2','年月日+ID（如2009081510)','1','42','11','0','cn');
INSERT INTO met_language VALUES('783','sethtmpage1','默认文件名+ID（如showproduct10)','1','41','11','0','cn');
INSERT INTO met_language VALUES('784','sethtmpage','内容页面名称','1','40','11','0','cn');
INSERT INTO met_language VALUES('785','sethtmtype','静态页面类型','1','39','11','0','cn');
INSERT INTO met_language VALUES('786','sethtmway3','不建议开启自动生成功能，非常消耗资源，且仅内容管理相关操作能自动生成，其它后台设置修改后如前台无改变需要手动生成。','1','38','11','0','cn');
INSERT INTO met_language VALUES('787','sethtmway2','手动生成','1','37','11','0','cn');
INSERT INTO met_language VALUES('788','sethtmway','生成方式','1','35','11','0','cn');
INSERT INTO met_language VALUES('789','sethtmway1','内容信息变动时自动生成','1','36','11','0','cn');
INSERT INTO met_language VALUES('790','setbasicTip4','建议企业站使用伪静态功能，纯静态消耗资源且不方便管理；首次开启请点击“静态页面生成”生成全部页面','1','34','11','0','cn');
INSERT INTO met_language VALUES('791','sethtmok','静态页面开启','1','31','11','0','cn');
INSERT INTO met_language VALUES('792','sethtmall','全站静态化','1','32','11','0','cn');
INSERT INTO met_language VALUES('793','setbasicTip3','首页、内容页面静态化','1','33','11','0','cn');
INSERT INTO met_language VALUES('794','labelUrl','链接地址','1','27','32','0','cn');
INSERT INTO met_language VALUES('795','htm','静态页面已成功生成','1','30','11','0','cn');
INSERT INTO met_language VALUES('796','labelnum','替换次数','1','23','32','0','cn');
INSERT INTO met_language VALUES('797','labelOld','原文字','1','24','32','0','cn');
INSERT INTO met_language VALUES('798','labelNew','替换为','1','25','32','0','cn');
INSERT INTO met_language VALUES('799','setseoTip14','内页的标题(title)构成方式，您也可以在编辑/添加内容时自定义对应页面的标题(title)。','1','21','32','0','cn');
INSERT INTO met_language VALUES('800','setseotitletype4','内容标题+网站关键词+网站名称','1','20','32','0','cn');
INSERT INTO met_language VALUES('801','setseotitletype3','内容标题+网站关键词','1','19','32','0','cn');
INSERT INTO met_language VALUES('802','setseotitletype2','内容标题+网站名称','1','18','32','0','cn');
INSERT INTO met_language VALUES('803','setseotitletype','内页标题（title）','1','16','32','0','cn');
INSERT INTO met_language VALUES('804','setseotitletype1','内容标题','1','17','32','0','cn');
INSERT INTO met_language VALUES('805','setseodopen','当前窗口打开','1','14','35','0','cn');
INSERT INTO met_language VALUES('806','setseonewopen','新窗口打开','1','15','35','0','cn');
INSERT INTO met_language VALUES('807','setseoFoot','网站底部优化字','1','11','32','0','cn');
INSERT INTO met_language VALUES('808','setseoTip9','鼠标移至超链接显示的文字','1','9','32','0','cn');
INSERT INTO met_language VALUES('809','setseoTip8','超链接默认Title','1','8','32','0','cn');
INSERT INTO met_language VALUES('810','setseoTip7','鼠标移至图片显示的文字','1','7','32','0','cn');
INSERT INTO met_language VALUES('811','setseoTip6','图片默认ALT','1','6','32','0','cn');
INSERT INTO met_language VALUES('812','setseoTip4','头部优化文字','1','5','32','0','cn');
INSERT INTO met_language VALUES('813','setseoTip10','留空则采用网站名称-网站关键词的构成方式','1','4','32','0','cn');
INSERT INTO met_language VALUES('814','setseoKey','网站关键词','1','2','32','0','cn');
INSERT INTO met_language VALUES('815','setseohomeKey','首页标题（title）','1','3','32','0','cn');
INSERT INTO met_language VALUES('816','setseoTip1','多个关键词请用“,”隔开。','1','1','0','0','cn');
INSERT INTO met_language VALUES('817','setheadstat','顶部代码','1','176','39','0','cn');
INSERT INTO met_language VALUES('818','recycledietime','删除时间','1','121','29','0','cn');
INSERT INTO met_language VALUES('819','recyclere','还原','1','122','29','0','cn');
INSERT INTO met_language VALUES('820','messageeditor','编辑留言','1','113','20','0','cn');
INSERT INTO met_language VALUES('821','messagesubmit','留言提交开启关闭','1','112','20','0','cn');
INSERT INTO met_language VALUES('822','messageeditorReply','回复留言','1','109','20','0','cn');
INSERT INTO met_language VALUES('823','messageeditorCheck','回复审核','1','110','20','0','cn');
INSERT INTO met_language VALUES('824','messageeditorShow','审核通过并在前台显示','1','111','20','0','cn');
INSERT INTO met_language VALUES('825','messageTime','提交时间','1','106','20','0','cn');
INSERT INTO met_language VALUES('826','messageID','留言者身份','1','105','20','0','cn');
INSERT INTO met_language VALUES('827','messageTel','电话','1','103','20','0','cn');
INSERT INTO met_language VALUES('828','messageTitle','留言信息管理','1','96','0','0','cn');
INSERT INTO met_language VALUES('829','messageVoice','留言表单设置','1','443','0','0','cn');
INSERT INTO met_language VALUES('830','messageincTip3','客户留言后需要在后台回复审核才显示','1','93','20','0','cn');
INSERT INTO met_language VALUES('831','messageincShow','显示方式','1','92','20','0','cn');
INSERT INTO met_language VALUES('832','feedbackauto','邮件回复设置','1','90','0','0','cn');
INSERT INTO met_language VALUES('833','messageincTitle','留言系统设置','1','91','0','0','cn');
INSERT INTO met_language VALUES('834','feedbackexplain1','页面title名称，默认为该栏目名称','1','89','9','0','cn');
INSERT INTO met_language VALUES('835','feedbacksubmit','反馈提交开启关闭','1','88','9','0','cn');
INSERT INTO met_language VALUES('836','fdeditorFrom','来源页面地址','1','85','9','0','cn');
INSERT INTO met_language VALUES('837','fdeditorRecord','编辑记录','1','86','9','0','cn');
INSERT INTO met_language VALUES('838','fdeditorInterest','感兴趣产品','1','83','9','0','cn');
INSERT INTO met_language VALUES('839','fdeditorTime','反馈提交时间','1','84','9','0','cn');
INSERT INTO met_language VALUES('840','feedbackAccess0','游客','1','82','0','0','cn');
INSERT INTO met_language VALUES('841','feedbackTip4','导出全部','1','80','9','0','cn');
INSERT INTO met_language VALUES('842','feedbackTip2','导出EXCEL表','1','79','9','0','cn');
INSERT INTO met_language VALUES('843','feedbackTime','提交时间','1','78','9','0','cn');
INSERT INTO met_language VALUES('844','feedbackID','反馈者身份','1','77','9','0','cn');
INSERT INTO met_language VALUES('845','feedbackClass2','未阅读信息','1','74','0','0','cn');
INSERT INTO met_language VALUES('846','feedbackClass3','已阅读信息','1','75','0','0','cn');
INSERT INTO met_language VALUES('847','feedbackClass','信息状态','1','71','0','0','cn');
INSERT INTO met_language VALUES('848','fdincFeedbackTitle','回复邮件标题','1','68','0','0','cn');
INSERT INTO met_language VALUES('849','fdincAutoFbTitle','自动回复邮件的标题','1','69','4','0','cn');
INSERT INTO met_language VALUES('850','fdincAutoContent','回复邮件内容','1','70','0','0','cn');
INSERT INTO met_language VALUES('851','fdincEmailName','Email字段名','1','66','0','0','cn');
INSERT INTO met_language VALUES('852','fdincTip11','用于获取用户的邮箱地址，以便回复邮件。字段类型必须为“邮箱”','1','67','0','0','cn');
INSERT INTO met_language VALUES('853','fdincTip10','勾选后将自动向提交表单的用户回复邮件','1','65','0','0','cn');
INSERT INTO met_language VALUES('854','fdincAuto','邮件回复','1','64','0','0','cn');
INSERT INTO met_language VALUES('855','fdincTip9','多个邮箱请用|隔开','1','63','0','0','cn');
INSERT INTO met_language VALUES('856','fdincAcceptMail','反馈邮件接收邮箱','1','62','9','0','cn');
INSERT INTO met_language VALUES('857','fdincTip7','短信通知','1','60','0','0','cn');
INSERT INTO met_language VALUES('858','fdincTip14','短信通知号码','1','61','0','0','cn');
INSERT INTO met_language VALUES('859','fdincAccept','邮件接收','1','59','0','0','cn');
INSERT INTO met_language VALUES('860','fdincTip6','用于获取用户反馈的类型，字段类型为“下拉”或“单选”，设置为关联产品时，下拉菜单为对应栏目下的全部产品。','1','57','9','0','cn');
INSERT INTO met_language VALUES('861','fdincAcceptType','信息接收方式','1','58','9','0','cn');
INSERT INTO met_language VALUES('862','fdincClassName','信息分类字段名','1','56','9','0','cn');
INSERT INTO met_language VALUES('863','fdincSlash','敏感字符过滤','1','54','0','0','cn');
INSERT INTO met_language VALUES('864','fdincTip4','秒，同一IP2次提交的最小间隔时间','1','53','0','0','cn');
INSERT INTO met_language VALUES('865','fdincName','反馈表单名称','1','51','9','0','cn');
INSERT INTO met_language VALUES('866','fdincTime','防刷新时间','1','52','0','0','cn');
INSERT INTO met_language VALUES('867','fdincTitle','反馈系统设置','1','50','25','0','cn');
INSERT INTO met_language VALUES('868','jobmanagement','招聘职位管理','1','48','0','0','cn');
INSERT INTO met_language VALUES('869','jobtip9','简历照片，以便在邮件中能看到应聘者上传的照片。','1','47','0','0','cn');
INSERT INTO met_language VALUES('870','jobtip8','图片字段名','1','46','0','0','cn');
INSERT INTO met_language VALUES('871','jobtip5','投递简历后系统会自动发送一封邮件到接收邮箱','1','45','15','0','cn');
INSERT INTO met_language VALUES('872','cvset','简历表单设置','1','44','0','0','cn');
INSERT INTO met_language VALUES('873','cvmanagement','简历信息管理','1','43','0','0','cn');
INSERT INTO met_language VALUES('874','cvemail','简历接收邮箱','1','42','15','0','cn');
INSERT INTO met_language VALUES('875','cvall','全部','1','39','3','0','cn');
INSERT INTO met_language VALUES('876','cvincAcceptType','简历接收方式','1','37','0','0','cn');
INSERT INTO met_language VALUES('877','cvincAcceptMail','简历接收邮箱','1','36','0','0','cn');
INSERT INTO met_language VALUES('878','cvincTip4','单独职位','1','34','0','0','cn');
INSERT INTO met_language VALUES('879','cvincTip3','统一设置','1','33','0','0','cn');
INSERT INTO met_language VALUES('880','cvincTip2','邮件接收方式','1','32','0','0','cn');
INSERT INTO met_language VALUES('881','josAlways','不限','1','31','0','0','cn');
INSERT INTO met_language VALUES('882','cvAddtime','提交时间','1','28','0','0','cn');
INSERT INTO met_language VALUES('883','cvPosition','应聘职位','1','26','4','0','cn');
INSERT INTO met_language VALUES('884','jobtip3','天 （留空为不限）','1','25','15','0','cn');
INSERT INTO met_language VALUES('885','jobnow','今天是','1','23','15','0','cn');
INSERT INTO met_language VALUES('886','jobtip2','注意不要改变格式。','1','24','15','0','cn');
INSERT INTO met_language VALUES('887','jobdeal','工资待遇','1','22','15','0','cn');
INSERT INTO met_language VALUES('888','jobtip1','人 （留空为不限）','1','21','15','0','cn');
INSERT INTO met_language VALUES('889','jobpublish','发布日期','1','19','15','0','cn');
INSERT INTO met_language VALUES('890','joblife','有效时间','1','18','15','0','cn');
INSERT INTO met_language VALUES('891','jobnum','招聘人数','1','16','15','0','cn');
INSERT INTO met_language VALUES('892','jobaddress','工作地点','1','17','15','0','cn');
INSERT INTO met_language VALUES('893','jobposition','招聘职位','1','15','15','0','cn');
INSERT INTO met_language VALUES('894','setfootstat','底部代码','1','11','39','0','cn');
INSERT INTO met_language VALUES('895','setfootOther','其他信息','1','10','39','0','cn');
INSERT INTO met_language VALUES('896','setfootAddressCode','地址邮编','1','8','39','0','cn');
INSERT INTO met_language VALUES('897','setfootVersion','版权信息','1','7','39','0','cn');
INSERT INTO met_language VALUES('898','article6','参数设置','1','6','0','0','cn');
INSERT INTO met_language VALUES('899','article4','排序数值越大越靠前','1','4','0','0','cn');
INSERT INTO met_language VALUES('900','article1','可选属性','1','1','0','0','cn');
INSERT INTO met_language VALUES('901','copyotherlang6','请选择复制到的语言','1','138','5','0','cn');
INSERT INTO met_language VALUES('902','copyotherlang5','二级，三级栏目不能单独复制，请连同一级栏目一起复制，或提升为一级栏目','1','139','5','0','cn');
INSERT INTO met_language VALUES('903','copyotherlang4','栏目在复制语言中已经存在，请直接复制内容','1','138','5','0','cn');
INSERT INTO met_language VALUES('904','copyotherlang2','复制内容','1','136','5','0','cn');
INSERT INTO met_language VALUES('905','ctitleinfo','为空则使用SEO参数设置中设置的title构成方式','1','134','0','0','cn');
INSERT INTO met_language VALUES('906','copyotherlang1','复制到其他语言','1','135','5','0','cn');
INSERT INTO met_language VALUES('907','listproductre','关联产品','1','132','9','0','cn');
INSERT INTO met_language VALUES('908','listproductreok','不关联','1','133','9','0','cn');
INSERT INTO met_language VALUES('909','parameter3','文本','1','123','25','0','cn');
INSERT INTO met_language VALUES('910','parameter4','多选','1','124','25','0','cn');
INSERT INTO met_language VALUES('911','parameter5','附件','1','125','25','0','cn');
INSERT INTO met_language VALUES('912','parameter6','单选','1','126','25','0','cn');
INSERT INTO met_language VALUES('913','parameter8','电话','1','9','2','0','cn');
INSERT INTO met_language VALUES('914','parameter9','邮箱','1','9','2','0','cn');
INSERT INTO met_language VALUES('915','allcategory','所有栏目','1','127','0','0','cn');
INSERT INTO met_language VALUES('916','listTitle','设置选项','1','130','0','0','cn');
INSERT INTO met_language VALUES('917','parameter1','简短','1','121','25','0','cn');
INSERT INTO met_language VALUES('918','parameter2','下拉','1','122','25','0','cn');
INSERT INTO met_language VALUES('919','parametertype','字段类型','1','119','0','0','cn');
INSERT INTO met_language VALUES('920','columnmtitle','页面Title','1','118','0','0','cn');
INSERT INTO met_language VALUES('921','columnmappend','附加内容：','1','116','0','0','cn');
INSERT INTO met_language VALUES('922','columnmore','更多','1','117','3','0','cn');
INSERT INTO met_language VALUES('923','columnmfeedback','反馈表单设置','1','108','0','0','cn');
INSERT INTO met_language VALUES('924','columnmnotallow','不允许','1','105','0','0','cn');
INSERT INTO met_language VALUES('925','columnmeditor','编辑栏目','1','103','19','0','cn');
INSERT INTO met_language VALUES('926','columnmallow','允许','1','104','0','0','cn');
INSERT INTO met_language VALUES('927','columnmove','移动栏目','1','97','0','0','cn');
INSERT INTO met_language VALUES('928','columnmove1','移动','1','98','0','0','cn');
INSERT INTO met_language VALUES('929','columnexplain7','此功能用于老版本兼容（作用于该栏目在前台对应位置的显示）','1','95','0','0','cn');
INSERT INTO met_language VALUES('930','columnerr7','升为一级栏目','1','87','5','0','cn');
INSERT INTO met_language VALUES('931','columnerr4','目录名称已存在，可能已被使用','1','84','30','0','cn');
INSERT INTO met_language VALUES('932','columntip14','为空则使用静态页面设置中设置的URL构成方式，不要加html后缀，仅支持中文、大小写字母、数字、下划线','1','80','0','0','cn');
INSERT INTO met_language VALUES('933','columnImg2','栏目图片','1','74','0','0','cn');
INSERT INTO met_language VALUES('934','columnshow','添加内容','1','75','0','0','cn');
INSERT INTO met_language VALUES('935','columnhref','链接地址','1','71','5','0','cn');
INSERT INTO met_language VALUES('936','columntip7','链接到外部网站需要加http或https,如：https://www.metinfo.cn/','1','72','0','0','cn');
INSERT INTO met_language VALUES('937','columnImg1','标识图片','1','73','0','0','cn');
INSERT INTO met_language VALUES('938','columnSEO','搜索引擎优化设置(seo)','1','70','0','0','cn');
INSERT INTO met_language VALUES('939','columnhtmlname','静态页面名称','1','69','0','0','cn');
INSERT INTO met_language VALUES('940','columnaddOrder','顺序','1','68','0','0','cn');
INSERT INTO met_language VALUES('941','columnReverseSort','倒序','1','67','0','0','cn');
INSERT INTO met_language VALUES('942','columncontentorder','列表页排序方式','1','66','0','0','cn');
INSERT INTO met_language VALUES('943','columnnav4','都显示','1','63','0','0','cn');
INSERT INTO met_language VALUES('944','columnnewwindow','新窗口打开','1','64','0','0','cn');
INSERT INTO met_language VALUES('945','columnnav3','尾部导航栏','1','62','0','0','cn');
INSERT INTO met_language VALUES('946','columnnav2','头部主导航栏','1','61','0','0','cn');
INSERT INTO met_language VALUES('947','columntip1','请参考','1','59','0','0','cn');
INSERT INTO met_language VALUES('948','columnnav1','不显示','1','60','0','0','cn');
INSERT INTO met_language VALUES('949','columnctitle','栏目标题(title)','1','53','0','0','cn');
INSERT INTO met_language VALUES('950','columnmark','栏目风格','1','56','0','0','cn');
INSERT INTO met_language VALUES('951','columndocument','目录名称','1','51','32','0','cn');
INSERT INTO met_language VALUES('952','columnmodule','所属模块','1','50','5','0','cn');
INSERT INTO met_language VALUES('953','columnnav','导航栏显示','1','49','0','0','cn');
INSERT INTO met_language VALUES('954','columnnamemarkinfo','其它设置（根据模板配置说明设置）','1','48','0','0','cn');
INSERT INTO met_language VALUES('955','columnnamemark','栏目修饰名称','1','47','3','0','cn');
INSERT INTO met_language VALUES('956','columnname','栏目名称','1','46','0','0','cn');
INSERT INTO met_language VALUES('957','addinfo','添加内容','1','38','0','0','cn');
INSERT INTO met_language VALUES('958','downloadurl','下载地址','1','36','40','0','cn');
INSERT INTO met_language VALUES('959','modpublish','发布人','1','29','0','0','cn');
INSERT INTO met_language VALUES('960','modimgurls','缩略图','1','28','13','0','cn');
INSERT INTO met_language VALUES('961','modimgurl','图片地址','1','26','13','0','cn');
INSERT INTO met_language VALUES('962','modClass3','三级栏目','1','21','5','0','cn');
INSERT INTO met_language VALUES('963','modClass2','二级栏目','1','20','5','0','cn');
INSERT INTO met_language VALUES('964','mod101','图片列表','1','15','0','0','cn');
INSERT INTO met_language VALUES('965','mod7','留言系统','1','8','0','0','cn');
INSERT INTO met_language VALUES('966','mod8','反馈系统','1','9','0','0','cn');
INSERT INTO met_language VALUES('967','mod9','友情链接','1','10','0','0','cn');
INSERT INTO met_language VALUES('968','mod10','会员中心','1','11','0','0','cn');
INSERT INTO met_language VALUES('969','mod11','全站搜索','1','12','0','0','cn');
INSERT INTO met_language VALUES('970','mod12','网站地图','1','13','0','0','cn');
INSERT INTO met_language VALUES('971','mod100','产品列表','1','14','0','0','cn');
INSERT INTO met_language VALUES('972','unitytxt_77','更新内容时候自动更新网站地图','1','441','32','0','cn');
INSERT INTO met_language VALUES('973','mod6','招聘系统','1','7','0','0','cn');
INSERT INTO met_language VALUES('974','mod3','产品模块','1','4','0','0','cn');
INSERT INTO met_language VALUES('975','mod4','下载模块','1','5','0','0','cn');
INSERT INTO met_language VALUES('976','mod5','图片模块','1','6','0','0','cn');
INSERT INTO met_language VALUES('977','mod2','文章模块','1','3','0','0','cn');
INSERT INTO met_language VALUES('978','mod1','简介模块','1','2','0','0','cn');
INSERT INTO met_language VALUES('979','modout','外部模块','1','1','0','0','cn');
INSERT INTO met_language VALUES('980','please_choose','请选择','1','127','0','0','cn');
INSERT INTO met_language VALUES('981','onlinetel','电话或其他说明','1','116','23','0','cn');
INSERT INTO met_language VALUES('982','onlineskin','风格','1','114','23','0','cn');
INSERT INTO met_language VALUES('983','onlineimg','图标','1','115','3','0','cn');
INSERT INTO met_language VALUES('984','onlineskintype','颜色风格','1','113','23','0','cn');
INSERT INTO met_language VALUES('985','setskinOnline9','固定于页面右边','1','102','23','0','cn');
INSERT INTO met_language VALUES('986','setskinOnline5','距离浏览器侧边','1','98','23','0','cn');
INSERT INTO met_language VALUES('987','setskinOnline6','距离浏览器顶部','1','99','23','0','cn');
INSERT INTO met_language VALUES('988','setskinOnline3','居右随屏幕滚动','1','96','23','0','cn');
INSERT INTO met_language VALUES('989','setskinOnline10','前台定位','1','96','23','0','cn');
INSERT INTO met_language VALUES('990','indexflashaddflash','添加Banner','1','92','4','0','cn');
INSERT INTO met_language VALUES('991','setskinOnline','在线交流方式','1','93','23','0','cn');
INSERT INTO met_language VALUES('992','setskinOnline1','固定于页面左边','1','94','23','0','cn');
INSERT INTO met_language VALUES('993','setskinOnline2','居左随屏幕滚动','1','95','23','0','cn');
INSERT INTO met_language VALUES('994','indexflashexplain9','链接地址需加http://或https://，添加按钮并设置按钮链接后，此处必须为空','1','90','4','0','cn');
INSERT INTO met_language VALUES('995','indexflashexplain4','多张图片建议保持图片大小一致','1','86','4','0','cn');
INSERT INTO met_language VALUES('996','flashHome','网站首页','1','79','4','0','cn');
INSERT INTO met_language VALUES('997','setflashImgHref','链接地址','1','68','4','0','cn');
INSERT INTO met_language VALUES('998','setflashImgUrl','图片地址','1','67','4','0','cn');
INSERT INTO met_language VALUES('999','setflashPixel','像素','1','65','0','0','cn');
INSERT INTO met_language VALUES('1000','setflashSize','Banner尺寸','1','63','4','0','cn');
INSERT INTO met_language VALUES('1001','setflashName','图片标题','1','61','0','0','cn');
INSERT INTO met_language VALUES('1002','indexsetFriendly','友情链接','1','55','0','0','cn');
INSERT INTO met_language VALUES('1003','skinstyle','风格','1','43','36','0','cn');
INSERT INTO met_language VALUES('1004','skinusenow','启用','1','40','0','0','cn');
INSERT INTO met_language VALUES('1005','skininfo','信息','1','42','3','0','cn');
INSERT INTO met_language VALUES('1006','skinuse','立即启用','1','39','0','0','cn');
INSERT INTO met_language VALUES('1007','settopcolumns','一级栏目','1','21','0','0','cn');
INSERT INTO met_language VALUES('1008','setskinproduct2','显示当前栏目下级栏目列表','1','17','0','0','cn');
INSERT INTO met_language VALUES('1009','setskinproduct1','显示栏目下所有信息列表','1','16','0','0','cn');
INSERT INTO met_language VALUES('1010','setskindatecontent','时间显示格式','1','14','0','0','cn');
INSERT INTO met_language VALUES('1011','setskinListPage','列表页','1','2','0','0','cn');
INSERT INTO met_language VALUES('1012','setbasicTip13','默认邮箱服务方式为TLS（可咨询邮箱服务商获得）<br />如果使用TLS方式25端口无法发送邮件，请尝试使用SSL方式465端口发件','1','422','39','0','cn');
INSERT INTO met_language VALUES('1013','setbasicSMTPWay','发送方式','1','420','39','0','cn');
INSERT INTO met_language VALUES('1014','setbasicTip12','用于邮件发送端口（咨询邮箱服务商获得，TLS一般为25，SSL一般为465）','1','421','39','0','cn');
INSERT INTO met_language VALUES('1015','setbasicSMTPPort','发送端口','1','419','39','0','cn');
INSERT INTO met_language VALUES('1016','password31','验证码已发送至指定号码','1','413','10','0','cn');
INSERT INTO met_language VALUES('1017','password30','邮箱找回密码功能不可用，请确保后台邮箱服务器设置正确','1','413','10','0','cn');
INSERT INTO met_language VALUES('1018','password29','用电子邮箱找回','1','412','10','0','cn');
INSERT INTO met_language VALUES('1019','password27','用手机号码找回','1','410','10','0','cn');
INSERT INTO met_language VALUES('1020','password25','新密码：','1','408','10','0','cn');
INSERT INTO met_language VALUES('1021','password26','再输入：','1','409','10','0','cn');
INSERT INTO met_language VALUES('1022','password20','下一步','1','403','0','0','cn');
INSERT INTO met_language VALUES('1023','password21','返回登录','1','404','10','0','cn');
INSERT INTO met_language VALUES('1024','password24','用户名：','1','407','10','0','cn');
INSERT INTO met_language VALUES('1025','password16','验证成功！请设置您新的密码。','1','399','10','0','cn');
INSERT INTO met_language VALUES('1026','password14','没有找到该用户的邮箱地址，请通过其它方式找回密码','1','397','10','0','cn');
INSERT INTO met_language VALUES('1027','password13','无法使用短信找回密码功能','1','396','10','0','cn');
INSERT INTO met_language VALUES('1028','password12','经过网关时，网络通讯异常可能会造成短信丢失，或者您会延时收到短信，请您耐心等待一下或稍后再试一下。','1','395','10','0','cn');
INSERT INTO met_language VALUES('1029','password11','请输入您手机接受到的短信校验码，然后点下一步。','1','394','10','0','cn');
INSERT INTO met_language VALUES('1030','password10','序号','1','393','10','0','cn');
INSERT INTO met_language VALUES('1031','password8','没有找到对应该手机的用户，请通过其它方式找回密码','1','391','10','0','cn');
INSERT INTO met_language VALUES('1032','password9','您请求重新设置密码，验证码','1','392','10','0','cn');
INSERT INTO met_language VALUES('1033','password7','没有找到该用户','1','390','10','0','cn');
INSERT INTO met_language VALUES('1034','password6','没有找到该用户的手机号码，请通过其它方式找回密码','1','389','10','0','cn');
INSERT INTO met_language VALUES('1035','password5','请输入管理员的电子邮箱地址：','1','388','10','0','cn');
INSERT INTO met_language VALUES('1036','password4','请输入管理员的电子邮箱地址。您会收到一封包含创建新密码链接的电子邮件。','1','387','10','0','cn');
INSERT INTO met_language VALUES('1037','password3','请输入管理员手机号码：','1','386','10','0','cn');
INSERT INTO met_language VALUES('1038','password2','请输入管理员手机号码，然后点下一步，您会收到一个短信校验码。','1','385','10','0','cn');
INSERT INTO met_language VALUES('1039','password1','请选择找回密码的方式：','1','384','10','0','cn');
INSERT INTO met_language VALUES('1040','loginid','用户名不能为空','1','22','18','0','cn');
INSERT INTO met_language VALUES('1041','lang64','中文(简体)','1','383','16','0','cn');
INSERT INTO met_language VALUES('1042','lang62','越南语','1','381','16','0','cn');
INSERT INTO met_language VALUES('1043','lang63','中文(繁体)','1','382','16','0','cn');
INSERT INTO met_language VALUES('1044','lang61','英语','1','380','16','0','cn');
INSERT INTO met_language VALUES('1045','lang60','印尼语','1','379','16','0','cn');
INSERT INTO met_language VALUES('1046','lang59','乌尔都语','1','378','16','0','cn');
INSERT INTO met_language VALUES('1047','lang54','意第绪语','1','373','16','0','cn');
INSERT INTO met_language VALUES('1048','lang53','意大利语','1','372','16','0','cn');
INSERT INTO met_language VALUES('1049','lang48','希腊语','1','367','16','0','cn');
INSERT INTO met_language VALUES('1050','lang49','西班牙的巴斯克语','1','368','16','0','cn');
INSERT INTO met_language VALUES('1051','lang50','西班牙语','1','369','16','0','cn');
INSERT INTO met_language VALUES('1052','lang51','匈牙利语','1','370','16','0','cn');
INSERT INTO met_language VALUES('1053','lang47','希伯来语','1','366','16','0','cn');
INSERT INTO met_language VALUES('1054','lang46','乌克兰语','1','365','16','0','cn');
INSERT INTO met_language VALUES('1055','lang45','威尔士语','1','364','16','0','cn');
INSERT INTO met_language VALUES('1056','lang43','泰语','1','362','16','0','cn');
INSERT INTO met_language VALUES('1057','lang44','土耳其语','1','363','16','0','cn');
INSERT INTO met_language VALUES('1058','lang42','斯瓦希里语','1','361','16','0','cn');
INSERT INTO met_language VALUES('1059','lang37','日语','1','356','16','0','cn');
INSERT INTO met_language VALUES('1060','lang38','瑞典语','1','357','16','0','cn');
INSERT INTO met_language VALUES('1061','lang39','塞尔维亚语','1','358','16','0','cn');
INSERT INTO met_language VALUES('1062','lang40','斯洛伐克语','1','359','16','0','cn');
INSERT INTO met_language VALUES('1063','lang41','斯洛文尼亚语','1','360','16','0','cn');
INSERT INTO met_language VALUES('1064','lang36','葡萄牙语','1','355','16','0','cn');
INSERT INTO met_language VALUES('1065','lang35','挪威语','1','354','16','0','cn');
INSERT INTO met_language VALUES('1066','lang33','马其顿语','1','352','16','0','cn');
INSERT INTO met_language VALUES('1067','lang32','马来语','1','351','16','0','cn');
INSERT INTO met_language VALUES('1068','lang31','马耳他语','1','350','16','0','cn');
INSERT INTO met_language VALUES('1069','lang30','罗马尼亚语','1','349','16','0','cn');
INSERT INTO met_language VALUES('1070','lang29','立陶宛语','1','348','16','0','cn');
INSERT INTO met_language VALUES('1071','lang28','拉脱维亚语','1','347','16','0','cn');
INSERT INTO met_language VALUES('1072','lang27','拉丁语','1','346','16','0','cn');
INSERT INTO met_language VALUES('1073','lang26','克罗地亚语','1','345','16','0','cn');
INSERT INTO met_language VALUES('1074','lang25','捷克语','1','344','16','0','cn');
INSERT INTO met_language VALUES('1075','lang24','加泰罗尼亚语','1','343','16','0','cn');
INSERT INTO met_language VALUES('1076','lang23','加利西亚语','1','342','16','0','cn');
INSERT INTO met_language VALUES('1077','lang22','荷兰语','1','341','16','0','cn');
INSERT INTO met_language VALUES('1078','lang21','韩语','1','340','16','0','cn');
INSERT INTO met_language VALUES('1079','lang20','海地克里奥尔语','1','339','16','0','cn');
INSERT INTO met_language VALUES('1080','lang17','芬兰语','1','336','16','0','cn');
INSERT INTO met_language VALUES('1081','lang16','菲律宾语','1','335','16','0','cn');
INSERT INTO met_language VALUES('1082','lang14','俄语','1','333','16','0','cn');
INSERT INTO met_language VALUES('1083','lang11','布尔语(南非荷兰语)','1','330','16','0','cn');
INSERT INTO met_language VALUES('1084','lang15','法语','1','334','16','0','cn');
INSERT INTO met_language VALUES('1085','lang12','丹麦语','1','331','16','0','cn');
INSERT INTO met_language VALUES('1086','lang13','德语','1','332','16','0','cn');
INSERT INTO met_language VALUES('1087','lang3','阿塞拜疆语','1','322','16','0','cn');
INSERT INTO met_language VALUES('1088','lang4','爱尔兰语','1','323','16','0','cn');
INSERT INTO met_language VALUES('1089','lang5','爱沙尼亚语','1','324','16','0','cn');
INSERT INTO met_language VALUES('1090','lang6','白俄罗斯语','1','325','16','0','cn');
INSERT INTO met_language VALUES('1091','lang7','保加利亚语','1','326','16','0','cn');
INSERT INTO met_language VALUES('1092','lang8','冰岛语','1','327','16','0','cn');
INSERT INTO met_language VALUES('1093','lang9','波兰语','1','328','16','0','cn');
INSERT INTO met_language VALUES('1094','lang10','波斯语','1','329','16','0','cn');
INSERT INTO met_language VALUES('1095','lang2','阿拉伯语','1','321','16','0','cn');
INSERT INTO met_language VALUES('1096','lang1','阿尔巴尼亚语','1','320','16','0','cn');
INSERT INTO met_language VALUES('1097','langselect','选择语言','1','318','0','0','cn');
INSERT INTO met_language VALUES('1098','langselect1','请选择语言','1','319','16','0','cn');
INSERT INTO met_language VALUES('1099','langwebmanage','网站语言','1','316','16','0','cn');
INSERT INTO met_language VALUES('1100','langexplain6','复制本地语言包','1','307','16','0','cn');
INSERT INTO met_language VALUES('1101','langexplain5','在线下载','1','308','1','0','cn');
INSERT INTO met_language VALUES('1102','langexplain4','复制已经有语言的基础语言包，譬如复制英文，则新语言的前台部分文字会是英文。','1','305','16','0','cn');
INSERT INTO met_language VALUES('1103','langexplain2','语言标识','1','303','16','0','cn');
INSERT INTO met_language VALUES('1104','langexplain1','对应前台网站页面部分文字，注意不要加特殊符号，点击底部保存按钮后生效。(参数名：值)','1','302','16','0','cn');
INSERT INTO met_language VALUES('1105','langexplain_admin','对应后台网站页面部分文字，注意不要加特殊符号，点击底部保存按钮后生效。(参数名：值)','1','302','16','0','cn');
INSERT INTO met_language VALUES('1106','upfiletips35','商业授权','1','293','2','0','cn');
INSERT INTO met_language VALUES('1107','upfiletips37','新闻','1','295','14','0','cn');
INSERT INTO met_language VALUES('1108','upfiletips38','服务器信息','1','296','37','0','cn');
INSERT INTO met_language VALUES('1109','upfiletips25','回收站','1','283','19','0','cn');
INSERT INTO met_language VALUES('1110','upfiletips24','前台的反馈、留言和简历提交','1','282','30','0','cn');
INSERT INTO met_language VALUES('1111','upfiletips20','拉伸','1','278','13','0','cn');
INSERT INTO met_language VALUES('1112','upfiletips21','留白','1','279','13','0','cn');
INSERT INTO met_language VALUES('1113','upfiletips22','裁剪','1','280','13','0','cn');
INSERT INTO met_language VALUES('1114','upfiletips23','生成方式','1','281','13','0','cn');
INSERT INTO met_language VALUES('1115','upfiletips19','水印','1','277','13','0','cn');
INSERT INTO met_language VALUES('1116','upfiletips16','发送测试','1','274','39','0','cn');
INSERT INTO met_language VALUES('1117','upfiletips15','100字以内','1','273','39','0','cn');
INSERT INTO met_language VALUES('1118','upfiletips14','网站描述','1','272','39','0','cn');
INSERT INTO met_language VALUES('1119','upfiletips13','多个关键词请用英文状态下的逗号 \",\" 隔开，建议3到4个关键词。','1','271','39','0','cn');
INSERT INTO met_language VALUES('1120','upfiletips10','6.0.0以上版本无需手动设置，当前登录的网址是：','1','268','39','0','cn');
INSERT INTO met_language VALUES('1121','upfiletips6','录入','1','264','0','0','cn');
INSERT INTO met_language VALUES('1122','upfiletips7','基本信息','1','265','0','0','cn');
INSERT INTO met_language VALUES('1123','upfiletips2','文件管理器','1','260','0','0','cn');
INSERT INTO met_language VALUES('1124','upfiletips1','查看文件列表','1','259','0','0','cn');
INSERT INTO met_language VALUES('1125','dataexplain10','数据库备份','1','256','8','0','cn');
INSERT INTO met_language VALUES('1126','dataexplain7','<span style=float:right;>一般在搬家时用，占用较大空间</span>备份数据和文件（数据库、用户文件、程序文件）','1','253','8','0','cn');
INSERT INTO met_language VALUES('1127','dataexplain6','<span style=float:right;>一般不用备份，占用较大空间</span>备份上传的文件（图片、文档等）','1','252','8','0','cn');
INSERT INTO met_language VALUES('1128','dataexplain5','<span style=float:right;>建议每月备份，占用少量空间</span>备份数据（不含上传的文件）','1','251','8','0','cn');
INSERT INTO met_language VALUES('1129','dataexplain2','可以上传数据库备份文件，支持sql或zip','1','248','8','0','cn');
INSERT INTO met_language VALUES('1130','dataexplain1','目前没有数据','1','247','8','0','cn');
INSERT INTO met_language VALUES('1131','databackup8','压缩整站','1','245','8','0','cn');
INSERT INTO met_language VALUES('1132','databackup6','上传文件夹备份','1','243','8','0','cn');
INSERT INTO met_language VALUES('1133','databackup2','恢复','1','239','8','0','cn');
INSERT INTO met_language VALUES('1134','databackup3','下载','1','240','8','0','cn');
INSERT INTO met_language VALUES('1135','databackup4','备份','1','241','8','0','cn');
INSERT INTO met_language VALUES('1136','setimgTopMid','顶中','1','233','13','0','cn');
INSERT INTO met_language VALUES('1137','setimgLowMid','底中','1','235','13','0','cn');
INSERT INTO met_language VALUES('1138','setimgRightMid','右中','1','234','13','0','cn');
INSERT INTO met_language VALUES('1139','setimgLeftLow','左下','1','232','13','0','cn');
INSERT INTO met_language VALUES('1140','setimgRightLow','右下','1','231','13','0','cn');
INSERT INTO met_language VALUES('1141','setimgRightTop','右上','1','230','13','0','cn');
INSERT INTO met_language VALUES('1142','setimgLeftTop','左上','1','229','13','0','cn');
INSERT INTO met_language VALUES('1143','setimgMid','中间','1','228','13','0','cn');
INSERT INTO met_language VALUES('1144','setimgPosition','水印位置','1','227','13','0','cn');
INSERT INTO met_language VALUES('1145','setimgWordAngle','水印文字角度','1','199','0','0','cn');
INSERT INTO met_language VALUES('1146','setimgTip5','水平为0','1','200','0','0','cn');
INSERT INTO met_language VALUES('1147','setimgWordColor','水印文字颜色','1','201','0','0','cn');
INSERT INTO met_language VALUES('1148','setimgTip4','请将字体文件放到后台管理目录admin/include/fonts/下','1','198','13','0','cn');
INSERT INTO met_language VALUES('1149','setimgWordFont','水印文字字体','1','197','13','0','cn');
INSERT INTO met_language VALUES('1150','setimgWordSize2','大图水印文字大小','1','196','13','0','cn');
INSERT INTO met_language VALUES('1151','setimgWord','水印文字','1','193','13','0','cn');
INSERT INTO met_language VALUES('1152','setimgTip3','不支持中文（中文水印需要下载中文字体才能支持）','1','194','13','0','cn');
INSERT INTO met_language VALUES('1153','setimgWordSize','缩略图水印文字大小','1','195','13','0','cn');
INSERT INTO met_language VALUES('1154','setimgImgWatermark','图片水印','1','189','13','0','cn');
INSERT INTO met_language VALUES('1155','setimgImg','缩略图水印图片','1','190','13','0','cn');
INSERT INTO met_language VALUES('1156','setimgImg2','大图水印图片','1','191','13','0','cn');
INSERT INTO met_language VALUES('1157','setimgTip2','仅支持.jpg|.png格式','1','192','13','0','cn');
INSERT INTO met_language VALUES('1158','setimgWatermarkType','水印类型','1','187','13','0','cn');
INSERT INTO met_language VALUES('1159','setimgWordWatermark','文字水印','1','188','13','0','cn');
INSERT INTO met_language VALUES('1160','setimgThumb','缩略图添加水印','1','186','13','0','cn');
INSERT INTO met_language VALUES('1161','setimgWatermark','添加范围','1','184','13','0','cn');
INSERT INTO met_language VALUES('1162','setimgBigImg','详细大图添加水印','1','185','13','0','cn');
INSERT INTO met_language VALUES('1163','setimgrename2','重命名文件名称有利于减少异常','1','183','30','0','cn');
INSERT INTO met_language VALUES('1164','setimgrename','自动重命名','1','181','30','0','cn');
INSERT INTO met_language VALUES('1165','setimgrename1','对上传的文件名自动进行重命名','1','182','30','0','cn');
INSERT INTO met_language VALUES('1166','setimgWater','自动生成','1','179','0','0','cn');
INSERT INTO met_language VALUES('1167','setimgHeight','高','1','176','0','0','cn');
INSERT INTO met_language VALUES('1168','setimgPixel','像素','1','175','0','0','cn');
INSERT INTO met_language VALUES('1169','setimgWidth','宽','1','174','0','0','cn');
INSERT INTO met_language VALUES('1170','authTip2','您所输入的商业注册码与域名不匹配！','1','160','0','0','cn');
INSERT INTO met_language VALUES('1171','authKey','密钥','1','158','0','0','cn');
INSERT INTO met_language VALUES('1172','authAuthorizedCode','授权码','1','159','0','0','cn');
INSERT INTO met_language VALUES('1173','setfilesize','文件大小','1','134','0','0','cn');
INSERT INTO met_language VALUES('1174','setsafemember','前台提交验证码','1','127','30','0','cn');
INSERT INTO met_language VALUES('1175','setsafeadmin','后台登录验证码','1','126','30','0','cn');
INSERT INTO met_language VALUES('1176','setsafeupdate','删除升级文件','1','124','30','0','cn');
INSERT INTO met_language VALUES('1177','setsafeupdate1','删除后可以增强网站的安全性能','1','125','30','0','cn');
INSERT INTO met_language VALUES('1178','setsafeinstall','删除安装文件','1','123','30','0','cn');
INSERT INTO met_language VALUES('1179','setsafeadminname1c','仅创始人可修改，不支持中文，部分空间修改文件名称后需要通过FTP手动修改文件夹名称，当前后台网址：','1','122','30','0','cn');
INSERT INTO met_language VALUES('1180','setsafeadminname','后台文件夹名称','1','118','30','0','cn');
INSERT INTO met_language VALUES('1181','setsafeadminname1','安全建议:','1','119','30','0','cn');
INSERT INTO met_language VALUES('1182','setdbNotExist','文件不存在','1','114','30','0','cn');
INSERT INTO met_language VALUES('1183','setdbArchiveOK','压缩成功','1','115','8','0','cn');
INSERT INTO met_language VALUES('1184','setdbImportOK','导入成功','1','111','8','0','cn');
INSERT INTO met_language VALUES('1185','setdbBackupOK','数据库备份完毕!','1','109','8','0','cn');
INSERT INTO met_language VALUES('1186','setdbTip2','数据无法备份到服务器!请检查','1','104','8','0','cn');
INSERT INTO met_language VALUES('1187','setdbTip3','目录是否可写。','1','105','8','0','cn');
INSERT INTO met_language VALUES('1188','setdbImportData','导入','1','101','8','0','cn');
INSERT INTO met_language VALUES('1189','setdbLack','缺少分卷','1','100','8','0','cn');
INSERT INTO met_language VALUES('1190','setdbFilesize','文件大小','1','97','8','0','cn');
INSERT INTO met_language VALUES('1191','setdbTime','备份时间','1','98','8','0','cn');
INSERT INTO met_language VALUES('1192','setdbNumber','分卷数','1','99','8','0','cn');
INSERT INTO met_language VALUES('1193','setdbsysver','系统版本','1','96','8','0','cn');
INSERT INTO met_language VALUES('1194','setdbFilename','文件名','1','95','8','0','cn');
INSERT INTO met_language VALUES('1195','setdbImport','导入备份数据','1','88','8','0','cn');
INSERT INTO met_language VALUES('1196','langshuom','说明','1','86','3','0','cn');
INSERT INTO met_language VALUES('1197','langtype','语言状态','1','85','0','0','cn');
INSERT INTO met_language VALUES('1198','langnameorder','不可以与其他语言排序重复','1','80','16','0','cn');
INSERT INTO met_language VALUES('1199','langnamerepeat','语言标识不能重复','1','81','16','0','cn');
INSERT INTO met_language VALUES('1200','langone','系统只有一种语言，不能被删除！','1','82','16','0','cn');
INSERT INTO met_language VALUES('1201','langnamenull','语言名称不能为空','1','77','16','0','cn');
INSERT INTO met_language VALUES('1202','langouturlinfo','务必包含http://或https://，访问该域名程序将自动跳转到此语言（需先做好域名解析绑定），或者做外部链接用。','1','74','16','0','cn');
INSERT INTO met_language VALUES('1203','langnewwindows','新窗口打开','1','75','16','0','cn');
INSERT INTO met_language VALUES('1204','langmarkinfo','请用英文字母，如 cn ，不可以与其他语言标识重复','1','71','16','0','cn');
INSERT INTO met_language VALUES('1205','langurlinfo','网站被访问时默认展示的网站语言','1','69','16','0','cn');
INSERT INTO met_language VALUES('1206','langurlinfo1','网站后台被访问时默认展示的网站语言','1','69','16','0','cn');
INSERT INTO met_language VALUES('1207','langorderinfo','不可以重复','1','70','16','0','cn');
INSERT INTO met_language VALUES('1208','langadminyes','管理员在登录前可以选择后台语言','1','66','16','0','cn');
INSERT INTO met_language VALUES('1209','langsw','语言切换','1','68','16','0','cn');
INSERT INTO met_language VALUES('1210','langhome','默认语言','1','63','16','0','cn');
INSERT INTO met_language VALUES('1211','langchok','一般以链接形式显示在前台右上角','1','62','16','0','cn');
INSERT INTO met_language VALUES('1212','langch','简繁体自动切换','1','60','16','0','cn');
INSERT INTO met_language VALUES('1213','langwebeditor','编辑参数','1','58','16','0','cn');
INSERT INTO met_language VALUES('1214','langmark','语言标识','1','54','0','0','cn');
INSERT INTO met_language VALUES('1215','langouturl','独立域名','1','55','16','0','cn');
INSERT INTO met_language VALUES('1216','langpara','插件语言','1','57','16','0','cn');
INSERT INTO met_language VALUES('1217','langflag','国旗标志','1','53','16','0','cn');
INSERT INTO met_language VALUES('1218','langname','语言名称','1','52','16','0','cn');
INSERT INTO met_language VALUES('1219','langadd','添加新语言','1','50','16','0','cn');
INSERT INTO met_language VALUES('1220','langweb','网站语言','1','49','0','0','cn');
INSERT INTO met_language VALUES('1221','langadmin','后台语言','1','49','0','0','cn');
INSERT INTO met_language VALUES('1222','setbasicTip11','用于发送邮件的邮箱密码','1','47','39','0','cn');
INSERT INTO met_language VALUES('1223','setbasicTip10','如QQ邮箱为smtp.qq.com','1','45','39','0','cn');
INSERT INTO met_language VALUES('1224','setbasicSMTPPassword','邮箱密码','1','46','39','0','cn');
INSERT INTO met_language VALUES('1225','setbasicSMTPServer','SMTP','1','44','39','0','cn');
INSERT INTO met_language VALUES('1226','setbasicTip8','用于发送邮件的邮箱账号','1','43','39','0','cn');
INSERT INTO met_language VALUES('1227','setbasicEmailAccount','邮箱账号','1','42','39','0','cn');
INSERT INTO met_language VALUES('1228','setbasicTip7','所显示的发件人姓名','1','41','39','0','cn');
INSERT INTO met_language VALUES('1229','setbasicTip5','多个请用“|”隔开','1','33','30','0','cn');
INSERT INTO met_language VALUES('1230','setbasicTip6','发件箱设置（站内所有邮件均由此邮箱发送，如会员密码找回邮件等）','1','34','39','0','cn');
INSERT INTO met_language VALUES('1231','setbasicFromName','发件人','1','35','39','0','cn');
INSERT INTO met_language VALUES('1232','setbasicEnableFormat','允许上传的文件格式','1','32','30','0','cn');
INSERT INTO met_language VALUES('1233','setbasicUploadMax','文件上传最大值','1','31','30','0','cn');
INSERT INTO met_language VALUES('1234','setbasicWebName','网站名称','1','29','39','0','cn');
INSERT INTO met_language VALUES('1235','setbasicWebInfoSet','网站基本信息设置','1','28','0','0','cn');
INSERT INTO met_language VALUES('1236','reserved','版权所有','1','24','37','0','cn');
INSERT INTO met_language VALUES('1237','copyright','长沙米拓信息技术有限公司（MetInfo Inc.）','1','25','0','0','cn');
INSERT INTO met_language VALUES('1238','setbasicTip14','gmail邮箱需要空间支持SSL，请开启SSL，或换成其他邮箱！！！','1','429','39','0','cn');
INSERT INTO met_language VALUES('1239','setbasicTip15','空间不支持SSL方式发送邮件，请开启SSL，或换成TLS方式！！！','1','430','39','0','cn');
INSERT INTO met_language VALUES('1240','feedbackautosms','短信回复设置','1','177','0','0','cn');
INSERT INTO met_language VALUES('1241','fdincAutosms','短信回复','1','178','0','0','cn');
INSERT INTO met_language VALUES('1242','fdincAutoContentsms','回复短信内容','1','179','0','0','cn');
INSERT INTO met_language VALUES('1243','fdincTipsms','勾选后将自动向用户回复短信，需要在我的应用“短信功能”进行短信充值后才能使用','1','180','0','0','cn');
INSERT INTO met_language VALUES('1244','fdinctellsms','联系电话字段名','1','181','0','0','cn');
INSERT INTO met_language VALUES('1245','fdinctells','用于获取用户的联系电话，以便回复短信。字段类型必须为“电话”','1','182','0','0','cn');
INSERT INTO met_language VALUES('1246','hotsearches','热门搜索','1','431','16','0','cn');
INSERT INTO met_language VALUES('1247','updatenow','立即升级','1','437','0','0','cn');
INSERT INTO met_language VALUES('1248','updatelater','稍后升级','1','438','0','0','cn');
INSERT INTO met_language VALUES('1249','tag','TAG标签','1','434','0','0','cn');
INSERT INTO met_language VALUES('1250','displaytype','前台显示','1','183','0','0','cn');
INSERT INTO met_language VALUES('1251','checkupdate','检测更新','1','439','0','0','cn');
INSERT INTO met_language VALUES('1252','checkupdatetips','对不起！您的权限不够，无法操作在线升级。','1','440','0','0','cn');
INSERT INTO met_language VALUES('1253','paraname','名称','1','187','0','0','cn');
INSERT INTO met_language VALUES('1254','message_name','姓名字段名','1','240','20','0','cn');
INSERT INTO met_language VALUES('1255','message_name1','用于获取用户的姓名，字段类型必须为“简短”','1','241','20','0','cn');
INSERT INTO met_language VALUES('1256','message_content','留言内容字段名','1','242','20','0','cn');
INSERT INTO met_language VALUES('1257','message_content1','用于获取用户的留言内容，字段类型必须为“文本”','1','243','20','0','cn');
INSERT INTO met_language VALUES('1258','message_AcceptMail','留言邮件接收邮箱','1','244','20','0','cn');
INSERT INTO met_language VALUES('1259','column_searchname','请输入栏目名称','1','246','0','0','cn');
INSERT INTO met_language VALUES('1260','jsx38','您没有完全控制权限，请联系管理员开通','1','446','0','0','cn');
INSERT INTO met_language VALUES('1261','formerror1','请填写此字段。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1262','formerror2','请从这些选项中选择一个。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1263','formerror3','请输入正确的手机号码。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1264','formerror4','请输入正确的Email地址。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1265','formerror5','两次输入的密码不一致，请重新输入。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1266','formerror6','请输入至少&metinfo&个字符。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1267','formerror7','输入不能超过&metinfo&个字符。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1268','formerror8','输入的字符数必须在&metinfo&之间。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1269','style_settings','风格设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1270','All_empty_message','清空全部消息','1','0','0','0','cn');
INSERT INTO met_language VALUES('1271','manually_static_rules','部分空间需要手动设置伪静态规则文件','1','0','32','0','cn');
INSERT INTO met_language VALUES('1272','pseudo_static','查看伪静态规则','1','0','32','0','cn');
INSERT INTO met_language VALUES('1273','sys_static','伪静态化','1','0','32','0','cn');
INSERT INTO met_language VALUES('1274','anchor_textadd','添加锚文本','1','0','11','0','cn');
INSERT INTO met_language VALUES('1275','applies_paper','仅作用于前台页面中的内容文字，比如文章详情页内容文字。','1','0','32','0','cn');
INSERT INTO met_language VALUES('1276','configuration_section','配置栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1277','template_code1','请输入模板编号','1','0','3','0','cn');
INSERT INTO met_language VALUES('1278','industry_segments','行业细分','1','0','3','0','cn');
INSERT INTO met_language VALUES('1279','color_filter','颜色筛选','1','0','3','0','cn');
INSERT INTO met_language VALUES('1280','industry_screening','行业筛选','1','0','3','0','cn');
INSERT INTO met_language VALUES('1281','set_password','第三步：设置支付密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1282','login_password','位。付费购买应用时需要输入支付密码，请不要与登录密码一致。','1','0','3','0','cn');
INSERT INTO met_language VALUES('1283','services_future','可用于找回密码以及获取应用市场未来提供的更多服务','1','0','3','0','cn');
INSERT INTO met_language VALUES('1284','personal_information','第二步：设置个人信息','1','0','3','0','cn');
INSERT INTO met_language VALUES('1285','sys_password','登录密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1286','create_account','第一步：创建账户','1','0','3','0','cn');
INSERT INTO met_language VALUES('1287','buy_time','购买时间','1','0','3','0','cn');
INSERT INTO met_language VALUES('1288','please_click','支付成功，请点击！！','1','0','3','0','cn');
INSERT INTO met_language VALUES('1289','payment_method','请选择支付方式','1','0','3','0','cn');
INSERT INTO met_language VALUES('1290','sys_unionpay','银联','1','0','3','0','cn');
INSERT INTO met_language VALUES('1291','enter_amount','请输入充值金额','1','0','3','0','cn');
INSERT INTO met_language VALUES('1292','payment_amount','支付金额','1','0','3','0','cn');
INSERT INTO met_language VALUES('1293','account_Settings','用户中心','1','0','3','0','cn');
INSERT INTO met_language VALUES('1294','consumption_record','消费记录','1','0','3','0','cn');
INSERT INTO met_language VALUES('1295','website_manually','登录成功后您的网站将永久自动登录此帐号，除非手动退出。','1','0','3','0','cn');
INSERT INTO met_language VALUES('1296','application_market','登录米拓用户中心','1','0','3','0','cn');
INSERT INTO met_language VALUES('1297','installations','安装量','1','0','0','0','cn');
INSERT INTO met_language VALUES('1298','goods_comment','购买商品后才能评论','1','0','3','0','cn');
INSERT INTO met_language VALUES('1299','product_commented','同一个产品最多评论3次','1','0','3','0','cn');
INSERT INTO met_language VALUES('1300','password_mistake','支付密码错误','1','0','3','0','cn');
INSERT INTO met_language VALUES('1301','please_again','请先登录应用商店；应用商店可使用米拓官网用户账号登录，无需重复注册！','1','0','3','0','cn');
INSERT INTO met_language VALUES('1302','have_bought','已购买','1','0','3','0','cn');
INSERT INTO met_language VALUES('1303','download_application','当前系统无法下载此应用，请升级系统','1','0','3','0','cn');
INSERT INTO met_language VALUES('1304','sys_evaluation','评价成功！感谢您的评价！','1','0','3','0','cn');
INSERT INTO met_language VALUES('1305','downloads','开始下载','1','0','3','0','cn');
INSERT INTO met_language VALUES('1306','click_rating','请点击星形评分！','1','0','3','0','cn');
INSERT INTO met_language VALUES('1307','payment_password','新支付密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1308','original_password1','请输入原支付密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1309','original_password','原支付密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1310','password_length','密码长度','1','0','3','0','cn');
INSERT INTO met_language VALUES('1311','please_enter','请输入新密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1312','login_password_new','新登录密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1313','original_passwords1','请输入原密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1314','original_passwords','原登录密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1315','account_password','请填写应用市场账户登录密码，而不是网站登录密码。','1','0','3','0','cn');
INSERT INTO met_language VALUES('1316','please_password','请输入登录密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1317','login_password1','您必须填写登录密码才能修改资料','1','0','3','0','cn');
INSERT INTO met_language VALUES('1318','popular_template','热门模板','1','0','3','0','cn');
INSERT INTO met_language VALUES('1319','popular_application','热门应用','1','0','3','0','cn');
INSERT INTO met_language VALUES('1320','number_installation','安装次数','1','0','3','0','cn');
INSERT INTO met_language VALUES('1321','application_name','应用名称','1','0','3','0','cn');
INSERT INTO met_language VALUES('1322','introduction_developers','开发者简介','1','0','3','0','cn');
INSERT INTO met_language VALUES('1323','sys_head','头像','1','0','3','0','cn');
INSERT INTO met_language VALUES('1324','name_developers','开发者名称','1','0','3','0','cn');
INSERT INTO met_language VALUES('1325','dont_fill','可不填','1','0','3','0','cn');
INSERT INTO met_language VALUES('1326','mouse_click_rating','鼠标放到星形上点击评分','1','0','3','0','cn');
INSERT INTO met_language VALUES('1327','score','评分','1','0','3','0','cn');
INSERT INTO met_language VALUES('1328','want_comment','我要评论','1','0','3','0','cn');
INSERT INTO met_language VALUES('1329','back','上页','1','0','1','0','cn');
INSERT INTO met_language VALUES('1330','running_environment','运行环境','1','0','3','0','cn');
INSERT INTO met_language VALUES('1331','updated_date','更新日期','1','0','3','0','cn');
INSERT INTO met_language VALUES('1332','online_presentation','在线演示','1','0','3','0','cn');
INSERT INTO met_language VALUES('1333','screenshots','截图','1','0','3','0','cn');
INSERT INTO met_language VALUES('1334','is_introduced','介绍','1','0','3','0','cn');
INSERT INTO met_language VALUES('1335','comments','评论','1','0','3','0','cn');
INSERT INTO met_language VALUES('1336','evaluation','人评价）','1','0','3','0','cn');
INSERT INTO met_language VALUES('1337','total_of','（共','1','0','3','0','cn');
INSERT INTO met_language VALUES('1338','pay_password','支付密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1339','temporary_access1','请输入临时访问域名，必须是三级域名。','1','0','3','0','cn');
INSERT INTO met_language VALUES('1340','temporary_access','临时访问域名','1','0','3','0','cn');
INSERT INTO met_language VALUES('1341','top_domain_names','顶级域名','1','0','3','0','cn');
INSERT INTO met_language VALUES('1342','buy_template_must','购买后程序将自动获取当前网站域名并进行绑定，以后此模板只能用于绑定域名下使用。','1','0','3','0','cn');
INSERT INTO met_language VALUES('1343','amount_of','金额','1','0','3','0','cn');
INSERT INTO met_language VALUES('1344','purchase_program','购买项目','1','0','3','0','cn');
INSERT INTO met_language VALUES('1345','success_payment','支付成功后，请点击此链接跳转！！','1','0','3','0','cn');
INSERT INTO met_language VALUES('1346','latest_version','已是最新版','1','0','1','0','cn');
INSERT INTO met_language VALUES('1347','pay_success','支付成功','1','0','3','0','cn');
INSERT INTO met_language VALUES('1348','be_updated','可更新至','1','0','1','0','cn');
INSERT INTO met_language VALUES('1349','update_log','更新日志','1','0','37','0','cn');
INSERT INTO met_language VALUES('1350','current_version','当前版本','1','0','37','0','cn');
INSERT INTO met_language VALUES('1351','program_information','程序信息','1','0','37','0','cn');
INSERT INTO met_language VALUES('1352','system_maintenance','系统维护中','1','0','0','0','cn');
INSERT INTO met_language VALUES('1353','permission_download','没有权限下载','1','0','3','0','cn');
INSERT INTO met_language VALUES('1354','link_remote','链接不上远程服务器','1','0','0','0','cn');
INSERT INTO met_language VALUES('1355','try_again','重试','1','0','0','0','cn');
INSERT INTO met_language VALUES('1356','give_installation','放弃安装','1','0','0','0','cn');
INSERT INTO met_language VALUES('1357','configuratio_template','配置模板','1','0','0','0','cn');
INSERT INTO met_language VALUES('1358','seconds_background','秒好后刷新后台','1','0','0','0','cn');
INSERT INTO met_language VALUES('1359','installation_complete','安装完成','1','0','0','0','cn');
INSERT INTO met_language VALUES('1360','installation','安装中','1','0','0','0','cn');
INSERT INTO met_language VALUES('1361','possible_reasons','可能原因','1','0','0','0','cn');
INSERT INTO met_language VALUES('1362','download_interrupt','文件下载中断','1','0','0','0','cn');
INSERT INTO met_language VALUES('1363','write_permission','文件没有写权限或其新建的子文件夹没有写权限','1','0','0','0','cn');
INSERT INTO met_language VALUES('1364','download','下载中','1','0','0','0','cn');
INSERT INTO met_language VALUES('1365','following_documents','下列文件没有修改权限，无法进行升级操作！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1366','document_upgrade','系统升级文档','1','0','0','0','cn');
INSERT INTO met_language VALUES('1367','file_permissions','文件权限检测中','1','0','0','0','cn');
INSERT INTO met_language VALUES('1368','anchor_text','站内锚文本','1','0','11','0','cn');
INSERT INTO met_language VALUES('1369','please_select','请选择栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1370','log_successfully','登录成功','1','0','0','0','cn');
INSERT INTO met_language VALUES('1371','out_of_success','退出成功','1','0','3','0','cn');
INSERT INTO met_language VALUES('1372','password_changing','支付密码修改','1','0','3','0','cn');
INSERT INTO met_language VALUES('1373','login_password_changing','登录密码修改','1','0','3','0','cn');
INSERT INTO met_language VALUES('1374','account_information','账户信息设置','1','0','3','0','cn');
INSERT INTO met_language VALUES('1375','my_bill','充值记录','1','0','0','0','cn');
INSERT INTO met_language VALUES('1376','keep_sorting','保存排序','1','0','0','0','cn');
INSERT INTO met_language VALUES('1377','structure_mode','构成方式','1','0','32','0','cn');
INSERT INTO met_language VALUES('1378','title_cannot_empty!','标题不能为空！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1379','adaptive','自适应','1','0','4','0','cn');
INSERT INTO met_language VALUES('1380','upload_local_v6','本地上传','1','0','1','0','cn');
INSERT INTO met_language VALUES('1381','upload_addoutimg_v6','添加外部图片','1','0','1','0','cn');
INSERT INTO met_language VALUES('1382','upload_progress_v6','上传中','1','0','1','0','cn');
INSERT INTO met_language VALUES('1383','upload_selectimg_v6','选择图片','1','0','1','0','cn');
INSERT INTO met_language VALUES('1384','upload_pselectimg_v6','请选择图片','1','0','1','0','cn');
INSERT INTO met_language VALUES('1385','upload_libraryimg_v6','从图片库选择','1','0','1','0','cn');
INSERT INTO met_language VALUES('1386','upload_extraimglink_v6','外部图片链接','1','0','1','0','cn');
INSERT INTO met_language VALUES('1387','delete_information','您确定要删除该信息吗？删除之后无法再恢复。','1','0','1','0','cn');
INSERT INTO met_language VALUES('1388','page_for_details','详情页','1','0','36','0','cn');
INSERT INTO met_language VALUES('1389','default_values','默认值','1','0','0','0','cn');
INSERT INTO met_language VALUES('1390','label','标签','1','0','0','0','cn');
INSERT INTO met_language VALUES('1391','for','为','1','0','0','0','cn');
INSERT INTO met_language VALUES('1392','verify_password','请重复输入密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1393','Repeat_password','重复密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1394','for_details','应用详情','1','0','3','0','cn');
INSERT INTO met_language VALUES('1395','template','模板','1','0','3','0','cn');
INSERT INTO met_language VALUES('1396','application','增值服务','1','0','3','0','cn');
INSERT INTO met_language VALUES('1397','Prompt_password','请输入密码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1398','alipay','支付宝','1','0','0','0','cn');
INSERT INTO met_language VALUES('1399','account','账号','1','0','0','0','cn');
INSERT INTO met_language VALUES('1400','Prompt_email','请输入邮箱地址','1','0','3','0','cn');
INSERT INTO met_language VALUES('1401','mailbox','邮箱','1','0','0','0','cn');
INSERT INTO met_language VALUES('1402','Prompt_mobile','请输入手机号码','1','0','3','0','cn');
INSERT INTO met_language VALUES('1403','Prompt_user','请输入您的用户名','1','0','3','0','cn');
INSERT INTO met_language VALUES('1404','balance','余额','1','0','3','0','cn');
INSERT INTO met_language VALUES('1405','buy_records','购买记录','1','0','3','0','cn');
INSERT INTO met_language VALUES('1406','registration','注册','1','0','0','0','cn');
INSERT INTO met_language VALUES('1407','landing','登录','1','0','0','0','cn');
INSERT INTO met_language VALUES('1408','page_range','上一条下一条翻页范围','1','0','0','0','cn');
INSERT INTO met_language VALUES('1409','sys_navigation','导航：栏目设置中可以调整是否新窗口打开。','1','0','35','0','cn');
INSERT INTO met_language VALUES('1410','sys_navigation2','显示栏目列表时，图片需要在栏目设置中上传（栏目图片）。','1','0','35','0','cn');
INSERT INTO met_language VALUES('1411','suggested_size','建议尺寸','1','0','35','0','cn');
INSERT INTO met_language VALUES('1412','website_information','网站信息','1','0','39','0','cn');
INSERT INTO met_language VALUES('1413','email_Settings','发件邮箱配置','1','0','39','0','cn');
INSERT INTO met_language VALUES('1414','third_party_code','第三方代码','1','0','0','0','cn');
INSERT INTO met_language VALUES('1415','please_login','请先登录！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1416','next_page','下页','1','0','1','0','cn');
INSERT INTO met_language VALUES('1417','background_page','后台首页','1','0','0','0','cn');
INSERT INTO met_language VALUES('1418','modify_information','修改个人资料','1','0','0','0','cn');
INSERT INTO met_language VALUES('1419','sys_select','精  选','1','0','3','0','cn');
INSERT INTO met_language VALUES('1420','should_used','应  用','1','0','3','0','cn');
INSERT INTO met_language VALUES('1421','sys_template','模  板','1','0','3','0','cn');
INSERT INTO met_language VALUES('1422','sys_purchase','购买','1','0','3','0','cn');
INSERT INTO met_language VALUES('1423','sys_payment','支付','1','0','3','0','cn');
INSERT INTO met_language VALUES('1424','extension_school','米拓学院','1','0','0','0','cn');
INSERT INTO met_language VALUES('1425','the_bit','位','1','0','0','0','cn');
INSERT INTO met_language VALUES('1426','the_server','服务器','1','0','0','0','cn');
INSERT INTO met_language VALUES('1427','the_version','版本','1','0','0','0','cn');
INSERT INTO met_language VALUES('1428','safety_efficiency','安全与效率','1','0','36','0','cn');
INSERT INTO met_language VALUES('1429','data_processing','备份与恢复','1','0','36','0','cn');
INSERT INTO met_language VALUES('1430','appearance','网站模板','1','0','0','0','cn');
INSERT INTO met_language VALUES('1431','the_user','用户管理','1','0','8','0','cn');
INSERT INTO met_language VALUES('1432','safety','安全设置','1','0','8','0','cn');
INSERT INTO met_language VALUES('1433','attention','关注','1','0','0','0','cn');
INSERT INTO met_language VALUES('1434','author','作者','1','0','0','0','cn');
INSERT INTO met_language VALUES('1435','sys_authorization1','录入商业授权','1','0','0','0','cn');
INSERT INTO met_language VALUES('1436','sys_authorization2','了解商业授权','1','0','0','0','cn');
INSERT INTO met_language VALUES('1437','detection','检测中','1','0','0','0','cn');
INSERT INTO met_language VALUES('1438','entry_authorization','重新录入授权','1','0','0','0','cn');
INSERT INTO met_language VALUES('1439','display_number','选项卡显示数','1','0','36','0','cn');
INSERT INTO met_language VALUES('1440','corresponding_products','每个栏目可单独设置，如不单独设置，则调用上级栏目的配置','1','0','36','0','cn');
INSERT INTO met_language VALUES('1441','tab_title1','选项卡一标题','1','0','36','0','cn');
INSERT INTO met_language VALUES('1442','tab_title2','选项卡二标题','1','0','36','0','cn');
INSERT INTO met_language VALUES('1443','tab_title3','选项卡三标题','1','0','36','0','cn');
INSERT INTO met_language VALUES('1444','tab_title4','选项卡四标题','1','0','36','0','cn');
INSERT INTO met_language VALUES('1445','tab_title5','选项卡五标题','1','0','36','0','cn');
INSERT INTO met_language VALUES('1446','download_prompt','正在进行下载，请不要操作页面！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1447','purchase_application','购买的应用只能作用于当前的网站','1','0','0','0','cn');
INSERT INTO met_language VALUES('1448','text_color','文字颜色','1','0','41','0','cn');
INSERT INTO met_language VALUES('1449','the_menu','手机菜单','1','0','41','0','cn');
INSERT INTO met_language VALUES('1450','background_color','背景颜色','1','0','41','0','cn');
INSERT INTO met_language VALUES('1451','external_links','外部链接','1','0','0','0','cn');
INSERT INTO met_language VALUES('1452','appmarket_jurisdiction','您没有查看应用市场的权限，请联系管理员开通。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1453','setup_permissions','您没有设置权限，请联系管理员开通。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1454','release','添加内容','1','0','0','0','cn');
INSERT INTO met_language VALUES('1455','administration','内容管理','1','0','0','0','cn');
INSERT INTO met_language VALUES('1456','customers','在线客服','1','0','0','0','cn');
INSERT INTO met_language VALUES('1457','seo','SEO','1','0','32','0','cn');
INSERT INTO met_language VALUES('1458','member','会员','1','0','38','0','cn');
INSERT INTO met_language VALUES('1459','language','语言设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1460','htmltopseudo','静态页面伪静态化','1','0','11','0','cn');
INSERT INTO met_language VALUES('1461','htmltopseudotips','使用伪静态方式实现静态页面URL，当前静态页面URL不变。对SEO效果不会产生影响。需要空间支持伪静态，并且会删除静态页面文件。','1','0','11','0','cn');
INSERT INTO met_language VALUES('1462','timedrelease','定时发布','1','0','0','0','cn');
INSERT INTO met_language VALUES('1463','mod_rewrite_column','开启伪静态化需空间环境配置开启mod_rewrite模块，如没有开启则联系空间商解决。','1','0','32','0','cn');
INSERT INTO met_language VALUES('1464','displaytype2','前台隐藏','1','0','0','0','cn');
INSERT INTO met_language VALUES('1465','js73','静态页面名称已被使用','1','0','0','0','cn');
INSERT INTO met_language VALUES('1466','js74','仅支持中文、大小写字母、数字、下划线','1','0','0','0','cn');
INSERT INTO met_language VALUES('1467','js75','名称可用','1','0','0','0','cn');
INSERT INTO met_language VALUES('1468','js76','请先添加栏目再在此页面设置页面内容','1','0','0','0','cn');
INSERT INTO met_language VALUES('1469','unrecom','取消推荐','1','0','0','0','cn');
INSERT INTO met_language VALUES('1470','untop','取消置顶','1','0','0','0','cn');
INSERT INTO met_language VALUES('1471','modistauts','状态修改','1','0','0','0','cn');
INSERT INTO met_language VALUES('1472','goods','商品','1','0','0','0','cn');
INSERT INTO met_language VALUES('1473','js77','后台文件夹名称仅支持大小写字母、数字、下划线','1','0','0','0','cn');
INSERT INTO met_language VALUES('1474','js78','管理员名称不能重复','1','0','0','0','cn');
INSERT INTO met_language VALUES('1475','banner_pcheight_v6','电脑端高度','1','0','4','0','cn');
INSERT INTO met_language VALUES('1476','banner_setmobileImgUrl_v6','手机端图片地址','1','0','4','0','cn');
INSERT INTO met_language VALUES('1477','banner_setalert_v6','填数值，（如300，代表300px）建议自适应高度','1','0','4','0','cn');
INSERT INTO met_language VALUES('1478','banner_pidheight_v6','平板电脑端高度','1','0','4','0','cn');
INSERT INTO met_language VALUES('1479','banner_phoneheight_v6','手机端高度','1','0','4','0','cn');
INSERT INTO met_language VALUES('1480','banner_imgtitlecolor_v6','图片标题颜色','1','0','4','0','cn');
INSERT INTO met_language VALUES('1481','banner_needtempsupport_v6','一般不需要设置，部分特殊模板支持前台才显示生效','1','0','4','0','cn');
INSERT INTO met_language VALUES('1482','banner_imgdesc_v6','图片描述','1','0','4','0','cn');
INSERT INTO met_language VALUES('1483','banner_imgdesccolor_v6','图片描述颜色','1','0','4','0','cn');
INSERT INTO met_language VALUES('1484','banner_imgwordpos_v6','图片文字位置','1','0','4','0','cn');
INSERT INTO met_language VALUES('1485','posleft','左','1','0','4','0','cn');
INSERT INTO met_language VALUES('1486','posright','右','1','0','4','0','cn');
INSERT INTO met_language VALUES('1487','posup','上','1','0','4','0','cn');
INSERT INTO met_language VALUES('1488','poslower','下','1','0','4','0','cn');
INSERT INTO met_language VALUES('1489','poscenter','居中','1','0','4','0','cn');
INSERT INTO met_language VALUES('1490','batch_wm_v6','批量水印','1','0','5','0','cn');
INSERT INTO met_language VALUES('1491','batch_rmwm_v6','去除水印','1','0','5','0','cn');
INSERT INTO met_language VALUES('1492','batch_addwm_v6','添加水印','1','0','5','0','cn');
INSERT INTO met_language VALUES('1493','admin_movetocolumn_v6','移动到指定栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1494','admin_copytocolumn_v6','复制到指定栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1495','admin_colunmmanage_v6','栏目管理','1','0','0','0','cn');
INSERT INTO met_language VALUES('1496','parmanage','参数管理','1','0','0','0','cn');
INSERT INTO met_language VALUES('1497','refresh','刷新','1','0','0','0','cn');
INSERT INTO met_language VALUES('1498','desctext','描述文字','1','0','0','0','cn');
INSERT INTO met_language VALUES('1499','linkto','链接至','1','0','0','0','cn');
INSERT INTO met_language VALUES('1500','releasenow','立即发布','1','0','0','0','cn');
INSERT INTO met_language VALUES('1501','js79','访问量','1','0','0','0','cn');
INSERT INTO met_language VALUES('1502','added','新增','1','0','0','0','cn');
INSERT INTO met_language VALUES('1503','column_littleicon_v6','小图标icon','1','0','5','0','cn');
INSERT INTO met_language VALUES('1504','column_choosicon_v6','选择图标','1','0','5','0','cn');
INSERT INTO met_language VALUES('1505','column_inputcolumnfolder_v6','输入栏目文件夹名称','1','0','5','0','cn');
INSERT INTO met_language VALUES('1506','browserupdatetips','你正在使用一个 <strong>过时</strong> 的浏览器。请 <a href=https://browsehappy.com/ target=_blank>升级您的浏览器</a>，以提高您的体验。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1507','column_selecticonlib_v6','图标库选择','1','0','5','0','cn');
INSERT INTO met_language VALUES('1508','column_viewicon_v6','浏览图标','1','0','5','0','cn');
INSERT INTO met_language VALUES('1509','tips2_v6','显示在详情页底部，用于聚合内容','1','0','0','0','cn');
INSERT INTO met_language VALUES('1510','tips3_v6','多个关键词请用\"|\"隔开，如“建站|企业建站”','1','0','0','0','cn');
INSERT INTO met_language VALUES('1511','tips4_v6','请输入网址（需要包含http或https），设置后访问该条信息将直接跳转到设置的网址','1','0','0','0','cn');
INSERT INTO met_language VALUES('1512','tips5_v6','定时发布不支持静态页面，请关闭静态页面。（可以使用伪静态）','1','0','0','0','cn');
INSERT INTO met_language VALUES('1513','tips6_v6','为空则按系统规则自动构成，可以到SEO设置中修改规则。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1514','tips7_v6','当没有手动上传图片时候，会自动提取详细信息第一张图片作为封面（此功能需要模板支持）','1','0','0','0','cn');
INSERT INTO met_language VALUES('1515','coverimg','封面图片','1','0','0','0','cn');
INSERT INTO met_language VALUES('1516','articletitle','文章标题','1','0','0','0','cn');
INSERT INTO met_language VALUES('1517','htmTip3','生成首页','1','0','11','0','cn');
INSERT INTO met_language VALUES('1518','js81','您没有此操作权限请联系管理员','1','0','0','0','cn');
INSERT INTO met_language VALUES('1519','help2','友情提示','1','0','0','0','cn');
INSERT INTO met_language VALUES('1520','tips8_v6','你的网站后台管理文件夹名称存在严重风险，建议你尽快修改','1','0','0','0','cn');
INSERT INTO met_language VALUES('1521','nohint','不再提示','1','0','0','0','cn');
INSERT INTO met_language VALUES('1522','tochange','前往修改','1','0','0','0','cn');
INSERT INTO met_language VALUES('1523','homepage','首页','1','0','0','0','cn');
INSERT INTO met_language VALUES('1524','backstage','后台','1','0','0','0','cn');
INSERT INTO met_language VALUES('1525','visualization','可视化','1','0','0','0','cn');
INSERT INTO met_language VALUES('1526','opfailed','操作失败','1','0','1','0','cn');
INSERT INTO met_language VALUES('1527','opsuccess','操作成功','1','0','1','0','cn');
INSERT INTO met_language VALUES('1528','unread','未阅读','1','0','0','0','cn');
INSERT INTO met_language VALUES('1529','language_outputlang_v6','导出语言包','1','0','16','0','cn');
INSERT INTO met_language VALUES('1530','language_batchreplace_v6','批量替换语言','1','0','16','0','cn');
INSERT INTO met_language VALUES('1531','language_copysetting_v6','复制基本设置','1','0','16','0','cn');
INSERT INTO met_language VALUES('1532','notcopy','不复制','1','0','16','0','cn');
INSERT INTO met_language VALUES('1533','language_tips1_v6','基于选中的语言复制除栏目内容外的全部参数配置','1','0','16','0','cn');
INSERT INTO met_language VALUES('1534','language_tips2_v6','基于选中的语言复制栏目及内容信息（共用选中语言的图片、附件等）','1','0','16','0','cn');
INSERT INTO met_language VALUES('1535','template_style_tips','基于选中的语言复制模板设置参数','1','0','16','0','cn');
INSERT INTO met_language VALUES('1536','websitetheme','网站主题风格','1','0','16','0','cn');
INSERT INTO met_language VALUES('1537','language_backlangchange_v6','后台语言切换','1','0','16','0','cn');
INSERT INTO met_language VALUES('1538','language_updatelang_v6','更新语言包数据<br>请严格按照导出格式粘贴于此','1','0','16','0','cn');
INSERT INTO met_language VALUES('1539','message_mailtext_v6','_提交了留言','1','0','20','0','cn');
INSERT INTO met_language VALUES('1540','nopicture','暂无图片','1','0','20','0','cn');
INSERT INTO met_language VALUES('1541','message_tips1_v6','提示文字，为空时显示，输入文字后消失','1','0','20','0','cn');
INSERT INTO met_language VALUES('1542','onlone_onlinelist_v6','客服列表','1','0','23','0','cn');
INSERT INTO met_language VALUES('1543','onlone_online_v6','客服设置','1','0','23','0','cn');
INSERT INTO met_language VALUES('1544','online_csname_v6','客服名称','1','0','23','0','cn');
INSERT INTO met_language VALUES('1545','online_taobaocs_v6','淘宝旺旺','1','0','23','0','cn');
INSERT INTO met_language VALUES('1546','online_alics_v6','阿里旺旺','1','0','23','0','cn');
INSERT INTO met_language VALUES('1547','online_tips1_v6','添加的QQ需要到【shang.qq.com】登录后在【推广工具—设置】安全级别选择完全公开，否则将显示“未启用” <br>添加的QQ号码，需要到个人QQ设置-权限设置里面，开启临时会话功能，否则点击QQ，将提示添加好友才能对话','1','0','23','0','cn');
INSERT INTO met_language VALUES('1548','confirm','确定','1','0','1','0','cn');
INSERT INTO met_language VALUES('1549','frontshow','前台显示','1','0','0','0','cn');
INSERT INTO met_language VALUES('1550','fronthidden','前台隐藏','1','0','0','0','cn');
INSERT INTO met_language VALUES('1551','state','状态','1','0','0','0','cn');
INSERT INTO met_language VALUES('1552','visitcount','访问量','1','0','0','0','cn');
INSERT INTO met_language VALUES('1553','selectcolumn','请选择所属栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1554','tips11_v6','可以拖拽图片调整图片顺序。','1','0','28','0','cn');
INSERT INTO met_language VALUES('1555','tips12_v6','按下电脑键盘“ctrl”键，可以同时选择多个栏目','1','0','28','0','cn');
INSERT INTO met_language VALUES('1556','columumanage','栏目管理','1','0','0','0','cn');
INSERT INTO met_language VALUES('1557','titletips','标题（名称）','1','0','28','0','cn');
INSERT INTO met_language VALUES('1558','seotipssitemap1','过滤不显示在导航的一级栏目','1','0','32','0','cn');
INSERT INTO met_language VALUES('1559','seotips2','网站地图生成的栏目仅限一级栏目和显示在导航栏上栏目。<br / >不显示内容与栏目，都不会在网站地图中生成。','1','0','32','0','cn');
INSERT INTO met_language VALUES('1560','seotips3','相比于纯静态功能，伪静态更适合企业网站，既能满足SEO优化，又能方便的管理。','1','0','32','0','cn');
INSERT INTO met_language VALUES('1561','defaultlangtag','默认语言标识','1','0','32','0','cn');
INSERT INTO met_language VALUES('1562','seotips4','默认语言标示开启后，默认语言伪静态文件会在最后添加一个“-语言标示”，比如“-cn”','1','0','32','0','cn');
INSERT INTO met_language VALUES('1563','uisetTips3','当前页面没有可设置参数，请点击页面中相应区块的“设置”和“内容”按钮进行设置','1','0','36','0','cn');
INSERT INTO met_language VALUES('1564','addbaricon','地址栏图标','1','0','39','0','cn');
INSERT INTO met_language VALUES('1565','webset_tips1_v6','如果无法正常显示新上传图标，清空浏览器缓存后访问。','1','0','39','0','cn');
INSERT INTO met_language VALUES('1566','webset_tips2_v6','点击制作ICO','1','0','39','0','cn');
INSERT INTO met_language VALUES('1567','icontips','的.ico文件。','1','0','39','0','cn');
INSERT INTO met_language VALUES('1568','PC','电脑端','1','0','0','0','cn');
INSERT INTO met_language VALUES('1569','memberist','会员列表','1','0','38','0','cn');
INSERT INTO met_language VALUES('1570','membergroup','会员组','1','0','38','0','cn');
INSERT INTO met_language VALUES('1571','memberattribute','会员属性','1','0','38','0','cn');
INSERT INTO met_language VALUES('1572','memberfunc','会员功能设置','1','0','38','0','cn');
INSERT INTO met_language VALUES('1573','thirdlogin','社会化登录','1','0','38','0','cn');
INSERT INTO met_language VALUES('1574','mailcontentsetting','邮件内容设置','1','0','38','0','cn');
INSERT INTO met_language VALUES('1575','user_tips1_v6','可以注册','1','0','38','0','cn');
INSERT INTO met_language VALUES('1576','user_tips2_v6','含有非法字符','1','0','38','0','cn');
INSERT INTO met_language VALUES('1577','user_tips3_v6','用户名已存在','1','0','38','0','cn');
INSERT INTO met_language VALUES('1578','user_tips5_v6','可用参数，下列参数在邮件内容中会被转意为可变参数。','1','0','38','0','cn');
INSERT INTO met_language VALUES('1579','user_Registeredmail_v6','注册邮件','1','0','38','0','cn');
INSERT INTO met_language VALUES('1580','user_tips6_v6','邮件下一操作的URL地址，必填项。比如找回密码邮件，这个地址就是找回密码的链接。','1','0','38','0','cn');
INSERT INTO met_language VALUES('1581','user_tips7_v6','密码找回邮件','1','0','38','0','cn');
INSERT INTO met_language VALUES('1582','user_tips8_v6','需要到','1','0','38','0','cn');
INSERT INTO met_language VALUES('1583','user_QQinterconnect_v6','QQ互联','1','0','38','0','cn');
INSERT INTO met_language VALUES('1584','user_tips9_v6','申请 （管理中心-登录-创建应用-网站）','1','0','38','0','cn');
INSERT INTO met_language VALUES('1585','user_backurl_v6','回调地址','1','0','38','0','cn');
INSERT INTO met_language VALUES('1586','user_tips10_v6','微信开放平台','1','0','38','0','cn');
INSERT INTO met_language VALUES('1587','user_Apply_v6','申请','1','0','38','0','cn');
INSERT INTO met_language VALUES('1588','user_tips11_v6','用于PC端会员登录','1','0','38','0','cn');
INSERT INTO met_language VALUES('1589','user_Openplatform_v6','开放平台','1','0','38','0','cn');
INSERT INTO met_language VALUES('1590','user_publicplatform_v6','微信公众平台','1','0','38','0','cn');
INSERT INTO met_language VALUES('1591','user_tips13_v6','需要获取网页授权功能，并设置授权域名为您的网站域名。','1','0','38','0','cn');
INSERT INTO met_language VALUES('1592','user_tips14_v6','并且将此微信公众号添加至开放平台账号下。','1','0','38','0','cn');
INSERT INTO met_language VALUES('1593','user_tips15_v6','新浪微博','1','0','38','0','cn');
INSERT INTO met_language VALUES('1594','user_tips16_v6','微博开放平台','1','0','38','0','cn');
INSERT INTO met_language VALUES('1595','user_tips17_v6','（注意：请申请网站不要申请应用）','1','0','38','0','cn');
INSERT INTO met_language VALUES('1596','user_accsafe_v6','账号安全','1','0','38','0','cn');
INSERT INTO met_language VALUES('1597','user_PasswordReset_v6','密码重置','1','0','38','0','cn');
INSERT INTO met_language VALUES('1598','user_tips18_v6','6 - 30 位字符 留空则不修改','1','0','38','0','cn');
INSERT INTO met_language VALUES('1599','user_emailuse_v6','邮箱已被绑定','1','0','38','0','cn');
INSERT INTO met_language VALUES('1600','user_Accountstatus_v6','账号状态','1','0','38','0','cn');
INSERT INTO met_language VALUES('1601','user_must_v6','必填','1','0','38','0','cn');
INSERT INTO met_language VALUES('1602','user_tips21_v6','值越大阅读权限越高','1','0','38','0','cn');
INSERT INTO met_language VALUES('1603','user_Exportmember_v6','下载CSV文件','1','0','38','0','cn');
INSERT INTO met_language VALUES('1604','user_Registratset_v6','注册设置','1','0','38','0','cn');
INSERT INTO met_language VALUES('1605','user_Regverificat_v6','注册验证','1','0','38','0','cn');
INSERT INTO met_language VALUES('1606','user_tips23_v6','邮箱为用户名','1','0','38','0','cn');
INSERT INTO met_language VALUES('1607','user_Mailvalidat_v6','邮件验证','1','0','38','0','cn');
INSERT INTO met_language VALUES('1608','user_tips24_v6','（需设置系统发件箱（设置-基本信息-发件邮箱配置）','1','0','38','0','cn');
INSERT INTO met_language VALUES('1609','user_tips25_v6','后台审核','1','0','38','0','cn');
INSERT INTO met_language VALUES('1610','user_tips26_v6','手机号码为用户名','1','0','38','0','cn');
INSERT INTO met_language VALUES('1611','user_tips27_v6','手机短信验证','1','0','38','0','cn');
INSERT INTO met_language VALUES('1612','user_tips28_v6','需开通短信服务（我的应用-短信功能）','1','0','38','0','cn');
INSERT INTO met_language VALUES('1613','user_Notverifying_v6','不验证','1','0','38','0','cn');
INSERT INTO met_language VALUES('1614','user_Backgroundpicture_v6','背景图片','1','0','38','0','cn');
INSERT INTO met_language VALUES('1615','user_tips30_v6','登录界面中间横屏背景（建议尺寸 1920 * 800 宽 * 高 ）','1','0','38','0','cn');
INSERT INTO met_language VALUES('1616','user_tips4_v6','请输入6-30位的密码','1','0','38','0','cn');
INSERT INTO met_language VALUES('1617','weixinlogin','微信登录','1','0','38','0','cn');
INSERT INTO met_language VALUES('1618','sinalogin','微博登录','1','0','38','0','cn');
INSERT INTO met_language VALUES('1619','qqlogin','QQ登录','1','0','38','0','cn');
INSERT INTO met_language VALUES('1620','register','注册','1','0','38','0','cn');
INSERT INTO met_language VALUES('1621','lastactive','最后活跃','1','0','38','0','cn');
INSERT INTO met_language VALUES('1622','source','来源','1','0','38','0','cn');
INSERT INTO met_language VALUES('1623','bindingmail','绑定邮箱','1','0','38','0','cn');
INSERT INTO met_language VALUES('1624','bindingmobile','绑定手机','1','0','38','0','cn');
INSERT INTO met_language VALUES('1625','systips1','您没有权限访问这个内容！请登录后访问！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1626','systips2','您所在用户组没有权限访问这个内容！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1627','unrestricted','不限制','1','0','40','0','cn');
INSERT INTO met_language VALUES('1628','dowloadauthority','下载权限','1','0','40','0','cn');
INSERT INTO met_language VALUES('1629','save','保存','1','0','0','0','cn');
INSERT INTO met_language VALUES('1630','baceinfo','基本信息','1','0','0','0','cn');
INSERT INTO met_language VALUES('1631','staticpage','静态页面设置','1','162','0','0','cn');
INSERT INTO met_language VALUES('1632','pseudostatic','伪静态','1','164','0','0','cn');
INSERT INTO met_language VALUES('1633','setequivalentcolumns','当前栏目','1','22','0','0','cn');
INSERT INTO met_language VALUES('1634','veditor','可视化编辑','1','0','2','0','cn');
INSERT INTO met_language VALUES('1635','veditortips1','开启','1','0','2','0','cn');
INSERT INTO met_language VALUES('1636','funcCollection','功能大全','1','0','0','0','cn');
INSERT INTO met_language VALUES('1637','websiteSet','网站配置与管理','1','0','0','0','cn');
INSERT INTO met_language VALUES('1638','systemModule','系统模块','1','0','0','0','cn');
INSERT INTO met_language VALUES('1639','appearanceSetting','外观设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1640','basicInfoSet','基本信息配置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1641','multilingual','多语言','1','0','0','0','cn');
INSERT INTO met_language VALUES('1642','mailSetting','发件邮箱配置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1643','thirdCode','第三方代码添加','1','0','0','0','cn');
INSERT INTO met_language VALUES('1644','watermarkThumbnail','水印/缩略图','1','0','0','0','cn');
INSERT INTO met_language VALUES('1645','customerService','客服设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1646','recycleBin','回收站','1','0','0','0','cn');
INSERT INTO met_language VALUES('1647','securityTools','系统安全与工具','1','0','0','0','cn');
INSERT INTO met_language VALUES('1648','searchEngineOptimization','SEO搜索引擎优化','1','0','0','0','cn');
INSERT INTO met_language VALUES('1649','seoSetting','SEO参数设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1650','thirdPartyLogin','社会化登录设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1651','appAndPlugin','应用插件','1','0','0','0','cn');
INSERT INTO met_language VALUES('1652','metShop','官方商城','1','0','0','0','cn');
INSERT INTO met_language VALUES('1653','purchase_notice','购买须知','1','0','0','0','cn');
INSERT INTO met_language VALUES('1654','commercialAuthorizationCode','商业授权代码','1','0','0','0','cn');
INSERT INTO met_language VALUES('1655','systips13','老版本模板兼容（非响应式模板）','1','0','0','0','cn');
INSERT INTO met_language VALUES('1656','mobileSetting','手机版设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1657','mobileVersion','手机版外观','1','0','0','0','cn');
INSERT INTO met_language VALUES('1658','uisetTips4','当前页面预览','1','0','36','0','cn');
INSERT INTO met_language VALUES('1659','uisetTips5','当前页面系统参数设置','1','0','36','0','cn');
INSERT INTO met_language VALUES('1660','uisetTips6','当前页设置','1','0','36','0','cn');
INSERT INTO met_language VALUES('1661','moreSettings','更多设置','1','0','36','0','cn');
INSERT INTO met_language VALUES('1662','sysMailboxConfig','发件邮箱配置','1','0','36','0','cn');
INSERT INTO met_language VALUES('1663','navSetting','导航菜单设置','1','0','36','0','cn');
INSERT INTO met_language VALUES('1664','oldBackstage','传统后台','1','0','36','0','cn');
INSERT INTO met_language VALUES('1665','sysMessage','系统消息','1','0','36','0','cn');
INSERT INTO met_language VALUES('1666','replaceImg','替换图片','1','0','36','0','cn');
INSERT INTO met_language VALUES('1667','uisetTips8','隐藏该元素<br>（隐藏后方便修改被遮挡的元素，<br>刷新页面可再次显示）','1','0','36','0','cn');
INSERT INTO met_language VALUES('1668','putIntoRecycle','放入回收站','1','0','1','0','cn');
INSERT INTO met_language VALUES('1669','thoroughlyDeleting','彻底删除','1','0','1','0','cn');
INSERT INTO met_language VALUES('1670','cancel','取消','1','0','1','0','cn');
INSERT INTO met_language VALUES('1671','websiteContent','网站基本内容','1','0','16','0','cn');
INSERT INTO met_language VALUES('1672','jslang0','放入回收站','1','0','1','0','cn');
INSERT INTO met_language VALUES('1673','jslang1','彻底删除','1','0','1','0','cn');
INSERT INTO met_language VALUES('1674','jslang2','取消','1','0','1','0','cn');
INSERT INTO met_language VALUES('1675','seotips26','开启后能够简化前台网页URL（网址），并且以html结尾（静态页面功能关闭状态下方能生效）。','1','0','32','0','cn');
INSERT INTO met_language VALUES('1676','systips14','（开启前请确保伪静态功能已关闭）','1','0','11','0','cn');
INSERT INTO met_language VALUES('1677','systips15','MB（如网站后台设置值超过服务器限制的上传文件最大值，则以服务器限制的数值为准）','1','0','30','0','cn');
INSERT INTO met_language VALUES('1678','third_code_mobile','移动端第三方代码','1','0','39','0','cn');
INSERT INTO met_language VALUES('1679','clearCache','清空缓存','1','0','1','0','cn');
INSERT INTO met_language VALUES('1680','jsx39','（删除栏目时将删除栏目下的所有内容）','1','0','5','0','cn');
INSERT INTO met_language VALUES('1681','jslang3','没有选中的记录','1','0','1','0','cn');
INSERT INTO met_language VALUES('1682','jslang4','请选择所属栏目','1','0','1','0','cn');
INSERT INTO met_language VALUES('1683','category','所属栏目','1','40','3','0','cn');
INSERT INTO met_language VALUES('1684','jslang5','我知道了','1','0','1','0','cn');
INSERT INTO met_language VALUES('1685','jslang6','展开更多设置','1','0','1','0','cn');
INSERT INTO met_language VALUES('1686','jslang7','隐藏设置','1','0','1','0','cn');
INSERT INTO met_language VALUES('1687','newFeedback','收到了新的反馈','1','0','9','0','cn');
INSERT INTO met_language VALUES('1688','wap_descript5_v6','名称不能为空！','1','450','41','0','cn');
INSERT INTO met_language VALUES('1689','allapp_v6','全部应用','1','469','21','0','cn');
INSERT INTO met_language VALUES('1690','freeapp_v6','免费应用','1','470','21','0','cn');
INSERT INTO met_language VALUES('1691','Business_membersapp_v6','商业应用','1','471','21','0','cn');
INSERT INTO met_language VALUES('1692','payapp','收费应用','1','472','21','0','cn');
INSERT INTO met_language VALUES('1693','servicename_v6','服务名称','1','473','21','0','cn');
INSERT INTO met_language VALUES('1694','appstore_descript1_v6','技术支持 服务开通/续费','1','474','21','0','cn');
INSERT INTO met_language VALUES('1695','appstore_Servicescope_v6','服务范围','1','475','21','0','cn');
INSERT INTO met_language VALUES('1696','appstore_descript2_v6','MetInfo产品服务（安装、升级、搬家、故障排查与处理、服务器调试','1','476','21','0','cn');
INSERT INTO met_language VALUES('1697','appstore_descript3_v6','直接帮忙操作。','1','477','21','0','cn');
INSERT INTO met_language VALUES('1698','appstore_descript4_v6','服务器调试：首次搭建服务器环境以及与MetInfo故障有关的服务器环境问题处理。','1','478','21','0','cn');
INSERT INTO met_language VALUES('1699','appstore_descript5_v6','专业解答（产品使用/技巧、SEO优化、网络营销）','1','479','21','0','cn');
INSERT INTO met_language VALUES('1700','appstore_descript6_v6','帮助分析，提供解决方案和指导，不提供操作服务。','1','480','21','0','cn');
INSERT INTO met_language VALUES('1701','appstore_descript7_v6','服务范围谨遵上述内容，如未标明则说明不提供相应服务。','1','481','21','0','cn');
INSERT INTO met_language VALUES('1702','appstore_descript8_v6','以下情况无法提供服务','1','482','21','0','cn');
INSERT INTO met_language VALUES('1703','appstore_descript9_v6','自行修改或使用非原始 MetInfo 程序代码产生的问题','1','483','21','0','cn');
INSERT INTO met_language VALUES('1704','appstore_descript10_v6','非官方开发的应用插件、制作的模板造成的问题（应用商店上架的第三方应用/模板属于服务范围）','1','484','21','0','cn');
INSERT INTO met_language VALUES('1705','appstore_descript11_v6','服务器、虚拟主机原因造成的系统故障','1','485','21','0','cn');
INSERT INTO met_language VALUES('1706','appstore_descript12_v6','未购买商业授权非法去除版权信息','1','486','21','0','cn');
INSERT INTO met_language VALUES('1707','appstore_descript13_v6','不含网站内容维护、图片处理、源码修改。','1','487','21','0','cn');
INSERT INTO met_language VALUES('1708','appstore_servicemode_v6','服务方式','1','488','21','0','cn');
INSERT INTO met_language VALUES('1709','appstore_descript14_v6','提交工单：故障处理、问题咨询（每天）','1','489','21','0','cn');
INSERT INTO met_language VALUES('1710','appstore_descript15_v6','在线咨询：问题咨询（仅工作日在线，在线时间：08:30 - 17:30）','1','490','21','0','cn');
INSERT INTO met_language VALUES('1711','appstore_descript16_v6','应用商店账号登录MetInfo官网也可以获得工单、在线咨询服务（无法访问网站后台的情况下推荐使用）。','1','491','21','0','cn');
INSERT INTO met_language VALUES('1712','appstore_descript17_v6','选择服务时长','1','492','21','0','cn');
INSERT INTO met_language VALUES('1713','appstore_descript18_v6','一个月 (300元)','1','493','21','0','cn');
INSERT INTO met_language VALUES('1714','appstore_descript19_v6','三个月 (500元)','1','494','21','0','cn');
INSERT INTO met_language VALUES('1715','appstore_descript20_v6','一年 (1000元)','1','495','21','0','cn');
INSERT INTO met_language VALUES('1716','appstore_QQsalesconsulting_v6','QQ销售咨询','1','496','21','0','cn');
INSERT INTO met_language VALUES('1717','appstore_descript21_v6','可咨询QQ了解服务详情','1','497','21','0','cn');
INSERT INTO met_language VALUES('1718','appstore_descript22_v6','单次服务价格：网站搬家200元/次，网站安装100元/次，网站升级100元起，故障处理100元起','1','498','21','0','cn');
INSERT INTO met_language VALUES('1719','appstore_descript23_v6','应用商店账号的登录密码','1','499','21','0','cn');
INSERT INTO met_language VALUES('1720','appstore_descript24_v6','清楚且遵守上述服务范围与服务方式','1','500','21','0','cn');
INSERT INTO met_language VALUES('1721','appstore_descript25_v6','立即开通/续费','1','501','21','0','cn');
INSERT INTO met_language VALUES('1722','appstore_descript26_v6','模板制作/修改服务商','1','502','21','0','cn');
INSERT INTO met_language VALUES('1723','appstore_sign_v6','标志','1','503','21','0','cn');
INSERT INTO met_language VALUES('1724','appstore_name_v6','名称','1','504','21','0','cn');
INSERT INTO met_language VALUES('1725','appstore_type_v6','类型','1','505','21','0','cn');
INSERT INTO met_language VALUES('1726','appstore_place_v6','地区','1','506','21','0','cn');
INSERT INTO met_language VALUES('1727','appstore_Abilityvalue_v6','能力值','1','507','21','0','cn');
INSERT INTO met_language VALUES('1728','appstore_descript27_v6','商家如何入驻？','1','508','21','0','cn');
INSERT INTO met_language VALUES('1729','appstore_descript28_v6','商家入驻说明','1','509','21','0','cn');
INSERT INTO met_language VALUES('1730','appstore_Admissionrequirements_v6','入驻要求','1','510','21','0','cn');
INSERT INTO met_language VALUES('1731','appstore_descript29_v6','商家入驻说明获得“官方认证模板设计师”称号。','1','511','21','0','cn');
INSERT INTO met_language VALUES('1732','appstore_descript30_v6','完成官方模板制作培训并顺利结业','1','512','21','0','cn');
INSERT INTO met_language VALUES('1733','appstore_descript31_v6','点此报名培训','1','513','21','0','cn');
INSERT INTO met_language VALUES('1734','appstore_descript32_v6','上线一套收费模板至应用商店。','1','514','21','0','cn');
INSERT INTO met_language VALUES('1735','appstore_Admissionprocess_v6','入驻流程','1','515','21','0','cn');
INSERT INTO met_language VALUES('1736','appstore_descript33_v6','1、联系官方商家合作专员：','1','516','21','0','cn');
INSERT INTO met_language VALUES('1737','appstore_descript34_v6','QQ招商加盟','1','517','21','0','cn');
INSERT INTO met_language VALUES('1738','appstore_descript35_v6','QQ招商加盟2、报名参加官方模板制作培训并获得“官方认证模板设计师”称号。','1','518','21','0','cn');
INSERT INTO met_language VALUES('1739','appstore_descript36_v6','3、通过官网审核并顺利上线一套收费模板至应用商店。','1','519','21','0','cn');
INSERT INTO met_language VALUES('1740','appstore_descript37_v6','4、提供商家入驻所需资料，官方进行核实。','1','520','21','0','cn');
INSERT INTO met_language VALUES('1741','appstore_descript38_v6','5、正式入驻。','1','521','21','0','cn');
INSERT INTO met_language VALUES('1742','appstore_descript39_v6','上线一套作品至应用商店其标准和审核将会非常严格，因为我们需要确保最终用户能够得到足够专业的技术服务。','1','522','21','0','cn');
INSERT INTO met_language VALUES('1743','appstore_service_v6','服务','1','523','21','0','cn');
INSERT INTO met_language VALUES('1744','appstore_Spacedomain_name_v6','空间域名','1','524','21','0','cn');
INSERT INTO met_language VALUES('1745','appstore_Worryfree_service_v6','无忧服务','1','525','21','0','cn');
INSERT INTO met_language VALUES('1746','appstore_buildweb_v6','建站套餐','1','526','21','0','cn');
INSERT INTO met_language VALUES('1747','appstore_Thirdcooperation_v6','第三方合作','1','527','21','0','cn');
INSERT INTO met_language VALUES('1748','appstore_downshowdata_v6','下载演示数据','1','528','21','0','cn');
INSERT INTO met_language VALUES('1749','banner_column_v6','栏目','1','533','4','0','cn');
INSERT INTO met_language VALUES('1750','batch_watermarking_v6','批量水印操作','1','538','5','0','cn');
INSERT INTO met_language VALUES('1751','open_allchildcolumn_v6','展开所有子栏目','1','541','7','0','cn');
INSERT INTO met_language VALUES('1752','column_descript1_v6','目录名称只能为小写字母或者数子，且不能和其他栏目重名！','1','542','7','0','cn');
INSERT INTO met_language VALUES('1753','add_to_v6','添加至','1','543','7','0','cn');
INSERT INTO met_language VALUES('1754','seo_set_v6','SEO设置','1','544','7','0','cn');
INSERT INTO met_language VALUES('1755','content_name_v6','名称','1','553','7','0','cn');
INSERT INTO met_language VALUES('1756','html_createend_v6','生成完毕','1','559','1','0','cn');
INSERT INTO met_language VALUES('1757','html_createfail_v6','生成失败','1','560','11','0','cn');
INSERT INTO met_language VALUES('1758','online_addkefu_v6','添加客服','1','561','23','0','cn');
INSERT INTO met_language VALUES('1759','indexpic','图片水印','1','64','13','0','cn');
INSERT INTO met_language VALUES('1760','databackup7','全部备份','1','244','8','0','cn');
INSERT INTO met_language VALUES('1761','adminmobile','手机','1','16','2','0','cn');
INSERT INTO met_language VALUES('1762','pay_WeChat_v6','微信','1','628','26','0','cn');
INSERT INTO met_language VALUES('1763','notauthen','未认证','1','9','2','0','cn');
INSERT INTO met_language VALUES('1764','rnvalidate','实名认证','1','9','2','0','cn');
INSERT INTO met_language VALUES('1765','mobile_logo','手机站LOGO','1','9','2','0','cn');
INSERT INTO met_language VALUES('1766','mobile_banner_tips1','(不上传手机图片时，手机访问的banner图和电脑端保持一致，手机图片不支持全站静态。)','1','9','2','0','cn');
INSERT INTO met_language VALUES('1767','langexisted','语言已存在','1','9','2','0','cn');
INSERT INTO met_language VALUES('1768','fdincTip12','后台显示列表项','1','49','0','0','cn');
INSERT INTO met_language VALUES('1769','fdincTip13','只能选择下拉、单选、多选反馈字段，此处设置保存后，请到“反馈表单设置”中设置需要关联的产品栏目。','1','559','1','0','cn');
INSERT INTO met_language VALUES('1770','unitytxt_1','功能设置','1','0','1','0','cn');
INSERT INTO met_language VALUES('1771','enter_folder','双击文件夹图标，进入文件夹选择图片','1','0','1','0','cn');
INSERT INTO met_language VALUES('1772','fliptext2','加载中','1','0','1','0','cn');
INSERT INTO met_language VALUES('1773','memberarayname','会员组名称','1','0','11','0','cn');
INSERT INTO met_language VALUES('1774','thumbs_tips1_v6','修改保存后请到可视化界面导航点击【常用功能】-【清除缩略图】，以使本次保存生效。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1775','recahrge_tips','充值后如需退款须扣除 2% 的手续费，充值后 60 天内可以在“用户中心-财务中心-发票申请”提交发票申请。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1776','sys_lang_operate','系统语言操作','1','0','0','0','cn');
INSERT INTO met_language VALUES('1777','edit_app_lang','编辑插件语言','1','0','0','0','cn');
INSERT INTO met_language VALUES('1778','product_para_tips','链接字段类型需要前台模板支持，如模板不支持则可用附件类型进行功能替代','1','0','0','0','cn');
INSERT INTO met_language VALUES('1779','metinfoapp3','官方声明','1','0','0','0','cn');
INSERT INTO met_language VALUES('1780','metinfoapptext3','第三方商家涵盖MetInfo应用及模板开发、中小企业信息化服务领域等，但MetInfo官方均未参与其相关产品和服务的营运及分成，请广大用户自行选择辨认并承担由此产生的一切后果，如发现商家存在违法或不诚信行为，欢迎向MetInfo官方举报，我们将对其进行下架处理。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1781','metinfoappinstallinfo','应用首次安装将自动绑定域名','1','0','0','0','cn');
INSERT INTO met_language VALUES('1782','metinfoappinstallinfo4','安装提示','1','0','1','0','cn');
INSERT INTO met_language VALUES('1783','columnselect1','选择栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1784','columnnofollow','nofollow属性','1','0','0','0','cn');
INSERT INTO met_language VALUES('1785','columnnofollowinfo','勾选后网站不向链接网址传递权重','1','0','0','0','cn');
INSERT INTO met_language VALUES('1786','feedbackinquiry','在线询价','1','0','0','0','cn');
INSERT INTO met_language VALUES('1787','feedbackinquiryinfo','已有一个反馈栏目开启此功能，如要在当前栏目启用，请先在已开启反馈栏目中关闭。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1788','feedbackinquiryinfo1','开启在线询价后，产品详情页将自动显示询价按钮。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1789','webupate1','网站备份','1','0','0','0','cn');
INSERT INTO met_language VALUES('1790','webupate3','解压成功','1','0','0','0','cn');
INSERT INTO met_language VALUES('1791','webupate4','解压失败','1','0','0','0','cn');
INSERT INTO met_language VALUES('1792','webupate5','压缩包不存在','1','0','0','0','cn');
INSERT INTO met_language VALUES('1793','webupate6','文件类型','1','0','0','0','cn');
INSERT INTO met_language VALUES('1794','webupate7','解压','1','0','0','0','cn');
INSERT INTO met_language VALUES('1795','webupate9','使用备份管理员账号','1','0','0','0','cn');
INSERT INTO met_language VALUES('1796','webupate10','不覆盖管理员账号','1','0','0','0','cn');
INSERT INTO met_language VALUES('1797','seohtaccess1','是否显示根目录下文件列表','1','0','1','0','cn');
INSERT INTO met_language VALUES('1798','updatenofile','安装包不存在','1','0','0','0','cn');
INSERT INTO met_language VALUES('1799','updateupzipfileno','解压数据失败','1','0','0','0','cn');
INSERT INTO met_language VALUES('1800','updateinstallnow','安装中...','1','0','1','0','cn');
INSERT INTO met_language VALUES('1801','useinfopay','此功能需要先安装支付接口管理应用才能开启。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1802','usegroupauto1','充值满金额自动升级','1','0','0','0','cn');
INSERT INTO met_language VALUES('1803','usegroupbuy','付费购买会员组','1','0','0','0','cn');
INSERT INTO met_language VALUES('1804','usereadinfo','阅读权限值必需大于0','1','0','0','0','cn');
INSERT INTO met_language VALUES('1805','userselectname','选项卡','1','0','0','0','cn');
INSERT INTO met_language VALUES('1806','msmnoifno','短信功能未开通','1','0','0','0','cn');
INSERT INTO met_language VALUES('1807','templateseditfalse','修改失败','1','0','0','0','cn');
INSERT INTO met_language VALUES('1808','templatefilewritno','目录不可写','1','0','0','0','cn');
INSERT INTO met_language VALUES('1809','times1','秒前','1','0','0','0','cn');
INSERT INTO met_language VALUES('1810','times2','分钟前','1','0','0','0','cn');
INSERT INTO met_language VALUES('1811','times3','小时前','1','0','0','0','cn');
INSERT INTO met_language VALUES('1812','times4','天前','1','0','0','0','cn');
INSERT INTO met_language VALUES('1813','uploadfilenop','无权限上传','1','0','0','0','cn');
INSERT INTO met_language VALUES('1814','rurlerror','请求地址出错','1','0','0','0','cn');
INSERT INTO met_language VALUES('1815','paranouse','参数不合法','1','0','0','0','cn');
INSERT INTO met_language VALUES('1816','linkmetinfoerror','您的服务器链接不上Met用户中心，请联系官网客服人员对服务器进行检测！！！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1817','appusererror','后台登录账号密码错误，请在Met用户中心重新设置账号密码！！！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1818','parameter10','链接','1','0','0','0','cn');
INSERT INTO met_language VALUES('1819','parametervalueinfo','值','1','0','0','0','cn');
INSERT INTO met_language VALUES('1820','indexmobilelogoinfo','模板有手机LOGO设置时，此处设置失效，开启静态页面时设置无效，留空手机端使用默认LOGO','1','0','0','0','cn');
INSERT INTO met_language VALUES('1821','columndeffflor','你使用的栏目文件名称和系统默认模块文件夹名称冲突，请重新命名','1','0','0','0','cn');
INSERT INTO met_language VALUES('1822','idcode','身份证号码','1','0','0','0','cn');
INSERT INTO met_language VALUES('1823','recoveryisntallinfo','导入的数据库版本和系统当前版本不一致，导入后可能会存在部分参数及配置数据丢失的情况，请谨慎导入！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1824','met_template_nofile','模板文件夹不存在','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1825','met_template_fileexist','模板已经存在','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1826','met_template_noconfigfile','模板配置文件不存在','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1827','met_template_falsedelui','删除UI失败','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1828','met_template_falsedeluiconfig','删除UI配置失败','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1829','met_template_falsedelconfig','删除全局配置失败','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1830','met_template_downloadfalse','下载失败','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1831','met_template_downloadok','下载成功','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1832','met_template_temnoexist','模板不存在','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1833','met_template_demonoexist','演示数据不存在','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1834','met_template_upzipdemofalse','解压演示数据失败','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1835','met_template_upzipok','解压成功','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1836','met_template_installok','安装成功','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1837','met_template_templates','UI商业模板','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1838','met_template_othertemplates','其他模板','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1839','met_template_installdemo','安装演示数据','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1840','met_template_deletteminfo','您确定要删除该模板吗？删除之后无法再恢复。','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1841','met_template_nodelet','系统应用不允许删除','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1842','met_template_filesavef','文件保存失败','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1843','met_template_installuierr','导入UI时出错','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1844','met_template_installuiparaerr','导入UI参数时出错','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1845','met_template_updateok','升级成功','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1846','met_template_updatefalse','更新失败','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1847','met_template_updatedatafalse','数据更新失败','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1848','met_template_donotinfo','不需要操作或没有权限','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1849','met_template_langinfotext','开启多语言时，必须先切换到对应语言的可视化管理或传统后台，然后在此启用一套模板；不同的语言可以启用不同的模板。','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1850','met_template_metinfouserinfo','米拓官网用户中心账号可同步安装已购买且绑定域名为本站的商业模板，购买后60天内可以在米拓用户中心绑定域名','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1851','met_template_buytemplates','购买新模板','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1852','met_template_delettemplatesinfo','列表中删除模板并不会删除 网站根目录/templates/ 下的模板文件夹','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1853','met_template_demoinstalltitle','演示数据安装提示！！！','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1854','met_template_demoinstallsel','请选择合适你的安装方式','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1855','met_template_demoinstallt1','恢复出厂设置：系统将清空网站所有已有数据，将网站恢复至模板演示数据状态；','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1856','met_template_demoinstallt2','备份已有数据并安装：系统将先自动备份网站现有数据库及图片，然后将网站恢复至模板演示数据状态，日后可以通过恢复备份数据将网站还原至演示数据安装前的状态；','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1857','met_template_demoinstallt3','取消：如果你的网站已经添加了内容，我们建议你不要安装演示数据，安装模板后直接在可视化中设置相关区块内容即可。','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1858','met_template_saveinstall','备份已有数据并安装','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1859','met_template_installnewmetinfo','恢复出厂设置','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1860','met_template_downloadtemjs','正在下载模板...','1','0','1','50002','cn');
INSERT INTO met_language VALUES('1861','met_template_downloadtemokjs','下载模板成功','1','0','1','50002','cn');
INSERT INTO met_language VALUES('1862','met_template_downloaduijs','正在下载UI','1','0','1','50002','cn');
INSERT INTO met_language VALUES('1863','met_template_setmarktext','点击展开高级设置','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1864','met_template_setmarktexth','隐藏高级设置','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1865','setpnorder','上一条下一条调用设置','1','0','0','50002','cn');
INSERT INTO met_language VALUES('1866','disableCssJs','关闭系统css和js','1','1','0','0','cn');
INSERT INTO met_language VALUES('1867','disableCssJsTips','禁止系统加载默认的css和js（仅供开发者制作模板使用，普通用户切勿关闭）','1','1','0','0','cn');
INSERT INTO met_language VALUES('1868','301jump','301跳转','1','1','0','0','cn');
INSERT INTO met_language VALUES('1869','setseoLogoKeyword','Logo关键词','1','1','0','0','cn');
INSERT INTO met_language VALUES('1870','301jumpDescription','开启后网站域名将自动跳转带www的网站域名。例：*****.cn 跳转 www.*****.cn','1','1','0','0','cn');
INSERT INTO met_language VALUES('1871','gotohttps','http跳转https','1','1','0','0','cn');
INSERT INTO met_language VALUES('1872','gotohttps_tips','此功能需要服务器安装SSL证书并支持https协议才能开启。','1','1','0','0','cn');
INSERT INTO met_language VALUES('1873','admin_login_lang','登录后台默认语言','1','0','0','0','cn');
INSERT INTO met_language VALUES('1874','admin_del_error','禁止删除创始人','1','0','0','0','cn');
INSERT INTO met_language VALUES('1875','sethttps','开启后系统自动替换本站所有http路径并清除模板缓存','1','0','0','0','cn');
INSERT INTO met_language VALUES('1876','404page','404 页面内容','1','0','0','0','cn');
INSERT INTO met_language VALUES('1877','data_null','无内容提示文字','1','0','0','0','cn');
INSERT INTO met_language VALUES('1878','column_other_info','栏目其他信息','1','0','0','0','cn');
INSERT INTO met_language VALUES('1879','column_custom_info','自定义栏目信息','1','0','0','0','cn');
INSERT INTO met_language VALUES('1880','seting','设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1881','special_che_deny','请勿使用特殊字符','1','0','0','0','cn');
INSERT INTO met_language VALUES('1882','clearThumb','清除缩略图','1','0','0','0','cn');
INSERT INTO met_language VALUES('1883','operation_log','操作日志','1','0','0','0','cn');
INSERT INTO met_language VALUES('1884','request_address','请求地址','1','0','0','0','cn');
INSERT INTO met_language VALUES('1885','request_result','请求结果','1','0','0','0','cn');
INSERT INTO met_language VALUES('1886','admin_log','开启后台操作日志','1','0','0','0','cn');
INSERT INTO met_language VALUES('1887','associated_columns','关联栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1888','pass_empty','不输入不会更改密码','1','0','0','0','cn');
INSERT INTO met_language VALUES('1889','unzip_tips','解压会覆盖upload文件夹中相同命名的文件','1','0','0','0','cn');
INSERT INTO met_language VALUES('1890','adminFunOperate','功能模块操作权限','1','0','0','0','cn');
INSERT INTO met_language VALUES('1891','tags_title','标签页面Title','1','0','0','0','cn');
INSERT INTO met_language VALUES('1892','tags_title_tips','Tgas页面标题','1','0','0','0','cn');
INSERT INTO met_language VALUES('1893','text_size','字体大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1894','desc_size','描述字体大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1895','desc_color','描述字体大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1896','column_style_tips','该设置需要模板支持','1','0','0','0','cn');
INSERT INTO met_language VALUES('1897','content_style_tips','该设置一般只在信息列表中有效','1','0','0','0','cn');
INSERT INTO met_language VALUES('1898','modifyaccemail','绑定邮箱修改邮件','1','0','0','0','cn');
INSERT INTO met_language VALUES('1899','temSupport','此功能需要模板支持','1','0','0','0','cn');
INSERT INTO met_language VALUES('1900','update','更新','1','0','0','0','cn');
INSERT INTO met_language VALUES('1901','onlyInStyle3','仅在风格3中生效','1','0','0','0','cn');
INSERT INTO met_language VALUES('1902','thumb_tips','(宽 X 高)(像素)模块默认缩略图尺寸，可视化编辑中可独立设置每个栏目的缩略图尺寸。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1903','freeapp','免费插件','1','0','0','0','cn');
INSERT INTO met_language VALUES('1904','businessapp','商业插件','1','0','0','0','cn');
INSERT INTO met_language VALUES('1905','chargeapp','收费插件','1','0','0','0','cn');
INSERT INTO met_language VALUES('1906','userCondition','注册米拓用户中心可免费下载使用','1','0','0','0','cn');
INSERT INTO met_language VALUES('1907','installCondition','购买米拓企业建站系统商业版可在绑定域名站点下安装使用','1','0','0','0','cn');
INSERT INTO met_language VALUES('1908','buyCondition','单独购买后可在一个绑定域名站点下安装使用','1','0','0','0','cn');
INSERT INTO met_language VALUES('1909','thumb_size_list','列表页缩略图尺寸','1','0','0','0','cn');
INSERT INTO met_language VALUES('1910','thumb_size_showpage','详情页缩略图尺寸','1','0','0','0','cn');
INSERT INTO met_language VALUES('1911','thumb_seting_tips','详情页缩略图尺寸、选项卡请在对应栏目的可视化编辑“当前页设置”中设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1912','member_agreement','用户协议功能','1','0','0','0','cn');
INSERT INTO met_language VALUES('1913','top_menu','顶部菜单','1','0','0','0','cn');
INSERT INTO met_language VALUES('1914','admin_name_repeat','管理员姓名不能重复','1','0','0','0','cn');
INSERT INTO met_language VALUES('1915','ing','中','1','0','0','0','cn');
INSERT INTO met_language VALUES('1916','static_page_success','静态页面生成完成','1','0','0','0','cn');
INSERT INTO met_language VALUES('1917','successful_conversion','转换成功！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1918','full_site','全站','1','0','0','0','cn');
INSERT INTO met_language VALUES('1919','settings_tab','设置选项卡','1','0','0','0','cn');
INSERT INTO met_language VALUES('1920','custom_info','自定义信息','1','0','0','0','cn');
INSERT INTO met_language VALUES('1921','admin_content_list1','点击表格每行空白部分上下拖曳后保存即可改变排序','1','0','0','0','cn');
INSERT INTO met_language VALUES('1922','module_reply1','多个号码请用|隔开','1','0','0','0','cn');
INSERT INTO met_language VALUES('1923','module_reply2','回复短信内容需要在短信功能提供平台提交内容模板审核，审核通过后才能发送成功。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1924','online_list1','号码/链接/图片','1','0','0','0','cn');
INSERT INTO met_language VALUES('1925','choice_style','风格选择','1','0','0','0','cn');
INSERT INTO met_language VALUES('1926','reading_authority','阅读权限','1','0','0','0','cn');
INSERT INTO met_language VALUES('1927','empty_not_modified','为空则不修改','1','0','0','0','cn');
INSERT INTO met_language VALUES('1928','button','按钮','1','0','0','0','cn');
INSERT INTO met_language VALUES('1929','fliptext1','查看更多','1','0','0','0','cn');
INSERT INTO met_language VALUES('1930','being_imported','正在导入中，请不要操作。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1931','least_one_item','请选择至少一项。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1932','feedfback','反馈','1','0','0','0','cn');
INSERT INTO met_language VALUES('1933','message','留言','1','0','0','0','cn');
INSERT INTO met_language VALUES('1934','job','招聘','1','0','0','0','cn');
INSERT INTO met_language VALUES('1935','product','产品','1','0','0','0','cn');
INSERT INTO met_language VALUES('1936','saving','保存中，请等待...','1','0','0','0','cn');
INSERT INTO met_language VALUES('1937','no_data','暂无数据','1','0','0','0','cn');
INSERT INTO met_language VALUES('1938','numbering','编号','1','0','0','0','cn');
INSERT INTO met_language VALUES('1939','successful_syn','同步成功','1','0','0','0','cn');
INSERT INTO met_language VALUES('1940','failed_syn','同步失败','1','0','0','0','cn');
INSERT INTO met_language VALUES('1941','being_synced','正在同步中，请耐心等待。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1942','national_flag','国旗','1','0','0','0','cn');
INSERT INTO met_language VALUES('1943','national_flag_tips1','自定义国旗gif图片可放置在网站public/images/flag/文件夹下','1','0','0','0','cn');
INSERT INTO met_language VALUES('1944','manage_tips1','点击收起/展开栏目列表','1','0','0','0','cn');
INSERT INTO met_language VALUES('1945','set_default_section','设置默认栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1946','enter_user_name','请输入用户名','1','0','0','0','cn');
INSERT INTO met_language VALUES('1947','system_plugin_uninstall','系统插件，无法卸载','1','0','0','0','cn');
INSERT INTO met_language VALUES('1948','install_first','请先安装！','1','0','0','0','cn');
INSERT INTO met_language VALUES('1949','upgrade','升级中，请稍后...','1','0','0','0','cn');
INSERT INTO met_language VALUES('1950','file_download_failed','文件下载失败','1','0','0','0','cn');
INSERT INTO met_language VALUES('1951','column_search','栏目搜索','1','0','0','0','cn');
INSERT INTO met_language VALUES('1952','advanced_search','高级搜索','1','0','0','0','cn');
INSERT INTO met_language VALUES('1953','replacement_text','替换文字不能为空','1','0','0','0','cn');
INSERT INTO met_language VALUES('1954','default','默认','1','0','0','0','cn');
INSERT INTO met_language VALUES('1955','valid_phone_number','请输入有效电话号码','1','0','0','0','cn');
INSERT INTO met_language VALUES('1956','valid_email_address','请输入有效邮箱地址','1','0','0','0','cn');
INSERT INTO met_language VALUES('1957','button_text','按钮文字','1','0','0','0','cn');
INSERT INTO met_language VALUES('1958','open_mode','打开方式','1','0','0','0','cn');
INSERT INTO met_language VALUES('1959','button_size','按钮大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1960','button_color','按钮颜色','1','0','0','0','cn');
INSERT INTO met_language VALUES('1961','mouse_over_button_color','鼠标经过按钮颜色','1','0','0','0','cn');
INSERT INTO met_language VALUES('1962','mouse_over_text_color','鼠标经过文字颜色','1','0','0','0','cn');
INSERT INTO met_language VALUES('1963','font_size','文字大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1964','display_client','显示客户端','1','0','0','0','cn');
INSERT INTO met_language VALUES('1965','original_window','原窗口','1','0','0','0','cn');
INSERT INTO met_language VALUES('1966','new_window','新窗口','1','0','0','0','cn');
INSERT INTO met_language VALUES('1967','mobile_terminal','手机端','1','0','0','0','cn');
INSERT INTO met_language VALUES('1968','image_title_font_size','图片标题字体大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1969','image_description_font_size','图片描述字体大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1970','mobile_terminal_settings','手机端设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1971','mobile_phone_picture_title','手机端图片标题','1','0','0','0','cn');
INSERT INTO met_language VALUES('1972','banner_edit1','如不填写设置，则保持和电脑端一致','1','0','0','0','cn');
INSERT INTO met_language VALUES('1973','banner_edit2','手机端图片标题颜色：','1','0','0','0','cn');
INSERT INTO met_language VALUES('1974','banner_edit3','手机端图片标题字体大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1975','banner_edit5','手机端图片描述','1','0','0','0','cn');
INSERT INTO met_language VALUES('1976','banner_edit6','手机端图片描述颜色','1','0','0','0','cn');
INSERT INTO met_language VALUES('1977','banner_edit7','手机端图片描述字体大小','1','0','0','0','cn');
INSERT INTO met_language VALUES('1978','banner_edit8','手机端图片文字位置','1','0','0','0','cn');
INSERT INTO met_language VALUES('1979','feedbackTip5','导出当前选中信息','1','0','0','0','cn');
INSERT INTO met_language VALUES('1980','setimgLeftMid','左中','1','0','0','0','cn');
INSERT INTO met_language VALUES('1981','function_ency1','此处仅列出传统后台功能，更多设置功能，请在可视化编辑后台按栏目和页面编辑。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1982','environmental_test','环境检测','1','0','0','0','cn');
INSERT INTO met_language VALUES('1983','function_ency2','请在“栏目管理”中添加对应模块栏目后再在相应功能菜单中进行管理。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1984','sms_function','短信功能','1','0','0','0','cn');
INSERT INTO met_language VALUES('1985','website_overview','网站概况','1','0','0','0','cn');
INSERT INTO met_language VALUES('1986','system_cache','系统缓存','1','0','0','0','cn');
INSERT INTO met_language VALUES('1987','help_manual','帮助手册','1','0','0','0','cn');
INSERT INTO met_language VALUES('1988','online_quiz','在线问答','1','0','0','0','cn');
INSERT INTO met_language VALUES('1989','online_work_order','在线工单','1','0','0','0','cn');
INSERT INTO met_language VALUES('1990','admin_job1','需要到招聘职位管理的职位中添加简历接收邮箱','1','0','0','0','cn');
INSERT INTO met_language VALUES('1991','admin_manage1','点击左侧栏目列表管理内容','1','0','0','0','cn');
INSERT INTO met_language VALUES('1992','admin_menu1','此功能需要模板支持，部分模板底部自带了手机菜单，请在可视化界面设置。','1','0','0','0','cn');
INSERT INTO met_language VALUES('1993','search_range','搜索范围','1','0','0','0','cn');
INSERT INTO met_language VALUES('1994','admin_search1','指定一级栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1995','admin_search2','是否开启搜索方式','1','0','0','0','cn');
INSERT INTO met_language VALUES('1996','admin_search3','是否联动','1','0','0','0','cn');
INSERT INTO met_language VALUES('1997','admin_search4','搜索框默认内容','1','0','0','0','cn');
INSERT INTO met_language VALUES('1998','admin_search5','当前所属一级栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('1999','admin_search6','搜索方式','1','0','0','0','cn');
INSERT INTO met_language VALUES('2000','admin_search7','标题和内容','1','0','0','0','cn');
INSERT INTO met_language VALUES('2001','by_module','按模块','1','0','0','0','cn');
INSERT INTO met_language VALUES('2002','by_column','按栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('2003','admin_seo1','index-语言标识.html(如：index-cn.html)','1','0','0','0','cn');
INSERT INTO met_language VALUES('2004','admin_seo2','目录名称/list-静态页面名称或ID-语言标识.html(如：product/list-1-cn.html)','1','0','0','0','cn');
INSERT INTO met_language VALUES('2005','admin_seo3','目录名称/静态页面名称或ID-语言标识.html(如：product/100-cn.html)','1','0','0','0','cn');
INSERT INTO met_language VALUES('2006','admin_tag_setting1','TAG标签设置','1','0','0','0','cn');
INSERT INTO met_language VALUES('2007','admin_tag_setting2','TAG标签生成规则','1','0','0','0','cn');
INSERT INTO met_language VALUES('2008','admin_tag_setting3','按一级栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('2009','admin_tag_setting4','TAG标签聚合规则','1','0','0','0','cn');
INSERT INTO met_language VALUES('2010','admin_tag_setting5','设置了相同TAG标签的内容','1','0','0','0','cn');
INSERT INTO met_language VALUES('2011','admin_tag_setting6','内容详情页聚合条数','1','0','0','0','cn');
INSERT INTO met_language VALUES('2012','add_tag','添加标签','1','0','0','0','cn');
INSERT INTO met_language VALUES('2013','admin_tag_setting8','请先在栏目管理”中添加设置\"TAG标签”模块的栏目，前台访问地址为','1','0','0','0','cn');
INSERT INTO met_language VALUES('2014','tag_name','标签名称','1','0','0','0','cn');
INSERT INTO met_language VALUES('2015','add_manully','手动添加','1','0','0','0','cn');
INSERT INTO met_language VALUES('2016','aggregation_range','聚合范围','1','0','0','0','cn');
INSERT INTO met_language VALUES('2017','admin_tag_setting7','不填写则使用系统默认值','1','0','0','0','cn');
INSERT INTO met_language VALUES('2018','admin_tag_setting9','标签名称格式不正确','1','0','0','0','cn');
INSERT INTO met_language VALUES('2019','admin_tag_setting10','静态页面名称格式不正确','1','0','0','0','cn');
INSERT INTO met_language VALUES('2020','system_check1','检查你的服务器是否支持系统所有功能。','1','0','0','0','cn');
INSERT INTO met_language VALUES('2021','system_check2','环境/函数检测结果','1','0','0','0','cn');
INSERT INTO met_language VALUES('2022','system_check3','文件和目录权限','1','0','0','0','cn');
INSERT INTO met_language VALUES('2023','system_check4','要能正常使用系统的缓存、伪静态、上传文件功能，需要将以下文件/目录设置为 \"可写\"。下面是需要设置为\"可写\" 的目录清单，以及建议的 CHMOD 设置。','1','0','0','0','cn');
INSERT INTO met_language VALUES('2024','system_check5','某些主机不允许你设置 CHMOD 777，要用666。先试最高的值，不行的话，再逐步降低该值。','1','0','0','0','cn');
INSERT INTO met_language VALUES('2025','visualization1','长按需要修改的地方即可触发修改功能','1','0','0','0','cn');
INSERT INTO met_language VALUES('2026','stand_by','支持','1','0','0','0','cn');
INSERT INTO met_language VALUES('2027','close_this_time','本次关闭','1','0','0','0','cn');
INSERT INTO met_language VALUES('2028','rename_admin_dir','当前系统环境不支持修改后台文件夹名称，请手动进行修改。','1','0','0','0','cn');
INSERT INTO met_language VALUES('2029','notemptips','当前语言没有设置网站模板，请到“风格-网站模板”中选择1套模板','1','0','0','0','cn');
INSERT INTO met_language VALUES('2030','short_message','短信','1','0','0','0','cn');
INSERT INTO met_language VALUES('2031','common_qq','普通QQ','1','0','0','0','cn');
INSERT INTO met_language VALUES('2032','enterprise_qq','企业QQ','1','0','0','0','cn');
INSERT INTO met_language VALUES('2033','back_folder_list','返回文件夹列表','1','0','0','0','cn');
INSERT INTO met_language VALUES('2034','back_icon_iibrary_list','返回图标库列表','1','0','0','0','cn');
INSERT INTO met_language VALUES('2035','choose_icon_tips','点击选中图标并保存','1','0','0','0','cn');
INSERT INTO met_language VALUES('2036','jump_to_no','跳转到第','1','0','0','0','cn');
INSERT INTO met_language VALUES('2037','page','页','1','0','0','0','cn');
INSERT INTO met_language VALUES('2038','goto','跳转','1','0','0','0','cn');
INSERT INTO met_language VALUES('2039','save_image_to_website','保存图片到本地','1','0','0','0','cn');
INSERT INTO met_language VALUES('2040','save_allimages_to_website','保存全部图片到本地','1','0','0','0','cn');
INSERT INTO met_language VALUES('2041','block_style','区块风格','1','0','0','0','cn');
INSERT INTO met_language VALUES('2042','change','切换','1','0','0','0','cn');
INSERT INTO met_language VALUES('2043','change_blockstyle_tips','选择好风格后请点击【切换】按钮','1','0','0','0','cn');
INSERT INTO met_language VALUES('2044','installing','安装中，请不要操作。','1','0','0','0','cn');
INSERT INTO met_language VALUES('2045','databacking','备份中，请不要操作。','1','0','0','0','cn');
INSERT INTO met_language VALUES('2046','already_update_package','存在手动升级包','1','0','0','0','cn');
INSERT INTO met_language VALUES('2047','edit_authority','前台编辑权限','1','0','0','0','cn');
INSERT INTO met_language VALUES('2048','editable','可编辑','1','0','0','0','cn');
INSERT INTO met_language VALUES('2049','non_editable','不可编辑','1','0','0','0','cn');
INSERT INTO met_language VALUES('2050','cv_export','导出简历','1','0','0','0','cn');
INSERT INTO met_language VALUES('2051','access_type','阅读权限展示方式','1','0','0','0','cn');
INSERT INTO met_language VALUES('2052','access_type1','前台显示无权限信息，点击阅读后判断权限','1','0','0','0','cn');
INSERT INTO met_language VALUES('2053','access_type2','前台不显示无权限信息','1','0','0','0','cn');
INSERT INTO met_language VALUES('2054','database_switch','数据库切换','1','0','0','0','cn');
INSERT INTO met_language VALUES('2055','database_switch_tips','网站使用过程中请不要频繁切换数据库类型，部分应用不支持sqlite数据库，建议使用更为稳定高效的mysql数据库','1','0','0','0','cn');
INSERT INTO met_language VALUES('2056','database_switch_tips1','请配置MySQL数据库参数，数据库信息可联系你的服务器提供商获取','1','0','0','0','cn');
INSERT INTO met_language VALUES('2057','database_switch_tips2','例如：met_ 请不要留空，且使用“_”结尾','1','0','0','0','cn');
INSERT INTO met_language VALUES('2058','database_switch_tips3','一般不需要更改，参考主机或服务器MYSQL控制面板','1','0','0','0','cn');
INSERT INTO met_language VALUES('2059','database_switch_tips4','例如\"met\"或\"my_met\",请确保用字母开头','1','0','0','0','cn');
INSERT INTO met_language VALUES('2060','database_type','数据库类型','1','0','0','0','cn');
INSERT INTO met_language VALUES('2061','table_prefix','数据表前缀','1','0','0','0','cn');
INSERT INTO met_language VALUES('2062','database_address','数据库连接地址','1','0','0','0','cn');
INSERT INTO met_language VALUES('2063','database_name','数据库名','1','0','0','0','cn');
INSERT INTO met_language VALUES('2064','database_user','数据库用户名','1','0','0','0','cn');
INSERT INTO met_language VALUES('2065','database_password','数据库密码','1','0','0','0','cn');
INSERT INTO met_language VALUES('2066','read_protocol','请仔细阅读以下协议','1','0','0','0','cn');
INSERT INTO met_language VALUES('2067','disagree','不同意','1','0','0','0','cn');
INSERT INTO met_language VALUES('2068','agree','同意','1','0','0','0','cn');
INSERT INTO met_language VALUES('2069','copyright_nofollow','前台版权链接nofollow属性','1','0','0','0','cn');
INSERT INTO met_language VALUES('2070','copyright_nofollow_description','开启后前台底部版权链接会添加nofollow属性','1','0','0','0','cn');
INSERT INTO met_language VALUES('2071','close_allchildcolumn_v6','隐藏所有子栏目','1','0','0','0','cn');
INSERT INTO met_language VALUES('2072','emailhave','邮箱已被注册','1','0','0','0','cn');
INSERT INTO met_language VALUES('2073','telhave','手机号已被注册','1','0','0','0','cn');
INSERT INTO met_language VALUES('2074','noupdate','没有可用更新','1','0','0','0','cn');
INSERT INTO met_language VALUES('2075','databackup7','Full backup','1','244','8','0','en');
INSERT INTO met_language VALUES('2076','indexpic','Image watermark','1','64','13','0','en');
INSERT INTO met_language VALUES('2077','adminmobile','Phone','1','16','2','0','en');
INSERT INTO met_language VALUES('2078','cooperation_platform','Enterprise Supermarket','1','436','0','0','en');
INSERT INTO met_language VALUES('2079','feedback_interaction','Feedback Interaction','1','437','0','0','en');
INSERT INTO met_language VALUES('2080','banner_manage','Banner Manage','1','438','0','0','en');
INSERT INTO met_language VALUES('2081','unitytxt_71','QR code','1','435','0','0','en');
INSERT INTO met_language VALUES('2082','unitytxt_69','Installation file deletion','1','433','8','0','en');
INSERT INTO met_language VALUES('2083','unitytxt_70','upload files','1','434','8','0','en');
INSERT INTO met_language VALUES('2084','unitytxt_39','Set','1','403','1','0','en');
INSERT INTO met_language VALUES('2085','unitytxt_42','List page shows the number of each page','1','406','0','0','en');
INSERT INTO met_language VALUES('2086','unitytxt_38','The code will be placed above the & lt; / body & gt; tag','1','402','39','0','en');
INSERT INTO met_language VALUES('2087','unitytxt_37','The code will be placed above the & lt; / head & gt; tag','1','401','39','0','en');
INSERT INTO met_language VALUES('2088','unitytxt_33','Permission settings','1','397','39','0','en');
INSERT INTO met_language VALUES('2089','unitytxt_34','Data file upload','1','398','40','0','en');
INSERT INTO met_language VALUES('2090','unitytxt_36','PC-side third-party code (generally used to place Baidu Bridge code, webmaster code, Google translation code, etc.)','1','400','39','0','en');
INSERT INTO met_language VALUES('2091','unitytxt_25','Keyword setting','1','389','32','0','en');
INSERT INTO met_language VALUES('2092','unitytxt_26','Optimize text settings (can be used to increase keyword density)','1','390','32','0','en');
INSERT INTO met_language VALUES('2093','unitytxt_15','Other settings','1','379','0','0','en');
INSERT INTO met_language VALUES('2094','unitytxt_13','Bottom information settings (displayed at the bottom of the site front desk)','1','377','39','0','en');
INSERT INTO met_language VALUES('2095','unitytxt_14','Style set','1','378','23','0','en');
INSERT INTO met_language VALUES('2096','unitytxt_10','Only applicable to the Chinese front language (language logo cn or zh effective); visitors can switch between simplified and traditional.','1','374','16','0','en');
INSERT INTO met_language VALUES('2097','unitytxt_9','Synchronize the official parameters','1','373','16','0','en');
INSERT INTO met_language VALUES('2098','unitytxt_8','The language is set up an independent domain name, you need to modify the website URL in the <font class = \'red\'> language settings </ font> to modify.','1','372','39','0','en');
INSERT INTO met_language VALUES('2099','unitytxt_7','After the backup package is downloaded, it is recommended to delete the backup file in time to avoid affecting the size of the space (you can save the traffic through FTP if your web host limited the traffic)','1','371','0','0','en');
INSERT INTO met_language VALUES('2100','unitytxt_6','Inconsistent version','1','370','0','0','en');
INSERT INTO met_language VALUES('2101','unitytxt_2','Check to use the default settings','1','366','0','0','en');
INSERT INTO met_language VALUES('2102','ssl','SSL service method','1','362','39','0','en');
INSERT INTO met_language VALUES('2103','tls','TLS service','1','363','39','0','en');
INSERT INTO met_language VALUES('2104','loginFail','operation failed!','1','359','8','0','en');
INSERT INTO met_language VALUES('2105','NoidJS','Without this user','1','349','38','0','en');
INSERT INTO met_language VALUES('2106','jsx32','Login timeout, please log in again!','1','344','0','0','en');
INSERT INTO met_language VALUES('2107','jsx27','Static page name already exists','1','339','0','0','en');
INSERT INTO met_language VALUES('2108','jsx20','Detecting ...','1','332','0','0','en');
INSERT INTO met_language VALUES('2109','jsx17','Upload success!','1','329','0','0','en');
INSERT INTO met_language VALUES('2110','jsx15','Upload','1','327','1','0','en');
INSERT INTO met_language VALUES('2111','jsx10','error','1','322','0','0','en');
INSERT INTO met_language VALUES('2112','jsx2','Please choose at least one language!','1','314','0','0','en');
INSERT INTO met_language VALUES('2113','jsx3','Please select the form you want to copy first','1','315','0','0','en');
INSERT INTO met_language VALUES('2114','jsx1','loading...','1','313','0','0','en');
INSERT INTO met_language VALUES('2115','js67','Please select at least one of the columns','1','309','0','0','en');
INSERT INTO met_language VALUES('2116','js55','return','1','297','1','0','en');
INSERT INTO met_language VALUES('2117','js56','To move a column must set a new directory name (directory name can only be numbers or letters)','1','298','0','0','en');
INSERT INTO met_language VALUES('2118','js46','Can not repeat','1','288','0','0','en');
INSERT INTO met_language VALUES('2119','js49','Undo','1','291','0','0','en');
INSERT INTO met_language VALUES('2120','js41','Can not be empty!','1','283','0','0','en');
INSERT INTO met_language VALUES('2121','js36','Please select a language','1','278','0','0','en');
INSERT INTO met_language VALUES('2122','js35','Uploading a temporary folder (upload_tmp_dir) is not writable or the domain / background folder / include / upload.php does not have access.','1','277','0','0','en');
INSERT INTO met_language VALUES('2123','js25','Image address can not be empty!','1','267','0','0','en');
INSERT INTO met_language VALUES('2124','js23','No records selected!','1','265','0','0','en');
INSERT INTO met_language VALUES('2125','js18','The original text can not be empty','1','260','0','0','en');
INSERT INTO met_language VALUES('2126','js15','Please choose to upload the file','1','257','0','0','en');
INSERT INTO met_language VALUES('2127','js16','Download address can not be empty','1','258','0','0','en');
INSERT INTO met_language VALUES('2128','js14','Please select two and three columns','1','256','0','0','en');
INSERT INTO met_language VALUES('2129','js10','Your changes have not been saved, are you sure you want to leave?','1','252','0','0','en');
INSERT INTO met_language VALUES('2130','js6','The password entered twice is not the same','1','248','0','0','en');
INSERT INTO met_language VALUES('2131','js7','Are you sure you want to delete the selected message? Once deleted will not be able to recover!','1','249','1','0','en');
INSERT INTO met_language VALUES('2132','js5','email can not be empty','1','247','0','0','en');
INSERT INTO met_language VALUES('2133','js4','Login password can not be blank','1','246','0','0','en');
INSERT INTO met_language VALUES('2134','js2','The data is wrong','1','244','0','0','en');
INSERT INTO met_language VALUES('2135','js1','Please wait, the system test ....','1','243','0','0','en');
INSERT INTO met_language VALUES('2136','dataerror','data error','1','242','0','0','en');
INSERT INTO met_language VALUES('2137','jsok','Successful operation','1','241','1','0','en');
INSERT INTO met_language VALUES('2138','marks',':','1','238','0','0','en');
INSERT INTO met_language VALUES('2139','displayimg','Show pictures','1','235','0','0','en');
INSERT INTO met_language VALUES('2140','Operating','operating system','1','233','37','0','en');
INSERT INTO met_language VALUES('2141','noorderinfo','The smaller the value the more forward','1','234','0','0','en');
INSERT INTO met_language VALUES('2142','contentdetail','details','1','227','0','0','en');
INSERT INTO met_language VALUES('2143','content','content','1','226','1','0','en');
INSERT INTO met_language VALUES('2144','webaccess','access permission','1','225','0','0','en');
INSERT INTO met_language VALUES('2145','keywordsinfo','Please use multiple keywords, \",\" separated','1','223','0','0','en');
INSERT INTO met_language VALUES('2146','keywords','Key words','1','222','0','0','en');
INSERT INTO met_language VALUES('2147','hits','The number of clicks','1','221','0','0','en');
INSERT INTO met_language VALUES('2148','addtime','release time','1','220','0','0','en');
INSERT INTO met_language VALUES('2149','updatetime','Update time','1','219','0','0','en');
INSERT INTO met_language VALUES('2150','access3','administrator','1','218','0','0','en');
INSERT INTO met_language VALUES('2151','access2','Agents','1','217','0','0','en');
INSERT INTO met_language VALUES('2152','access1','Ordinary member','1','216','0','0','en');
INSERT INTO met_language VALUES('2153','access0','Not limited to','1','215','0','0','en');
INSERT INTO met_language VALUES('2154','access','Permissions','1','214','0','0','en');
INSERT INTO met_language VALUES('2155','read','Have read','1','210','0','0','en');
INSERT INTO met_language VALUES('2156','parameter','parameter','1','208','0','0','en');
INSERT INTO met_language VALUES('2157','search','search for','1','206','0','0','en');
INSERT INTO met_language VALUES('2158','manager','Content manage','1','205','19','0','en');
INSERT INTO met_language VALUES('2159','top','Stick to the top','1','202','0','0','en');
INSERT INTO met_language VALUES('2160','wap','wap','1','201','0','0','en');
INSERT INTO met_language VALUES('2161','recom','recommend','1','200','0','0','en');
INSERT INTO met_language VALUES('2162','image','image','1','198','0','0','en');
INSERT INTO met_language VALUES('2163','title','title','1','197','0','0','en');
INSERT INTO met_language VALUES('2164','description','Short description','1','196','0','0','en');
INSERT INTO met_language VALUES('2165','selected','select','1','192','0','0','en');
INSERT INTO met_language VALUES('2166','metinfo','MetInfo enterprise website management system','1','189','0','0','en');
INSERT INTO met_language VALUES('2167','no','no','1','188','0','0','en');
INSERT INTO met_language VALUES('2168','yes','Yes','1','187','0','0','en');
INSERT INTO met_language VALUES('2169','sort','Sort','1','186','0','0','en');
INSERT INTO met_language VALUES('2170','type','Types of','1','185','0','0','en');
INSERT INTO met_language VALUES('2171','close','shut down','1','184','0','0','en');
INSERT INTO met_language VALUES('2172','open','Open','1','183','0','0','en');
INSERT INTO met_language VALUES('2173','operate','operating','1','182','0','0','en');
INSERT INTO met_language VALUES('2174','preview','Preview','1','181','0','0','en');
INSERT INTO met_language VALUES('2175','delete','delete','1','180','0','0','en');
INSERT INTO met_language VALUES('2176','modify','modify','1','179','0','0','en');
INSERT INTO met_language VALUES('2177','View','View','1','178','0','0','en');
INSERT INTO met_language VALUES('2178','editor','edit','1','177','0','0','en');
INSERT INTO met_language VALUES('2179','add','Add to','1','176','0','0','en');
INSERT INTO met_language VALUES('2180','addsubcolumn','Add sub column','1','176','0','0','en');
INSERT INTO met_language VALUES('2181','Submitall','submit','1','172','26','0','en');
INSERT INTO met_language VALUES('2182','Copy','copy','1','174','0','0','en');
INSERT INTO met_language VALUES('2183','langadderr4','Unable to sync official language packs.','1','166','16','0','en');
INSERT INTO met_language VALUES('2184','langadderr5','You deleted the default language! Please set another language as the default language and then operate!','1','167','16','0','en');
INSERT INTO met_language VALUES('2185','basictips7','E-mail set up correctly!','1','162','39','0','en');
INSERT INTO met_language VALUES('2186','basictips6','<b> Workaround: </ b> Check your account password and smtp for errors or check if your mailbox has smtp service enabled.','1','161','39','0','en');
INSERT INTO met_language VALUES('2187','basictips5','<b> Error tip: </ b> failed to test email!','1','160','39','0','en');
INSERT INTO met_language VALUES('2188','basictips3','Mail sending test','1','158','39','0','en');
INSERT INTO met_language VALUES('2189','basictips4','E-mail received indicates that your site\'s system mailbox settings are correct.','1','159','39','0','en');
INSERT INTO met_language VALUES('2190','upfileFail10','Imagejpeg function is not supported','1','125','8','0','en');
INSERT INTO met_language VALUES('2191','upfileFail11','Imagepng function is not supported','1','126','8','0','en');
INSERT INTO met_language VALUES('2192','upfileFail9','The imagegif function is not supported','1','124','8','0','en');
INSERT INTO met_language VALUES('2193','upfileFail8','File corruption, thumbnail generation failed','1','123','8','0','en');
INSERT INTO met_language VALUES('2194','upfileFail7','Does not support the current file format to generate thumbnails, please upload JPG, GIF, PNG pictures','1','122','8','0','en');
INSERT INTO met_language VALUES('2195','upfileFail6','Space does not support GD library, can not generate thumbnails','1','121','8','0','en');
INSERT INTO met_language VALUES('2196','upfileFail5','The bmp format does not automatically generate thumbnails','1','120','8','0','en');
INSERT INTO met_language VALUES('2197','upfileFail4','Failed to create directory','1','119','8','0','en');
INSERT INTO met_language VALUES('2198','upfileOver4','upload folder does not write permission, please contact space to modify.','1','116','8','0','en');
INSERT INTO met_language VALUES('2199','upfileOver5','Upload temporary folder (upload_tmp_dir) no write permission, please contact the space to modify.','1','117','8','0','en');
INSERT INTO met_language VALUES('2200','upfileOver3','No files have been uploaded','1','115','8','0','en');
INSERT INTO met_language VALUES('2201','upfileOver2','Only part of the file is uploaded.','1','114','8','0','en');
INSERT INTO met_language VALUES('2202','upfileOver','The uploaded file exceeded the limit of upload_max_filesize option in php.ini.','1','112','8','0','en');
INSERT INTO met_language VALUES('2203','upfileOver1','The size of the uploaded file exceeds the value specified by the MAX_FILE_SIZE option in the HTML form.','1','113','8','0','en');
INSERT INTO met_language VALUES('2204','upfileTip3','File format does not allow uploading.','1','110','8','0','en');
INSERT INTO met_language VALUES('2205','upfileTip1',', Can not upload.','1','108','8','0','en');
INSERT INTO met_language VALUES('2206','upfileFail2','Failed to create picture directory','1','103','8','0','en');
INSERT INTO met_language VALUES('2207','upfileMax','Size exceeds system limit','1','106','8','0','en');
INSERT INTO met_language VALUES('2208','upfileFile','upload files','1','105','8','0','en');
INSERT INTO met_language VALUES('2209','funNav4','Show','1','94','5','0','en');
INSERT INTO met_language VALUES('2210','indexfeedbackm','Feedback management','1','79','8','0','en');
INSERT INTO met_language VALUES('2211','indexlink','Links','1','78','8','0','en');
INSERT INTO met_language VALUES('2212','indexhtm','Static page generation','1','74','8','0','en');
INSERT INTO met_language VALUES('2213','indexhtmset','Static pages','1','73','8','0','en');
INSERT INTO met_language VALUES('2214','indexcv','Resume parameter configuration','1','70','8','0','en');
INSERT INTO met_language VALUES('2215','indexflash','Banner management','1','67','4','0','en');
INSERT INTO met_language VALUES('2216','indexbbs','Technical Support','1','63','8','0','en');
INSERT INTO met_language VALUES('2217','indexcode','Commercial authorization','1','61','8','0','en');
INSERT INTO met_language VALUES('2218','indexlang','language settings','1','54','8','0','en');
INSERT INTO met_language VALUES('2219','indexloginout','drop out','1','51','8','0','en');
INSERT INTO met_language VALUES('2220','indexuser','User Management','1','47','8','0','en');
INSERT INTO met_language VALUES('2221','indexcontent','Content management','1','44','8','0','en');
INSERT INTO met_language VALUES('2222','indexadmin','Functions','1','50','8','0','en');
INSERT INTO met_language VALUES('2223','indexadminname','Administrator management','1','80','8','0','en');
INSERT INTO met_language VALUES('2224','loginall','You do not have to add, modify, delete the permissions of the information, please contact the administrator to open','1','39','8','0','en');
INSERT INTO met_language VALUES('2225','loginedit','You do not have permission to modify the information, please contact the administrator to open','1','38','0','0','en');
INSERT INTO met_language VALUES('2226','loginadd','You do not have permission to add information, please contact the administrator to open','1','37','8','0','en');
INSERT INTO met_language VALUES('2227','logindelete','You do not have permission to delete information, please contact the administrator to open','1','36','8','0','en');
INSERT INTO met_language VALUES('2228','loginpass','wrong user name or password','1','35','8','0','en');
INSERT INTO met_language VALUES('2229','loginname','wrong user name or password','1','34','18','0','en');
INSERT INTO met_language VALUES('2230','logincodeerror','Verification code error','1','33','18','0','en');
INSERT INTO met_language VALUES('2231','loginconfirm','log in','1','32','18','0','en');
INSERT INTO met_language VALUES('2232','loginforget','forget password?','1','31','18','0','en');
INSERT INTO met_language VALUES('2233','loginusename','username','1','27','8','0','en');
INSERT INTO met_language VALUES('2234','loginpassword','password','1','28','8','0','en');
INSERT INTO met_language VALUES('2235','logincode','Verification code','1','29','8','0','en');
INSERT INTO met_language VALUES('2236','loginlanguage','Language Settings','1','26','18','0','en');
INSERT INTO met_language VALUES('2237','loginmetinfo','MetInfo','1','25','8','0','en');
INSERT INTO met_language VALUES('2238','loginadmin','Administrator login','1','24','18','0','en');
INSERT INTO met_language VALUES('2239','logintitle','Background login','1','21','18','0','en');
INSERT INTO met_language VALUES('2240','loginid','Username can not be empty','1','22','18','0','en');
INSERT INTO met_language VALUES('2241','myapps','Applications','1','20','36','0','en');
INSERT INTO met_language VALUES('2242','myapp','Application plugin','1','20','36','0','en');
INSERT INTO met_language VALUES('2243','recycle','Content Recycle Bin','1','17','29','0','en');
INSERT INTO met_language VALUES('2244','managertyp5','Custom','1','9','2','0','en');
INSERT INTO met_language VALUES('2245','managertyp4','Content Manager','1','9','2','0','en');
INSERT INTO met_language VALUES('2246','managertyp2','administrator','1','7','2','0','en');
INSERT INTO met_language VALUES('2247','managertyp3','Optimize promotion','1','8','2','0','en');
INSERT INTO met_language VALUES('2248','managertyp1','Founder','1','6','2','0','en');
INSERT INTO met_language VALUES('2249','uplaoderr1','upload failed!','1','3','8','0','en');
INSERT INTO met_language VALUES('2250','clickview','Click to view','1','1','8','0','en');
INSERT INTO met_language VALUES('2251','membertips1','Registration time','1','105','38','0','en');
INSERT INTO met_language VALUES('2252','memberjstxt2','Please enter your password!','1','95','7','0','en');
INSERT INTO met_language VALUES('2253','memberCheck','Activate now','1','92','38','0','en');
INSERT INTO met_language VALUES('2254','memberMan','Mr','1','81','36','0','en');
INSERT INTO met_language VALUES('2255','memberCell','Phone','1','84','7','0','en');
INSERT INTO met_language VALUES('2256','memberTip','Please leave blank without modification','1','78','7','0','en');
INSERT INTO met_language VALUES('2257','memberName','Name','1','76','7','0','en');
INSERT INTO met_language VALUES('2258','memberCV','resume','1','74','15','0','en');
INSERT INTO met_language VALUES('2259','memberEmail','email address','1','67','7','0','en');
INSERT INTO met_language VALUES('2260','memberAdd','Add member','1','62','2','0','en');
INSERT INTO met_language VALUES('2261','memberChecked','activated','1','60','38','0','en');
INSERT INTO met_language VALUES('2262','memberUnChecked','inactivated','1','61','38','0','en');
INSERT INTO met_language VALUES('2263','memberManage','Member management','1','58','2','0','en');
INSERT INTO met_language VALUES('2264','memberlogin','Sign Up','1','51','38','0','en');
INSERT INTO met_language VALUES('2265','hello','Hello!','1','47','7','0','en');
INSERT INTO met_language VALUES('2266','getTip5','Retrieve the password','1','45','7','0','en');
INSERT INTO met_language VALUES('2267','getTip3','Email to create a new password link has been sent to your email address. Please change your password as soon as possible.','1','43','10','0','en');
INSERT INTO met_language VALUES('2268','getTip2','Thank you for your support and love for MetInfo and hope MetInfo will create value for your website!','1','42','10','0','en');
INSERT INTO met_language VALUES('2269','getTip1','Your password reset request has been verified. Please click the following link to enter your new password:','1','41','10','0','en');
INSERT INTO met_language VALUES('2270','getNotice','Administrator password retrieve','1','40','10','0','en');
INSERT INTO met_language VALUES('2271','adminpassTitle','Modify Personal Information','1','39','2','0','en');
INSERT INTO met_language VALUES('2272','adminSelectAll','All Selection','1','37','2','0','en');
INSERT INTO met_language VALUES('2273','adminOperate4','delete message','1','35','2','0','en');
INSERT INTO met_language VALUES('2274','adminOperate3','Modify information','1','34','2','0','en');
INSERT INTO met_language VALUES('2275','adminOperate1','fully control','1','32','2','0','en');
INSERT INTO met_language VALUES('2276','adminOperate2','add information','1','33','2','0','en');
INSERT INTO met_language VALUES('2277','adminPower','Information rights','1','29','2','0','en');
INSERT INTO met_language VALUES('2278','adminTip2','Only allow to view your published information','1','30','2','0','en');
INSERT INTO met_language VALUES('2279','adminTip3','Posting information needs to be reviewed in order to display properly','1','30','2','0','en');
INSERT INTO met_language VALUES('2280','adminOperate','Operating authority','1','31','2','0','en');
INSERT INTO met_language VALUES('2281','adminpassword1','Password Confirmation','1','21','2','0','en');
INSERT INTO met_language VALUES('2282','adminpassword','login password','1','20','7','0','en');
INSERT INTO met_language VALUES('2283','adminLastLogin','last login time','1','18','0','0','en');
INSERT INTO met_language VALUES('2284','adminLastIP','Finally login IP','1','19','0','0','en');
INSERT INTO met_language VALUES('2285','metadmin','administrator','1','12','0','0','en');
INSERT INTO met_language VALUES('2286','adminusername','username','1','13','0','0','en');
INSERT INTO met_language VALUES('2287','adminname','Name','1','14','0','0','en');
INSERT INTO met_language VALUES('2288','admin_email','Administrator mailbox','1','14','0','0','en');
INSERT INTO met_language VALUES('2289','admin_email_error','Administrator\'s mailbox has been occupied','1','14','0','0','en');
INSERT INTO met_language VALUES('2290','adminLoginNum','Login times','1','17','38','0','en');
INSERT INTO met_language VALUES('2291','admintips7','Administrator permission settings','1','11','2','0','en');
INSERT INTO met_language VALUES('2292','adminjurisd','Language permissions','1','5','2','0','en');
INSERT INTO met_language VALUES('2293','admintips1','All languages','1','6','0','0','en');
INSERT INTO met_language VALUES('2294','admintips2','Choose at least one','1','7','2','0','en');
INSERT INTO met_language VALUES('2295','admintips5','user group','1','10','0','0','en');
INSERT INTO met_language VALUES('2296','admintips4','New column permissions','1','9','2','0','en');
INSERT INTO met_language VALUES('2297','webcompre','The whole station compression package','1','3','8','0','en');
INSERT INTO met_language VALUES('2298','admininfo','Administrator basic information','1','4','0','0','en');
INSERT INTO met_language VALUES('2299','uploadfile','Upload folder','1','2','8','0','en');
INSERT INTO met_language VALUES('2300','database','database','1','1','8','0','en');
INSERT INTO met_language VALUES('2301','dlapptips6','Uninstall','1','294','6','0','en');
INSERT INTO met_language VALUES('2302','dlapptips5','turn on','1','293','6','0','en');
INSERT INTO met_language VALUES('2303','mobiletips3','Add content','1','284','0','0','en');
INSERT INTO met_language VALUES('2304','smstips64','Status all','1','245','6','0','en');
INSERT INTO met_language VALUES('2305','smstips24','Operating time','1','206','6','0','en');
INSERT INTO met_language VALUES('2306','smstips22','Account Balance','1','204','6','0','en');
INSERT INTO met_language VALUES('2307','smstips18','Type of operation','1','200','6','0','en');
INSERT INTO met_language VALUES('2308','smstips19','Recharge','1','201','6','0','en');
INSERT INTO met_language VALUES('2309','smstips17','sequence','1','199','6','0','en');
INSERT INTO met_language VALUES('2310','smstips9','yuan','1','191','6','0','en');
INSERT INTO met_language VALUES('2311','smstips6','current balance','1','188','6','0','en');
INSERT INTO met_language VALUES('2312','smstips7','payment method','1','189','6','0','en');
INSERT INTO met_language VALUES('2313','smstips1','Send in bulk','1','183','6','0','en');
INSERT INTO met_language VALUES('2314','smstips2','send record','1','184','6','0','en');
INSERT INTO met_language VALUES('2315','statip','IP','1','132','6','0','en');
INSERT INTO met_language VALUES('2316','smsrecharge','Recharge','1','113','6','0','en');
INSERT INTO met_language VALUES('2317','physicalfunction4','folder','1','103','1','0','en');
INSERT INTO met_language VALUES('2318','physicaldelok','successfully deleted','1','47','6','0','en');
INSERT INTO met_language VALUES('2319','physicalgenok','Generated successfully','1','49','6','0','en');
INSERT INTO met_language VALUES('2320','usertype3','Ordinary commercial authority','1','35','0','0','en');
INSERT INTO met_language VALUES('2321','usertype4','Advanced Business Licensing','1','36','0','0','en');
INSERT INTO met_language VALUES('2322','user_tips30_v6','Middle cross screen background of login interface (recommended size 1920 * 800 width * high)','1','0','38','0','en');
INSERT INTO met_language VALUES('2323','user_tips5_v6','The parameters are available, and the following parameters are referred to as variable parameters in the content of the mail.','1','0','38','0','en');
INSERT INTO met_language VALUES('2324','user_tips6_v6','Mail address URL the next operation, required. For example, retrieve the password mail, this address is the link to retrieve the password.','1','0','38','0','en');
INSERT INTO met_language VALUES('2325','user_Registeredmail_v6','Registered mail','1','0','38','0','en');
INSERT INTO met_language VALUES('2326','user_tips7_v6','Password retrieving mail','1','0','38','0','en');
INSERT INTO met_language VALUES('2327','user_tips8_v6','Need to be','1','0','38','0','en');
INSERT INTO met_language VALUES('2328','user_QQinterconnect_v6','QQ interconnection','1','0','38','0','en');
INSERT INTO met_language VALUES('2329','user_tips9_v6','Application (Management Center - login - create application - Web site)','1','0','38','0','en');
INSERT INTO met_language VALUES('2330','user_backurl_v6','token url','1','0','38','0','en');
INSERT INTO met_language VALUES('2331','user_tips10_v6','WeChat open platform','1','0','38','0','en');
INSERT INTO met_language VALUES('2332','user_Apply_v6','Apply','1','0','38','0','en');
INSERT INTO met_language VALUES('2333','user_tips11_v6','Member logon for PC side','1','0','38','0','en');
INSERT INTO met_language VALUES('2334','user_Openplatform_v6','Open platform','1','0','38','0','en');
INSERT INTO met_language VALUES('2335','user_publicplatform_v6','WeChat public platform','1','0','38','0','en');
INSERT INTO met_language VALUES('2336','user_tips13_v6','You need to get the web authorization function and set up the authorized domain name for your website domain name.','1','0','38','0','en');
INSERT INTO met_language VALUES('2337','user_tips14_v6','And add this WeChat public number to the open platform account.','1','0','38','0','en');
INSERT INTO met_language VALUES('2338','user_tips15_v6','Sina micro-blog','1','0','38','0','en');
INSERT INTO met_language VALUES('2339','user_tips16_v6','Micro-blog open platform','1','0','38','0','en');
INSERT INTO met_language VALUES('2340','user_tips17_v6','(Note: please apply for a web site not to apply for application)','1','0','38','0','en');
INSERT INTO met_language VALUES('2341','user_accsafe_v6','Account security','1','0','38','0','en');
INSERT INTO met_language VALUES('2342','user_PasswordReset_v6','Password Reset','1','0','38','0','en');
INSERT INTO met_language VALUES('2343','user_tips18_v6','6-30 character spacing is not modified','1','0','38','0','en');
INSERT INTO met_language VALUES('2344','user_emailuse_v6','Mailbox has been bound','1','0','38','0','en');
INSERT INTO met_language VALUES('2345','user_Accountstatus_v6','Account status','1','0','38','0','en');
INSERT INTO met_language VALUES('2346','user_must_v6','Required','1','0','38','0','en');
INSERT INTO met_language VALUES('2347','user_tips21_v6','The higher the value, the higher the reading authority','1','0','38','0','en');
INSERT INTO met_language VALUES('2348','user_Exportmember_v6','Export membership','1','0','38','0','en');
INSERT INTO met_language VALUES('2349','user_Registratset_v6','Registration settings','1','0','38','0','en');
INSERT INTO met_language VALUES('2350','user_Regverificat_v6','Registration verification','1','0','38','0','en');
INSERT INTO met_language VALUES('2351','user_tips23_v6','Mailbox is a username','1','0','38','0','en');
INSERT INTO met_language VALUES('2352','user_Mailvalidat_v6','Mail validation','1','0','38','0','en');
INSERT INTO met_language VALUES('2353','user_tips24_v6','(set up the system server box (settings - basic information - Send mailbox configuration)','1','0','38','0','en');
INSERT INTO met_language VALUES('2354','user_tips25_v6','Backstage review','1','0','38','0','en');
INSERT INTO met_language VALUES('2355','user_tips26_v6','Mobile phone number is username','1','0','38','0','en');
INSERT INTO met_language VALUES('2356','user_tips27_v6','Mobile phone short message verification','1','0','38','0','en');
INSERT INTO met_language VALUES('2357','user_tips28_v6','Short message service (my application - SMS)','1','0','38','0','en');
INSERT INTO met_language VALUES('2358','user_Notverifying_v6','Not verifying','1','0','38','0','en');
INSERT INTO met_language VALUES('2359','user_Backgroundpicture_v6','Background picture','1','0','38','0','en');
INSERT INTO met_language VALUES('2360','appinstall','installation','1','38','1','0','en');
INSERT INTO met_language VALUES('2361','appupgrade','upgrade','1','40','3','0','en');
INSERT INTO met_language VALUES('2362','usertype1','FREE','1','33','3','0','en');
INSERT INTO met_language VALUES('2363','csvnodata','no data','1','26','16','0','en');
INSERT INTO met_language VALUES('2364','wapdimensionalsize','size','1','20','6','0','en');
INSERT INTO met_language VALUES('2365','dltips7','Download timed out','1','195','0','0','en');
INSERT INTO met_language VALUES('2366','columnarrangement2','Switch to','1','197','19','0','en');
INSERT INTO met_language VALUES('2367','columnarrangement3','Sort by module','1','198','19','0','en');
INSERT INTO met_language VALUES('2368','columnarrangement4','Classified by column','1','199','19','0','en');
INSERT INTO met_language VALUES('2369','dltips6','Remote server request error','1','194','0','0','en');
INSERT INTO met_language VALUES('2370','dltips5','The file you requested does not exist','1','193','0','0','en');
INSERT INTO met_language VALUES('2371','dltips4','Please upgrade the program','1','192','0','0','en');
INSERT INTO met_language VALUES('2372','dltips3','You do not have permission to download this file','1','191','0','0','en');
INSERT INTO met_language VALUES('2373','dltips2','File download failed, please check the local directory permissions and space size','1','190','0','0','en');
INSERT INTO met_language VALUES('2374','dltips1','Can not connect to the remote server, please check the network','1','189','0','0','en');
INSERT INTO met_language VALUES('2375','seotips18','Filter external modules','1','182','5','0','en');
INSERT INTO met_language VALUES('2376','seotips19','Website language range','1','183','32','0','en');
INSERT INTO met_language VALUES('2377','seotips20','Current language','1','184','32','0','en');
INSERT INTO met_language VALUES('2378','seotips15_3','Suitable for Yahoo,','1','179','32','0','en');
INSERT INTO met_language VALUES('2379','seotips16','Filter columns and content','1','180','32','0','en');
INSERT INTO met_language VALUES('2380','seotips15_2','Suitable for Google and Baidu','1','178','32','0','en');
INSERT INTO met_language VALUES('2381','seotips15','Map URL','1','176','32','0','en');
INSERT INTO met_language VALUES('2382','seotips6','Home','1','166','0','0','en');
INSERT INTO met_language VALUES('2383','seotips9','Content page','1','169','32','0','en');
INSERT INTO met_language VALUES('2384','seotips14_1','How to submit to search engine?','1','175','32','0','en');
INSERT INTO met_language VALUES('2385','seotips14','Sitemaps help speed up your site\'s search engine listings','1','174','32','0','en');
INSERT INTO met_language VALUES('2386','seotips12','Will all static pages be generated immediately?','1','172','11','0','en');
INSERT INTO met_language VALUES('2387','seotips11','Delete all generated static pages?','1','171','11','0','en');
INSERT INTO met_language VALUES('2388','seotips1','Multiple keywords separated by vertical comma \",\" , recommended 3-4 keywords.','1','161','32','0','en');
INSERT INTO met_language VALUES('2389','statips27','time','1','124','0','0','en');
INSERT INTO met_language VALUES('2390','statips2','Statistics settings','1','101','0','0','en');
INSERT INTO met_language VALUES('2391','linkRecommend','Recommended site','1','91','17','0','en');
INSERT INTO met_language VALUES('2392','linkPass','examination passed','1','90','17','0','en');
INSERT INTO met_language VALUES('2393','linkLOGO','Website LOGO','1','87','17','0','en');
INSERT INTO met_language VALUES('2394','linkcontact','Contact information','1','88','0','0','en');
INSERT INTO met_language VALUES('2395','linktip1','Sites in the same state, the bigger the number, the higher the ranking','1','89','17','0','en');
INSERT INTO met_language VALUES('2396','linktip2','The ability to pass the review is displayed in the foreground, and the recommended site is displayed in the front.','1','89','17','0','en');
INSERT INTO met_language VALUES('2397','linkUrl','Website address','1','86','17','0','en');
INSERT INTO met_language VALUES('2398','linkKeys','Website keywords','1','83','17','0','en');
INSERT INTO met_language VALUES('2399','linkCheck','Audit','1','84','17','0','en');
INSERT INTO met_language VALUES('2400','linkName','Website title','1','82','17','0','en');
INSERT INTO met_language VALUES('2401','linkType4','Text link','1','80','17','0','en');
INSERT INTO met_language VALUES('2402','linkType5','LOGO link','1','81','17','0','en');
INSERT INTO met_language VALUES('2403','linkType1','Unaudited link','1','77','17','0','en');
INSERT INTO met_language VALUES('2404','linkType2','Recommended links','1','78','17','0','en');
INSERT INTO met_language VALUES('2405','linkType','Link type','1','75','17','0','en');
INSERT INTO met_language VALUES('2406','htmCreateAll','Generate all pages','1','63','11','0','en');
INSERT INTO met_language VALUES('2407','htmsitemap','Sitemap','1','61','0','0','en');
INSERT INTO met_language VALUES('2408','htmAll','All pages','1','59','11','0','en');
INSERT INTO met_language VALUES('2409','htmTip1','Generate content page','1','57','11','0','en');
INSERT INTO met_language VALUES('2410','htmTip2','Generate the list page','1','58','11','0','en');
INSERT INTO met_language VALUES('2411','htmColumn','Column Manage','1','56','0','0','en');
INSERT INTO met_language VALUES('2412','htmHome','Home page','1','54','4','0','en');
INSERT INTO met_language VALUES('2413','sethtmsitemap4','xml sitemap','1','53','32','0','en');
INSERT INTO met_language VALUES('2414','sethtmlist','List page name','1','47','11','0','en');
INSERT INTO met_language VALUES('2415','sethtmlist1','Default file name + class + page number (eg product_1_1)','1','48','11','0','en');
INSERT INTO met_language VALUES('2416','sethtmlist2','Where the folder name + class + page number (such as software_1_1)','1','49','11','0','en');
INSERT INTO met_language VALUES('2417','sethtmpage4','<span style = \"float: right;\"> Do not recommend frequent replacement, to ensure the SEO effect (please modify all static pages) </ span> Static page name rules','1','50','11','0','en');
INSERT INTO met_language VALUES('2418','sethtmpage3','Where the folder name + ID (such as product10)','1','43','11','0','en');
INSERT INTO met_language VALUES('2419','setlisthtmltype','List page type','1','44','11','0','en');
INSERT INTO met_language VALUES('2420','setlisthtmltype1','Show all section id (eg product_1_2_3)','1','45','11','0','en');
INSERT INTO met_language VALUES('2421','setlisthtmltype2','Only show this column id (such as product_1)','1','46','11','0','en');
INSERT INTO met_language VALUES('2422','sethtmpage2','Year, month, day + ID (such as 2009081510)','1','42','11','0','en');
INSERT INTO met_language VALUES('2423','sethtmpage1','The default file name + ID (such as showproduct10)','1','41','11','0','en');
INSERT INTO met_language VALUES('2424','sethtmpage','Content page name','1','40','11','0','en');
INSERT INTO met_language VALUES('2425','sethtmtype','Static page type','1','39','11','0','en');
INSERT INTO met_language VALUES('2426','sethtmway3','It is not recommended to enable the automatic generation function, which consumes a lot of resources. Only content management-related operations can be automatically generated. If other background settings are changed, no foreground creation needs to be manually generated.','1','38','11','0','en');
INSERT INTO met_language VALUES('2427','sethtmway2','Manually generated','1','37','11','0','en');
INSERT INTO met_language VALUES('2428','sethtmway','Generation method','1','35','11','0','en');
INSERT INTO met_language VALUES('2429','sethtmway1','Automatically generated when content information changes','1','36','11','0','en');
INSERT INTO met_language VALUES('2430','setbasicTip4','It is suggested that the enterprise station use the pseudo-static function, purely static consumption of resources and inconvenient management; the first time you open, click \"static page generation\" to generate all the pages','1','34','11','0','en');
INSERT INTO met_language VALUES('2431','sethtmok','Static pages open','1','31','11','0','en');
INSERT INTO met_language VALUES('2432','sethtmall','Station static','1','32','11','0','en');
INSERT INTO met_language VALUES('2433','setbasicTip3','Home page, content page static','1','33','11','0','en');
INSERT INTO met_language VALUES('2434','labelUrl','link address','1','27','32','0','en');
INSERT INTO met_language VALUES('2435','htm','Static page has been successfully generated','1','30','11','0','en');
INSERT INTO met_language VALUES('2436','labelnum','Replacement times','1','23','32','0','en');
INSERT INTO met_language VALUES('2437','labelOld','Original text','1','24','32','0','en');
INSERT INTO met_language VALUES('2438','labelNew','Replace with','1','25','32','0','en');
INSERT INTO met_language VALUES('2439','setseoTip14','The title of the inner page is constructed so that you can also customize the title of the corresponding page when editing / adding content.','1','21','32','0','en');
INSERT INTO met_language VALUES('2440','setseotitletype4','Content title + website keyword + website name','1','20','32','0','en');
INSERT INTO met_language VALUES('2441','setseotitletype3','Content title + website keyword','1','19','32','0','en');
INSERT INTO met_language VALUES('2442','setseotitletype2','Content title + website name','1','18','32','0','en');
INSERT INTO met_language VALUES('2443','setseotitletype','Inside page title (title)','1','16','32','0','en');
INSERT INTO met_language VALUES('2444','setseotitletype1','Content title','1','17','32','0','en');
INSERT INTO met_language VALUES('2445','setseodopen','The current window opens','1','14','35','0','en');
INSERT INTO met_language VALUES('2446','setseonewopen','open in a new window','1','15','35','0','en');
INSERT INTO met_language VALUES('2447','setseoFoot','Website optimization at the bottom','1','11','32','0','en');
INSERT INTO met_language VALUES('2448','setseoTip9','Move the mouse to the text displayed on the hyperlink','1','9','32','0','en');
INSERT INTO met_language VALUES('2449','setseoTip8','Hyperlink default Title','1','8','32','0','en');
INSERT INTO met_language VALUES('2450','setseoTip7','Move the mouse to the text shown in the picture','1','7','32','0','en');
INSERT INTO met_language VALUES('2451','setseoTip6','Image default ALT','1','6','32','0','en');
INSERT INTO met_language VALUES('2452','setseoTip4','Head optimization text','1','5','32','0','en');
INSERT INTO met_language VALUES('2453','setseoTip10','Leave blank to use the website name - the way the website keywords are structured','1','4','32','0','en');
INSERT INTO met_language VALUES('2454','setseoKey','Website keywords','1','2','32','0','en');
INSERT INTO met_language VALUES('2455','setseohomeKey','Home title (title)','1','3','32','0','en');
INSERT INTO met_language VALUES('2456','setseoTip1','Multiple keywords should be separated by \",\".','1','1','0','0','en');
INSERT INTO met_language VALUES('2457','setheadstat','Top code','1','176','39','0','en');
INSERT INTO met_language VALUES('2458','recycledietime','Delete the time','1','121','29','0','en');
INSERT INTO met_language VALUES('2459','recyclere','reduction','1','122','29','0','en');
INSERT INTO met_language VALUES('2460','messageeditor','Edit message','1','113','20','0','en');
INSERT INTO met_language VALUES('2461','messagesubmit','Message submitted to open and close','1','112','20','0','en');
INSERT INTO met_language VALUES('2462','messageeditorReply','Respond to voicemail','1','109','20','0','en');
INSERT INTO met_language VALUES('2463','messageeditorCheck','Reply to the audit','1','110','20','0','en');
INSERT INTO met_language VALUES('2464','messageeditorShow','Approved and shown in the foreground','1','111','20','0','en');
INSERT INTO met_language VALUES('2465','messageTime','Submit time','1','106','20','0','en');
INSERT INTO met_language VALUES('2466','messageID','Message status','1','105','20','0','en');
INSERT INTO met_language VALUES('2467','messageTel','phone','1','103','20','0','en');
INSERT INTO met_language VALUES('2468','messageTitle','Message management','1','96','0','0','en');
INSERT INTO met_language VALUES('2469','messageVoice','Message form settings','1','443','0','0','en');
INSERT INTO met_language VALUES('2470','messageincTip3','Customer message needs to be back in the background audit before the show','1','93','20','0','en');
INSERT INTO met_language VALUES('2471','messageincShow','Display method','1','92','20','0','en');
INSERT INTO met_language VALUES('2472','feedbackauto','Mail reply settings','1','90','0','0','en');
INSERT INTO met_language VALUES('2473','messageincTitle','Message system settings','1','91','0','0','en');
INSERT INTO met_language VALUES('2474','feedbackexplain1','Page title name, the default is the name of the section','1','89','9','0','en');
INSERT INTO met_language VALUES('2475','feedbacksubmit','Feedback submitted to open and close','1','88','9','0','en');
INSERT INTO met_language VALUES('2476','fdeditorFrom','Source page address','1','85','9','0','en');
INSERT INTO met_language VALUES('2477','fdeditorRecord','Edit records','1','86','9','0','en');
INSERT INTO met_language VALUES('2478','fdeditorInterest','Product of interest','1','83','9','0','en');
INSERT INTO met_language VALUES('2479','fdeditorTime','Feedback submission time','1','84','9','0','en');
INSERT INTO met_language VALUES('2480','feedbackAccess0','Tourists','1','82','0','0','en');
INSERT INTO met_language VALUES('2481','feedbackTip4','Export all','1','80','9','0','en');
INSERT INTO met_language VALUES('2482','feedbackTip2','Export EXCEL table','1','79','9','0','en');
INSERT INTO met_language VALUES('2483','feedbackTime','Submit time','1','78','9','0','en');
INSERT INTO met_language VALUES('2484','feedbackID','Feedback status','1','77','9','0','en');
INSERT INTO met_language VALUES('2485','feedbackClass2','Unread message','1','74','0','0','en');
INSERT INTO met_language VALUES('2486','feedbackClass3','Read the information','1','75','0','0','en');
INSERT INTO met_language VALUES('2487','feedbackClass','Information status','1','71','0','0','en');
INSERT INTO met_language VALUES('2488','fdincFeedbackTitle','Reply mail title','1','68','0','0','en');
INSERT INTO met_language VALUES('2489','fdincAutoFbTitle','Auto reply email title','1','69','4','0','en');
INSERT INTO met_language VALUES('2490','fdincAutoContent','Reply mail content','1','70','0','0','en');
INSERT INTO met_language VALUES('2491','fdincEmailName','Email field name','1','66','0','0','en');
INSERT INTO met_language VALUES('2492','fdincTip11','Used to retrieve the user\'s email address, in order to reply to the mail. Field type must be \"email\"','1','67','0','0','en');
INSERT INTO met_language VALUES('2493','fdincTip10','Check to automatically reply to the user submitting the form','1','65','0','0','en');
INSERT INTO met_language VALUES('2494','fdincAuto','Mail reply','1','64','0','0','en');
INSERT INTO met_language VALUES('2495','fdincTip9','Multiple emails should be separated by |','1','63','0','0','en');
INSERT INTO met_language VALUES('2496','fdincAcceptMail','Feedback mail receiving mailbox','1','62','9','0','en');
INSERT INTO met_language VALUES('2497','fdincTip7','Mail received','1','60','0','0','en');
INSERT INTO met_language VALUES('2498','fdincTip14','SMS Notification Number','1','61','0','0','en');
INSERT INTO met_language VALUES('2499','fdincAccept','Mail received','1','59','0','0','en');
INSERT INTO met_language VALUES('2500','fdincTip6','It is used to get the type of user feedback. The type of the field must be \"pull-down\" \"Radio\" \"short\". When set as the associated product, the pull-down menu is all the products under the corresponding column.','1','57','9','0','en');
INSERT INTO met_language VALUES('2501','fdincAcceptType','Information reception method','1','58','9','0','en');
INSERT INTO met_language VALUES('2502','fdincClassName','Information Category field name','1','56','9','0','en');
INSERT INTO met_language VALUES('2503','fdincSlash','Sensitive character filtering','1','54','0','0','en');
INSERT INTO met_language VALUES('2504','fdincTip4','Second, the same IP2 times to submit the minimum interval','1','53','0','0','en');
INSERT INTO met_language VALUES('2505','fdincName','Feedback form name','1','51','9','0','en');
INSERT INTO met_language VALUES('2506','fdincTime','Anti-refresh time','1','52','0','0','en');
INSERT INTO met_language VALUES('2507','fdincTitle','Feedback system settings','1','50','25','0','en');
INSERT INTO met_language VALUES('2508','jobmanagement','Recruitment management','1','48','0','0','en');
INSERT INTO met_language VALUES('2509','jobtip9','Resume photo, so that you can see in the mail candidates upload photos.','1','47','0','0','en');
INSERT INTO met_language VALUES('2510','jobtip8','Image field name','1','46','0','0','en');
INSERT INTO met_language VALUES('2511','jobtip5','After the delivery resume, the system will automatically send an e-mail to receive mail','1','45','15','0','en');
INSERT INTO met_language VALUES('2512','cvset','Resume form settings','1','44','0','0','en');
INSERT INTO met_language VALUES('2513','cvmanagement','Resume information management','1','43','0','0','en');
INSERT INTO met_language VALUES('2514','cvemail','Resume to accept the mailbox','1','42','15','0','en');
INSERT INTO met_language VALUES('2515','cvall','All','1','39','3','0','en');
INSERT INTO met_language VALUES('2516','cvincAcceptType','Resume reception method','1','37','0','0','en');
INSERT INTO met_language VALUES('2517','cvincAcceptMail','Resume to receive mail','1','36','0','0','en');
INSERT INTO met_language VALUES('2518','cvincTip4','Individual position','1','34','0','0','en');
INSERT INTO met_language VALUES('2519','cvincTip3','Uniform setting','1','33','0','0','en');
INSERT INTO met_language VALUES('2520','cvincTip2','Mail reception method','1','32','0','0','en');
INSERT INTO met_language VALUES('2521','josAlways','Not limited to','1','31','0','0','en');
INSERT INTO met_language VALUES('2522','cvAddtime','Submit time','1','28','0','0','en');
INSERT INTO met_language VALUES('2523','cvPosition','apply for job','1','26','4','0','en');
INSERT INTO met_language VALUES('2524','jobtip3','Day (not limited to)','1','25','15','0','en');
INSERT INTO met_language VALUES('2525','jobnow','Today is','1','23','15','0','en');
INSERT INTO met_language VALUES('2526','jobtip2','Be careful not to change the format.','1','24','15','0','en');
INSERT INTO met_language VALUES('2527','jobdeal','Wages','1','22','15','0','en');
INSERT INTO met_language VALUES('2528','jobtip1','Person (not limited to)','1','21','15','0','en');
INSERT INTO met_language VALUES('2529','jobpublish','Release date','1','19','15','0','en');
INSERT INTO met_language VALUES('2530','joblife','Effective time','1','18','15','0','en');
INSERT INTO met_language VALUES('2531','jobnum','Number of recruits','1','16','15','0','en');
INSERT INTO met_language VALUES('2532','jobaddress','work place','1','17','15','0','en');
INSERT INTO met_language VALUES('2533','jobposition','Jobs','1','15','15','0','en');
INSERT INTO met_language VALUES('2534','setfootstat','Bottom code','1','11','39','0','en');
INSERT INTO met_language VALUES('2535','setfootOther','other information','1','10','39','0','en');
INSERT INTO met_language VALUES('2536','setfootAddressCode','Address Postcode','1','8','39','0','en');
INSERT INTO met_language VALUES('2537','setfootVersion','Copyright Information','1','7','39','0','en');
INSERT INTO met_language VALUES('2538','article6','parameter settings','1','6','0','0','en');
INSERT INTO met_language VALUES('2539','article4','Sort the larger the value of the more front','1','4','0','0','en');
INSERT INTO met_language VALUES('2540','article1','Optional attributes','1','1','0','0','en');
INSERT INTO met_language VALUES('2541','copyotherlang6','Please select the language to copy to','1','139','5','0','en');
INSERT INTO met_language VALUES('2542','copyotherlang5','Level 2 and Level 3 can not be copied separately, please copy together with a level or upgrade to a level','1','139','5','0','en');
INSERT INTO met_language VALUES('2543','copyotherlang4','The column already exists in the copy language, please copy the content directly','1','138','5','0','en');
INSERT INTO met_language VALUES('2544','copyotherlang2','Copy content','1','136','5','0','en');
INSERT INTO met_language VALUES('2545','ctitleinfo','Is used to set the SEO parameters set in the title structure','1','134','0','0','en');
INSERT INTO met_language VALUES('2546','copyotherlang1','Copy to other languages','1','135','5','0','en');
INSERT INTO met_language VALUES('2547','listproductre','related products','1','132','9','0','en');
INSERT INTO met_language VALUES('2548','listproductreok','Not related','1','133','9','0','en');
INSERT INTO met_language VALUES('2549','parameter3','text','1','123','25','0','en');
INSERT INTO met_language VALUES('2550','parameter4','Multiple choice','1','124','25','0','en');
INSERT INTO met_language VALUES('2551','parameter5','annex','1','125','25','0','en');
INSERT INTO met_language VALUES('2552','parameter6','Radio','1','126','25','0','en');
INSERT INTO met_language VALUES('2553','parameter8','tel','1','9','2','0','en');
INSERT INTO met_language VALUES('2554','parameter9','email','1','9','2','0','en');
INSERT INTO met_language VALUES('2555','allcategory','All sections','1','127','0','0','en');
INSERT INTO met_language VALUES('2556','category','belongs to part','1','40','3','0','en');
INSERT INTO met_language VALUES('2557','listTitle','Setting Options','1','130','0','0','en');
INSERT INTO met_language VALUES('2558','parameter1','short','1','121','25','0','en');
INSERT INTO met_language VALUES('2559','parameter2','drop down','1','122','25','0','en');
INSERT INTO met_language VALUES('2560','parametertype','Field Type','1','119','0','0','en');
INSERT INTO met_language VALUES('2561','columnmtitle','Page Title','1','118','0','0','en');
INSERT INTO met_language VALUES('2562','columnmappend','Additional content:','1','116','0','0','en');
INSERT INTO met_language VALUES('2563','columnmore','More','1','117','3','0','en');
INSERT INTO met_language VALUES('2564','columnmfeedback','Feedback form settings','1','108','0','0','en');
INSERT INTO met_language VALUES('2565','columnmnotallow','Not allowed','1','105','0','0','en');
INSERT INTO met_language VALUES('2566','columnmeditor','Edit section','1','103','19','0','en');
INSERT INTO met_language VALUES('2567','columnmallow','allow','1','104','0','0','en');
INSERT INTO met_language VALUES('2568','columnmove','Move column','1','97','0','0','en');
INSERT INTO met_language VALUES('2569','columnmove1','mobile','1','98','0','0','en');
INSERT INTO met_language VALUES('2570','columnexplain7','This feature is compatible with the old version (the role of the column in the foreground corresponding display)','1','95','0','0','en');
INSERT INTO met_language VALUES('2571','columnerr7','Promoted to a column','1','87','5','0','en');
INSERT INTO met_language VALUES('2572','columnerr4','The directory name already exists and may already be used','1','84','30','0','en');
INSERT INTO met_language VALUES('2573','columntip14','Is the use of static pages set to set the URL of the way, do not add html suffix, does not support special characters','1','80','0','0','en');
INSERT INTO met_language VALUES('2574','columnImg2','Column picture','1','74','0','0','en');
INSERT INTO met_language VALUES('2575','columnshow','Add content','1','75','0','0','en');
INSERT INTO met_language VALUES('2576','columnhref','link address','1','71','5','0','en');
INSERT INTO met_language VALUES('2577','columntip7','Links to external websites need to add http or https, such as: https://www.metinfo.cn/','1','72','0','0','en');
INSERT INTO met_language VALUES('2578','columnImg1','Logo picture','1','73','0','0','en');
INSERT INTO met_language VALUES('2579','columnSEO','Search engine optimization settings (seo)','1','70','0','0','en');
INSERT INTO met_language VALUES('2580','columnhtmlname','Static page name','1','69','0','0','en');
INSERT INTO met_language VALUES('2581','columnaddOrder','order','1','68','0','0','en');
INSERT INTO met_language VALUES('2582','columnReverseSort','Reverse order','1','67','0','0','en');
INSERT INTO met_language VALUES('2583','columncontentorder','List page Sort by','1','66','0','0','en');
INSERT INTO met_language VALUES('2584','columnnav4','Show','1','63','0','0','en');
INSERT INTO met_language VALUES('2585','columnnewwindow','open in a new window','1','64','0','0','en');
INSERT INTO met_language VALUES('2586','columnnav3','Tail navigation bar','1','62','0','0','en');
INSERT INTO met_language VALUES('2587','columnnav2','Head main navigation bar','1','61','0','0','en');
INSERT INTO met_language VALUES('2588','columntip1','Please refer to','1','59','0','0','en');
INSERT INTO met_language VALUES('2589','columnnav1','Do not show','1','60','0','0','en');
INSERT INTO met_language VALUES('2590','columnctitle','Column title (title)','1','53','0','0','en');
INSERT INTO met_language VALUES('2591','columnmark','Column style','1','56','0','0','en');
INSERT INTO met_language VALUES('2592','columndocument','Directory name','1','51','32','0','en');
INSERT INTO met_language VALUES('2593','columnmodule','Own module','1','50','5','0','en');
INSERT INTO met_language VALUES('2594','columnnav','Navigation bar is displayed','1','49','0','0','en');
INSERT INTO met_language VALUES('2595','columnnamemarkinfo','Other settings (set according to the template configuration instructions)','1','48','0','0','en');
INSERT INTO met_language VALUES('2596','columnnamemark','Column modification name','1','47','3','0','en');
INSERT INTO met_language VALUES('2597','columnname','program name','1','46','0','0','en');
INSERT INTO met_language VALUES('2598','addinfo','Add content','1','38','0','0','en');
INSERT INTO met_language VALUES('2599','downloadurl','download link','1','36','40','0','en');
INSERT INTO met_language VALUES('2600','modpublish','publisher','1','29','0','0','en');
INSERT INTO met_language VALUES('2601','modimgurls','Thumbnail','1','28','13','0','en');
INSERT INTO met_language VALUES('2602','modimgurl','The map\'s address','1','26','13','0','en');
INSERT INTO met_language VALUES('2603','modClass3','Three columns','1','21','5','0','en');
INSERT INTO met_language VALUES('2604','modClass2','Second column','1','20','5','0','en');
INSERT INTO met_language VALUES('2605','mod101','Picture list','1','15','0','0','en');
INSERT INTO met_language VALUES('2606','mod7','Message system','1','8','0','0','en');
INSERT INTO met_language VALUES('2607','mod8','Feedback system','1','9','0','0','en');
INSERT INTO met_language VALUES('2608','mod9','Links','1','10','0','0','en');
INSERT INTO met_language VALUES('2609','mod10','Member Centre','1','11','0','0','en');
INSERT INTO met_language VALUES('2610','mod11','Site Search','1','12','0','0','en');
INSERT INTO met_language VALUES('2611','mod12','Sitemap','1','13','0','0','en');
INSERT INTO met_language VALUES('2612','mod100','Product List','1','14','0','0','en');
INSERT INTO met_language VALUES('2613','unitytxt_77','Update content automatically update the site map','1','441','32','0','en');
INSERT INTO met_language VALUES('2614','mod6','Recruitment system','1','7','0','0','en');
INSERT INTO met_language VALUES('2615','mod3','Product module','1','4','0','0','en');
INSERT INTO met_language VALUES('2616','mod4','Download module','1','5','0','0','en');
INSERT INTO met_language VALUES('2617','mod5','Picture module','1','6','0','0','en');
INSERT INTO met_language VALUES('2618','mod2','Article module','1','3','0','0','en');
INSERT INTO met_language VALUES('2619','mod1','Profile module','1','2','0','0','en');
INSERT INTO met_language VALUES('2620','modout','External module','1','1','0','0','en');
INSERT INTO met_language VALUES('2621','please_choose','please choose','1','127','0','0','en');
INSERT INTO met_language VALUES('2622','onlinetel','Phone or other instructions','1','116','23','0','en');
INSERT INTO met_language VALUES('2623','onlineskin','style','1','114','23','0','en');
INSERT INTO met_language VALUES('2624','onlineimg','icon','1','115','3','0','en');
INSERT INTO met_language VALUES('2625','onlineskintype','Color style','1','113','23','0','en');
INSERT INTO met_language VALUES('2626','setskinOnline9','Fixed to the right of the page','1','102','23','0','en');
INSERT INTO met_language VALUES('2627','setskinOnline5','Distance from browser side','1','98','23','0','en');
INSERT INTO met_language VALUES('2628','setskinOnline6','From the top of the browser','1','99','23','0','en');
INSERT INTO met_language VALUES('2629','setskinOnline3','Right with the screen scroll','1','96','23','0','en');
INSERT INTO met_language VALUES('2630','setskinOnline10','Location','1','96','23','0','en');
INSERT INTO met_language VALUES('2631','indexflashaddflash','Add Banner','1','92','4','0','en');
INSERT INTO met_language VALUES('2632','setskinOnline','Online communication','1','93','23','0','en');
INSERT INTO met_language VALUES('2633','setskinOnline1','Pinned to the left of the page','1','94','23','0','en');
INSERT INTO met_language VALUES('2634','setskinOnline2','Home left scroll with the screen','1','95','23','0','en');
INSERT INTO met_language VALUES('2635','indexflashexplain9','The link address needs to be http://or https://. After adding buttons and setting button links, it must be empty here.','1','90','4','0','en');
INSERT INTO met_language VALUES('2636','indexflashexplain4','Multiple pictures suggest keeping the size of the picture consistent','1','86','4','0','en');
INSERT INTO met_language VALUES('2637','flashHome','Home page','1','79','4','0','en');
INSERT INTO met_language VALUES('2638','setflashImgHref','link address','1','68','4','0','en');
INSERT INTO met_language VALUES('2639','setflashImgUrl','The map\'s address','1','67','4','0','en');
INSERT INTO met_language VALUES('2640','setflashPixel','Pixel','1','65','0','0','en');
INSERT INTO met_language VALUES('2641','setflashSize','Banner size','1','63','4','0','en');
INSERT INTO met_language VALUES('2642','setflashName','Picture title','1','61','0','0','en');
INSERT INTO met_language VALUES('2643','indexsetFriendly','Links','1','55','0','0','en');
INSERT INTO met_language VALUES('2644','skinstyle','style','1','43','36','0','en');
INSERT INTO met_language VALUES('2645','skinusenow','Enabled','1','40','0','0','en');
INSERT INTO met_language VALUES('2646','skininfo','information','1','42','3','0','en');
INSERT INTO met_language VALUES('2647','skinuse','Enable now','1','39','0','0','en');
INSERT INTO met_language VALUES('2648','settopcolumns','A column','1','21','0','0','en');
INSERT INTO met_language VALUES('2649','setskinproduct2','The current column shows the lower column list','1','17','0','0','en');
INSERT INTO met_language VALUES('2650','setskinproduct1','Show a list of all the information under the list','1','16','0','0','en');
INSERT INTO met_language VALUES('2651','setskindatecontent','Time display format','1','14','0','0','en');
INSERT INTO met_language VALUES('2652','setskinListPage','List','1','2','0','0','en');
INSERT INTO met_language VALUES('2653','setbasicTip13','The default email service mode is TLS (available from email service provider) <br /> If you use TLS mode 25 port can not send mail, try using SSL 465-port send','1','422','39','0','en');
INSERT INTO met_language VALUES('2654','setbasicSMTPWay','sending method','1','420','39','0','en');
INSERT INTO met_language VALUES('2655','setbasicTip12','For mail sending port (consulting E-mail service providers, TLS is generally 25, SSL is generally 465)','1','421','39','0','en');
INSERT INTO met_language VALUES('2656','setbasicSMTPPort','Send port','1','419','39','0','en');
INSERT INTO met_language VALUES('2657','password31','Verification code has been sent to the specified number','1','413','10','0','en');
INSERT INTO met_language VALUES('2658','password30','The password retrieving function is not available. Make sure the background mailbox server is set correctly.','1','413','10','0','en');
INSERT INTO met_language VALUES('2659','password29','E-mail to retrieve','1','412','10','0','en');
INSERT INTO met_language VALUES('2660','password27','Retrieve with phone number','1','410','10','0','en');
INSERT INTO met_language VALUES('2661','password25','new password:','1','408','10','0','en');
INSERT INTO met_language VALUES('2662','password26','Enter:','1','409','10','0','en');
INSERT INTO met_language VALUES('2663','password20','Next step','1','403','0','0','en');
INSERT INTO met_language VALUES('2664','password21','Back to login','1','404','10','0','en');
INSERT INTO met_language VALUES('2665','password24','username:','1','407','10','0','en');
INSERT INTO met_language VALUES('2666','password16','Verify success! Please set your new password.','1','399','10','0','en');
INSERT INTO met_language VALUES('2667','password14','Did not find the user\'s email address, please retrieve the password by other means','1','397','10','0','en');
INSERT INTO met_language VALUES('2668','password13','Unable to use SMS to retrieve password function','1','396','10','0','en');
INSERT INTO met_language VALUES('2669','password12','If you have an Internet connection, you may receive an SMS message after receiving an SMS message. Please wait for a moment or try again later.','1','395','10','0','en');
INSERT INTO met_language VALUES('2670','password11','Please enter the SMS verification code received by your mobile phone, and then click Next.','1','394','10','0','en');
INSERT INTO met_language VALUES('2671','password10','Serial number','1','393','10','0','en');
INSERT INTO met_language VALUES('2672','password8','Did not find the phone corresponding to the user, please retrieve the password by other means','1','391','10','0','en');
INSERT INTO met_language VALUES('2673','password9','You request to reset the password, validation code','1','392','10','0','en');
INSERT INTO met_language VALUES('2674','password7','Did not find this user','1','390','10','0','en');
INSERT INTO met_language VALUES('2675','password6','The user\'s mobile phone number was not found. Please find the password by other means.','1','389','10','0','en');
INSERT INTO met_language VALUES('2676','password5','Please enter the administrator\'s e-mail address:','1','388','10','0','en');
INSERT INTO met_language VALUES('2677','password4','Please enter the administrator\'s e-mail address. You will receive an e-mail containing a link to create a new password.','1','387','10','0','en');
INSERT INTO met_language VALUES('2678','password3','Please enter the administrator\'s e-mail address:','1','386','10','0','en');
INSERT INTO met_language VALUES('2679','password2','Please enter the Administrator\'s mobile phone number, and then click Next, you will receive a SMS check code.','1','385','10','0','en');
INSERT INTO met_language VALUES('2680','password1','Please choose how to retrieve your password:','1','384','10','0','en');
INSERT INTO met_language VALUES('2681','lang64','Chinese (simplified)','1','383','16','0','en');
INSERT INTO met_language VALUES('2682','lang62','Vietnamese','1','381','16','0','en');
INSERT INTO met_language VALUES('2683','lang63','traditional Chinese)','1','382','16','0','en');
INSERT INTO met_language VALUES('2684','lang61','English','1','380','16','0','en');
INSERT INTO met_language VALUES('2685','lang60','Indonesian','1','379','16','0','en');
INSERT INTO met_language VALUES('2686','lang59','Urdu','1','378','16','0','en');
INSERT INTO met_language VALUES('2687','lang54','Yiddish','1','373','16','0','en');
INSERT INTO met_language VALUES('2688','lang53','Italian','1','372','16','0','en');
INSERT INTO met_language VALUES('2689','lang48','Greek','1','367','16','0','en');
INSERT INTO met_language VALUES('2690','lang49','Spanish Basque','1','368','16','0','en');
INSERT INTO met_language VALUES('2691','lang50','Spanish','1','369','16','0','en');
INSERT INTO met_language VALUES('2692','lang51','Hungarian','1','370','16','0','en');
INSERT INTO met_language VALUES('2693','lang47','Hebrew','1','366','16','0','en');
INSERT INTO met_language VALUES('2694','lang46','Ukrainian','1','365','16','0','en');
INSERT INTO met_language VALUES('2695','lang45','Welsh','1','364','16','0','en');
INSERT INTO met_language VALUES('2696','lang43','Thai','1','362','16','0','en');
INSERT INTO met_language VALUES('2697','lang44','Turkish','1','363','16','0','en');
INSERT INTO met_language VALUES('2698','lang42','Swahili','1','361','16','0','en');
INSERT INTO met_language VALUES('2699','lang37','Japanese','1','356','16','0','en');
INSERT INTO met_language VALUES('2700','lang38','Swedish','1','357','16','0','en');
INSERT INTO met_language VALUES('2701','lang39','Serbian','1','358','16','0','en');
INSERT INTO met_language VALUES('2702','lang40','Slovak','1','359','16','0','en');
INSERT INTO met_language VALUES('2703','lang41','Slovenian','1','360','16','0','en');
INSERT INTO met_language VALUES('2704','lang36','Portuguese','1','355','16','0','en');
INSERT INTO met_language VALUES('2705','lang35','Norwegian','1','354','16','0','en');
INSERT INTO met_language VALUES('2706','lang33','Macedonian','1','352','16','0','en');
INSERT INTO met_language VALUES('2707','lang32','Malay','1','351','16','0','en');
INSERT INTO met_language VALUES('2708','lang31','Maltese','1','350','16','0','en');
INSERT INTO met_language VALUES('2709','lang30','Romanian','1','349','16','0','en');
INSERT INTO met_language VALUES('2710','lang29','Lithuanian','1','348','16','0','en');
INSERT INTO met_language VALUES('2711','lang28','Latvian','1','347','16','0','en');
INSERT INTO met_language VALUES('2712','lang27','Latin','1','346','16','0','en');
INSERT INTO met_language VALUES('2713','lang26','Croatian','1','345','16','0','en');
INSERT INTO met_language VALUES('2714','lang25','Czech','1','344','16','0','en');
INSERT INTO met_language VALUES('2715','lang24','Catalan','1','343','16','0','en');
INSERT INTO met_language VALUES('2716','lang23','Galician','1','342','16','0','en');
INSERT INTO met_language VALUES('2717','lang22','Dutch','1','341','16','0','en');
INSERT INTO met_language VALUES('2718','lang21','Korean','1','340','16','0','en');
INSERT INTO met_language VALUES('2719','lang20','Haitian Creole','1','339','16','0','en');
INSERT INTO met_language VALUES('2720','lang17','Finnish','1','336','16','0','en');
INSERT INTO met_language VALUES('2721','lang16','Filipino','1','335','16','0','en');
INSERT INTO met_language VALUES('2722','lang14','Russian','1','333','16','0','en');
INSERT INTO met_language VALUES('2723','lang11','Boolean (Afrikaans)','1','330','16','0','en');
INSERT INTO met_language VALUES('2724','lang15','French','1','334','16','0','en');
INSERT INTO met_language VALUES('2725','lang12','Danish','1','331','16','0','en');
INSERT INTO met_language VALUES('2726','lang13','German','1','332','16','0','en');
INSERT INTO met_language VALUES('2727','lang3','Azerbaijani','1','322','16','0','en');
INSERT INTO met_language VALUES('2728','lang4','Irish','1','323','16','0','en');
INSERT INTO met_language VALUES('2729','lang5','Estonian','1','324','16','0','en');
INSERT INTO met_language VALUES('2730','lang6','Belarusian','1','325','16','0','en');
INSERT INTO met_language VALUES('2731','lang7','Bulgarian','1','326','16','0','en');
INSERT INTO met_language VALUES('2732','lang8','Icelandic','1','327','16','0','en');
INSERT INTO met_language VALUES('2733','lang9','Polish','1','328','16','0','en');
INSERT INTO met_language VALUES('2734','lang10','Persian','1','329','16','0','en');
INSERT INTO met_language VALUES('2735','lang2','Arabic','1','321','16','0','en');
INSERT INTO met_language VALUES('2736','lang1','Albanian','1','320','16','0','en');
INSERT INTO met_language VALUES('2737','langselect','Choose a language','1','318','0','0','en');
INSERT INTO met_language VALUES('2738','langselect1','Please choose the language','1','319','16','0','en');
INSERT INTO met_language VALUES('2739','langwebmanage','Website language','1','316','16','0','en');
INSERT INTO met_language VALUES('2740','langexplain6','Copy local language pack','1','307','16','0','en');
INSERT INTO met_language VALUES('2741','langexplain5','Online Download','1','306','1','0','en');
INSERT INTO met_language VALUES('2742','langexplain4','Copy the language has been the basic language package, such as copying English, the new language will be part of the front of the text will be in English.','1','305','16','0','en');
INSERT INTO met_language VALUES('2743','langexplain2','Language logo','1','303','16','0','en');
INSERT INTO met_language VALUES('2744','langexplain1','Corresponds to the front page of the site part of the text, be careful not to add special symbols, click the bottom of the save button to take effect. (Parameter name: value)','1','302','16','0','en');
INSERT INTO met_language VALUES('2745','langexplain_admin','Corresponding to the text of the back page of the website, please be careful not to add special symbols. Click the save button at the bottom to take effect. (parameter name: value)','1','302','16','0','en');
INSERT INTO met_language VALUES('2746','upfiletips35','Commercial authorization','1','293','2','0','en');
INSERT INTO met_language VALUES('2747','upfiletips37','news','1','295','14','0','en');
INSERT INTO met_language VALUES('2748','upfiletips38','server information','1','296','37','0','en');
INSERT INTO met_language VALUES('2749','upfiletips25','Recycle Bin','1','283','19','0','en');
INSERT INTO met_language VALUES('2750','upfiletips24','Feedback, message and resume submission','1','282','30','0','en');
INSERT INTO met_language VALUES('2751','upfiletips20','Stretch','1','278','13','0','en');
INSERT INTO met_language VALUES('2752','upfiletips21','Leave blank','1','279','13','0','en');
INSERT INTO met_language VALUES('2753','upfiletips22','Cut','1','280','13','0','en');
INSERT INTO met_language VALUES('2754','upfiletips23','Generation method','1','281','13','0','en');
INSERT INTO met_language VALUES('2755','upfiletips19','Watermark','1','277','13','0','en');
INSERT INTO met_language VALUES('2756','upfiletips16','Send the test','1','274','39','0','en');
INSERT INTO met_language VALUES('2757','upfiletips15','100 words or less','1','273','39','0','en');
INSERT INTO met_language VALUES('2758','upfiletips14','Website Description','1','272','39','0','en');
INSERT INTO met_language VALUES('2759','upfiletips13','Multiple keywords separated by vertical comma \",\" , recommended 3-4 keywords.','1','271','39','0','en');
INSERT INTO met_language VALUES('2760','upfiletips10','6.0.0 above version without manual settings, the current login URL is:','1','268','39','0','en');
INSERT INTO met_language VALUES('2761','upfiletips6','Enter','1','264','0','0','en');
INSERT INTO met_language VALUES('2762','upfiletips7','Basic Information','1','265','0','0','en');
INSERT INTO met_language VALUES('2763','upfiletips2','File Manager','1','260','0','0','en');
INSERT INTO met_language VALUES('2764','upfiletips1','Check the list of files','1','259','0','0','en');
INSERT INTO met_language VALUES('2765','dataexplain10','database backup','1','256','8','0','en');
INSERT INTO met_language VALUES('2766','dataexplain7','<span style = \"float: right;\"> Usually used when moving, take up more space </ span> Back up data and files (database, user files, program files)','1','253','8','0','en');
INSERT INTO met_language VALUES('2767','dataexplain6','<span style = \"float: right;\"> Generally do not backup, take up more space </ span> Backup uploaded files (pictures, documents, etc.)','1','252','8','0','en');
INSERT INTO met_language VALUES('2768','dataexplain5','<span style = \"float: right;\"> Recommended monthly backup, take up a little space </ span> Back up your data (without uploaded files)','1','251','8','0','en');
INSERT INTO met_language VALUES('2769','dataexplain2','You can upload database backup files, support sql or zip','1','248','8','0','en');
INSERT INTO met_language VALUES('2770','dataexplain1','There is currently no data','1','247','8','0','en');
INSERT INTO met_language VALUES('2771','databackup8','Compress the whole station','1','245','8','0','en');
INSERT INTO met_language VALUES('2772','databackup6','Upload folder backup','1','243','8','0','en');
INSERT INTO met_language VALUES('2773','databackup2','restore','1','239','8','0','en');
INSERT INTO met_language VALUES('2774','databackup3','download','1','240','8','0','en');
INSERT INTO met_language VALUES('2775','databackup4','Backup','1','241','8','0','en');
INSERT INTO met_language VALUES('2776','setimgTopMid','Top','1','233','13','0','en');
INSERT INTO met_language VALUES('2777','setimgLowMid','The bottom','1','235','13','0','en');
INSERT INTO met_language VALUES('2778','setimgRightMid','Right middle','1','234','13','0','en');
INSERT INTO met_language VALUES('2779','setimgLeftLow','Lower left','1','232','13','0','en');
INSERT INTO met_language VALUES('2780','setimgRightLow','Bottom right','1','231','13','0','en');
INSERT INTO met_language VALUES('2781','setimgRightTop','Top right','1','230','13','0','en');
INSERT INTO met_language VALUES('2782','setimgLeftTop','Top left','1','229','13','0','en');
INSERT INTO met_language VALUES('2783','setimgMid','intermediate','1','228','13','0','en');
INSERT INTO met_language VALUES('2784','setimgPosition','Watermark location','1','227','13','0','en');
INSERT INTO met_language VALUES('2785','setimgWordAngle','Watermark text angle','1','199','0','0','en');
INSERT INTO met_language VALUES('2786','setimgTip5','Level is 0','1','200','0','0','en');
INSERT INTO met_language VALUES('2787','setimgWordColor','Watermark text color','1','201','0','0','en');
INSERT INTO met_language VALUES('2788','setimgTip4','Please put the font file in the background management directory admin / include / fonts /','1','198','13','0','en');
INSERT INTO met_language VALUES('2789','setimgWordFont','Watermark text font','1','197','13','0','en');
INSERT INTO met_language VALUES('2790','setimgWordSize2','Big picture watermark text size','1','196','13','0','en');
INSERT INTO met_language VALUES('2791','setimgWord','Watermark text','1','193','13','0','en');
INSERT INTO met_language VALUES('2792','setimgTip3','Does not support Chinese (Chinese watermark needs to download Chinese fonts to support)','1','194','13','0','en');
INSERT INTO met_language VALUES('2793','setimgWordSize','Thumbnail watermark text size','1','195','13','0','en');
INSERT INTO met_language VALUES('2794','setimgImgWatermark','Image watermark','1','189','13','0','en');
INSERT INTO met_language VALUES('2795','setimgImg','Thumbnail watermark image','1','190','13','0','en');
INSERT INTO met_language VALUES('2796','setimgImg2','Big picture watermark picture','1','191','13','0','en');
INSERT INTO met_language VALUES('2797','setimgTip2','Only .jpg | .png formats are supported','1','192','13','0','en');
INSERT INTO met_language VALUES('2798','setimgWatermarkType','Watermark type','1','187','13','0','en');
INSERT INTO met_language VALUES('2799','setimgWordWatermark','Text watermark','1','188','13','0','en');
INSERT INTO met_language VALUES('2800','setimgThumb','Thumbnail add watermark','1','186','13','0','en');
INSERT INTO met_language VALUES('2801','setimgWatermark','Set effective range','1','184','13','0','en');
INSERT INTO met_language VALUES('2802','setimgBigImg','Add watermark to detailed large image','1','185','13','0','en');
INSERT INTO met_language VALUES('2803','setimgrename2','Renaming a file name helps to reduce the anomaly','1','183','30','0','en');
INSERT INTO met_language VALUES('2804','setimgrename','Automatic rename','1','181','30','0','en');
INSERT INTO met_language VALUES('2805','setimgrename1','Rename the uploaded file name automatically','1','182','30','0','en');
INSERT INTO met_language VALUES('2806','setimgWater','Automatic generated','1','179','0','0','en');
INSERT INTO met_language VALUES('2807','setimgHeight','high','1','176','0','0','en');
INSERT INTO met_language VALUES('2808','setimgPixel','Pixel','1','175','0','0','en');
INSERT INTO met_language VALUES('2809','setimgWidth','width','1','174','0','0','en');
INSERT INTO met_language VALUES('2810','authTip2','The business registration code you entered does not match the domain name!','1','160','0','0','en');
INSERT INTO met_language VALUES('2811','authKey','Key','1','158','0','0','en');
INSERT INTO met_language VALUES('2812','authAuthorizedCode','Authorization code','1','159','0','0','en');
INSERT INTO met_language VALUES('2813','setfilesize','File size','1','134','0','0','en');
INSERT INTO met_language VALUES('2814','setsafemember','Submit a verification code at the front desk','1','127','30','0','en');
INSERT INTO met_language VALUES('2815','setsafeadmin','Background login verification code','1','126','30','0','en');
INSERT INTO met_language VALUES('2816','setsafeupdate','Delete the upgrade file','1','124','30','0','en');
INSERT INTO met_language VALUES('2817','setsafeupdate1','After deletion, you can enhance the website\'s security performance','1','125','30','0','en');
INSERT INTO met_language VALUES('2818','setsafeinstall','Delete the installation file','1','123','30','0','en');
INSERT INTO met_language VALUES('2819','setsafeadminname1c','Only the founder can be modified, does not support Chinese, after some space to modify the file name need to manually modify the folder name via FTP, the current background URL:','1','122','30','0','en');
INSERT INTO met_language VALUES('2820','setsafeadminname','Background folder name','1','118','30','0','en');
INSERT INTO met_language VALUES('2821','setsafeadminname1','Safety advice:','1','119','30','0','en');
INSERT INTO met_language VALUES('2822','setdbNotExist','file does not exist','1','114','30','0','en');
INSERT INTO met_language VALUES('2823','setdbArchiveOK','Compression successful','1','115','8','0','en');
INSERT INTO met_language VALUES('2824','setdbImportOK','Import successful','1','111','8','0','en');
INSERT INTO met_language VALUES('2825','setdbBackupOK','Database backup is completed!','1','109','8','0','en');
INSERT INTO met_language VALUES('2826','setdbTip2','Data can not be backed up to the server! Please check','1','104','8','0','en');
INSERT INTO met_language VALUES('2827','setdbTip3','Whether the directory is writable','1','105','8','0','en');
INSERT INTO met_language VALUES('2828','setdbImportData','Import','1','101','8','0','en');
INSERT INTO met_language VALUES('2829','setdbLack','Missing sub-volumes','1','100','8','0','en');
INSERT INTO met_language VALUES('2830','setdbFilesize','File size','1','97','8','0','en');
INSERT INTO met_language VALUES('2831','setdbTime','Backup time','1','98','8','0','en');
INSERT INTO met_language VALUES('2832','setdbNumber','Sub-volume','1','99','8','0','en');
INSERT INTO met_language VALUES('2833','setdbsysver','system version','1','96','8','0','en');
INSERT INTO met_language VALUES('2834','setdbFilename','file name','1','95','8','0','en');
INSERT INTO met_language VALUES('2835','setdbImport','Import backup data','1','88','8','0','en');
INSERT INTO met_language VALUES('2836','langshuom','Description','1','86','3','0','en');
INSERT INTO met_language VALUES('2837','langtype','Language status','1','85','0','0','en');
INSERT INTO met_language VALUES('2838','langnameorder','Do not repeat with other languages','1','80','16','0','en');
INSERT INTO met_language VALUES('2839','langnamerepeat','Language ID can not be repeated','1','81','16','0','en');
INSERT INTO met_language VALUES('2840','langone','The system has only one language, can not be deleted!','1','82','16','0','en');
INSERT INTO met_language VALUES('2841','langnamenull','Language name can not be empty','1','77','16','0','en');
INSERT INTO met_language VALUES('2842','langouturlinfo','Be sure to include http: // or https: //. The program that accesses this domain automatically jumps to this language (you need to do a good name binding) or do an external link.','1','74','16','0','en');
INSERT INTO met_language VALUES('2843','langnewwindows','open in a new window','1','75','16','0','en');
INSERT INTO met_language VALUES('2844','langmarkinfo','Please use English letters, such as cn, can not be repeated with other language logo','1','71','16','0','en');
INSERT INTO met_language VALUES('2845','langurlinfo','The site language that is displayed by default when the site is visited','1','69','16','0','en');
INSERT INTO met_language VALUES('2846','langurlinfo1','Web language displayed by default when the website background is visited','1','69','16','0','en');
INSERT INTO met_language VALUES('2847','langorderinfo','Can not repeat','1','70','16','0','en');
INSERT INTO met_language VALUES('2848','langadminyes','The administrator can choose the background language before logging in','1','66','16','0','en');
INSERT INTO met_language VALUES('2849','langsw','Language switching','1','68','16','0','en');
INSERT INTO met_language VALUES('2850','langhome','default language','1','63','16','0','en');
INSERT INTO met_language VALUES('2851','langchok','Generally linked to the form displayed in the upper right corner of the front desk','1','62','16','0','en');
INSERT INTO met_language VALUES('2852','langch','Simplified and Traditional automatic switching','1','60','16','0','en');
INSERT INTO met_language VALUES('2853','langwebeditor','Edit parameters','1','58','16','0','en');
INSERT INTO met_language VALUES('2854','langmark','Language logo','1','54','0','0','en');
INSERT INTO met_language VALUES('2855','langouturl','Independent domain name','1','55','16','0','en');
INSERT INTO met_language VALUES('2856','langpara','Plugin language','1','57','16','0','en');
INSERT INTO met_language VALUES('2857','langflag','Flag sign','1','53','16','0','en');
INSERT INTO met_language VALUES('2858','langname','Language name','1','52','16','0','en');
INSERT INTO met_language VALUES('2859','langadd','Add a new language','1','50','16','0','en');
INSERT INTO met_language VALUES('2860','langweb','Website language','1','49','0','0','en');
INSERT INTO met_language VALUES('2861','langadmin','Adminsite language','1','49','0','0','en');
INSERT INTO met_language VALUES('2862','setbasicTip11','E-mail password used to send mail','1','47','39','0','en');
INSERT INTO met_language VALUES('2863','setbasicTip10','Such as QQ mailbox smtp.qq.com','1','45','39','0','en');
INSERT INTO met_language VALUES('2864','setbasicSMTPPassword','email Password','1','46','39','0','en');
INSERT INTO met_language VALUES('2865','setbasicSMTPServer','SMTP','1','44','39','0','en');
INSERT INTO met_language VALUES('2866','setbasicTip8','E-mail account used to send mail','1','43','39','0','en');
INSERT INTO met_language VALUES('2867','setbasicEmailAccount','email address','1','42','39','0','en');
INSERT INTO met_language VALUES('2868','setbasicTip7','The sender\'s name is displayed','1','41','39','0','en');
INSERT INTO met_language VALUES('2869','setbasicTip5','Multiple please use | separated','1','33','30','0','en');
INSERT INTO met_language VALUES('2870','setbasicTip6','Outbox settings (all mail within the station are sent by this email, such as member password retrieve mail, etc.)','1','34','39','0','en');
INSERT INTO met_language VALUES('2871','setbasicFromName','Sender','1','35','39','0','en');
INSERT INTO met_language VALUES('2872','setbasicEnableFormat','File formats allowed to be uploaded','1','32','30','0','en');
INSERT INTO met_language VALUES('2873','setbasicUploadMax','File upload maximum','1','31','30','0','en');
INSERT INTO met_language VALUES('2874','setbasicWebName','Website name','1','29','39','0','en');
INSERT INTO met_language VALUES('2875','setbasicWebInfoSet','Website basic information settings','1','28','0','0','en');
INSERT INTO met_language VALUES('2876','reserved','all rights reserved','1','24','37','0','en');
INSERT INTO met_language VALUES('2877','copyright','Changsha Mituo Information Technology Co., Ltd. (MetInfo Inc.)','1','25','0','0','en');
INSERT INTO met_language VALUES('2878','setbasicTip14','gmail mailbox need space to support SSL, please open SSL, or replaced by other mail! ! !','1','429','39','0','en');
INSERT INTO met_language VALUES('2879','setbasicTip15','Space does not support SSL send mail, please open SSL, or replaced by TLS! ! !','1','430','39','0','en');
INSERT INTO met_language VALUES('2880','feedbackautosms','SMS reply settings','1','177','0','0','en');
INSERT INTO met_language VALUES('2881','fdincAutosms','SMS reply','1','178','0','0','en');
INSERT INTO met_language VALUES('2882','fdincAutoContentsms','Reply SMS content','1','179','0','0','en');
INSERT INTO met_language VALUES('2883','fdincTipsms','Check the box will automatically reply to the user text messages, you need to use the SMS feature in my application to recharge SMS','1','180','0','0','en');
INSERT INTO met_language VALUES('2884','fdinctellsms','Contact phone field name','1','181','0','0','en');
INSERT INTO met_language VALUES('2885','fdinctells','Used to retrieve the user\'s contact number in order to reply to a text message. Field type must be \"tel\"','1','182','0','0','en');
INSERT INTO met_language VALUES('2886','hotsearches','popular searches','1','431','16','0','en');
INSERT INTO met_language VALUES('2887','updatenow','upgrade immediately','1','437','0','0','en');
INSERT INTO met_language VALUES('2888','updatelater','Upgrade later','1','438','0','0','en');
INSERT INTO met_language VALUES('2889','tag','TAG label','1','434','0','0','en');
INSERT INTO met_language VALUES('2890','displaytype','Front display','1','183','0','0','en');
INSERT INTO met_language VALUES('2891','checkupdate','Check for updates','1','439','0','0','en');
INSERT INTO met_language VALUES('2892','checkupdatetips','I am sorry! You do not have enough privileges to upgrade online.','1','440','0','0','en');
INSERT INTO met_language VALUES('2893','paraname','name','1','187','0','0','en');
INSERT INTO met_language VALUES('2894','message_name','Name field name','1','240','20','0','en');
INSERT INTO met_language VALUES('2895','message_name1','Used to get the user\'s name, field type must be \"short\"','1','241','20','0','en');
INSERT INTO met_language VALUES('2896','message_content','Message content field name','1','242','20','0','en');
INSERT INTO met_language VALUES('2897','message_content1','Used to obtain the user\'s message content, field type must be \"text\"','1','243','20','0','en');
INSERT INTO met_language VALUES('2898','message_AcceptMail','Message mail receiving mailbox','1','244','20','0','en');
INSERT INTO met_language VALUES('2899','column_searchname','Please enter the column name','1','246','0','0','en');
INSERT INTO met_language VALUES('2900','jsx38','You do not have full control, please contact the administrator to open','1','446','0','0','en');
INSERT INTO met_language VALUES('2901','formerror1','Please fill in this field.','1','0','0','0','en');
INSERT INTO met_language VALUES('2902','formerror2','Please choose one of these options.','1','0','0','0','en');
INSERT INTO met_language VALUES('2903','formerror3','Please enter the correct phone number.','1','0','0','0','en');
INSERT INTO met_language VALUES('2904','formerror4','Please enter the correct email address.','1','0','0','0','en');
INSERT INTO met_language VALUES('2905','formerror5','The password entered twice is different. Please re-enter it.','1','0','0','0','en');
INSERT INTO met_language VALUES('2906','formerror6','Please enter at least & metinfo & characters.','1','0','0','0','en');
INSERT INTO met_language VALUES('2907','formerror7','Input can not exceed & metinfo & characters.','1','0','0','0','en');
INSERT INTO met_language VALUES('2908','formerror8','The number of characters entered must be between & metinfo &.','1','0','0','0','en');
INSERT INTO met_language VALUES('2909','style_Settings','Style set','1','0','0','0','en');
INSERT INTO met_language VALUES('2910','All_empty_message','Clear all the news','1','0','0','0','en');
INSERT INTO met_language VALUES('2911','manually_static_rules','Part of the space need to manually set the pseudo-static rules file','1','0','32','0','en');
INSERT INTO met_language VALUES('2912','pseudo_static','See pseudo-static rules','1','0','32','0','en');
INSERT INTO met_language VALUES('2913','sys_static','Pseudo-static','1','0','32','0','en');
INSERT INTO met_language VALUES('2914','anchor_textadd','Add anchor text','1','0','11','0','en');
INSERT INTO met_language VALUES('2915','applies_paper','Only in front of the page content text, such as article details page content text.','1','0','32','0','en');
INSERT INTO met_language VALUES('2916','configuration_section','Configure the column','1','0','0','0','en');
INSERT INTO met_language VALUES('2917','template_code1','Please enter the template number','1','0','3','0','en');
INSERT INTO met_language VALUES('2918','industry_segments','Industry breakdown','1','0','3','0','en');
INSERT INTO met_language VALUES('2919','color_filter','Color screening','1','0','3','0','en');
INSERT INTO met_language VALUES('2920','industry_screening','Industry screening','1','0','3','0','en');
INSERT INTO met_language VALUES('2921','set_password','The third step: set the payment password','1','0','3','0','en');
INSERT INTO met_language VALUES('2922','login_password','Bit. Pay for the application need to enter the payment password, please do not be consistent with the login password.','1','0','3','0','en');
INSERT INTO met_language VALUES('2923','services_future','Can be used to retrieve the password and get more services in the future of the application market','1','0','3','0','en');
INSERT INTO met_language VALUES('2924','personal_information','Step two: set up personal information','1','0','3','0','en');
INSERT INTO met_language VALUES('2925','sys_password','login password','1','0','3','0','en');
INSERT INTO met_language VALUES('2926','create_account','The first step: create an account','1','0','3','0','en');
INSERT INTO met_language VALUES('2927','buy_time','Purchase time','1','0','3','0','en');
INSERT INTO met_language VALUES('2928','please_click','Payment is successful, please click! !','1','0','3','0','en');
INSERT INTO met_language VALUES('2929','payment_method','Please select mode of payment','1','0','3','0','en');
INSERT INTO met_language VALUES('2930','sys_unionpay','UnionPay','1','0','3','0','en');
INSERT INTO met_language VALUES('2931','enter_amount','Please enter the recharge amount','1','0','3','0','en');
INSERT INTO met_language VALUES('2932','payment_amount','Payment amount','1','0','3','0','en');
INSERT INTO met_language VALUES('2933','account_Settings','User Center','1','0','3','0','en');
INSERT INTO met_language VALUES('2934','consumption_record','Expenses record','1','0','3','0','en');
INSERT INTO met_language VALUES('2935','website_manually','After successful login your website will automatically log in to this account, unless you manually exit.','1','0','3','0','en');
INSERT INTO met_language VALUES('2936','application_market','Log in to the MetInfo User Center','1','0','3','0','en');
INSERT INTO met_language VALUES('2937','installations','Installation volume','1','0','0','0','en');
INSERT INTO met_language VALUES('2938','permission_download','No permission to download','1','0','3','0','en');
INSERT INTO met_language VALUES('2939','goods_comment','Buy a product before commenting','1','0','3','0','en');
INSERT INTO met_language VALUES('2940','product_commented','The same product up to comment 3 times','1','0','3','0','en');
INSERT INTO met_language VALUES('2941','password_mistake','Pay the wrong password','1','0','3','0','en');
INSERT INTO met_language VALUES('2942','please_again','Please log in to the App Store. The App Store uses an independent account system. If you do not have an account, please register first!','1','0','3','0','en');
INSERT INTO met_language VALUES('2943','have_bought','bought','1','0','3','0','en');
INSERT INTO met_language VALUES('2944','download_application','The current system can not download this application, please upgrade the system','1','0','3','0','en');
INSERT INTO met_language VALUES('2945','sys_evaluation','Evaluation of success! Thank you for your comment!','1','0','3','0','en');
INSERT INTO met_language VALUES('2946','downloads','start download','1','0','3','0','en');
INSERT INTO met_language VALUES('2947','click_rating','Please click star rating!','1','0','3','0','en');
INSERT INTO met_language VALUES('2948','payment_password','New payment password','1','0','3','0','en');
INSERT INTO met_language VALUES('2949','original_password1','Please enter the original payment password','1','0','3','0','en');
INSERT INTO met_language VALUES('2950','original_password','The original payment password','1','0','3','0','en');
INSERT INTO met_language VALUES('2951','password_length','Password length','1','0','3','0','en');
INSERT INTO met_language VALUES('2952','please_enter','Please enter a new password','1','0','3','0','en');
INSERT INTO met_language VALUES('2953','login_password_new','New login password','1','0','3','0','en');
INSERT INTO met_language VALUES('2954','original_passwords1','Please enter the original password','1','0','3','0','en');
INSERT INTO met_language VALUES('2955','original_passwords','The original login password','1','0','3','0','en');
INSERT INTO met_language VALUES('2956','account_password','Please fill in the application market account login password, rather than website login password.','1','0','3','0','en');
INSERT INTO met_language VALUES('2957','please_password','Please enter your password','1','0','3','0','en');
INSERT INTO met_language VALUES('2958','login_password1','You must fill in the login password to modify the data','1','0','3','0','en');
INSERT INTO met_language VALUES('2959','popular_template','Hot template','1','0','3','0','en');
INSERT INTO met_language VALUES('2960','popular_application','Popular applications','1','0','3','0','en');
INSERT INTO met_language VALUES('2961','number_installation','Installation times','1','0','3','0','en');
INSERT INTO met_language VALUES('2962','application_name','Application Name','1','0','3','0','en');
INSERT INTO met_language VALUES('2963','introduction_developers','Developer Profile','1','0','3','0','en');
INSERT INTO met_language VALUES('2964','sys_head','Avatar','1','0','3','0','en');
INSERT INTO met_language VALUES('2965','name_developers','Developer name','1','0','3','0','en');
INSERT INTO met_language VALUES('2966','dont_fill','Not fill','1','0','3','0','en');
INSERT INTO met_language VALUES('2967','mouse_click_rating','Mouse over the star to click on the score','1','0','3','0','en');
INSERT INTO met_language VALUES('2968','score','score','1','0','3','0','en');
INSERT INTO met_language VALUES('2969','want_comment','I want to comment','1','0','3','0','en');
INSERT INTO met_language VALUES('2970','back','Previous page','1','0','1','0','en');
INSERT INTO met_language VALUES('2971','running_environment','Operating environment','1','0','3','0','en');
INSERT INTO met_language VALUES('2972','updated_date','Updated','1','0','3','0','en');
INSERT INTO met_language VALUES('2973','online_presentation','Online demo','1','0','3','0','en');
INSERT INTO met_language VALUES('2974','screenshots','Screenshots','1','0','3','0','en');
INSERT INTO met_language VALUES('2975','is_introduced','Introduction','1','0','3','0','en');
INSERT INTO met_language VALUES('2976','comments','comment','1','0','3','0','en');
INSERT INTO met_language VALUES('2977','evaluation','Person evaluation)','1','0','3','0','en');
INSERT INTO met_language VALUES('2978','total_of','(Total','1','0','3','0','en');
INSERT INTO met_language VALUES('2979','pay_password','Pay the password','1','0','3','0','en');
INSERT INTO met_language VALUES('2980','temporary_access1','Please enter the temporary access domain name, it must be a third-level domain name.','1','0','3','0','en');
INSERT INTO met_language VALUES('2981','temporary_access','Temporary access to the domain name','1','0','3','0','en');
INSERT INTO met_language VALUES('2982','top_domain_names','Top level domain','1','0','3','0','en');
INSERT INTO met_language VALUES('2983','buy_template_must','After the purchase process will automatically get the current site domain name and binding, after this template can only be used under the binding domain name.','1','0','3','0','en');
INSERT INTO met_language VALUES('2984','amount_of','Amount','1','0','3','0','en');
INSERT INTO met_language VALUES('2985','purchase_program','Purchase item','1','0','3','0','en');
INSERT INTO met_language VALUES('2986','success_payment','After payment is successful, please click this link to jump! !','1','0','3','0','en');
INSERT INTO met_language VALUES('2987','latest_version','It is the latest version','1','0','3','0','en');
INSERT INTO met_language VALUES('2988','pay_success','payment successful','1','0','3','0','en');
INSERT INTO met_language VALUES('2989','be_updated','Can be updated to','1','0','1','0','en');
INSERT INTO met_language VALUES('2990','update_log','Update log','1','0','1','0','en');
INSERT INTO met_language VALUES('2991','current_version','current version','1','0','1','0','en');
INSERT INTO met_language VALUES('2992','program_information','Program information','1','0','1','0','en');
INSERT INTO met_language VALUES('2993','system_maintenance','System maintenance','1','0','0','0','en');
INSERT INTO met_language VALUES('2994','link_remote','Link is not on the remote server','1','0','0','0','en');
INSERT INTO met_language VALUES('2995','try_again','Retry','1','0','0','0','en');
INSERT INTO met_language VALUES('2996','give_installation','Abandon the installation','1','0','0','0','en');
INSERT INTO met_language VALUES('2997','configuratio_template','Configure the template','1','0','0','0','en');
INSERT INTO met_language VALUES('2998','seconds_background','After a second refresh the background','1','0','0','0','en');
INSERT INTO met_language VALUES('2999','installation_complete','The installation is complete','1','0','0','0','en');
INSERT INTO met_language VALUES('3000','installation','installing','1','0','0','0','en');
INSERT INTO met_language VALUES('3001','possible_reasons','Possible Causes','1','0','0','0','en');
INSERT INTO met_language VALUES('3002','download_interrupt','File download interrupted','1','0','0','0','en');
INSERT INTO met_language VALUES('3003','write_permission','The file does not have write permission or the newly created subfolder does not have write permission','1','0','0','0','en');
INSERT INTO met_language VALUES('3004','download','downloading','1','0','0','0','en');
INSERT INTO met_language VALUES('3005','following_documents','The following documents did not modify permissions, can not be upgraded!','1','0','0','0','en');
INSERT INTO met_language VALUES('3006','document_upgrade','System upgrade documentation','1','0','0','0','en');
INSERT INTO met_language VALUES('3007','file_permissions','File permissions detection','1','0','0','0','en');
INSERT INTO met_language VALUES('3008','anchor_text','Station anchor text','1','0','11','0','en');
INSERT INTO met_language VALUES('3009','please_select','Please select a section','1','0','0','0','en');
INSERT INTO met_language VALUES('3010','log_successfully','Landed successfully','1','0','0','0','en');
INSERT INTO met_language VALUES('3011','out_of_success','exit successfully','1','0','3','0','en');
INSERT INTO met_language VALUES('3012','password_changing','Pay the password change','1','0','3','0','en');
INSERT INTO met_language VALUES('3013','login_password_changing','Login password change','1','0','3','0','en');
INSERT INTO met_language VALUES('3014','account_information','Account information settings','1','0','3','0','en');
INSERT INTO met_language VALUES('3015','my_bill','Recharge record','1','0','0','0','en');
INSERT INTO met_language VALUES('3016','keep_sorting','Save the order','1','0','0','0','en');
INSERT INTO met_language VALUES('3017','structure_mode','Composition way','1','0','32','0','en');
INSERT INTO met_language VALUES('3018','title_cannot_empty!','The title can not be blank!','1','0','0','0','en');
INSERT INTO met_language VALUES('3019','adaptive','Adaptive','1','0','4','0','en');
INSERT INTO met_language VALUES('3020','delete_information','Are you sure you want to delete this information? Can not be restored after deleted.','1','0','1','0','en');
INSERT INTO met_language VALUES('3021','page_for_details','Details page','1','0','36','0','en');
INSERT INTO met_language VALUES('3022','default_values','Defaults','1','0','0','0','en');
INSERT INTO met_language VALUES('3023','label','label','1','0','0','0','en');
INSERT INTO met_language VALUES('3024','for','for','1','0','0','0','en');
INSERT INTO met_language VALUES('3025','verify_password','Please enter the password again','1','0','3','0','en');
INSERT INTO met_language VALUES('3026','Repeat_password','Repeat password','1','0','3','0','en');
INSERT INTO met_language VALUES('3027','for_details','Application Details','1','0','3','0','en');
INSERT INTO met_language VALUES('3028','template','template','1','0','3','0','en');
INSERT INTO met_language VALUES('3029','application','Services','1','0','3','0','en');
INSERT INTO met_language VALUES('3030','Prompt_password','Please enter the password','1','0','3','0','en');
INSERT INTO met_language VALUES('3031','alipay','Alipay','1','0','0','0','en');
INSERT INTO met_language VALUES('3032','account','account number','1','0','0','0','en');
INSERT INTO met_language VALUES('3033','Prompt_email','Please input the email address','1','0','3','0','en');
INSERT INTO met_language VALUES('3034','mailbox','mailbox','1','0','0','0','en');
INSERT INTO met_language VALUES('3035','Prompt_mobile','Please enter the phone number','1','0','3','0','en');
INSERT INTO met_language VALUES('3036','Prompt_user','Please enter your username','1','0','3','0','en');
INSERT INTO met_language VALUES('3037','balance','Balance','1','0','3','0','en');
INSERT INTO met_language VALUES('3038','buy_records','Purchase History','1','0','3','0','en');
INSERT INTO met_language VALUES('3039','registration','registered','1','0','0','0','en');
INSERT INTO met_language VALUES('3040','landing','Login','1','0','0','0','en');
INSERT INTO met_language VALUES('3041','page_range','Page range','1','0','0','0','en');
INSERT INTO met_language VALUES('3042','sys_navigation','Navigation: column settings can be adjusted whether the new window opens.','1','0','35','0','en');
INSERT INTO met_language VALUES('3043','sys_navigation2','When displaying the column list, the pictures need to be uploaded in the column settings (column pictures).','1','0','35','0','en');
INSERT INTO met_language VALUES('3044','suggested_size','Recommended size','1','0','35','0','en');
INSERT INTO met_language VALUES('3045','website_information','Website information','1','0','39','0','en');
INSERT INTO met_language VALUES('3046','email_Settings','Send mailbox configuration','1','0','39','0','en');
INSERT INTO met_language VALUES('3047','third_party_code','Third-party code','1','0','0','0','en');
INSERT INTO met_language VALUES('3048','please_login','please log in first!','1','0','0','0','en');
INSERT INTO met_language VALUES('3049','next_page','next page','1','0','1','0','en');
INSERT INTO met_language VALUES('3050','background_page','Background Home','1','0','0','0','en');
INSERT INTO met_language VALUES('3051','modify_information','modify personal information','1','0','0','0','en');
INSERT INTO met_language VALUES('3052','sys_select','Featured','1','0','3','0','en');
INSERT INTO met_language VALUES('3053','should_used','Application','1','0','3','0','en');
INSERT INTO met_language VALUES('3054','sys_template','Template','1','0','3','0','en');
INSERT INTO met_language VALUES('3055','sys_purchase','buy','1','0','3','0','en');
INSERT INTO met_language VALUES('3056','sys_payment','Pay','1','0','3','0','en');
INSERT INTO met_language VALUES('3057','extension_school','Rice Extension College','1','0','0','0','en');
INSERT INTO met_language VALUES('3058','the_bit','Bit','1','0','0','0','en');
INSERT INTO met_language VALUES('3059','the_server','server','1','0','0','0','en');
INSERT INTO met_language VALUES('3060','the_version','version','1','0','0','0','en');
INSERT INTO met_language VALUES('3061','safety_efficiency','Safety and efficiency','1','0','36','0','en');
INSERT INTO met_language VALUES('3062','data_processing','Backup and recovery','1','0','36','0','en');
INSERT INTO met_language VALUES('3063','appearance','Site templates','1','0','0','0','en');
INSERT INTO met_language VALUES('3064','the_user','user','1','0','8','0','en');
INSERT INTO met_language VALUES('3065','safety','Safety','1','0','8','0','en');
INSERT INTO met_language VALUES('3066','attention','attention','1','0','0','0','en');
INSERT INTO met_language VALUES('3067','author','Author','1','0','0','0','en');
INSERT INTO met_language VALUES('3068','sys_authorization1','Enter the business license','1','0','0','0','en');
INSERT INTO met_language VALUES('3069','sys_authorization2','Understand commercial licensing','1','0','0','0','en');
INSERT INTO met_language VALUES('3070','detection','checking','1','0','0','0','en');
INSERT INTO met_language VALUES('3071','entry_authorization','Re-enter the authorization','1','0','0','0','en');
INSERT INTO met_language VALUES('3072','display_number','Number of tabs displayed','1','0','36','0','en');
INSERT INTO met_language VALUES('3073','corresponding_products','Each column can be set separately. If it is not set separately, the configuration of the upper column can be invoked.','1','0','36','0','en');
INSERT INTO met_language VALUES('3074','tab_title1','Tab a title','1','0','36','0','en');
INSERT INTO met_language VALUES('3075','tab_title2','Tab two titles','1','0','36','0','en');
INSERT INTO met_language VALUES('3076','tab_title3','Tab three titles','1','0','36','0','en');
INSERT INTO met_language VALUES('3077','tab_title4','Tab four titles','1','0','36','0','en');
INSERT INTO met_language VALUES('3078','tab_title5','Tab Five Title','1','0','36','0','en');
INSERT INTO met_language VALUES('3079','download_prompt','Ongoing download, please do not operate the page!','1','0','0','0','en');
INSERT INTO met_language VALUES('3080','purchase_application','The purchase of the application can only act on the current website','1','0','0','0','en');
INSERT INTO met_language VALUES('3081','text_color','Text color','1','0','41','0','en');
INSERT INTO met_language VALUES('3082','the_menu','Mobile menu','1','0','41','0','en');
INSERT INTO met_language VALUES('3083','background_color','background color','1','0','41','0','en');
INSERT INTO met_language VALUES('3084','external_links','external link','1','0','0','0','en');
INSERT INTO met_language VALUES('3085','appmarket_jurisdiction','You do not have permission to view the app market, please contact the administrator to open.','1','0','0','0','en');
INSERT INTO met_language VALUES('3086','setup_permissions','You do not have set permissions, please contact the administrator to open.','1','0','0','0','en');
INSERT INTO met_language VALUES('3087','release','Add to','1','0','0','0','en');
INSERT INTO met_language VALUES('3088','administration','management','1','0','0','0','en');
INSERT INTO met_language VALUES('3089','customers','Online Service','1','0','0','0','en');
INSERT INTO met_language VALUES('3090','seo','SEO','1','0','32','0','en');
INSERT INTO met_language VALUES('3091','member','member','1','0','38','0','en');
INSERT INTO met_language VALUES('3092','language','Language','1','0','0','0','en');
INSERT INTO met_language VALUES('3093','htmltopseudo','Static page pseudo-static','1','0','11','0','en');
INSERT INTO met_language VALUES('3094','htmltopseudotips','Use pseudo-static way to achieve static page URL, the current static page URL unchanged. SEO effect will not be affected. Need space to support pseudo-static, and will delete the static page file.','1','0','11','0','en');
INSERT INTO met_language VALUES('3095','timedrelease','Regular release','1','0','0','0','en');
INSERT INTO met_language VALUES('3096','mod_rewrite_column','Open pseudo-static space environment configuration required to open the mod_rewrite module, if not open the contact space solution.','1','0','32','0','en');
INSERT INTO met_language VALUES('3097','displaytype2','Front desk hidden','1','0','0','0','en');
INSERT INTO met_language VALUES('3098','js73','Static page name has been used','1','0','0','0','en');
INSERT INTO met_language VALUES('3099','js74','Only supports Chinese, uppercase and lowercase letters, numbers, underline','1','0','0','0','en');
INSERT INTO met_language VALUES('3100','js75','Name available','1','0','0','0','en');
INSERT INTO met_language VALUES('3101','js76','Please add columns and then set the page content on this page','1','0','0','0','en');
INSERT INTO met_language VALUES('3102','unrecom','Cancel recommended','1','0','0','0','en');
INSERT INTO met_language VALUES('3103','untop','Unpin','1','0','0','0','en');
INSERT INTO met_language VALUES('3104','modistauts','Status changes','1','0','0','0','en');
INSERT INTO met_language VALUES('3105','goods','commodity','1','0','0','0','en');
INSERT INTO met_language VALUES('3106','js77','The name of the background folder supports only uppercase and lowercase letters, numbers, and underscores','1','0','0','0','en');
INSERT INTO met_language VALUES('3107','js78','Administrator name can not be repeated','1','0','0','0','en');
INSERT INTO met_language VALUES('3108','banner_pcheight_v6','Computer-side height','1','0','4','0','en');
INSERT INTO met_language VALUES('3109','banner_setalert_v6','Fill the value, (eg 300, representing 300px) suggested adaptive height','1','0','4','0','en');
INSERT INTO met_language VALUES('3110','banner_pidheight_v6','Tablet-side height','1','0','4','0','en');
INSERT INTO met_language VALUES('3111','banner_phoneheight_v6','Phone side height','1','0','4','0','en');
INSERT INTO met_language VALUES('3112','banner_imgtitlecolor_v6','Picture title color','1','0','4','0','en');
INSERT INTO met_language VALUES('3113','banner_needtempsupport_v6','Normally, no settings are required. Some special templates support the front desk before they are displayed.','1','0','4','0','en');
INSERT INTO met_language VALUES('3114','banner_imgdesc_v6','image description','1','0','4','0','en');
INSERT INTO met_language VALUES('3115','banner_imgdesccolor_v6','Picture description color','1','0','4','0','en');
INSERT INTO met_language VALUES('3116','banner_imgwordpos_v6','Image text location','1','0','4','0','en');
INSERT INTO met_language VALUES('3117','posleft','left','1','0','4','0','en');
INSERT INTO met_language VALUES('3118','posright','right','1','0','4','0','en');
INSERT INTO met_language VALUES('3119','posup','on','1','0','4','0','en');
INSERT INTO met_language VALUES('3120','poslower','under','1','0','4','0','en');
INSERT INTO met_language VALUES('3121','poscenter','Center','1','0','4','0','en');
INSERT INTO met_language VALUES('3122','batch_wm_v6','Batch watermarking','1','0','5','0','en');
INSERT INTO met_language VALUES('3123','batch_rmwm_v6','Remove the watermark','1','0','5','0','en');
INSERT INTO met_language VALUES('3124','batch_addwm_v6','Add watermark','1','0','5','0','en');
INSERT INTO met_language VALUES('3125','admin_movetocolumn_v6','Move to the specified column','1','0','0','0','en');
INSERT INTO met_language VALUES('3126','admin_copytocolumn_v6','Copy to the specified column','1','0','0','0','en');
INSERT INTO met_language VALUES('3127','admin_colunmmanage_v6','Column','1','0','0','0','en');
INSERT INTO met_language VALUES('3128','parmanage','Parameter management','1','0','0','0','en');
INSERT INTO met_language VALUES('3129','refresh','Refresh','1','0','0','0','en');
INSERT INTO met_language VALUES('3130','desctext','Description text','1','0','0','0','en');
INSERT INTO met_language VALUES('3131','linkto','Link to','1','0','0','0','en');
INSERT INTO met_language VALUES('3132','releasenow','Publish now','1','0','0','0','en');
INSERT INTO met_language VALUES('3133','js79','Views','1','0','0','0','en');
INSERT INTO met_language VALUES('3134','added','Added','1','0','0','0','en');
INSERT INTO met_language VALUES('3135','column_littleicon_v6','Small icon icon','1','0','5','0','en');
INSERT INTO met_language VALUES('3136','column_choosicon_v6','Choice icon','1','0','5','0','en');
INSERT INTO met_language VALUES('3137','column_inputcolumnfolder_v6','Enter the name of the section folder','1','0','5','0','en');
INSERT INTO met_language VALUES('3138','browserupdatetips','You are using a <strong> obsolete </ strong> browser. Please <a href=https://browsehappy.com/ target=_blank> upgrade your browser </a> to enhance your experience.','1','0','0','0','en');
INSERT INTO met_language VALUES('3139','column_selecticonlib_v6','Icon library selection','1','0','5','0','en');
INSERT INTO met_language VALUES('3140','column_viewicon_v6','Browse icons','1','0','5','0','en');
INSERT INTO met_language VALUES('3141','tips2_v6','Appears at the bottom of the detail page to aggregate the content','1','0','0','0','en');
INSERT INTO met_language VALUES('3142','tips3_v6','Multiple keywords should be separated by \"|\", such as \"building station | enterprise building station\"','1','0','0','0','en');
INSERT INTO met_language VALUES('3143','tips4_v6','Please enter the URL (need to include http or https); after setting the access to the information will be directed to the set URL','1','0','0','0','en');
INSERT INTO met_language VALUES('3144','tips5_v6','Timely release does not support static pages, please close the static pages. (Pseudo-static can be used)','1','0','0','0','en');
INSERT INTO met_language VALUES('3145','tips6_v6','If it is empty, it will be formed automatically according to the system rules. It can be modified in the SEO settings.','1','0','0','0','en');
INSERT INTO met_language VALUES('3146','tips7_v6','When not manually upload pictures, it will automatically extract the first picture as a cover (this feature requires template support)','1','0','0','0','en');
INSERT INTO met_language VALUES('3147','coverimg','cover image','1','0','0','0','en');
INSERT INTO met_language VALUES('3148','articletitle','Article title','1','0','0','0','en');
INSERT INTO met_language VALUES('3149','htmTip3','Generate homepage','1','0','11','0','en');
INSERT INTO met_language VALUES('3150','js81','You do not have the authority to contact the administrator','1','0','0','0','en');
INSERT INTO met_language VALUES('3151','help2','friendly reminder','1','0','0','0','en');
INSERT INTO met_language VALUES('3152','tips8_v6','There is a serious risk in the name of your site admin folder and I suggest you change it as soon as possible','1','0','0','0','en');
INSERT INTO met_language VALUES('3153','nohint','Do not remind again','1','0','0','0','en');
INSERT INTO met_language VALUES('3154','tochange','Go to edit','1','0','0','0','en');
INSERT INTO met_language VALUES('3155','homepage','Home','1','0','0','0','en');
INSERT INTO met_language VALUES('3156','backstage','Panel','1','0','0','0','en');
INSERT INTO met_language VALUES('3157','visualization','Visual','1','0','0','0','en');
INSERT INTO met_language VALUES('3158','opfailed','operation failed','1','0','1','0','en');
INSERT INTO met_language VALUES('3159','opsuccess','operation success','1','0','1','0','en');
INSERT INTO met_language VALUES('3160','unread','Not read','1','0','0','0','en');
INSERT INTO met_language VALUES('3161','language_outputlang_v6','Export language packs','1','0','16','0','en');
INSERT INTO met_language VALUES('3162','language_batchreplace_v6','Bulk replacement language','1','0','16','0','en');
INSERT INTO met_language VALUES('3163','language_copysetting_v6','Copy the basic settings','1','0','16','0','en');
INSERT INTO met_language VALUES('3164','notcopy','Do not copy','1','0','16','0','en');
INSERT INTO met_language VALUES('3165','language_tips1_v6','Based on the selected language copy all the parameters except column content configuration','1','0','16','0','en');
INSERT INTO met_language VALUES('3166','language_tips2_v6','Based on the selected language copy section and content information (share the selected language pictures, attachments, etc.)','1','0','16','0','en');
INSERT INTO met_language VALUES('3167','template_style_tips','Set parameters based on the selected language copy template','1','0','16','0','en');
INSERT INTO met_language VALUES('3168','websitetheme','Website theme style','1','0','16','0','en');
INSERT INTO met_language VALUES('3169','language_backlangchange_v6','Background language switch','1','0','16','0','en');
INSERT INTO met_language VALUES('3170','language_updatelang_v6','Update language pack data <br> Please paste in exactly as you wish','1','0','16','0','en');
INSERT INTO met_language VALUES('3171','message_mailtext_v6',' submitting a message','1','0','20','0','en');
INSERT INTO met_language VALUES('3172','nopicture','No picture','1','0','20','0','en');
INSERT INTO met_language VALUES('3173','message_tips1_v6','Prompt text, blank display, enter the text disappears','1','0','20','0','en');
INSERT INTO met_language VALUES('3174','onlone_onlinelist_v6','Customer list','1','0','23','0','en');
INSERT INTO met_language VALUES('3175','onlone_online_v6','online service','1','0','23','0','en');
INSERT INTO met_language VALUES('3176','online_csname_v6','Customer service name','1','0','23','0','en');
INSERT INTO met_language VALUES('3177','online_taobaocs_v6','Taobao Want','1','0','23','0','en');
INSERT INTO met_language VALUES('3178','online_alics_v6','Ali Want','1','0','23','0','en');
INSERT INTO met_language VALUES('3179','online_tips1_v6','Add QQ need to [shang.qq.com] login in the 【promotion tools - set??security level choose to be completely open, otherwise it will display \"not enabled\" QQ number added to the need to personal QQ settings - permission settings Inside, open the temporary session function, otherwise click QQ, will prompt to add friends to dialogue','1','0','23','0','en');
INSERT INTO met_language VALUES('3180','confirm','determine','1','0','1','0','en');
INSERT INTO met_language VALUES('3181','frontshow','Front display','1','0','0','0','en');
INSERT INTO met_language VALUES('3182','fronthidden','Front desk hidden','1','0','0','0','en');
INSERT INTO met_language VALUES('3183','state','status','1','0','0','0','en');
INSERT INTO met_language VALUES('3184','visitcount','Views','1','0','0','0','en');
INSERT INTO met_language VALUES('3185','selectcolumn','Please select the column','1','0','0','0','en');
INSERT INTO met_language VALUES('3186','tips11_v6','You can drag the picture to adjust the picture order.','1','0','28','0','en');
INSERT INTO met_language VALUES('3187','tips12_v6','Press the \"ctrl\" key on the computer keyboard to select multiple columns at the same time.','1','0','28','0','en');
INSERT INTO met_language VALUES('3188','columumanage','Column','1','0','0','0','en');
INSERT INTO met_language VALUES('3189','titletips','Title (name)','1','0','28','0','en');
INSERT INTO met_language VALUES('3190','seotipssitemap1','Filtering does not appear in the first level of navigation','1','0','32','0','en');
INSERT INTO met_language VALUES('3191','seotips2','The site generated by the site only a first column and the column displayed in the navigation bar. <br /> do not display content and columns, will not be generated in the site map.','1','0','32','0','en');
INSERT INTO met_language VALUES('3192','seotips3','Compared with pure static functions, pseudo-static is more suitable for corporate websites, which can satisfy both SEO optimization and convenient management.','1','0','32','0','en');
INSERT INTO met_language VALUES('3193','defaultlangtag','Default language ID','1','0','32','0','en');
INSERT INTO met_language VALUES('3194','seotips4','After the default language flag is enabled, the default language pseudo-static file will be added at the end of a \"- language label\", such as \"-cn\"','1','0','32','0','en');
INSERT INTO met_language VALUES('3195','uisetTips3','The current page does not have the parameters that can be set. Click the Set and Contents buttons of the corresponding block in the page to set','1','0','36','0','en');
INSERT INTO met_language VALUES('3196','upload_addoutimg_v6','Add an external picture','1','0','1','0','en');
INSERT INTO met_language VALUES('3197','upload_progress_v6','Uploading','1','0','1','0','en');
INSERT INTO met_language VALUES('3198','upload_local_v6','Local upload','1','0','1','0','en');
INSERT INTO met_language VALUES('3199','upload_selectimg_v6','Select a picture','1','0','1','0','en');
INSERT INTO met_language VALUES('3200','upload_pselectimg_v6','Please select the picture','1','0','1','0','en');
INSERT INTO met_language VALUES('3201','upload_libraryimg_v6','Select from the picture library','1','0','1','0','en');
INSERT INTO met_language VALUES('3202','upload_extraimglink_v6','External picture link','1','0','1','0','en');
INSERT INTO met_language VALUES('3203','addbaricon','Address bar icon','1','0','39','0','en');
INSERT INTO met_language VALUES('3204','webset_tips1_v6','If you can not display the new upload icon, clear the browser cache access.','1','0','39','0','en');
INSERT INTO met_language VALUES('3205','webset_tips2_v6','Click to create ICO','1','0','39','0','en');
INSERT INTO met_language VALUES('3206','icontips','.ico file.','1','0','39','0','en');
INSERT INTO met_language VALUES('3207','PC','Computer side','1','0','0','0','en');
INSERT INTO met_language VALUES('3208','memberist','member list','1','0','38','0','en');
INSERT INTO met_language VALUES('3209','membergroup','member group','1','0','38','0','en');
INSERT INTO met_language VALUES('3210','memberattribute','Member properties','1','0','38','0','en');
INSERT INTO met_language VALUES('3211','memberfunc','Member function settings','1','0','38','0','en');
INSERT INTO met_language VALUES('3212','thirdlogin','Social login','1','0','38','0','en');
INSERT INTO met_language VALUES('3213','mailcontentsetting','Mail content settings','1','0','38','0','en');
INSERT INTO met_language VALUES('3214','user_tips1_v6','You can register','1','0','38','0','en');
INSERT INTO met_language VALUES('3215','user_tips2_v6','Contains illegal characters','1','0','38','0','en');
INSERT INTO met_language VALUES('3216','user_tips3_v6','Username already exists','1','0','38','0','en');
INSERT INTO met_language VALUES('3217','user_tips4_v6','Please enter the 6-30 password','1','0','38','0','en');
INSERT INTO met_language VALUES('3218','weixinlogin','Wechat login','1','0','38','0','en');
INSERT INTO met_language VALUES('3219','sinalogin','Weibo login','1','0','38','0','en');
INSERT INTO met_language VALUES('3220','qqlogin','QQ login','1','0','38','0','en');
INSERT INTO met_language VALUES('3221','register','registered','1','0','38','0','en');
INSERT INTO met_language VALUES('3222','lastactive','Last active','1','0','38','0','en');
INSERT INTO met_language VALUES('3223','source','source','1','0','38','0','en');
INSERT INTO met_language VALUES('3224','bindingmail','Bind the mailbox','1','0','38','0','en');
INSERT INTO met_language VALUES('3225','bindingmobile','Binding phone','1','0','38','0','en');
INSERT INTO met_language VALUES('3226','systips1','You do not have permission to access this content! Please login to visit!','1','0','0','0','en');
INSERT INTO met_language VALUES('3227','systips2','Your user group does not have permission to access this content!','1','0','0','0','en');
INSERT INTO met_language VALUES('3228','unrestricted','not limited','1','0','40','0','en');
INSERT INTO met_language VALUES('3229','dowloadauthority','Download permissions','1','0','40','0','en');
INSERT INTO met_language VALUES('3230','save','save','1','0','0','0','en');
INSERT INTO met_language VALUES('3231','baceinfo','Basic Information','1','0','0','0','en');
INSERT INTO met_language VALUES('3232','staticpage','Static page settings','1','162','0','0','en');
INSERT INTO met_language VALUES('3233','pseudostatic','Pseudo-static','1','164','0','0','en');
INSERT INTO met_language VALUES('3234','setequivalentcolumns','The current section','1','22','0','0','en');
INSERT INTO met_language VALUES('3235','veditor','Visual editing','1','0','2','0','en');
INSERT INTO met_language VALUES('3236','veditortips1','Open ','1','0','2','0','en');
INSERT INTO met_language VALUES('3237','funcCollection','Features','1','0','0','0','en');
INSERT INTO met_language VALUES('3238','websiteSet','Website configuration and management','1','0','0','0','en');
INSERT INTO met_language VALUES('3239','systemModule','System module','1','0','0','0','en');
INSERT INTO met_language VALUES('3240','appearanceSetting','Appearance settings','1','0','0','0','en');
INSERT INTO met_language VALUES('3241','basicInfoSet','Basic information configuration','1','0','0','0','en');
INSERT INTO met_language VALUES('3242','multilingual','Language','1','0','0','0','en');
INSERT INTO met_language VALUES('3243','mailSetting','Send mailbox configuration','1','0','0','0','en');
INSERT INTO met_language VALUES('3244','thirdCode','Third-party code to add','1','0','0','0','en');
INSERT INTO met_language VALUES('3245','watermarkThumbnail','Watermark / thumbnail','1','0','0','0','en');
INSERT INTO met_language VALUES('3246','customerService','online service','1','0','0','0','en');
INSERT INTO met_language VALUES('3247','recycleBin','Recycle Bin','1','0','0','0','en');
INSERT INTO met_language VALUES('3248','securityTools','System Security and Tools','1','0','0','0','en');
INSERT INTO met_language VALUES('3249','searchEngineOptimization','SEO search engine optimization','1','0','0','0','en');
INSERT INTO met_language VALUES('3250','seoSetting','SEO parameter settings','1','0','0','0','en');
INSERT INTO met_language VALUES('3251','thirdPartyLogin','Social login settings','1','0','0','0','en');
INSERT INTO met_language VALUES('3252','appAndPlugin','Application plug-ins','1','0','0','0','en');
INSERT INTO met_language VALUES('3253','metShop','Official mall','1','0','0','0','en');
INSERT INTO met_language VALUES('3254','purchase_notice','Purchase Notice','1','0','0','0','en');
INSERT INTO met_language VALUES('3255','commercialAuthorizationCode','Commercial authorization code','1','0','0','0','en');
INSERT INTO met_language VALUES('3256','systips13','Old version template compatible (non-responsive template)','1','0','0','0','en');
INSERT INTO met_language VALUES('3257','mobileSetting','Mobile version set','1','0','0','0','en');
INSERT INTO met_language VALUES('3258','mobileVersion','Mobile version of the appearance','1','0','0','0','en');
INSERT INTO met_language VALUES('3259','uiset_descript_v6','The selected application will appear in the navigation bar [common function] drop-down list','1','0','0','0','en');
INSERT INTO met_language VALUES('3260','uisetTips4','Current page preview','1','0','36','0','en');
INSERT INTO met_language VALUES('3261','uisetTips5','The current page system parameter settings','1','0','36','0','en');
INSERT INTO met_language VALUES('3262','uisetTips6','Page','1','0','36','0','en');
INSERT INTO met_language VALUES('3263','moreSettings','More','1','0','36','0','en');
INSERT INTO met_language VALUES('3264','sysMailboxConfig','Send mailbox configuration','1','0','36','0','en');
INSERT INTO met_language VALUES('3265','navSetting','Navigation menu settings','1','0','36','0','en');
INSERT INTO met_language VALUES('3266','oldBackstage','Panel','1','0','36','0','en');
INSERT INTO met_language VALUES('3267','sysMessage','system information','1','0','36','0','en');
INSERT INTO met_language VALUES('3268','replaceImg','Replace the picture','1','0','36','0','en');
INSERT INTO met_language VALUES('3269','uisetTips8','Hide the element <br> (hide the modified occlusion element, <br> refresh the page can be displayed again)','1','0','36','0','en');
INSERT INTO met_language VALUES('3270','putIntoRecycle','Into the recycling station','1','0','1','0','en');
INSERT INTO met_language VALUES('3271','thoroughlyDeleting','Remove completely','1','0','1','0','en');
INSERT INTO met_language VALUES('3272','websiteContent','Website basic content','1','0','16','0','en');
INSERT INTO met_language VALUES('3273','jslang0','Into the recycling station','1','0','1','0','en');
INSERT INTO met_language VALUES('3274','jslang1','Remove completely','1','0','1','0','en');
INSERT INTO met_language VALUES('3275','jslang2','cancel','1','0','1','0','en');
INSERT INTO met_language VALUES('3276','seotips26','After opening to simplify the front page URL (URL); and end in html (static page function is disabled).','1','0','32','0','en');
INSERT INTO met_language VALUES('3277','systips14','(Please ensure that the pseudo-static function is turned off before opening)','1','0','11','0','en');
INSERT INTO met_language VALUES('3278','systips15','MB (If the website background setting value exceeds the maximum limit of the upload file of the server, the value of the server limit shall prevail)','1','0','30','0','en');
INSERT INTO met_language VALUES('3279','third_code_mobile','Mobile third-party code','1','0','39','0','en');
INSERT INTO met_language VALUES('3280','clearCache','Empty the cache','1','0','1','0','en');
INSERT INTO met_language VALUES('3281','jsx39','(Delete column will delete all the contents of the column)','1','0','5','0','en');
INSERT INTO met_language VALUES('3282','jslang3','No records selected','1','0','1','0','en');
INSERT INTO met_language VALUES('3283','jslang4','Please select the column','1','0','1','0','en');
INSERT INTO met_language VALUES('3284','jslang5','I know','1','0','1','0','en');
INSERT INTO met_language VALUES('3285','jslang6','Expand more settings','1','0','1','0','en');
INSERT INTO met_language VALUES('3286','jslang7','Hide settings','1','0','1','0','en');
INSERT INTO met_language VALUES('3287','newFeedback','You received new feedback','1','0','9','0','en');
INSERT INTO met_language VALUES('3288','wap_descript5_v6','The name cannot be empty!','1','450','41','0','en');
INSERT INTO met_language VALUES('3289','allapp_v6','All applications','1','469','21','0','en');
INSERT INTO met_language VALUES('3290','freeapp_v6','Free application','1','470','21','0','en');
INSERT INTO met_language VALUES('3291','Business_membersapp_v6','Commercial Application','1','471','21','0','en');
INSERT INTO met_language VALUES('3292','payapp','Charge application','1','472','21','0','en');
INSERT INTO met_language VALUES('3293','servicename_v6','Service name','1','473','21','0','en');
INSERT INTO met_language VALUES('3294','appstore_descript1_v6','Technical support service / Renewal','1','474','21','0','en');
INSERT INTO met_language VALUES('3295','appstore_Servicescope_v6','Service scope','1','475','21','0','en');
INSERT INTO met_language VALUES('3296','appstore_descript2_v6','MetInfo product service (installation, upgrading, moving, troubleshooting and processing, server debugging','1','476','21','0','en');
INSERT INTO met_language VALUES('3297','appstore_descript3_v6','Direct help.','1','477','21','0','en');
INSERT INTO met_language VALUES('3298','appstore_descript4_v6','Server debugging: setting up the server environment for the first time and handling the server environment problems related to the MetInfo failure.','1','478','21','0','en');
INSERT INTO met_language VALUES('3299','appstore_descript5_v6','Professional solutions (product use / skill, SEO optimization, network marketing)','1','479','21','0','en');
INSERT INTO met_language VALUES('3300','appstore_descript6_v6','Help analysis, provide solutions and guidance, and do not provide operational services.','1','480','21','0','en');
INSERT INTO met_language VALUES('3301','appstore_descript7_v6','The scope of service is subject to the above content. If unmarked, the service is not provided.','1','481','21','0','en');
INSERT INTO met_language VALUES('3302','appstore_descript8_v6','There is no service provided in the following case','1','482','21','0','en');
INSERT INTO met_language VALUES('3303','appstore_descript9_v6','Problems generated by self modification or use of non original MetInfo code','1','483','21','0','en');
INSERT INTO met_language VALUES('3304','appstore_descript10_v6','Problems caused by unofficially developed application plug-ins and made templates (the third party application / template on the application store is a service range)','1','484','21','0','en');
INSERT INTO met_language VALUES('3305','appstore_descript11_v6','System failures caused by server and virtual host causes','1','485','21','0','en');
INSERT INTO met_language VALUES('3306','appstore_descript12_v6','Unauthorized removal of copyright information without a commercial authorization','1','486','21','0','en');
INSERT INTO met_language VALUES('3307','appstore_descript13_v6','Does not contain website content maintenance, picture processing, source code modification.','1','487','21','0','en');
INSERT INTO met_language VALUES('3308','appstore_servicemode_v6','service mode','1','488','21','0','en');
INSERT INTO met_language VALUES('3309','appstore_descript14_v6','Submission of work list: troubleshooting, problem consulting (daily)','1','489','21','0','en');
INSERT INTO met_language VALUES('3310','appstore_descript15_v6','Online consulting: problem consulting (only working day online, online time: 08:30 - 17:30)','1','490','21','0','en');
INSERT INTO met_language VALUES('3311','appstore_descript16_v6','Application store account login MetInfo official network can also obtain work list, online consulting services (not to access the background of the site of the recommended use).','1','491','21','0','en');
INSERT INTO met_language VALUES('3312','appstore_descript17_v6','Select service length','1','492','21','0','en');
INSERT INTO met_language VALUES('3313','appstore_descript18_v6','One month (300 yuan)','1','493','21','0','en');
INSERT INTO met_language VALUES('3314','appstore_descript19_v6','Three months (500 yuan)','1','494','21','0','en');
INSERT INTO met_language VALUES('3315','appstore_descript20_v6','One year (1000 yuan)','1','495','21','0','en');
INSERT INTO met_language VALUES('3316','appstore_QQsalesconsulting_v6','QQ sales consulting','1','496','21','0','en');
INSERT INTO met_language VALUES('3317','appstore_descript21_v6','Consult QQ for details of service','1','497','21','0','en');
INSERT INTO met_language VALUES('3318','appstore_descript22_v6','Single service price: the website moves 200 yuan / times, the website installs 100 yuan / times, the website upgrade 100 yuan, the malfunction processing 100 yuan','1','498','21','0','en');
INSERT INTO met_language VALUES('3319','appstore_descript23_v6','The login password of the application store account','1','499','21','0','en');
INSERT INTO met_language VALUES('3320','appstore_descript24_v6','Clear and comply with the above service scope and service mode','1','500','21','0','en');
INSERT INTO met_language VALUES('3321','appstore_descript25_v6','Immediately open / renew','1','501','21','0','en');
INSERT INTO met_language VALUES('3322','appstore_descript26_v6','Template making / modifying service provider','1','502','21','0','en');
INSERT INTO met_language VALUES('3323','appstore_sign_v6','sign','1','503','21','0','en');
INSERT INTO met_language VALUES('3324','appstore_name_v6','Name','1','504','21','0','en');
INSERT INTO met_language VALUES('3325','appstore_type_v6','type','1','505','21','0','en');
INSERT INTO met_language VALUES('3326','appstore_place_v6','region','1','506','21','0','en');
INSERT INTO met_language VALUES('3327','appstore_Abilityvalue_v6','Ability value','1','507','21','0','en');
INSERT INTO met_language VALUES('3328','appstore_descript27_v6','How do businesses enter?','1','508','21','0','en');
INSERT INTO met_language VALUES('3329','appstore_descript28_v6','Description of business entry','1','509','21','0','en');
INSERT INTO met_language VALUES('3330','appstore_Admissionrequirements_v6','Admission requirements','1','510','21','0','en');
INSERT INTO met_language VALUES('3331','appstore_descript29_v6','Business entry instructions have been awarded the title of \"official certification template designer\".','1','511','21','0','en');
INSERT INTO met_language VALUES('3332','appstore_descript30_v6','Completion of official template training and successful completion','1','512','21','0','en');
INSERT INTO met_language VALUES('3333','appstore_descript31_v6','Order this registration training','1','513','21','0','en');
INSERT INTO met_language VALUES('3334','appstore_descript32_v6','Line a set of charge templates to the application store.','1','514','21','0','en');
INSERT INTO met_language VALUES('3335','appstore_Admissionprocess_v6','Admission process','1','515','21','0','en');
INSERT INTO met_language VALUES('3336','appstore_descript33_v6','1. Contact the official business co - operation Commissioner:','1','516','21','0','en');
INSERT INTO met_language VALUES('3337','appstore_descript34_v6','QQ inviting investment','1','517','21','0','en');
INSERT INTO met_language VALUES('3338','appstore_descript35_v6','QQ joined 2, registered to participate in the official template production training and won the title of \"official certification template designer\".','1','518','21','0','en');
INSERT INTO met_language VALUES('3339','appstore_descript36_v6','3, through the official network audit and the smooth line of a set of charging templates to the application store.','1','519','21','0','en');
INSERT INTO met_language VALUES('3340','appstore_descript37_v6','4, provide the information required by the merchants to enter, and the official verification.','1','520','21','0','en');
INSERT INTO met_language VALUES('3341','appstore_descript38_v6','5, formally entered.','1','521','21','0','en');
INSERT INTO met_language VALUES('3342','appstore_descript39_v6','The standard and audit of a set of works to the application store will be very strict, because we need to ensure that the end users can get enough professional technical services.','1','522','21','0','en');
INSERT INTO met_language VALUES('3343','appstore_service_v6','service','1','523','21','0','en');
INSERT INTO met_language VALUES('3344','appstore_Spacedomain_name_v6','Space domain name','1','524','21','0','en');
INSERT INTO met_language VALUES('3345','appstore_Worryfree_service_v6','Worry free service','1','525','21','0','en');
INSERT INTO met_language VALUES('3346','appstore_buildweb_v6','Set up dinner set','1','526','21','0','en');
INSERT INTO met_language VALUES('3347','appstore_Thirdcooperation_v6','Third party cooperation','1','527','21','0','en');
INSERT INTO met_language VALUES('3348','appstore_downshowdata_v6','Downloading demo data','1','528','21','0','en');
INSERT INTO met_language VALUES('3349','banner_column_v6','column','1','533','4','0','en');
INSERT INTO met_language VALUES('3350','batch_watermarking_v6','Batch watermarking operation','1','538','5','0','en');
INSERT INTO met_language VALUES('3351','open_allchildcolumn_v6','Unfold all the subsections','1','541','7','0','en');
INSERT INTO met_language VALUES('3352','column_descript1_v6','The directory name only lowercase letters or numbers, and can not duplicate and other columns!','1','542','7','0','en');
INSERT INTO met_language VALUES('3353','add_to_v6','Add to','1','543','7','0','en');
INSERT INTO met_language VALUES('3354','seo_set_v6','SEO settings','1','544','7','0','en');
INSERT INTO met_language VALUES('3355','content_name_v6','Name','1','553','7','0','en');
INSERT INTO met_language VALUES('3356','html_createend_v6','Completion','1','559','1','0','en');
INSERT INTO met_language VALUES('3357','html_createfail_v6','Generation failure','1','560','11','0','en');
INSERT INTO met_language VALUES('3358','online_addkefu_v6','Add customer service','1','561','23','0','en');
INSERT INTO met_language VALUES('3359','pay_WeChat_v6','WeChat','1','628','26','0','en');
INSERT INTO met_language VALUES('3360','notauthen','Uncertified','1','9','2','0','en');
INSERT INTO met_language VALUES('3361','rnvalidate','Real name authentication','1','9','2','0','en');
INSERT INTO met_language VALUES('3362','mobile_logo','Wapsite LOGO','1','9','2','0','en');
INSERT INTO met_language VALUES('3363','mobile_banner_tips1','(When you do not upload pictures of mobile phones, the banner diagrams of mobile hones are consistent with the computer terminals.)','1','9','2','0','en');
INSERT INTO met_language VALUES('3364','langexisted','Lang Existed','1','9','2','0','en');
INSERT INTO met_language VALUES('3365','fdincTip12','Backstage display list item','1','49','0','0','en');
INSERT INTO met_language VALUES('3366','fdincTip13','You can only select drop-down, radio and multi-choice feedback fields. After setting and saving here, please go to \"Feedback Form Settings\" to set up the relevant product columns.','1','559','1','0','en');
INSERT INTO met_language VALUES('3367','unitytxt_1','Function setting','1','0','1','0','en');
INSERT INTO met_language VALUES('3368','enter_folder','Double click the folder icon and enter the folder to select the picture.','1','0','1','0','en');
INSERT INTO met_language VALUES('3369','fliptext2','loading','1','0','1','0','en');
INSERT INTO met_language VALUES('3370','memberarayname','Memberaray name','1','0','11','0','en');
INSERT INTO met_language VALUES('3371','thumbs_tips1_v6','After saving and modifying, please go to the visual interface and click on the frequently used function - clear the thumbnail for this save to take effect.','1','0','0','0','en');
INSERT INTO met_language VALUES('3372','recahrge_tips','After recharging, a refund of 2% will be deducted, and within 60 days after the recharge, the invoice application can be submitted in the \"user center financial center invoice application\".','1','0','0','0','en');
INSERT INTO met_language VALUES('3373','sys_lang_operate','system languag opreate','1','0','0','0','en');
INSERT INTO met_language VALUES('3374','edit_app_lang','Edit plugin language','1','0','0','0','en');
INSERT INTO met_language VALUES('3375','product_para_tips','The link field type requires foreground template support. If the template is not supported, the attachment type can be used for function substitution.','1','0','0','0','en');
INSERT INTO met_language VALUES('3376','met_template_nofile','Template folder does not exist','1','0','0','50002','en');
INSERT INTO met_language VALUES('3377','met_template_fileexist','Template already exists','1','0','0','50002','en');
INSERT INTO met_language VALUES('3378','met_template_noconfigfile','Template profile does not exist','1','0','0','50002','en');
INSERT INTO met_language VALUES('3379','met_template_falsedelui','Failed to delete UI','1','0','0','50002','en');
INSERT INTO met_language VALUES('3380','met_template_falsedeluiconfig','Deleting UI configuration failed','1','0','0','50002','en');
INSERT INTO met_language VALUES('3381','met_template_falsedelconfig','Delete global configuration failed','1','0','0','50002','en');
INSERT INTO met_language VALUES('3382','met_template_downloadfalse','download failed','1','0','0','50002','en');
INSERT INTO met_language VALUES('3383','met_template_downloadok','download successful','1','0','0','50002','en');
INSERT INTO met_language VALUES('3384','met_template_temnoexist','Template does not exist','1','0','0','50002','en');
INSERT INTO met_language VALUES('3385','met_template_demonoexist','Demo data does not exist','1','0','0','50002','en');
INSERT INTO met_language VALUES('3386','met_template_upzipdemofalse','Unpacking demo data failed','1','0','0','50002','en');
INSERT INTO met_language VALUES('3387','met_template_upzipok','Decompression succeeded','1','0','0','50002','en');
INSERT INTO met_language VALUES('3388','met_template_installok','Successful installation','1','0','0','50002','en');
INSERT INTO met_language VALUES('3389','met_template_templates','UI business template','1','0','0','50002','en');
INSERT INTO met_language VALUES('3390','met_template_othertemplates','Other templates','1','0','0','50002','en');
INSERT INTO met_language VALUES('3391','met_template_installdemo','Install demo data','1','0','0','50002','en');
INSERT INTO met_language VALUES('3392','met_template_deletteminfo','Are you sure you want to delete this template? Cannot be restored after deletion.','1','0','0','50002','en');
INSERT INTO met_language VALUES('3393','met_template_nodelet','System app does not allow deletion','1','0','0','50002','en');
INSERT INTO met_language VALUES('3394','met_template_filesavef','File save failed','1','0','0','50002','en');
INSERT INTO met_language VALUES('3395','met_template_installuierr','Error importing UI','1','0','0','50002','en');
INSERT INTO met_language VALUES('3396','met_template_installuiparaerr','Error importing UI parameters','1','0','0','50002','en');
INSERT INTO met_language VALUES('3397','met_template_updateok','update successed','1','0','0','50002','en');
INSERT INTO met_language VALUES('3398','met_template_updatefalse','Update failed','1','0','0','50002','en');
INSERT INTO met_language VALUES('3399','met_template_updatedatafalse','Data update failed','1','0','0','50002','en');
INSERT INTO met_language VALUES('3400','met_template_donotinfo','No action or no permission','1','0','0','50002','en');
INSERT INTO met_language VALUES('3401','met_template_langinfotext','When multi-language is turned on, you must first switch to the visual management of the corresponding language or the traditional background, and then enable a set of templates here; different languages can enable different templates.','1','0','0','50002','en');
INSERT INTO met_language VALUES('3402','met_template_metinfouserinfo','The Mito official website user center account can simultaneously install the purchased and bound domain name as the business template of the website. You can bind the domain name in the Mituo user center within 60 days after purchase.','1','0','0','50002','en');
INSERT INTO met_language VALUES('3403','met_template_buytemplates','Purchase new template','1','0','0','50002','en');
INSERT INTO met_language VALUES('3404','met_template_delettemplatesinfo','Deleting a template from the list does not delete the template folder under the website root /templates/','1','0','0','50002','en');
INSERT INTO met_language VALUES('3405','met_template_demoinstalltitle','Demo data installation tips! ! !','1','0','0','50002','en');
INSERT INTO met_language VALUES('3406','met_template_demoinstallsel','Please choose the appropriate installation method for you','1','0','0','50002','en');
INSERT INTO met_language VALUES('3407','met_template_demoinstallt1','Restore factory settings: The system will clear all existing data of the website and restore the website to the template demo data status;','1','0','0','50002','en');
INSERT INTO met_language VALUES('3408','met_template_demoinstallt2','Back up existing data and install it: the system will automatically back up the existing database and image of the website, and then restore the website to the template demo data status. In the future, you can restore the website to the state before the demo data is installed by restoring the backup data.','1','0','0','50002','en');
INSERT INTO met_language VALUES('3409','met_template_demoinstallt3','Cancel: If your website has already added content, we recommend that you do not install demo data. After installing the template, you can set the relevant block content directly in the visualization.','1','0','0','50002','en');
INSERT INTO met_language VALUES('3410','met_template_saveinstall','Back up existing data and install it','1','0','0','50002','en');
INSERT INTO met_language VALUES('3411','met_template_installnewmetinfo','reset','1','0','0','50002','en');
INSERT INTO met_language VALUES('3412','met_template_downloadtemjs','Downloading template...','1','0','1','50002','en');
INSERT INTO met_language VALUES('3413','met_template_downloadtemokjs','Download template successfully','1','0','1','50002','en');
INSERT INTO met_language VALUES('3414','met_template_downloaduijs','Downloading UI','1','0','1','50002','en');
INSERT INTO met_language VALUES('3415','metinfoapp3','Official statement','1','0','0','0','en');
INSERT INTO met_language VALUES('3416','metinfoapptext3','Third-party merchants cover MetInfo application and template development, and SME information services. However, MetInfo officials are not involved in the operation and division of related products and services. Users are requested to identify and bear all the consequences. If you find that the business is illegal or dishonest, you are welcome to report it to MetInfo, and we will remove it.','1','0','0','0','en');
INSERT INTO met_language VALUES('3417','metinfoappinstallinfo','Application first install will automatically bind the domain name','1','0','0','0','en');
INSERT INTO met_language VALUES('3418','metinfoappinstallinfo4','installation tips','1','0','1','0','en');
INSERT INTO met_language VALUES('3419','columnselect1','Select Category','1','0','0','0','en');
INSERT INTO met_language VALUES('3420','columnnofollow','Nofollow attribute','1','0','0','0','en');
INSERT INTO met_language VALUES('3421','columnnofollowinfo','After checking, the website does not pass weights to the link URL.','1','0','0','0','en');
INSERT INTO met_language VALUES('3422','feedbackinquiry','Online Inquiry','1','0','0','0','en');
INSERT INTO met_language VALUES('3423','feedbackinquiryinfo','A Feedback column has already opened this function. If you want to enable it in the current column, please close it in the open Feedback column first.','1','0','0','0','en');
INSERT INTO met_language VALUES('3424','feedbackinquiryinfo1','After opening the online inquiry, the product details page will automatically display the inquiry button.','1','0','0','0','en');
INSERT INTO met_language VALUES('3425','webupate1','Website backup','1','0','0','0','en');
INSERT INTO met_language VALUES('3426','webupate3','Decompression succeeded','1','0','0','0','en');
INSERT INTO met_language VALUES('3427','webupate4','Unpacking failed','1','0','0','0','en');
INSERT INTO met_language VALUES('3428','webupate5','Compressed package does not exist','1','0','0','0','en');
INSERT INTO met_language VALUES('3429','webupate6','file type','1','0','0','0','en');
INSERT INTO met_language VALUES('3430','webupate7','Decompression','1','0','0','0','en');
INSERT INTO met_language VALUES('3431','webupate9','Use backup administrator account','1','0','0','0','en');
INSERT INTO met_language VALUES('3432','webupate10','Do not override the administrator account','1','0','0','0','en');
INSERT INTO met_language VALUES('3433','seohtaccess1','Whether to display the file list in the root directory','1','0','1','0','en');
INSERT INTO met_language VALUES('3434','updatenofile','The installation package does not exist','1','0','0','0','en');
INSERT INTO met_language VALUES('3435','updateupzipfileno','Unpacking data failed','1','0','0','0','en');
INSERT INTO met_language VALUES('3436','updateinstallnow','installing...','1','0','1','0','en');
INSERT INTO met_language VALUES('3437','useinfopay','This feature requires the payment interface management application to be enabled before it can be enabled.','1','0','0','0','en');
INSERT INTO met_language VALUES('3438','usegroupauto1','Automatically upgrade the full amount of recharge','1','0','0','0','en');
INSERT INTO met_language VALUES('3439','usegroupbuy','Paid purchase member group','1','0','0','0','en');
INSERT INTO met_language VALUES('3440','usereadinfo','Reading permission value must be greater than 0','1','0','0','0','en');
INSERT INTO met_language VALUES('3441','userselectname','Tab','1','0','0','0','en');
INSERT INTO met_language VALUES('3442','msmnoifno','SMS function has not been activated','1','0','0','0','en');
INSERT INTO met_language VALUES('3443','templateseditfalse','fail to edit','1','0','0','0','en');
INSERT INTO met_language VALUES('3444','templatefilewritno','Directory is not writable','1','0','0','0','en');
INSERT INTO met_language VALUES('3445','times1','Seconds ago','1','0','0','0','en');
INSERT INTO met_language VALUES('3446','times2','minutes ago','1','0','0','0','en');
INSERT INTO met_language VALUES('3447','times3','hour ago','1','0','0','0','en');
INSERT INTO met_language VALUES('3448','times4','Days ago','1','0','0','0','en');
INSERT INTO met_language VALUES('3449','uploadfilenop','No permission to upload','1','0','0','0','en');
INSERT INTO met_language VALUES('3450','rurlerror','Request address error','1','0','0','0','en');
INSERT INTO met_language VALUES('3451','paranouse','The parameter is invalid','1','0','0','0','en');
INSERT INTO met_language VALUES('3452','linkmetinfoerror','Your server is not connected to the Net User Center, please contact the official website customer service staff to detect the server!!!','1','0','0','0','en');
INSERT INTO met_language VALUES('3453','appusererror','The login password in the background is incorrect. Please reset the account password in the Met User Center! ! !','1','0','0','0','en');
INSERT INTO met_language VALUES('3454','parameter10','link','1','0','0','0','en');
INSERT INTO met_language VALUES('3455','parametervalueinfo','value','1','0','0','0','en');
INSERT INTO met_language VALUES('3456','indexmobilelogoinfo','When the template has the mobile phone LOGO setting, the setting here is invalid. When the static page is opened, the setting is invalid. Leave the mobile terminal to use the default LOGO.','1','0','0','0','en');
INSERT INTO met_language VALUES('3457','met_template_setmarktext','Click to expand advanced settings','1','0','0','50002','en');
INSERT INTO met_language VALUES('3458','met_template_setmarktexth','Hide advanced settings','1','0','0','50002','en');
INSERT INTO met_language VALUES('3459','columndeffflor','The name of the column file you are using conflicts with the system default module folder name. Please rename it.','1','0','0','0','en');
INSERT INTO met_language VALUES('3460','cancel','cancel','1','0','1','0','en');
INSERT INTO met_language VALUES('3461','banner_setmobileImgUrl_v6','Mobile phone end picture address','1','0','4','0','en');
INSERT INTO met_language VALUES('3462','idcode','ID code','1','0','0','0','en');
INSERT INTO met_language VALUES('3463','recoveryisntallinfo','The imported version of the database is inconsistent with the current version of the system. Some parameters and configuration data may be lost after import. Please import it carefully!','1','0','0','0','en');
INSERT INTO met_language VALUES('3464','setpnorder','Previous and Next Call Settings','1','0','0','50002','en');
INSERT INTO met_language VALUES('3465','disableCssJs','Turn off system css and js','1','1','0','0','en');
INSERT INTO met_language VALUES('3466','disableCssJsTips','It is forbidden to load the default css and js (for developers to create templates, ordinary users should not close)','1','1','0','0','en');
INSERT INTO met_language VALUES('3467','setseoLogoKeyword','Logo KeyWord','1','21','32','0','en');
INSERT INTO met_language VALUES('3468','301jump','Website 301 jump','1','1','0','0','en');
INSERT INTO met_language VALUES('3469','301jumpDescription','After opening, the website domain name will automatically jump to the website domain name with www. Example: ******.cn Jump www.******.cn','1','1','0','0','en');
INSERT INTO met_language VALUES('3470','gotohttps','HTTP jump to HTTPS','1','1','0','0','en');
INSERT INTO met_language VALUES('3471','gotohttps_tips','This function requires the server to install SSL certificate and support HTTPS protocol to enable','1','1','0','0','en');
INSERT INTO met_language VALUES('3472','admin_login_lang','Login to the background language','1','0','0','0','en');
INSERT INTO met_language VALUES('3473','admin_del_error','Prohibition to delete founder','1','0','0','0','en');
INSERT INTO met_language VALUES('3474','sethttps','After opening, the system automatically replaces all HTTP paths on the site and clears the template cache','1','0','0','0','en');
INSERT INTO met_language VALUES('3475','404page','404 page content','1','0','0','0','en');
INSERT INTO met_language VALUES('3476','data_null','No content prompt text','1','0','0','0','en');
INSERT INTO met_language VALUES('3477','column_other_info','Other info','1','0','0','0','en');
INSERT INTO met_language VALUES('3478','column_custom_info','Custom info','1','0','0','0','en');
INSERT INTO met_language VALUES('3479','seting','Seting','1','0','0','0','en');
INSERT INTO met_language VALUES('3480','special_che_deny','Do not use special characters','1','0','0','0','en');
INSERT INTO met_language VALUES('3481','clearThumb','Clear thumbnails','1','0','0','0','en');
INSERT INTO met_language VALUES('3482','operation_log','Operation log','1','0','0','0','en');
INSERT INTO met_language VALUES('3483','request_address','Request address','1','0','0','0','en');
INSERT INTO met_language VALUES('3484','request_result','Request result','1','0','0','0','en');
INSERT INTO met_language VALUES('3485','admin_log','Open the background operation log','1','0','0','0','en');
INSERT INTO met_language VALUES('3486','associated_columns','Associated Columns','1','0','0','0','en');
INSERT INTO met_language VALUES('3487','pass_empty','Do not enter does not change the password','1','0','0','0','en');
INSERT INTO met_language VALUES('3488','unzip_tips','Unzip will overwrite the same named file in the upload folder','1','0','0','0','en');
INSERT INTO met_language VALUES('3489','adminFunOperate','Function module operation authority','1','0','0','0','en');
INSERT INTO met_language VALUES('3490','tags_title','Tags page title','1','0','0','0','en');
INSERT INTO met_language VALUES('3491','tags_title_tips','Tags page title content','1','0','0','0','en');
INSERT INTO met_language VALUES('3492','text_size','Text size','1','0','0','0','en');
INSERT INTO met_language VALUES('3493','desc_size','Describe size','1','0','0','0','en');
INSERT INTO met_language VALUES('3494','desc_color','Describe color','1','0','0','0','en');
INSERT INTO met_language VALUES('3495','column_style_tips','This setting requires template support','1','0','0','0','en');
INSERT INTO met_language VALUES('3496','content_style_tips','This setting is generally valid only in the information list','1','0','0','0','en');
INSERT INTO met_language VALUES('3497','modifyaccemail','Bind mailbox to modify mail','1','0','0','0','en');
INSERT INTO met_language VALUES('3498','temSupport','This feature requires template support','1','0','0','0','en');
INSERT INTO met_language VALUES('3499','update','update','1','0','0','0','en');
INSERT INTO met_language VALUES('3500','onlyInStyle3','Effective only in Style 3','1','0','0','0','en');
INSERT INTO met_language VALUES('3501','thumb_tips','(Wide X Height) (Pixel) The default thumbnail size of the module. The thumbnail size of each column can be set independently in visual editing.','1','0','0','0','en');
INSERT INTO met_language VALUES('3502','freeapp','Free plugin','1','0','0','0','en');
INSERT INTO met_language VALUES('3503','businessapp','Commercial plugin','1','0','0','0','en');
INSERT INTO met_language VALUES('3504','chargeapp','Charge plugin','1','0','0','0','en');
INSERT INTO met_language VALUES('3505','userCondition','Register for the MetInfo User Center for free download and use','1','0','0','0','en');
INSERT INTO met_language VALUES('3506','installCondition','Buy the commercial version of the MetInfo Enterprise Website System and install it under the binding domain name site.','1','0','0','0','en');
INSERT INTO met_language VALUES('3507','buyCondition','Can be installed and used under a binding domain name site after purchase.','1','0','0','0','en');
INSERT INTO met_language VALUES('3508','thumb_size_list','List page thumbnail size','1','440','0','0','en');
INSERT INTO met_language VALUES('3509','thumb_size_showpage','Details page thumbnail size','1','440','0','0','en');
INSERT INTO met_language VALUES('3510','thumb_seting_tips','Details page thumbnail size and tabs should be set in Visual Editing Current Page Settings for corresponding columns','1','440','0','0','en');
INSERT INTO met_language VALUES('3511','member_agreement','User protocol function','1','0','0','0','en');
INSERT INTO met_language VALUES('3512','top_menu','Top menu','1','0','0','0','en');
INSERT INTO met_language VALUES('3513','admin_name_repeat',' Administrator name cannot be repeated','1','0','0','0','en');
INSERT INTO met_language VALUES('3514','settings_tab','Settings tab','1','0','0','0','en');
INSERT INTO met_language VALUES('3515','custom_info','Custom information','1','0','0','0','en');
INSERT INTO met_language VALUES('3516','admin_content_list1','Click on the blank part of each row of the table to drag up and down and save to change the sort.','1','0','0','0','en');
INSERT INTO met_language VALUES('3517','module_reply1','Separate multiple numbers by |','1','0','0','0','en');
INSERT INTO met_language VALUES('3518','module_reply2','To reply to the SMS content, you need to submit the content template review on the SMS function providing platform, and the verification will be successful before it can be sent.','1','0','0','0','en');
INSERT INTO met_language VALUES('3519','online_list1','Number/link/picture','1','0','0','0','en');
INSERT INTO met_language VALUES('3520','choice_style','choice of style','1','0','0','0','en');
INSERT INTO met_language VALUES('3521','reading_authority','Reading authority','1','0','0','0','en');
INSERT INTO met_language VALUES('3522','empty_not_modified','If it is empty, it will not be modified','1','0','0','0','en');
INSERT INTO met_language VALUES('3523','button','Button','1','0','0','0','en');
INSERT INTO met_language VALUES('3524','fliptext1','see more','1','0','0','0','en');
INSERT INTO met_language VALUES('3525','being_imported','Being imported, please do not operate.','1','0','0','0','en');
INSERT INTO met_language VALUES('3526','least_one_item','Please select at least one item','1','0','0','0','en');
INSERT INTO met_language VALUES('3527','feedfback','Feedback','1','0','0','0','en');
INSERT INTO met_language VALUES('3528','message','Message','1','0','0','0','en');
INSERT INTO met_language VALUES('3529','job','Recruitment','1','0','0','0','en');
INSERT INTO met_language VALUES('3530','product','Product','1','0','0','0','en');
INSERT INTO met_language VALUES('3531','saving','Save, please wait...','1','0','0','0','en');
INSERT INTO met_language VALUES('3532','no_data','No data','1','0','0','0','en');
INSERT INTO met_language VALUES('3533','numbering','Numbering','1','0','0','0','en');
INSERT INTO met_language VALUES('3534','successful_syn','Successful synchronization','1','0','0','0','en');
INSERT INTO met_language VALUES('3535','failed_syn','Synchronization failed','1','0','0','0','en');
INSERT INTO met_language VALUES('3536','being_synced','Being synced, please be patient.','1','0','0','0','en');
INSERT INTO met_language VALUES('3537','national_flag','National flag','1','0','0','0','en');
INSERT INTO met_language VALUES('3538','national_flag_tips1','Custom flag gif images can be placed in the public/images/flag/ folder of the website.','1','0','0','0','en');
INSERT INTO met_language VALUES('3539','manage_tips1','Click to collapse/expand the list of columns','1','0','0','0','en');
INSERT INTO met_language VALUES('3540','set_default_section','Set default section','1','0','0','0','en');
INSERT INTO met_language VALUES('3541','enter_user_name','please enter user name','1','0','0','0','en');
INSERT INTO met_language VALUES('3542','system_plugin_uninstall','System plugin, unable to uninstall','1','0','0','0','en');
INSERT INTO met_language VALUES('3543','install_first','Please install first!','1','0','0','0','en');
INSERT INTO met_language VALUES('3544','upgrade','In the upgrade, please wait...','1','0','0','0','en');
INSERT INTO met_language VALUES('3545','file_download_failed','File download failed','1','0','0','0','en');
INSERT INTO met_language VALUES('3546','column_search','Column search','1','0','0','0','en');
INSERT INTO met_language VALUES('3547','advanced_search','Advanced Search','1','0','0','0','en');
INSERT INTO met_language VALUES('3548','replacement_text','Replacement text cannot be empty','1','0','0','0','en');
INSERT INTO met_language VALUES('3549','ing','ing','1','0','0','0','en');
INSERT INTO met_language VALUES('3550','static_page_success','Static page generation completed','1','0','0','0','en');
INSERT INTO met_language VALUES('3551','successful_conversion','The conversion was successful!','1','0','0','0','en');
INSERT INTO met_language VALUES('3552','full_site','Full Site','1','0','0','0','en');
INSERT INTO met_language VALUES('3553','default','default','1','0','0','0','en');
INSERT INTO met_language VALUES('3554','valid_phone_number','Please enter a valid phone number','1','0','0','0','en');
INSERT INTO met_language VALUES('3555','valid_email_address','Please enter a valid email address','1','0','0','0','en');
INSERT INTO met_language VALUES('3556','button_text','Button text','1','0','0','0','en');
INSERT INTO met_language VALUES('3557','open_mode','Open mode','1','0','0','0','en');
INSERT INTO met_language VALUES('3558','button_size','Button size','1','0','0','0','en');
INSERT INTO met_language VALUES('3559','button_color','Button color','1','0','0','0','en');
INSERT INTO met_language VALUES('3560','mouse_over_button_color','Mouse over button color','1','0','0','0','en');
INSERT INTO met_language VALUES('3561','font_size','font size','1','0','0','0','en');
INSERT INTO met_language VALUES('3562','mouse_over_text_color','Mouse over text color','1','0','0','0','en');
INSERT INTO met_language VALUES('3563','display_client','Display client','1','0','0','0','en');
INSERT INTO met_language VALUES('3564','new_window','New window','1','0','0','0','en');
INSERT INTO met_language VALUES('3565','original_window','Original window','1','0','0','0','en');
INSERT INTO met_language VALUES('3566','mobile_terminal','Mobile terminal','1','0','0','0','en');
INSERT INTO met_language VALUES('3567','image_title_font_size','Image title font size','1','0','0','0','en');
INSERT INTO met_language VALUES('3568','image_description_font_size','Image description font size','1','0','0','0','en');
INSERT INTO met_language VALUES('3569','mobile_terminal_settings','Mobile phone settings','1','0','0','0','en');
INSERT INTO met_language VALUES('3570','mobile_phone_picture_title','Mobile image title','1','0','0','0','en');
INSERT INTO met_language VALUES('3571','banner_edit1','If you do not fill in the settings, keep consistent with the computer','1','0','0','0','en');
INSERT INTO met_language VALUES('3572','banner_edit2','Mobile phone picture title color:','1','0','0','0','en');
INSERT INTO met_language VALUES('3573','banner_edit3','Mobile phone image title font size','1','0','0','0','en');
INSERT INTO met_language VALUES('3574','banner_edit5','Mobile phone picture description','1','0','0','0','en');
INSERT INTO met_language VALUES('3575','banner_edit6','Mobile phone picture description color','1','0','0','0','en');
INSERT INTO met_language VALUES('3576','banner_edit7','Mobile phone image description font size','1','0','0','0','en');
INSERT INTO met_language VALUES('3577','banner_edit8','Mobile phone image text position','1','0','0','0','en');
INSERT INTO met_language VALUES('3578','feedbackTip5','Export the currently selected information','1','0','0','0','en');
INSERT INTO met_language VALUES('3579','setimgLeftMid','Left middle','1','0','0','0','en');
INSERT INTO met_language VALUES('3580','function_ency1','Only the traditional background functions are listed here. For more setting functions, please edit the columns and pages in the visual editing background.','1','0','0','0','en');
INSERT INTO met_language VALUES('3581','environmental_test','environmental test','1','0','0','0','en');
INSERT INTO met_language VALUES('3582','function_ency2','Please add the corresponding module column in \"Column Management\" and then manage it in the corresponding function menu.','1','0','0','0','en');
INSERT INTO met_language VALUES('3583','sms_function','SMS function','1','0','0','0','en');
INSERT INTO met_language VALUES('3584','website_overview','Website overview','1','0','0','0','en');
INSERT INTO met_language VALUES('3585','system_cache','System cache','1','0','0','0','en');
INSERT INTO met_language VALUES('3586','help_manual','Help manual','1','0','0','0','en');
INSERT INTO met_language VALUES('3587','online_quiz','Online quiz','1','0','0','0','en');
INSERT INTO met_language VALUES('3588','online_work_order','Online work order','1','0','0','0','en');
INSERT INTO met_language VALUES('3589','admin_job1','Need to add a resume to the job management position','1','0','0','0','en');
INSERT INTO met_language VALUES('3590','admin_manage1','Click on the left column list to manage content','1','0','0','0','en');
INSERT INTO met_language VALUES('3591','admin_menu1','This feature requires template support. Some templates come with a mobile phone menu at the bottom. Please set it in the visual interface.','1','0','0','0','en');
INSERT INTO met_language VALUES('3592','search_range','Search range','1','0','0','0','en');
INSERT INTO met_language VALUES('3593','admin_search1','Specify a level column','1','0','0','0','en');
INSERT INTO met_language VALUES('3594','admin_search2','Whether to open the search method','1','0','0','0','en');
INSERT INTO met_language VALUES('3595','admin_search3','Whether to link','1','0','0','0','en');
INSERT INTO met_language VALUES('3596','admin_search4','Search box default content','1','0','0','0','en');
INSERT INTO met_language VALUES('3597','admin_search5','Current level 1 column','1','0','0','0','en');
INSERT INTO met_language VALUES('3598','admin_search6','Search method','1','0','0','0','en');
INSERT INTO met_language VALUES('3599','admin_search7','Title and content','1','0','0','0','en');
INSERT INTO met_language VALUES('3600','by_module','By module','1','0','0','0','en');
INSERT INTO met_language VALUES('3601','by_column','By column','1','0','0','0','en');
INSERT INTO met_language VALUES('3602','admin_seo1','Index-language identifier.html (eg index-cn.html)','1','0','0','0','en');
INSERT INTO met_language VALUES('3603','admin_seo2','Directory name /list - static page name or ID - language identifier .html (eg product/list-1-cn.html)','1','0','0','0','en');
INSERT INTO met_language VALUES('3604','admin_seo3','Directory name /list - static page name or ID - language identifier .html (eg product/list-1-cn.html)','1','0','0','0','en');
INSERT INTO met_language VALUES('3605','admin_tag_setting1','TAG settings','1','0','0','0','en');
INSERT INTO met_language VALUES('3606','admin_tag_setting2','TAG generation rule','1','0','0','0','en');
INSERT INTO met_language VALUES('3607','admin_tag_setting3','By level 1','1','0','0','0','en');
INSERT INTO met_language VALUES('3608','admin_tag_setting4','TAG Label Aggregation Rules','1','0','0','0','en');
INSERT INTO met_language VALUES('3609','admin_tag_setting5','Set the same tag content','1','0','0','0','en');
INSERT INTO met_language VALUES('3610','admin_tag_setting6','Content details page aggregation number','1','0','0','0','en');
INSERT INTO met_language VALUES('3611','admin_tag_setting7','Use the system default if you don\'t fill it out','1','0','0','0','en');
INSERT INTO met_language VALUES('3612','admin_tag_setting8','Please add the column of setting \"tag tag\" module in column management first, and the front access address is','1','0','0','0','en');
INSERT INTO met_language VALUES('3613','add_tag','add tag','1','0','0','0','en');
INSERT INTO met_language VALUES('3614','tag_name','Label name','1','0','0','0','en');
INSERT INTO met_language VALUES('3615','add_manully','add manully','1','0','0','0','en');
INSERT INTO met_language VALUES('3616','aggregation_range','Aggregation range','1','0','0','0','en');
INSERT INTO met_language VALUES('3617','admin_tag_setting9','Label name format is incorrect','1','0','0','0','en');
INSERT INTO met_language VALUES('3618','admin_tag_setting10','Static page name format is incorrect','1','0','0','0','en');
INSERT INTO met_language VALUES('3619','system_check1','Check if your server supports all the features of the system.','1','0','0','0','en');
INSERT INTO met_language VALUES('3620','system_check2','Environment/function test result','1','0','0','0','en');
INSERT INTO met_language VALUES('3621','system_check3','File and directory permissions','1','0','0','0','en');
INSERT INTO met_language VALUES('3622','system_check4','To be able to use the system\'s cache, pseudo-static, and upload files functions properly, you need to set the following files/directories to \"writable\". Below is a list of directories that need to be set to \"writable\" and the suggested CHMOD settings.','1','0','0','0','en');
INSERT INTO met_language VALUES('3623','system_check5','Some hosts do not allow you to set CHMOD 777, you need to use 666. Try the highest value first, if not, then gradually reduce the value.','1','0','0','0','en');
INSERT INTO met_language VALUES('3624','visualization1','Long press the place you want to modify to trigger the modification function','1','0','0','0','en');
INSERT INTO met_language VALUES('3625','stand_by','stand by','1','0','0','0','en');
INSERT INTO met_language VALUES('3626','close_this_time','Close this time','1','0','0','0','en');
INSERT INTO met_language VALUES('3627','Submit','submit','1','0','0','0','en');
INSERT INTO met_language VALUES('3628','rename_admin_dir','The current system environment does not support modifying the background folder name. Please modify it manually.','1','0','0','0','en');
INSERT INTO met_language VALUES('3629','notemptips','There is no website template in the current language. Please go to Style-Website Template and select a set of templates.','1','0','0','0','en');
INSERT INTO met_language VALUES('3630','short_message','short message','1','0','0','0','en');
INSERT INTO met_language VALUES('3631','common_qq','common qq','1','0','0','0','en');
INSERT INTO met_language VALUES('3632','enterprise_qq','enterprise qq','1','0','0','0','en');
INSERT INTO met_language VALUES('3633','back_folder_list','back folder list','1','0','0','0','en');
INSERT INTO met_language VALUES('3634','back_icon_iibrary_list','back icon iibrary list','1','0','0','0','en');
INSERT INTO met_language VALUES('3635','choose_icon_tips','Click on the selected icon and save it','1','0','0','0','en');
INSERT INTO met_language VALUES('3636','jump_to_no','Jump to No','1','0','0','0','en');
INSERT INTO met_language VALUES('3637','page','page','1','0','0','0','en');
INSERT INTO met_language VALUES('3638','goto','goto','1','0','0','0','en');
INSERT INTO met_language VALUES('3639','save_image_to_website','save image to website','1','0','0','0','en');
INSERT INTO met_language VALUES('3640','save_allimages_to_website','save all images to website','1','0','0','0','en');
INSERT INTO met_language VALUES('3641','block_style','block style','1','0','0','0','en');
INSERT INTO met_language VALUES('3642','change','change','1','0','0','0','en');
INSERT INTO met_language VALUES('3643','change_blockstyle_tips','After selecting the style, please click the [change] button.','1','0','0','0','en');
INSERT INTO met_language VALUES('3644','installing','Do not operate during installation.','1','0','0','0','en');
INSERT INTO met_language VALUES('3645','databacking','Do not operate during backup.','1','0','0','0','en');
INSERT INTO met_language VALUES('3646','already_update_package','Manual upgrade package exists','1','0','0','0','en');
INSERT INTO met_language VALUES('3647','edit_authority','Edit authority','1','0','0','0','en');
INSERT INTO met_language VALUES('3648','editable','Editable','1','0','0','0','en');
INSERT INTO met_language VALUES('3649','non_editable','Non editable','1','0','0','0','en');
INSERT INTO met_language VALUES('3650','cv_export','CV export','1','0','0','0','en');
INSERT INTO met_language VALUES('3651','access_type','Display mode of reading authority','1','0','0','0','en');
INSERT INTO met_language VALUES('3652','access_type1','No permission information is displayed at the front desk. Click read to judge the permission.','1','0','0','0','en');
INSERT INTO met_language VALUES('3653','access_type2','No permission information is displayed in the foreground','1','0','0','0','en');
INSERT INTO met_language VALUES('3654','database_switch','Database switching','1','0','0','0','en');
INSERT INTO met_language VALUES('3655','database_switch_tips','Please do not frequently switch the database type during the use of the website. Some applications do not support the sqlite database. It is recommended to use a more stable and efficient mysql database.','1','0','0','0','en');
INSERT INTO met_language VALUES('3656','database_switch_tips1','Please configure MySQL database parameters. For database information, please contact your server provider.','1','0','0','0','en');
INSERT INTO met_language VALUES('3657','database_switch_tips2','For example: met, please do not leave blank and use \"\" to end','1','0','0','0','en');
INSERT INTO met_language VALUES('3658','database_switch_tips3','Generally, no change is required. Refer to MySQL control panel of host or server.','1','0','0','0','en');
INSERT INTO met_language VALUES('3659','database_switch_tips4','For example, \"met\" or \"my met\", make sure to start with a letter','1','0','0','0','en');
INSERT INTO met_language VALUES('3660','database_type','Database type','1','0','0','0','en');
INSERT INTO met_language VALUES('3661','table_prefix','Table Prefix','1','0','0','0','en');
INSERT INTO met_language VALUES('3662','database_address','Database connection address','1','0','0','0','en');
INSERT INTO met_language VALUES('3663','database_name','Database name','1','0','0','0','en');
INSERT INTO met_language VALUES('3664','database_user','Database user name','1','0','0','0','en');
INSERT INTO met_language VALUES('3665','database_password','Database password','1','0','0','0','en');
INSERT INTO met_language VALUES('3666','read_protocol','Please read the following agreement carefully','1','0','0','0','en');
INSERT INTO met_language VALUES('3667','disagree','Disagree','1','0','0','0','en');
INSERT INTO met_language VALUES('3668','agree','Agree','1','0','0','0','en');
INSERT INTO met_language VALUES('3669','copyright_nofollow','Foreground copyright link nofollow property','1','0','0','0','en');
INSERT INTO met_language VALUES('3670','copyright_nofollow_description','After opening, the copyright link at the bottom of the foreground will add the nofollow attribute','1','0','0','0','en');
INSERT INTO met_language VALUES('3671','close_allchildcolumn_v6','Hide all sub columns','1','0','0','0','en');
INSERT INTO met_language VALUES('3672','emailhave','Mailbox is bound','1','0','0','0','en');
INSERT INTO met_language VALUES('3673','telhave','Mobile number is bound','1','0','0','0','en');
INSERT INTO met_language VALUES('3674','noupdate','No updates available','1','0','0','0','en');
INSERT INTO met_language VALUES('3675','delete_all_saveimgbtn','删除全部保存图片按钮','1','0','0','0','cn');
INSERT INTO met_language VALUES('3676','cooperation_platform','企业超市','0','0','0','0','en');
INSERT INTO met_language VALUES('3677','feedback_interaction','反馈互动','0','0','0','0','en');
INSERT INTO met_language VALUES('3678','banner_manage','Banner管理','0','0','0','0','en');
INSERT INTO met_language VALUES('3679','unitytxt_71','二维码','0','0','0','0','en');
INSERT INTO met_language VALUES('3680','unitytxt_69','安装文件删除','0','0','8','0','en');
INSERT INTO met_language VALUES('3681','unitytxt_70','上传文件','0','0','8','0','en');
INSERT INTO met_language VALUES('3682','unitytxt_39','基本设置','0','0','1','0','en');
INSERT INTO met_language VALUES('3683','unitytxt_42','列表页每页显示条数','0','0','0','0','en');
INSERT INTO met_language VALUES('3684','unitytxt_38','代码会放在 &lt;/body&gt; 标签以上','0','0','39','0','en');
INSERT INTO met_language VALUES('3685','unitytxt_37','代码会放在 &lt;/head&gt; 标签以上','0','0','39','0','en');
INSERT INTO met_language VALUES('3686','unitytxt_33','权限设置','0','0','39','0','en');
INSERT INTO met_language VALUES('3687','unitytxt_34','资料文档上传','0','0','40','0','en');
INSERT INTO met_language VALUES('3688','unitytxt_36','PC端第三方代码（一般用于放置百度商桥代码、站长统计代码、谷歌翻译代码等）','0','0','39','0','en');
INSERT INTO met_language VALUES('3689','unitytxt_25','关键词设置','0','0','32','0','en');
INSERT INTO met_language VALUES('3690','unitytxt_26','优化文字设置（可用于增加关键词密度，需要网站模板支持）','0','0','32','0','en');
INSERT INTO met_language VALUES('3691','unitytxt_15','其它设置','0','0','0','0','en');
INSERT INTO met_language VALUES('3692','unitytxt_13','底部信息设置（显示在网站前台底部）','0','0','39','0','en');
INSERT INTO met_language VALUES('3693','unitytxt_14','样式设置','0','0','23','0','en');
INSERT INTO met_language VALUES('3694','unitytxt_10','仅适用用于中文前台语言（语言标识为cn或zh时生效），浏览者可以在简繁体之间切换。','0','0','16','0','en');
INSERT INTO met_language VALUES('3695','unitytxt_9','同步官方参数','0','0','16','0','en');
INSERT INTO met_language VALUES('3696','unitytxt_8','该语言设置了独立域名，需要修改网站网址请在<font class=\'\'red\'\'>语言设置</font>中修改。','0','0','39','0','en');
INSERT INTO met_language VALUES('3697','unitytxt_7','备份包下载后建议及时删除备份文件，以免影响空间大小（如果你的虚拟主机限定流量，你可以通过FTP下载节省流量）','0','0','0','0','en');
INSERT INTO met_language VALUES('3698','unitytxt_6','版本不一致','0','0','0','0','en');
INSERT INTO met_language VALUES('3699','unitytxt_2','勾选则采用默认设置','0','0','0','0','en');
INSERT INTO met_language VALUES('3700','ssl','SSL服务方式','0','0','39','0','en');
INSERT INTO met_language VALUES('3701','tls','TLS服务方式','0','0','39','0','en');
INSERT INTO met_language VALUES('3702','loginFail','操作失败!','0','0','8','0','en');
INSERT INTO met_language VALUES('3703','NoidJS','没有此用户','0','0','38','0','en');
INSERT INTO met_language VALUES('3704','jsx32','登录超时，请重新登录！','0','0','0','0','en');
INSERT INTO met_language VALUES('3705','jsx27','静态页面名已存在','0','0','0','0','en');
INSERT INTO met_language VALUES('3706','jsx20','正在检测...','0','0','0','0','en');
INSERT INTO met_language VALUES('3707','jsx17','上传成功！','0','0','0','0','en');
INSERT INTO met_language VALUES('3708','jsx15','上传','0','0','1','0','en');
INSERT INTO met_language VALUES('3709','jsx10','错误','0','0','0','0','en');
INSERT INTO met_language VALUES('3710','jsx2','请至少选一种语言！','0','0','0','0','en');
INSERT INTO met_language VALUES('3711','jsx3','请先选择需要复制的表单','0','0','0','0','en');
INSERT INTO met_language VALUES('3712','jsx1','载入中...','0','0','0','0','en');
INSERT INTO met_language VALUES('3713','js67','请至少选择一个所属栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('3714','js55','返回','0','0','1','0','en');
INSERT INTO met_language VALUES('3715','js56','移动为一级栏目必须设置一个新的目录名称(目录名只能是数字或字母)','0','0','0','0','en');
INSERT INTO met_language VALUES('3716','js46','不能重复','0','0','0','0','en');
INSERT INTO met_language VALUES('3717','js49','撤销','0','0','0','0','en');
INSERT INTO met_language VALUES('3718','js41','不能为空！','0','0','0','0','en');
INSERT INTO met_language VALUES('3719','js36','请选择语言','0','0','0','0','en');
INSERT INTO met_language VALUES('3720','js35','上传临时文件夹（upload_tmp_dir）不可写或者域名/后台文件夹/include/uploadify.php没有访问权限。','0','0','0','0','en');
INSERT INTO met_language VALUES('3721','js25','图片地址不能为空！','0','0','0','0','en');
INSERT INTO met_language VALUES('3722','js23','没有选中的记录!','0','0','0','0','en');
INSERT INTO met_language VALUES('3723','js18','原文字不能为空','0','0','0','0','en');
INSERT INTO met_language VALUES('3724','js15','请选择上传文件','0','0','0','0','en');
INSERT INTO met_language VALUES('3725','js16','下载地址不能为空','0','0','0','0','en');
INSERT INTO met_language VALUES('3726','js14','请选择二级及三级栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('3727','js10','您的修改内容还没有保存，您确定离开吗？','0','0','0','0','en');
INSERT INTO met_language VALUES('3728','js6','两次输入的密码不一样','0','0','0','0','en');
INSERT INTO met_language VALUES('3729','js7','确定要删除选中的信息吗？一旦删除将不能恢复！','0','0','1','0','en');
INSERT INTO met_language VALUES('3730','js5','email不能为空','0','0','0','0','en');
INSERT INTO met_language VALUES('3731','js4','登录密码不能为空','0','0','0','0','en');
INSERT INTO met_language VALUES('3732','js2','数据出错了','0','0','0','0','en');
INSERT INTO met_language VALUES('3733','js1','请稍等,系统检测中....','0','0','0','0','en');
INSERT INTO met_language VALUES('3734','dataerror','数据错误','0','0','0','0','en');
INSERT INTO met_language VALUES('3735','jsok','操作成功','0','0','1','0','en');
INSERT INTO met_language VALUES('3736','marks','：','0','0','0','0','en');
INSERT INTO met_language VALUES('3737','displayimg','展示图片','0','0','0','0','en');
INSERT INTO met_language VALUES('3738','Operating','操作系统','0','0','37','0','en');
INSERT INTO met_language VALUES('3739','noorderinfo','数值越小越靠前','0','0','0','0','en');
INSERT INTO met_language VALUES('3740','contentdetail','详细内容','0','0','0','0','en');
INSERT INTO met_language VALUES('3741','content','内容','0','0','1','0','en');
INSERT INTO met_language VALUES('3742','webaccess','访问权限','0','0','0','0','en');
INSERT INTO met_language VALUES('3743','keywordsinfo','多个关键词请用\",\"隔开','0','0','0','0','en');
INSERT INTO met_language VALUES('3744','keywords','关键词','0','0','0','0','en');
INSERT INTO met_language VALUES('3745','hits','点击次数','0','0','0','0','en');
INSERT INTO met_language VALUES('3746','addtime','发布时间','0','0','0','0','en');
INSERT INTO met_language VALUES('3747','updatetime','更新时间','0','0','0','0','en');
INSERT INTO met_language VALUES('3748','access3','管理员','0','0','0','0','en');
INSERT INTO met_language VALUES('3749','access2','代理商','0','0','0','0','en');
INSERT INTO met_language VALUES('3750','access1','普通会员','0','0','0','0','en');
INSERT INTO met_language VALUES('3751','access0','不限','0','0','0','0','en');
INSERT INTO met_language VALUES('3752','access','权限','0','0','0','0','en');
INSERT INTO met_language VALUES('3753','read','已读','0','0','0','0','en');
INSERT INTO met_language VALUES('3754','parameter','参数','0','0','0','0','en');
INSERT INTO met_language VALUES('3755','search','搜索','0','0','0','0','en');
INSERT INTO met_language VALUES('3756','manager','内容管理','0','0','19','0','en');
INSERT INTO met_language VALUES('3757','top','置顶','0','0','0','0','en');
INSERT INTO met_language VALUES('3758','wap','wap','0','0','0','0','en');
INSERT INTO met_language VALUES('3759','recom','推荐','0','0','0','0','en');
INSERT INTO met_language VALUES('3760','image','图片','0','0','0','0','en');
INSERT INTO met_language VALUES('3761','title','标题','0','0','0','0','en');
INSERT INTO met_language VALUES('3762','description','简短描述','0','0','0','0','en');
INSERT INTO met_language VALUES('3763','selected','选择','0','0','0','0','en');
INSERT INTO met_language VALUES('3764','metinfo','MetInfo|米拓企业建站系统','0','0','0','0','en');
INSERT INTO met_language VALUES('3765','no','否','0','0','0','0','en');
INSERT INTO met_language VALUES('3766','yes','是','0','0','0','0','en');
INSERT INTO met_language VALUES('3767','sort','排序','0','0','0','0','en');
INSERT INTO met_language VALUES('3768','type','类型','0','0','0','0','en');
INSERT INTO met_language VALUES('3769','close','关闭','0','0','0','0','en');
INSERT INTO met_language VALUES('3770','open','开启','0','0','0','0','en');
INSERT INTO met_language VALUES('3771','operate','操作','0','0','0','0','en');
INSERT INTO met_language VALUES('3772','preview','预览','0','0','0','0','en');
INSERT INTO met_language VALUES('3773','delete','删除','0','0','0','0','en');
INSERT INTO met_language VALUES('3774','modify','修改','0','0','0','0','en');
INSERT INTO met_language VALUES('3775','View','查看','0','0','0','0','en');
INSERT INTO met_language VALUES('3776','editor','编辑','0','0','0','0','en');
INSERT INTO met_language VALUES('3777','add','添加','0','0','0','0','en');
INSERT INTO met_language VALUES('3778','addsubcolumn','添加子栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('3779','Submit','保存','0','0','0','0','en');
INSERT INTO met_language VALUES('3780','Submitall','提交','0','0','26','0','en');
INSERT INTO met_language VALUES('3781','Copy','复制','0','0','0','0','en');
INSERT INTO met_language VALUES('3782','langadderr4','无法同步官网语言包。','0','0','16','0','en');
INSERT INTO met_language VALUES('3783','langadderr5','您删除的是默认语言！请先设置一个其它语言为默认语言再操作！','0','0','16','0','en');
INSERT INTO met_language VALUES('3784','basictips7','邮箱设置正确！','0','0','39','0','en');
INSERT INTO met_language VALUES('3785','basictips6','<b>解决办法：</b>请检查帐号密码和smtp是否有误或查看邮箱是否开启smtp服务。','0','0','39','0','en');
INSERT INTO met_language VALUES('3786','basictips5','<b>错误提示：</b>测试发送邮件失败！','0','0','39','0','en');
INSERT INTO met_language VALUES('3787','basictips3','邮件发送测试','0','0','39','0','en');
INSERT INTO met_language VALUES('3788','basictips4','收到邮件说明您网站的系统邮箱设置正确。','0','0','39','0','en');
INSERT INTO met_language VALUES('3789','upfileFail10','不支持imagejpeg函数','0','0','8','0','en');
INSERT INTO met_language VALUES('3790','upfileFail11','不支持imagepng函数','0','0','8','0','en');
INSERT INTO met_language VALUES('3791','upfileFail9','不支持imagegif函数','0','0','8','0','en');
INSERT INTO met_language VALUES('3792','upfileFail8','文件损坏,缩略图生成失败','0','0','8','0','en');
INSERT INTO met_language VALUES('3793','upfileFail7','不支持当前文件格式生成缩略图，请上传JPG,GIF,PNG图片','0','0','8','0','en');
INSERT INTO met_language VALUES('3794','upfileFail6','空间不支持GD库，无法生成缩略图','0','0','8','0','en');
INSERT INTO met_language VALUES('3795','upfileFail5','bmp的格式无法自动生成缩图','0','0','8','0','en');
INSERT INTO met_language VALUES('3796','upfileFail4','创建目录失败','0','0','8','0','en');
INSERT INTO met_language VALUES('3797','upfileOver4','upload文件夹没有写权限,请联系空间商修改。','0','0','8','0','en');
INSERT INTO met_language VALUES('3798','upfileOver5','上传临时文件夹(upload_tmp_dir)没有写权限,请联系空间商修改。','0','0','8','0','en');
INSERT INTO met_language VALUES('3799','upfileOver3','没有文件被上传。','0','0','8','0','en');
INSERT INTO met_language VALUES('3800','upfileOver2','文件只有部分被上传。','0','0','8','0','en');
INSERT INTO met_language VALUES('3801','upfileOver','上传的文件超过了 php.ini 中 upload_max_filesize 选项限制的值。','0','0','8','0','en');
INSERT INTO met_language VALUES('3802','upfileOver1','上传文件的大小超过了 HTML 表单中 MAX_FILE_SIZE 选项指定的值。','0','0','8','0','en');
INSERT INTO met_language VALUES('3803','upfileTip3','文件格式不允许上传。','0','0','8','0','en');
INSERT INTO met_language VALUES('3804','upfileTip1','，不能上传。','0','0','8','0','en');
INSERT INTO met_language VALUES('3805','upfileFail2','创建图片目录失败','0','0','8','0','en');
INSERT INTO met_language VALUES('3806','upfileMax','大小超出系统限定值','0','0','8','0','en');
INSERT INTO met_language VALUES('3807','upfileFile','上传文件','0','0','8','0','en');
INSERT INTO met_language VALUES('3808','funNav4','都显示','0','0','5','0','en');
INSERT INTO met_language VALUES('3809','indexfeedbackm','反馈信息管理','0','0','8','0','en');
INSERT INTO met_language VALUES('3810','indexlink','友情链接','0','0','8','0','en');
INSERT INTO met_language VALUES('3811','indexhtm','静态页面生成','0','0','8','0','en');
INSERT INTO met_language VALUES('3812','indexhtmset','静态页面','0','0','8','0','en');
INSERT INTO met_language VALUES('3813','indexcv','招聘系统配置','0','0','8','0','en');
INSERT INTO met_language VALUES('3814','indexflash','Banner 管理','0','0','4','0','en');
INSERT INTO met_language VALUES('3815','indexbbs','技术支持','0','0','8','0','en');
INSERT INTO met_language VALUES('3816','indexcode','商业授权','0','0','8','0','en');
INSERT INTO met_language VALUES('3817','indexlang','语言设置','0','0','8','0','en');
INSERT INTO met_language VALUES('3818','indexloginout','退出','0','0','8','0','en');
INSERT INTO met_language VALUES('3819','indexuser','用户管理','0','0','8','0','en');
INSERT INTO met_language VALUES('3820','indexadmin','常用功能','0','0','8','0','en');
INSERT INTO met_language VALUES('3821','indexadminname','管理员管理','0','0','8','0','en');
INSERT INTO met_language VALUES('3822','indexcontent','内容管理','0','0','8','0','en');
INSERT INTO met_language VALUES('3823','loginall','你没有添加、修改、删除信息的权限，请联系管理员开通','0','0','8','0','en');
INSERT INTO met_language VALUES('3824','loginedit','你没有修改信息的权限，请联系管理员开通','0','0','0','0','en');
INSERT INTO met_language VALUES('3825','loginadd','你没有添加信息的权限，请联系管理员开通','0','0','8','0','en');
INSERT INTO met_language VALUES('3826','logindelete','你没有删除信息的权限，请联系管理员开通','0','0','8','0','en');
INSERT INTO met_language VALUES('3827','loginpass','用户名或密码错误','0','0','8','0','en');
INSERT INTO met_language VALUES('3828','loginname','用户名或密码错误','0','0','18','0','en');
INSERT INTO met_language VALUES('3829','logincodeerror','验证码错误','0','0','18','0','en');
INSERT INTO met_language VALUES('3830','loginconfirm','登录','0','0','18','0','en');
INSERT INTO met_language VALUES('3831','loginforget','忘记密码?','0','0','18','0','en');
INSERT INTO met_language VALUES('3832','loginusename','用户名','0','0','8','0','en');
INSERT INTO met_language VALUES('3833','loginpassword','密码','0','0','8','0','en');
INSERT INTO met_language VALUES('3834','logincode','验证码','0','0','8','0','en');
INSERT INTO met_language VALUES('3835','loginlanguage','后台语言','0','0','18','0','en');
INSERT INTO met_language VALUES('3836','loginmetinfo','MetInfo','0','0','8','0','en');
INSERT INTO met_language VALUES('3837','loginadmin','管理员登录','0','0','18','0','en');
INSERT INTO met_language VALUES('3838','logintitle','后台登录','0','0','18','0','en');
INSERT INTO met_language VALUES('3839','myapp','应用插件','0','0','36','0','en');
INSERT INTO met_language VALUES('3840','myapps','我的插件','0','0','36','0','en');
INSERT INTO met_language VALUES('3841','recycle','内容回收站','0','0','29','0','en');
INSERT INTO met_language VALUES('3842','managertyp5','自定义','0','0','2','0','en');
INSERT INTO met_language VALUES('3843','managertyp4','内容管理员','0','0','2','0','en');
INSERT INTO met_language VALUES('3844','managertyp2','管理员','0','0','2','0','en');
INSERT INTO met_language VALUES('3845','managertyp3','优化推广员','0','0','2','0','en');
INSERT INTO met_language VALUES('3846','managertyp1','创始人','0','0','2','0','en');
INSERT INTO met_language VALUES('3847','uplaoderr1','上传失败！','0','0','8','0','en');
INSERT INTO met_language VALUES('3848','clickview','点击查看','0','0','8','0','en');
INSERT INTO met_language VALUES('3849','membertips1','注册时间','0','0','38','0','en');
INSERT INTO met_language VALUES('3850','memberjstxt2','请输入登录密码！','0','0','7','0','en');
INSERT INTO met_language VALUES('3851','memberCheck','是否激活','0','0','38','0','en');
INSERT INTO met_language VALUES('3852','memberMan','先生','0','0','36','0','en');
INSERT INTO met_language VALUES('3853','memberCell','手机','0','0','7','0','en');
INSERT INTO met_language VALUES('3854','memberTip','不修改请留空','0','0','7','0','en');
INSERT INTO met_language VALUES('3855','memberName','姓名','0','0','7','0','en');
INSERT INTO met_language VALUES('3856','memberCV','简历','0','0','15','0','en');
INSERT INTO met_language VALUES('3857','memberEmail','邮箱地址','0','0','7','0','en');
INSERT INTO met_language VALUES('3858','memberAdd','添加会员','0','0','2','0','en');
INSERT INTO met_language VALUES('3859','memberChecked','已激活','0','0','38','0','en');
INSERT INTO met_language VALUES('3860','memberUnChecked','未激活','0','0','38','0','en');
INSERT INTO met_language VALUES('3861','memberManage','会员管理','0','0','2','0','en');
INSERT INTO met_language VALUES('3862','memberlogin','会员注册','0','0','38','0','en');
INSERT INTO met_language VALUES('3863','hello','您好！','0','0','7','0','en');
INSERT INTO met_language VALUES('3864','getTip5','找回密码','0','0','7','0','en');
INSERT INTO met_language VALUES('3865','getTip3','创建新密码链接的电子邮件已经发送到您的邮箱，请尽快修改您的密码。','0','0','10','0','en');
INSERT INTO met_language VALUES('3866','getTip2','感谢您对MetInfo的支持与厚爱，希望MetInfo能为您的网站创造价值！','0','0','10','0','en');
INSERT INTO met_language VALUES('3867','getTip1','您的密码重置请求已经得到验证。请点击以下链接输入您的新密码：','0','0','10','0','en');
INSERT INTO met_language VALUES('3868','getNotice','管理员密码找回','0','0','10','0','en');
INSERT INTO met_language VALUES('3869','adminpassTitle','修改个人信息','0','0','2','0','en');
INSERT INTO met_language VALUES('3870','adminSelectAll','全部选择','0','0','2','0','en');
INSERT INTO met_language VALUES('3871','adminOperate4','删除信息','0','0','2','0','en');
INSERT INTO met_language VALUES('3872','adminOperate3','修改信息','0','0','2','0','en');
INSERT INTO met_language VALUES('3873','adminOperate1','完全控制','0','0','2','0','en');
INSERT INTO met_language VALUES('3874','adminOperate2','添加信息','0','0','2','0','en');
INSERT INTO met_language VALUES('3875','adminPower','信息权限','0','0','2','0','en');
INSERT INTO met_language VALUES('3876','adminTip2','只允许查看自己发表的信息','0','0','2','0','en');
INSERT INTO met_language VALUES('3877','adminTip3','发布信息需要审核才能正常显示','0','0','2','0','en');
INSERT INTO met_language VALUES('3878','adminOperate','操作权限','0','0','2','0','en');
INSERT INTO met_language VALUES('3879','adminpassword1','密码确认','0','0','2','0','en');
INSERT INTO met_language VALUES('3880','adminpassword','登录密码','0','0','7','0','en');
INSERT INTO met_language VALUES('3881','adminLastLogin','最后登录时间','0','0','0','0','en');
INSERT INTO met_language VALUES('3882','adminLastIP','最后登录IP','0','0','0','0','en');
INSERT INTO met_language VALUES('3883','metadmin','管理员','0','0','0','0','en');
INSERT INTO met_language VALUES('3884','adminusername','用户名','0','0','0','0','en');
INSERT INTO met_language VALUES('3885','adminname','姓名','0','0','0','0','en');
INSERT INTO met_language VALUES('3886','admin_email','管理员邮箱','0','0','0','0','en');
INSERT INTO met_language VALUES('3887','admin_email_error','管理员邮箱已被占用','0','0','0','0','en');
INSERT INTO met_language VALUES('3888','adminLoginNum','登录次数','0','0','38','0','en');
INSERT INTO met_language VALUES('3889','admintips7','管理员权限设置','0','0','2','0','en');
INSERT INTO met_language VALUES('3890','adminjurisd','语言权限','0','0','2','0','en');
INSERT INTO met_language VALUES('3891','admintips1','所有语言','0','0','0','0','en');
INSERT INTO met_language VALUES('3892','admintips2','至少选择一个','0','0','2','0','en');
INSERT INTO met_language VALUES('3893','admintips5','用户组','0','0','0','0','en');
INSERT INTO met_language VALUES('3894','admintips4','新增栏目权限','0','0','2','0','en');
INSERT INTO met_language VALUES('3895','webcompre','整站压缩包','0','0','8','0','en');
INSERT INTO met_language VALUES('3896','admininfo','管理员基本信息','0','0','0','0','en');
INSERT INTO met_language VALUES('3897','uploadfile','上传文件夹','0','0','8','0','en');
INSERT INTO met_language VALUES('3898','database','数据库','0','0','8','0','en');
INSERT INTO met_language VALUES('3899','dlapptips6','卸载','0','0','6','0','en');
INSERT INTO met_language VALUES('3900','dlapptips5','打开','0','0','6','0','en');
INSERT INTO met_language VALUES('3901','mobiletips3','添加内容','0','0','0','0','en');
INSERT INTO met_language VALUES('3902','smstips64','全部状态','0','0','6','0','en');
INSERT INTO met_language VALUES('3903','smstips24','操作时间','0','0','6','0','en');
INSERT INTO met_language VALUES('3904','smstips22','账户余额','0','0','6','0','en');
INSERT INTO met_language VALUES('3905','smstips18','操作类型','0','0','6','0','en');
INSERT INTO met_language VALUES('3906','smstips19','充值','0','0','6','0','en');
INSERT INTO met_language VALUES('3907','smstips17','序列','0','0','6','0','en');
INSERT INTO met_language VALUES('3908','smstips9','元','0','0','6','0','en');
INSERT INTO met_language VALUES('3909','smstips6','当前余额','0','0','6','0','en');
INSERT INTO met_language VALUES('3910','smstips7','付款方式','0','0','6','0','en');
INSERT INTO met_language VALUES('3911','smstips1','批量发送','0','0','6','0','en');
INSERT INTO met_language VALUES('3912','smstips2','发送记录','0','0','6','0','en');
INSERT INTO met_language VALUES('3913','statip','IP','0','0','6','0','en');
INSERT INTO met_language VALUES('3914','smsrecharge','充值','0','0','6','0','en');
INSERT INTO met_language VALUES('3915','physicalfunction4','文件夹','0','0','1','0','en');
INSERT INTO met_language VALUES('3916','physicaldelok','删除成功','0','0','6','0','en');
INSERT INTO met_language VALUES('3917','physicalgenok','生成成功','0','0','6','0','en');
INSERT INTO met_language VALUES('3918','usertype3','普通商业授权','0','0','0','0','en');
INSERT INTO met_language VALUES('3919','usertype4','高级商业授权','0','0','0','0','en');
INSERT INTO met_language VALUES('3920','appinstall','安装','0','0','1','0','en');
INSERT INTO met_language VALUES('3921','appupgrade','升级','0','0','3','0','en');
INSERT INTO met_language VALUES('3922','usertype1','免费','0','0','3','0','en');
INSERT INTO met_language VALUES('3923','csvnodata','没有数据','0','0','16','0','en');
INSERT INTO met_language VALUES('3924','wapdimensionalsize','尺寸','0','0','6','0','en');
INSERT INTO met_language VALUES('3925','dltips7','下载超时','0','0','0','0','en');
INSERT INTO met_language VALUES('3926','columnarrangement2','切换为','0','0','19','0','en');
INSERT INTO met_language VALUES('3927','columnarrangement3','按模块分类','0','0','19','0','en');
INSERT INTO met_language VALUES('3928','columnarrangement4','按栏目分类','0','0','19','0','en');
INSERT INTO met_language VALUES('3929','dltips6','远程服务器请求错误','0','0','0','0','en');
INSERT INTO met_language VALUES('3930','dltips5','您所请求的文件不存在','0','0','0','0','en');
INSERT INTO met_language VALUES('3931','dltips4','请升级程序','0','0','0','0','en');
INSERT INTO met_language VALUES('3932','dltips3','您没有权限下载此文件','0','0','0','0','en');
INSERT INTO met_language VALUES('3933','dltips2','文件下载失败，请检查本地目录权限和空间大小','0','0','0','0','en');
INSERT INTO met_language VALUES('3934','dltips1','无法连接上远程服务器，请检查网络','0','0','0','0','en');
INSERT INTO met_language VALUES('3935','seotips18','过滤外部模块','0','0','5','0','en');
INSERT INTO met_language VALUES('3936','seotips19','网站语言范围','0','0','32','0','en');
INSERT INTO met_language VALUES('3937','seotips20','当前语言','0','0','32','0','en');
INSERT INTO met_language VALUES('3938','seotips15_3','适合雅虎，','0','0','32','0','en');
INSERT INTO met_language VALUES('3939','seotips16','过滤栏目及内容','0','0','32','0','en');
INSERT INTO met_language VALUES('3940','seotips15_2','适合谷歌和百度，','0','0','32','0','en');
INSERT INTO met_language VALUES('3941','seotips15','地图网址','0','0','32','0','en');
INSERT INTO met_language VALUES('3942','seotips6','首页','0','0','0','0','en');
INSERT INTO met_language VALUES('3943','seotips9','内容页','0','0','32','0','en');
INSERT INTO met_language VALUES('3944','seotips14_1','怎样提交给搜索引擎？','0','0','32','0','en');
INSERT INTO met_language VALUES('3945','seotips14','网站地图（Sitemap）有助于加快网站被搜索引擎收录','0','0','32','0','en');
INSERT INTO met_language VALUES('3946','seotips12','是否立即生成所有静态页面？','0','0','11','0','en');
INSERT INTO met_language VALUES('3947','seotips11','是否删除所有已生成的静态页面？','0','0','11','0','en');
INSERT INTO met_language VALUES('3948','uiset_descript_v6','勾选的应用将出现在导航栏【常用功能】下拉列表中','0','0','0','0','en');
INSERT INTO met_language VALUES('3949','seotips1','多个关键词请用英文状态下的逗号 \",\" 隔开，建议3到4个关键词。','0','0','32','0','en');
INSERT INTO met_language VALUES('3950','statips27','时间','0','0','0','0','en');
INSERT INTO met_language VALUES('3951','statips2','统计设置','0','0','0','0','en');
INSERT INTO met_language VALUES('3952','linkRecommend','推荐站点','0','0','17','0','en');
INSERT INTO met_language VALUES('3953','linkPass','审核通过','0','0','17','0','en');
INSERT INTO met_language VALUES('3954','linkLOGO','网站LOGO','0','0','17','0','en');
INSERT INTO met_language VALUES('3955','linkcontact','联系方式','0','0','0','0','en');
INSERT INTO met_language VALUES('3956','linktip1','相同状态的站点，数字越大排序越靠前','0','0','17','0','en');
INSERT INTO met_language VALUES('3957','linktip2','审核通过的才能在前台显示，推荐站点排序靠前显示','0','0','17','0','en');
INSERT INTO met_language VALUES('3958','linkUrl','网站地址','0','0','17','0','en');
INSERT INTO met_language VALUES('3959','linkKeys','网站关键词','0','0','17','0','en');
INSERT INTO met_language VALUES('3960','linkCheck','审核','0','0','17','0','en');
INSERT INTO met_language VALUES('3961','linkName','网站标题','0','0','17','0','en');
INSERT INTO met_language VALUES('3962','linkType4','文字链接','0','0','17','0','en');
INSERT INTO met_language VALUES('3963','linkType5','LOGO链接','0','0','17','0','en');
INSERT INTO met_language VALUES('3964','linkType1','未审核链接','0','0','17','0','en');
INSERT INTO met_language VALUES('3965','linkType2','推荐链接','0','0','17','0','en');
INSERT INTO met_language VALUES('3966','linkType','链接类型','0','0','17','0','en');
INSERT INTO met_language VALUES('3967','htmCreateAll','生成所有页面','0','0','11','0','en');
INSERT INTO met_language VALUES('3968','htmsitemap','网站地图','0','0','0','0','en');
INSERT INTO met_language VALUES('3969','htmAll','所有页面','0','0','11','0','en');
INSERT INTO met_language VALUES('3970','htmTip1','生成内容页面','0','0','11','0','en');
INSERT INTO met_language VALUES('3971','htmTip2','生成列表页面','0','0','11','0','en');
INSERT INTO met_language VALUES('3972','htmColumn','栏目管理','0','0','0','0','en');
INSERT INTO met_language VALUES('3973','htmHome','网站首页','0','0','4','0','en');
INSERT INTO met_language VALUES('3974','sethtmsitemap4','xml网站地图','0','0','32','0','en');
INSERT INTO met_language VALUES('3975','sethtmlist','列表页面名称','0','0','11','0','en');
INSERT INTO met_language VALUES('3976','sethtmlist1','默认文件名+class+页码（如product_1_1)','0','0','11','0','en');
INSERT INTO met_language VALUES('3977','sethtmlist2','所在文件夹名称+class+页码（如software_1_1)','0','0','11','0','en');
INSERT INTO met_language VALUES('3978','sethtmpage4','<span style=float:right;>不建议频繁更换，以确保SEO效果（修改后请重新生成所有静态页面）</span>静态页面名称规则','0','0','11','0','en');
INSERT INTO met_language VALUES('3979','sethtmpage3','所在文件夹名称+ID（如product10)','0','0','11','0','en');
INSERT INTO met_language VALUES('3980','setlisthtmltype','列表页面类型','0','0','11','0','en');
INSERT INTO met_language VALUES('3981','setlisthtmltype1','显示所有栏目id（如product_1_2_3）','0','0','11','0','en');
INSERT INTO met_language VALUES('3982','setlisthtmltype2','只显示本栏目id（如product_1）','0','0','11','0','en');
INSERT INTO met_language VALUES('3983','sethtmpage2','年月日+ID（如2009081510)','0','0','11','0','en');
INSERT INTO met_language VALUES('3984','sethtmpage1','默认文件名+ID（如showproduct10)','0','0','11','0','en');
INSERT INTO met_language VALUES('3985','sethtmpage','内容页面名称','0','0','11','0','en');
INSERT INTO met_language VALUES('3986','sethtmtype','静态页面类型','0','0','11','0','en');
INSERT INTO met_language VALUES('3987','sethtmway3','不建议开启自动生成功能，非常消耗资源，且仅内容管理相关操作能自动生成，其它后台设置修改后如前台无改变需要手动生成。','0','0','11','0','en');
INSERT INTO met_language VALUES('3988','sethtmway2','手动生成','0','0','11','0','en');
INSERT INTO met_language VALUES('3989','sethtmway','生成方式','0','0','11','0','en');
INSERT INTO met_language VALUES('3990','sethtmway1','内容信息变动时自动生成','0','0','11','0','en');
INSERT INTO met_language VALUES('3991','setbasicTip4','建议企业站使用伪静态功能，纯静态消耗资源且不方便管理；首次开启请点击“静态页面生成”生成全部页面','0','0','11','0','en');
INSERT INTO met_language VALUES('3992','sethtmok','静态页面开启','0','0','11','0','en');
INSERT INTO met_language VALUES('3993','sethtmall','全站静态化','0','0','11','0','en');
INSERT INTO met_language VALUES('3994','setbasicTip3','首页、内容页面静态化','0','0','11','0','en');
INSERT INTO met_language VALUES('3995','labelUrl','链接地址','0','0','32','0','en');
INSERT INTO met_language VALUES('3996','htm','静态页面已成功生成','0','0','11','0','en');
INSERT INTO met_language VALUES('3997','labelnum','替换次数','0','0','32','0','en');
INSERT INTO met_language VALUES('3998','labelOld','原文字','0','0','32','0','en');
INSERT INTO met_language VALUES('3999','labelNew','替换为','0','0','32','0','en');
INSERT INTO met_language VALUES('4000','setseoTip14','内页的标题(title)构成方式，您也可以在编辑/添加内容时自定义对应页面的标题(title)。','0','0','32','0','en');
INSERT INTO met_language VALUES('4001','setseotitletype4','内容标题+网站关键词+网站名称','0','0','32','0','en');
INSERT INTO met_language VALUES('4002','setseotitletype3','内容标题+网站关键词','0','0','32','0','en');
INSERT INTO met_language VALUES('4003','setseotitletype2','内容标题+网站名称','0','0','32','0','en');
INSERT INTO met_language VALUES('4004','setseotitletype','内页标题（title）','0','0','32','0','en');
INSERT INTO met_language VALUES('4005','setseotitletype1','内容标题','0','0','32','0','en');
INSERT INTO met_language VALUES('4006','setseodopen','当前窗口打开','0','0','35','0','en');
INSERT INTO met_language VALUES('4007','setseonewopen','新窗口打开','0','0','35','0','en');
INSERT INTO met_language VALUES('4008','setseoFoot','网站底部优化字','0','0','32','0','en');
INSERT INTO met_language VALUES('4009','setseoTip9','鼠标移至超链接显示的文字','0','0','32','0','en');
INSERT INTO met_language VALUES('4010','setseoTip8','超链接默认Title','0','0','32','0','en');
INSERT INTO met_language VALUES('4011','setseoTip7','鼠标移至图片显示的文字','0','0','32','0','en');
INSERT INTO met_language VALUES('4012','setseoTip6','图片默认ALT','0','0','32','0','en');
INSERT INTO met_language VALUES('4013','setseoTip4','头部优化文字','0','0','32','0','en');
INSERT INTO met_language VALUES('4014','setseoTip10','留空则采用网站名称-网站关键词的构成方式','0','0','32','0','en');
INSERT INTO met_language VALUES('4015','setseoKey','网站关键词','0','0','32','0','en');
INSERT INTO met_language VALUES('4016','setseohomeKey','首页标题（title）','0','0','32','0','en');
INSERT INTO met_language VALUES('4017','setseoTip1','多个关键词请用“,”隔开。','0','0','0','0','en');
INSERT INTO met_language VALUES('4018','setheadstat','顶部代码','0','0','39','0','en');
INSERT INTO met_language VALUES('4019','recycledietime','删除时间','0','0','29','0','en');
INSERT INTO met_language VALUES('4020','recyclere','还原','0','0','29','0','en');
INSERT INTO met_language VALUES('4021','messageeditor','编辑留言','0','0','20','0','en');
INSERT INTO met_language VALUES('4022','messagesubmit','留言提交开启关闭','0','0','20','0','en');
INSERT INTO met_language VALUES('4023','messageeditorReply','回复留言','0','0','20','0','en');
INSERT INTO met_language VALUES('4024','messageeditorCheck','回复审核','0','0','20','0','en');
INSERT INTO met_language VALUES('4025','messageeditorShow','审核通过并在前台显示','0','0','20','0','en');
INSERT INTO met_language VALUES('4026','messageTime','提交时间','0','0','20','0','en');
INSERT INTO met_language VALUES('4027','messageID','留言者身份','0','0','20','0','en');
INSERT INTO met_language VALUES('4028','messageTel','电话','0','0','20','0','en');
INSERT INTO met_language VALUES('4029','messageTitle','留言信息管理','0','0','0','0','en');
INSERT INTO met_language VALUES('4030','messageVoice','留言表单设置','0','0','0','0','en');
INSERT INTO met_language VALUES('4031','messageincTip3','客户留言后需要在后台回复审核才显示','0','0','20','0','en');
INSERT INTO met_language VALUES('4032','messageincShow','显示方式','0','0','20','0','en');
INSERT INTO met_language VALUES('4033','feedbackauto','邮件回复设置','0','0','0','0','en');
INSERT INTO met_language VALUES('4034','messageincTitle','留言系统设置','0','0','0','0','en');
INSERT INTO met_language VALUES('4035','feedbackexplain1','页面title名称，默认为该栏目名称','0','0','9','0','en');
INSERT INTO met_language VALUES('4036','feedbacksubmit','反馈提交开启关闭','0','0','9','0','en');
INSERT INTO met_language VALUES('4037','fdeditorFrom','来源页面地址','0','0','9','0','en');
INSERT INTO met_language VALUES('4038','fdeditorRecord','编辑记录','0','0','9','0','en');
INSERT INTO met_language VALUES('4039','fdeditorInterest','感兴趣产品','0','0','9','0','en');
INSERT INTO met_language VALUES('4040','fdeditorTime','反馈提交时间','0','0','9','0','en');
INSERT INTO met_language VALUES('4041','feedbackAccess0','游客','0','0','0','0','en');
INSERT INTO met_language VALUES('4042','feedbackTip4','导出全部','0','0','9','0','en');
INSERT INTO met_language VALUES('4043','feedbackTip2','导出EXCEL表','0','0','9','0','en');
INSERT INTO met_language VALUES('4044','feedbackTime','提交时间','0','0','9','0','en');
INSERT INTO met_language VALUES('4045','feedbackID','反馈者身份','0','0','9','0','en');
INSERT INTO met_language VALUES('4046','feedbackClass2','未阅读信息','0','0','0','0','en');
INSERT INTO met_language VALUES('4047','feedbackClass3','已阅读信息','0','0','0','0','en');
INSERT INTO met_language VALUES('4048','feedbackClass','信息状态','0','0','0','0','en');
INSERT INTO met_language VALUES('4049','fdincFeedbackTitle','回复邮件标题','0','0','0','0','en');
INSERT INTO met_language VALUES('4050','fdincAutoFbTitle','自动回复邮件的标题','0','0','4','0','en');
INSERT INTO met_language VALUES('4051','fdincAutoContent','回复邮件内容','0','0','0','0','en');
INSERT INTO met_language VALUES('4052','fdincEmailName','Email字段名','0','0','0','0','en');
INSERT INTO met_language VALUES('4053','fdincTip11','用于获取用户的邮箱地址，以便回复邮件。字段类型必须为“邮箱”','0','0','0','0','en');
INSERT INTO met_language VALUES('4054','fdincTip10','勾选后将自动向提交表单的用户回复邮件','0','0','0','0','en');
INSERT INTO met_language VALUES('4055','fdincAuto','邮件回复','0','0','0','0','en');
INSERT INTO met_language VALUES('4056','fdincTip9','多个邮箱请用|隔开','0','0','0','0','en');
INSERT INTO met_language VALUES('4057','fdincAcceptMail','反馈邮件接收邮箱','0','0','9','0','en');
INSERT INTO met_language VALUES('4058','fdincTip7','短信通知','0','0','0','0','en');
INSERT INTO met_language VALUES('4059','fdincTip14','短信通知号码','0','0','0','0','en');
INSERT INTO met_language VALUES('4060','fdincAccept','邮件接收','0','0','0','0','en');
INSERT INTO met_language VALUES('4061','fdincTip6','用于获取用户反馈的类型，字段类型为“下拉”或“单选”，设置为关联产品时，下拉菜单为对应栏目下的全部产品。','0','0','9','0','en');
INSERT INTO met_language VALUES('4062','fdincAcceptType','信息接收方式','0','0','9','0','en');
INSERT INTO met_language VALUES('4063','fdincClassName','信息分类字段名','0','0','9','0','en');
INSERT INTO met_language VALUES('4064','fdincSlash','敏感字符过滤','0','0','0','0','en');
INSERT INTO met_language VALUES('4065','fdincTip4','秒，同一IP2次提交的最小间隔时间','0','0','0','0','en');
INSERT INTO met_language VALUES('4066','fdincName','反馈表单名称','0','0','9','0','en');
INSERT INTO met_language VALUES('4067','fdincTime','防刷新时间','0','0','0','0','en');
INSERT INTO met_language VALUES('4068','fdincTitle','反馈系统设置','0','0','25','0','en');
INSERT INTO met_language VALUES('4069','jobmanagement','招聘职位管理','0','0','0','0','en');
INSERT INTO met_language VALUES('4070','jobtip9','简历照片，以便在邮件中能看到应聘者上传的照片。','0','0','0','0','en');
INSERT INTO met_language VALUES('4071','jobtip8','图片字段名','0','0','0','0','en');
INSERT INTO met_language VALUES('4072','jobtip5','投递简历后系统会自动发送一封邮件到接收邮箱','0','0','15','0','en');
INSERT INTO met_language VALUES('4073','cvset','简历表单设置','0','0','0','0','en');
INSERT INTO met_language VALUES('4074','cvmanagement','简历信息管理','0','0','0','0','en');
INSERT INTO met_language VALUES('4075','cvemail','简历接收邮箱','0','0','15','0','en');
INSERT INTO met_language VALUES('4076','cvall','全部','0','0','3','0','en');
INSERT INTO met_language VALUES('4077','cvincAcceptType','简历接收方式','0','0','0','0','en');
INSERT INTO met_language VALUES('4078','cvincAcceptMail','简历接收邮箱','0','0','0','0','en');
INSERT INTO met_language VALUES('4079','cvincTip4','单独职位','0','0','0','0','en');
INSERT INTO met_language VALUES('4080','cvincTip3','统一设置','0','0','0','0','en');
INSERT INTO met_language VALUES('4081','cvincTip2','邮件接收方式','0','0','0','0','en');
INSERT INTO met_language VALUES('4082','josAlways','不限','0','0','0','0','en');
INSERT INTO met_language VALUES('4083','cvAddtime','提交时间','0','0','0','0','en');
INSERT INTO met_language VALUES('4084','cvPosition','应聘职位','0','0','4','0','en');
INSERT INTO met_language VALUES('4085','jobtip3','天 （留空为不限）','0','0','15','0','en');
INSERT INTO met_language VALUES('4086','jobnow','今天是','0','0','15','0','en');
INSERT INTO met_language VALUES('4087','jobtip2','注意不要改变格式。','0','0','15','0','en');
INSERT INTO met_language VALUES('4088','jobdeal','工资待遇','0','0','15','0','en');
INSERT INTO met_language VALUES('4089','jobtip1','人 （留空为不限）','0','0','15','0','en');
INSERT INTO met_language VALUES('4090','jobpublish','发布日期','0','0','15','0','en');
INSERT INTO met_language VALUES('4091','joblife','有效时间','0','0','15','0','en');
INSERT INTO met_language VALUES('4092','jobnum','招聘人数','0','0','15','0','en');
INSERT INTO met_language VALUES('4093','jobaddress','工作地点','0','0','15','0','en');
INSERT INTO met_language VALUES('4094','jobposition','招聘职位','0','0','15','0','en');
INSERT INTO met_language VALUES('4095','setfootstat','底部代码','0','0','39','0','en');
INSERT INTO met_language VALUES('4096','setfootOther','其他信息','0','0','39','0','en');
INSERT INTO met_language VALUES('4097','setfootAddressCode','地址邮编','0','0','39','0','en');
INSERT INTO met_language VALUES('4098','setfootVersion','版权信息','0','0','39','0','en');
INSERT INTO met_language VALUES('4099','article6','参数设置','0','0','0','0','en');
INSERT INTO met_language VALUES('4100','article4','排序数值越大越靠前','0','0','0','0','en');
INSERT INTO met_language VALUES('4101','article1','可选属性','0','0','0','0','en');
INSERT INTO met_language VALUES('4102','copyotherlang6','请选择复制到的语言','0','0','5','0','en');
INSERT INTO met_language VALUES('4103','copyotherlang5','二级，三级栏目不能单独复制，请连同一级栏目一起复制，或提升为一级栏目','0','0','5','0','en');
INSERT INTO met_language VALUES('4104','copyotherlang4','栏目在复制语言中已经存在，请直接复制内容','0','0','5','0','en');
INSERT INTO met_language VALUES('4105','copyotherlang2','复制内容','0','0','5','0','en');
INSERT INTO met_language VALUES('4106','ctitleinfo','为空则使用SEO参数设置中设置的title构成方式','0','0','0','0','en');
INSERT INTO met_language VALUES('4107','copyotherlang1','复制到其他语言','0','0','5','0','en');
INSERT INTO met_language VALUES('4108','listproductre','关联产品','0','0','9','0','en');
INSERT INTO met_language VALUES('4109','listproductreok','不关联','0','0','9','0','en');
INSERT INTO met_language VALUES('4110','parameter3','文本','0','0','25','0','en');
INSERT INTO met_language VALUES('4111','parameter4','多选','0','0','25','0','en');
INSERT INTO met_language VALUES('4112','parameter5','附件','0','0','25','0','en');
INSERT INTO met_language VALUES('4113','parameter6','单选','0','0','25','0','en');
INSERT INTO met_language VALUES('4114','parameter8','电话','0','0','2','0','en');
INSERT INTO met_language VALUES('4115','parameter9','邮箱','0','0','2','0','en');
INSERT INTO met_language VALUES('4116','allcategory','所有栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('4117','listTitle','设置选项','0','0','0','0','en');
INSERT INTO met_language VALUES('4118','parameter1','简短','0','0','25','0','en');
INSERT INTO met_language VALUES('4119','parameter2','下拉','0','0','25','0','en');
INSERT INTO met_language VALUES('4120','parametertype','字段类型','0','0','0','0','en');
INSERT INTO met_language VALUES('4121','columnmtitle','页面Title','0','0','0','0','en');
INSERT INTO met_language VALUES('4122','columnmappend','附加内容：','0','0','0','0','en');
INSERT INTO met_language VALUES('4123','columnmore','更多','0','0','3','0','en');
INSERT INTO met_language VALUES('4124','columnmfeedback','反馈表单设置','0','0','0','0','en');
INSERT INTO met_language VALUES('4125','columnmnotallow','不允许','0','0','0','0','en');
INSERT INTO met_language VALUES('4126','columnmeditor','编辑栏目','0','0','19','0','en');
INSERT INTO met_language VALUES('4127','columnmallow','允许','0','0','0','0','en');
INSERT INTO met_language VALUES('4128','columnmove','移动栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('4129','columnmove1','移动','0','0','0','0','en');
INSERT INTO met_language VALUES('4130','columnexplain7','此功能用于老版本兼容（作用于该栏目在前台对应位置的显示）','0','0','0','0','en');
INSERT INTO met_language VALUES('4131','columnerr7','升为一级栏目','0','0','5','0','en');
INSERT INTO met_language VALUES('4132','columnerr4','目录名称已存在，可能已被使用','0','0','30','0','en');
INSERT INTO met_language VALUES('4133','columntip14','为空则使用静态页面设置中设置的URL构成方式，不要加html后缀，仅支持中文、大小写字母、数字、下划线','0','0','0','0','en');
INSERT INTO met_language VALUES('4134','columnImg2','栏目图片','0','0','0','0','en');
INSERT INTO met_language VALUES('4135','columnshow','添加内容','0','0','0','0','en');
INSERT INTO met_language VALUES('4136','columnhref','链接地址','0','0','5','0','en');
INSERT INTO met_language VALUES('4137','columntip7','链接到外部网站需要加http或https,如：https://www.metinfo.cn/','0','0','0','0','en');
INSERT INTO met_language VALUES('4138','columnImg1','标识图片','0','0','0','0','en');
INSERT INTO met_language VALUES('4139','columnSEO','搜索引擎优化设置(seo)','0','0','0','0','en');
INSERT INTO met_language VALUES('4140','columnhtmlname','静态页面名称','0','0','0','0','en');
INSERT INTO met_language VALUES('4141','columnaddOrder','顺序','0','0','0','0','en');
INSERT INTO met_language VALUES('4142','columnReverseSort','倒序','0','0','0','0','en');
INSERT INTO met_language VALUES('4143','columncontentorder','列表页排序方式','0','0','0','0','en');
INSERT INTO met_language VALUES('4144','columnnav4','都显示','0','0','0','0','en');
INSERT INTO met_language VALUES('4145','columnnewwindow','新窗口打开','0','0','0','0','en');
INSERT INTO met_language VALUES('4146','columnnav3','尾部导航栏','0','0','0','0','en');
INSERT INTO met_language VALUES('4147','columnnav2','头部主导航栏','0','0','0','0','en');
INSERT INTO met_language VALUES('4148','columntip1','请参考','0','0','0','0','en');
INSERT INTO met_language VALUES('4149','columnnav1','不显示','0','0','0','0','en');
INSERT INTO met_language VALUES('4150','columnctitle','栏目标题(title)','0','0','0','0','en');
INSERT INTO met_language VALUES('4151','columnmark','栏目风格','0','0','0','0','en');
INSERT INTO met_language VALUES('4152','columndocument','目录名称','0','0','32','0','en');
INSERT INTO met_language VALUES('4153','columnmodule','所属模块','0','0','5','0','en');
INSERT INTO met_language VALUES('4154','columnnav','导航栏显示','0','0','0','0','en');
INSERT INTO met_language VALUES('4155','columnnamemarkinfo','其它设置（根据模板配置说明设置）','0','0','0','0','en');
INSERT INTO met_language VALUES('4156','columnnamemark','栏目修饰名称','0','0','3','0','en');
INSERT INTO met_language VALUES('4157','columnname','栏目名称','0','0','0','0','en');
INSERT INTO met_language VALUES('4158','addinfo','添加内容','0','0','0','0','en');
INSERT INTO met_language VALUES('4159','downloadurl','下载地址','0','0','40','0','en');
INSERT INTO met_language VALUES('4160','modpublish','发布人','0','0','0','0','en');
INSERT INTO met_language VALUES('4161','modimgurls','缩略图','0','0','13','0','en');
INSERT INTO met_language VALUES('4162','modimgurl','图片地址','0','0','13','0','en');
INSERT INTO met_language VALUES('4163','modClass3','三级栏目','0','0','5','0','en');
INSERT INTO met_language VALUES('4164','modClass2','二级栏目','0','0','5','0','en');
INSERT INTO met_language VALUES('4165','mod101','图片列表','0','0','0','0','en');
INSERT INTO met_language VALUES('4166','mod7','留言系统','0','0','0','0','en');
INSERT INTO met_language VALUES('4167','mod8','反馈系统','0','0','0','0','en');
INSERT INTO met_language VALUES('4168','mod9','友情链接','0','0','0','0','en');
INSERT INTO met_language VALUES('4169','mod10','会员中心','0','0','0','0','en');
INSERT INTO met_language VALUES('4170','mod11','全站搜索','0','0','0','0','en');
INSERT INTO met_language VALUES('4171','mod12','网站地图','0','0','0','0','en');
INSERT INTO met_language VALUES('4172','mod100','产品列表','0','0','0','0','en');
INSERT INTO met_language VALUES('4173','unitytxt_77','更新内容时候自动更新网站地图','0','0','32','0','en');
INSERT INTO met_language VALUES('4174','mod6','招聘系统','0','0','0','0','en');
INSERT INTO met_language VALUES('4175','mod3','产品模块','0','0','0','0','en');
INSERT INTO met_language VALUES('4176','mod4','下载模块','0','0','0','0','en');
INSERT INTO met_language VALUES('4177','mod5','图片模块','0','0','0','0','en');
INSERT INTO met_language VALUES('4178','mod2','文章模块','0','0','0','0','en');
INSERT INTO met_language VALUES('4179','mod1','简介模块','0','0','0','0','en');
INSERT INTO met_language VALUES('4180','modout','外部模块','0','0','0','0','en');
INSERT INTO met_language VALUES('4181','please_choose','请选择','0','0','0','0','en');
INSERT INTO met_language VALUES('4182','onlinetel','电话或其他说明','0','0','23','0','en');
INSERT INTO met_language VALUES('4183','onlineskin','风格','0','0','23','0','en');
INSERT INTO met_language VALUES('4184','onlineimg','图标','0','0','3','0','en');
INSERT INTO met_language VALUES('4185','onlineskintype','颜色风格','0','0','23','0','en');
INSERT INTO met_language VALUES('4186','setskinOnline9','固定于页面右边','0','0','23','0','en');
INSERT INTO met_language VALUES('4187','setskinOnline5','距离浏览器侧边','0','0','23','0','en');
INSERT INTO met_language VALUES('4188','setskinOnline6','距离浏览器顶部','0','0','23','0','en');
INSERT INTO met_language VALUES('4189','setskinOnline3','居右随屏幕滚动','0','0','23','0','en');
INSERT INTO met_language VALUES('4190','setskinOnline10','前台定位','0','0','23','0','en');
INSERT INTO met_language VALUES('4191','indexflashaddflash','添加Banner','0','0','4','0','en');
INSERT INTO met_language VALUES('4192','setskinOnline','在线交流方式','0','0','23','0','en');
INSERT INTO met_language VALUES('4193','setskinOnline1','固定于页面左边','0','0','23','0','en');
INSERT INTO met_language VALUES('4194','setskinOnline2','居左随屏幕滚动','0','0','23','0','en');
INSERT INTO met_language VALUES('4195','indexflashexplain9','链接地址需加http://或https://，添加按钮并设置按钮链接后，此处必须为空','0','0','4','0','en');
INSERT INTO met_language VALUES('4196','indexflashexplain4','多张图片建议保持图片大小一致','0','0','4','0','en');
INSERT INTO met_language VALUES('4197','flashHome','网站首页','0','0','4','0','en');
INSERT INTO met_language VALUES('4198','setflashImgHref','链接地址','0','0','4','0','en');
INSERT INTO met_language VALUES('4199','setflashImgUrl','图片地址','0','0','4','0','en');
INSERT INTO met_language VALUES('4200','setflashPixel','像素','0','0','0','0','en');
INSERT INTO met_language VALUES('4201','setflashSize','Banner尺寸','0','0','4','0','en');
INSERT INTO met_language VALUES('4202','setflashName','图片标题','0','0','0','0','en');
INSERT INTO met_language VALUES('4203','indexsetFriendly','友情链接','0','0','0','0','en');
INSERT INTO met_language VALUES('4204','skinstyle','风格','0','0','36','0','en');
INSERT INTO met_language VALUES('4205','skinusenow','启用','0','0','0','0','en');
INSERT INTO met_language VALUES('4206','skininfo','信息','0','0','3','0','en');
INSERT INTO met_language VALUES('4207','skinuse','立即启用','0','0','0','0','en');
INSERT INTO met_language VALUES('4208','settopcolumns','一级栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('4209','setskinproduct2','显示当前栏目下级栏目列表','0','0','0','0','en');
INSERT INTO met_language VALUES('4210','setskinproduct1','显示栏目下所有信息列表','0','0','0','0','en');
INSERT INTO met_language VALUES('4211','setskindatecontent','时间显示格式','0','0','0','0','en');
INSERT INTO met_language VALUES('4212','setskinListPage','列表页','0','0','0','0','en');
INSERT INTO met_language VALUES('4213','setbasicTip13','默认邮箱服务方式为TLS（可咨询邮箱服务商获得）<br />如果使用TLS方式25端口无法发送邮件，请尝试使用SSL方式465端口发件','0','0','39','0','en');
INSERT INTO met_language VALUES('4214','setbasicSMTPWay','发送方式','0','0','39','0','en');
INSERT INTO met_language VALUES('4215','setbasicTip12','用于邮件发送端口（咨询邮箱服务商获得，TLS一般为25，SSL一般为465）','0','0','39','0','en');
INSERT INTO met_language VALUES('4216','setbasicSMTPPort','发送端口','0','0','39','0','en');
INSERT INTO met_language VALUES('4217','password31','验证码已发送至指定号码','0','0','10','0','en');
INSERT INTO met_language VALUES('4218','password30','邮箱找回密码功能不可用，请确保后台邮箱服务器设置正确','0','0','10','0','en');
INSERT INTO met_language VALUES('4219','password29','用电子邮箱找回','0','0','10','0','en');
INSERT INTO met_language VALUES('4220','password27','用手机号码找回','0','0','10','0','en');
INSERT INTO met_language VALUES('4221','password25','新密码：','0','0','10','0','en');
INSERT INTO met_language VALUES('4222','password26','再输入：','0','0','10','0','en');
INSERT INTO met_language VALUES('4223','password20','下一步','0','0','0','0','en');
INSERT INTO met_language VALUES('4224','password21','返回登录','0','0','10','0','en');
INSERT INTO met_language VALUES('4225','password24','用户名：','0','0','10','0','en');
INSERT INTO met_language VALUES('4226','password16','验证成功！请设置您新的密码。','0','0','10','0','en');
INSERT INTO met_language VALUES('4227','password14','没有找到该用户的邮箱地址，请通过其它方式找回密码','0','0','10','0','en');
INSERT INTO met_language VALUES('4228','password13','无法使用短信找回密码功能','0','0','10','0','en');
INSERT INTO met_language VALUES('4229','password12','经过网关时，网络通讯异常可能会造成短信丢失，或者您会延时收到短信，请您耐心等待一下或稍后再试一下。','0','0','10','0','en');
INSERT INTO met_language VALUES('4230','password11','请输入您手机接受到的短信校验码，然后点下一步。','0','0','10','0','en');
INSERT INTO met_language VALUES('4231','password10','序号','0','0','10','0','en');
INSERT INTO met_language VALUES('4232','password8','没有找到对应该手机的用户，请通过其它方式找回密码','0','0','10','0','en');
INSERT INTO met_language VALUES('4233','password9','您请求重新设置密码，验证码','0','0','10','0','en');
INSERT INTO met_language VALUES('4234','password7','没有找到该用户','0','0','10','0','en');
INSERT INTO met_language VALUES('4235','password6','没有找到该用户的手机号码，请通过其它方式找回密码','0','0','10','0','en');
INSERT INTO met_language VALUES('4236','password5','请输入管理员的电子邮箱地址：','0','0','10','0','en');
INSERT INTO met_language VALUES('4237','password4','请输入管理员的电子邮箱地址。您会收到一封包含创建新密码链接的电子邮件。','0','0','10','0','en');
INSERT INTO met_language VALUES('4238','password3','请输入管理员手机号码：','0','0','10','0','en');
INSERT INTO met_language VALUES('4239','password2','请输入管理员手机号码，然后点下一步，您会收到一个短信校验码。','0','0','10','0','en');
INSERT INTO met_language VALUES('4240','password1','请选择找回密码的方式：','0','0','10','0','en');
INSERT INTO met_language VALUES('4241','loginid','用户名不能为空','0','0','18','0','en');
INSERT INTO met_language VALUES('4242','lang64','中文(简体)','0','0','16','0','en');
INSERT INTO met_language VALUES('4243','lang62','越南语','0','0','16','0','en');
INSERT INTO met_language VALUES('4244','lang63','中文(繁体)','0','0','16','0','en');
INSERT INTO met_language VALUES('4245','lang61','英语','0','0','16','0','en');
INSERT INTO met_language VALUES('4246','lang60','印尼语','0','0','16','0','en');
INSERT INTO met_language VALUES('4247','lang59','乌尔都语','0','0','16','0','en');
INSERT INTO met_language VALUES('4248','lang54','意第绪语','0','0','16','0','en');
INSERT INTO met_language VALUES('4249','lang53','意大利语','0','0','16','0','en');
INSERT INTO met_language VALUES('4250','lang48','希腊语','0','0','16','0','en');
INSERT INTO met_language VALUES('4251','lang49','西班牙的巴斯克语','0','0','16','0','en');
INSERT INTO met_language VALUES('4252','lang50','西班牙语','0','0','16','0','en');
INSERT INTO met_language VALUES('4253','lang51','匈牙利语','0','0','16','0','en');
INSERT INTO met_language VALUES('4254','lang47','希伯来语','0','0','16','0','en');
INSERT INTO met_language VALUES('4255','lang46','乌克兰语','0','0','16','0','en');
INSERT INTO met_language VALUES('4256','lang45','威尔士语','0','0','16','0','en');
INSERT INTO met_language VALUES('4257','lang43','泰语','0','0','16','0','en');
INSERT INTO met_language VALUES('4258','lang44','土耳其语','0','0','16','0','en');
INSERT INTO met_language VALUES('4259','lang42','斯瓦希里语','0','0','16','0','en');
INSERT INTO met_language VALUES('4260','lang37','日语','0','0','16','0','en');
INSERT INTO met_language VALUES('4261','lang38','瑞典语','0','0','16','0','en');
INSERT INTO met_language VALUES('4262','lang39','塞尔维亚语','0','0','16','0','en');
INSERT INTO met_language VALUES('4263','lang40','斯洛伐克语','0','0','16','0','en');
INSERT INTO met_language VALUES('4264','lang41','斯洛文尼亚语','0','0','16','0','en');
INSERT INTO met_language VALUES('4265','lang36','葡萄牙语','0','0','16','0','en');
INSERT INTO met_language VALUES('4266','lang35','挪威语','0','0','16','0','en');
INSERT INTO met_language VALUES('4267','lang33','马其顿语','0','0','16','0','en');
INSERT INTO met_language VALUES('4268','lang32','马来语','0','0','16','0','en');
INSERT INTO met_language VALUES('4269','lang31','马耳他语','0','0','16','0','en');
INSERT INTO met_language VALUES('4270','lang30','罗马尼亚语','0','0','16','0','en');
INSERT INTO met_language VALUES('4271','lang29','立陶宛语','0','0','16','0','en');
INSERT INTO met_language VALUES('4272','lang28','拉脱维亚语','0','0','16','0','en');
INSERT INTO met_language VALUES('4273','lang27','拉丁语','0','0','16','0','en');
INSERT INTO met_language VALUES('4274','lang26','克罗地亚语','0','0','16','0','en');
INSERT INTO met_language VALUES('4275','lang25','捷克语','0','0','16','0','en');
INSERT INTO met_language VALUES('4276','lang24','加泰罗尼亚语','0','0','16','0','en');
INSERT INTO met_language VALUES('4277','lang23','加利西亚语','0','0','16','0','en');
INSERT INTO met_language VALUES('4278','lang22','荷兰语','0','0','16','0','en');
INSERT INTO met_language VALUES('4279','lang21','韩语','0','0','16','0','en');
INSERT INTO met_language VALUES('4280','lang20','海地克里奥尔语','0','0','16','0','en');
INSERT INTO met_language VALUES('4281','lang17','芬兰语','0','0','16','0','en');
INSERT INTO met_language VALUES('4282','lang16','菲律宾语','0','0','16','0','en');
INSERT INTO met_language VALUES('4283','lang14','俄语','0','0','16','0','en');
INSERT INTO met_language VALUES('4284','lang11','布尔语(南非荷兰语)','0','0','16','0','en');
INSERT INTO met_language VALUES('4285','lang15','法语','0','0','16','0','en');
INSERT INTO met_language VALUES('4286','lang12','丹麦语','0','0','16','0','en');
INSERT INTO met_language VALUES('4287','lang13','德语','0','0','16','0','en');
INSERT INTO met_language VALUES('4288','lang3','阿塞拜疆语','0','0','16','0','en');
INSERT INTO met_language VALUES('4289','lang4','爱尔兰语','0','0','16','0','en');
INSERT INTO met_language VALUES('4290','lang5','爱沙尼亚语','0','0','16','0','en');
INSERT INTO met_language VALUES('4291','lang6','白俄罗斯语','0','0','16','0','en');
INSERT INTO met_language VALUES('4292','lang7','保加利亚语','0','0','16','0','en');
INSERT INTO met_language VALUES('4293','lang8','冰岛语','0','0','16','0','en');
INSERT INTO met_language VALUES('4294','lang9','波兰语','0','0','16','0','en');
INSERT INTO met_language VALUES('4295','lang10','波斯语','0','0','16','0','en');
INSERT INTO met_language VALUES('4296','lang2','阿拉伯语','0','0','16','0','en');
INSERT INTO met_language VALUES('4297','lang1','阿尔巴尼亚语','0','0','16','0','en');
INSERT INTO met_language VALUES('4298','langselect','选择语言','0','0','0','0','en');
INSERT INTO met_language VALUES('4299','langselect1','请选择语言','0','0','16','0','en');
INSERT INTO met_language VALUES('4300','langwebmanage','网站语言','0','0','16','0','en');
INSERT INTO met_language VALUES('4301','langexplain6','复制本地语言包','0','0','16','0','en');
INSERT INTO met_language VALUES('4302','langexplain5','在线下载','0','0','1','0','en');
INSERT INTO met_language VALUES('4303','langexplain4','复制已经有语言的基础语言包，譬如复制英文，则新语言的前台部分文字会是英文。','0','0','16','0','en');
INSERT INTO met_language VALUES('4304','langexplain2','语言标识','0','0','16','0','en');
INSERT INTO met_language VALUES('4305','langexplain1','对应前台网站页面部分文字，注意不要加特殊符号，点击底部保存按钮后生效。(参数名：值)','0','0','16','0','en');
INSERT INTO met_language VALUES('4306','langexplain_admin','对应后台网站页面部分文字，注意不要加特殊符号，点击底部保存按钮后生效。(参数名：值)','0','0','16','0','en');
INSERT INTO met_language VALUES('4307','upfiletips35','商业授权','0','0','2','0','en');
INSERT INTO met_language VALUES('4308','upfiletips37','新闻','0','0','14','0','en');
INSERT INTO met_language VALUES('4309','upfiletips38','服务器信息','0','0','37','0','en');
INSERT INTO met_language VALUES('4310','upfiletips25','回收站','0','0','19','0','en');
INSERT INTO met_language VALUES('4311','upfiletips24','前台的反馈、留言和简历提交','0','0','30','0','en');
INSERT INTO met_language VALUES('4312','upfiletips20','拉伸','0','0','13','0','en');
INSERT INTO met_language VALUES('4313','upfiletips21','留白','0','0','13','0','en');
INSERT INTO met_language VALUES('4314','upfiletips22','裁剪','0','0','13','0','en');
INSERT INTO met_language VALUES('4315','upfiletips23','生成方式','0','0','13','0','en');
INSERT INTO met_language VALUES('4316','upfiletips19','水印','0','0','13','0','en');
INSERT INTO met_language VALUES('4317','upfiletips16','发送测试','0','0','39','0','en');
INSERT INTO met_language VALUES('4318','upfiletips15','100字以内','0','0','39','0','en');
INSERT INTO met_language VALUES('4319','upfiletips14','网站描述','0','0','39','0','en');
INSERT INTO met_language VALUES('4320','upfiletips13','多个关键词请用英文状态下的逗号 \",\" 隔开，建议3到4个关键词。','0','0','39','0','en');
INSERT INTO met_language VALUES('4321','upfiletips10','6.0.0以上版本无需手动设置，当前登录的网址是：','0','0','39','0','en');
INSERT INTO met_language VALUES('4322','upfiletips6','录入','0','0','0','0','en');
INSERT INTO met_language VALUES('4323','upfiletips7','基本信息','0','0','0','0','en');
INSERT INTO met_language VALUES('4324','upfiletips2','文件管理器','0','0','0','0','en');
INSERT INTO met_language VALUES('4325','upfiletips1','查看文件列表','0','0','0','0','en');
INSERT INTO met_language VALUES('4326','dataexplain10','数据库备份','0','0','8','0','en');
INSERT INTO met_language VALUES('4327','dataexplain7','<span style=float:right;>一般在搬家时用，占用较大空间</span>备份数据和文件（数据库、用户文件、程序文件）','0','0','8','0','en');
INSERT INTO met_language VALUES('4328','dataexplain6','<span style=float:right;>一般不用备份，占用较大空间</span>备份上传的文件（图片、文档等）','0','0','8','0','en');
INSERT INTO met_language VALUES('4329','dataexplain5','<span style=float:right;>建议每月备份，占用少量空间</span>备份数据（不含上传的文件）','0','0','8','0','en');
INSERT INTO met_language VALUES('4330','dataexplain2','可以上传数据库备份文件，支持sql或zip','0','0','8','0','en');
INSERT INTO met_language VALUES('4331','dataexplain1','目前没有数据','0','0','8','0','en');
INSERT INTO met_language VALUES('4332','databackup8','压缩整站','0','0','8','0','en');
INSERT INTO met_language VALUES('4333','databackup6','上传文件夹备份','0','0','8','0','en');
INSERT INTO met_language VALUES('4334','databackup2','恢复','0','0','8','0','en');
INSERT INTO met_language VALUES('4335','databackup3','下载','0','0','8','0','en');
INSERT INTO met_language VALUES('4336','databackup4','备份','0','0','8','0','en');
INSERT INTO met_language VALUES('4337','setimgTopMid','顶中','0','0','13','0','en');
INSERT INTO met_language VALUES('4338','setimgLowMid','底中','0','0','13','0','en');
INSERT INTO met_language VALUES('4339','setimgRightMid','右中','0','0','13','0','en');
INSERT INTO met_language VALUES('4340','setimgLeftLow','左下','0','0','13','0','en');
INSERT INTO met_language VALUES('4341','setimgRightLow','右下','0','0','13','0','en');
INSERT INTO met_language VALUES('4342','setimgRightTop','右上','0','0','13','0','en');
INSERT INTO met_language VALUES('4343','setimgLeftTop','左上','0','0','13','0','en');
INSERT INTO met_language VALUES('4344','setimgMid','中间','0','0','13','0','en');
INSERT INTO met_language VALUES('4345','setimgPosition','水印位置','0','0','13','0','en');
INSERT INTO met_language VALUES('4346','setimgWordAngle','水印文字角度','0','0','0','0','en');
INSERT INTO met_language VALUES('4347','setimgTip5','水平为0','0','0','0','0','en');
INSERT INTO met_language VALUES('4348','setimgWordColor','水印文字颜色','0','0','0','0','en');
INSERT INTO met_language VALUES('4349','setimgTip4','请将字体文件放到后台管理目录admin/include/fonts/下','0','0','13','0','en');
INSERT INTO met_language VALUES('4350','setimgWordFont','水印文字字体','0','0','13','0','en');
INSERT INTO met_language VALUES('4351','setimgWordSize2','大图水印文字大小','0','0','13','0','en');
INSERT INTO met_language VALUES('4352','setimgWord','水印文字','0','0','13','0','en');
INSERT INTO met_language VALUES('4353','setimgTip3','不支持中文（中文水印需要下载中文字体才能支持）','0','0','13','0','en');
INSERT INTO met_language VALUES('4354','setimgWordSize','缩略图水印文字大小','0','0','13','0','en');
INSERT INTO met_language VALUES('4355','setimgImgWatermark','图片水印','0','0','13','0','en');
INSERT INTO met_language VALUES('4356','setimgImg','缩略图水印图片','0','0','13','0','en');
INSERT INTO met_language VALUES('4357','setimgImg2','大图水印图片','0','0','13','0','en');
INSERT INTO met_language VALUES('4358','setimgTip2','仅支持.jpg|.png格式','0','0','13','0','en');
INSERT INTO met_language VALUES('4359','setimgWatermarkType','水印类型','0','0','13','0','en');
INSERT INTO met_language VALUES('4360','setimgWordWatermark','文字水印','0','0','13','0','en');
INSERT INTO met_language VALUES('4361','setimgThumb','缩略图添加水印','0','0','13','0','en');
INSERT INTO met_language VALUES('4362','setimgWatermark','添加范围','0','0','13','0','en');
INSERT INTO met_language VALUES('4363','setimgBigImg','详细大图添加水印','0','0','13','0','en');
INSERT INTO met_language VALUES('4364','setimgrename2','重命名文件名称有利于减少异常','0','0','30','0','en');
INSERT INTO met_language VALUES('4365','setimgrename','自动重命名','0','0','30','0','en');
INSERT INTO met_language VALUES('4366','setimgrename1','对上传的文件名自动进行重命名','0','0','30','0','en');
INSERT INTO met_language VALUES('4367','setimgWater','自动生成','0','0','0','0','en');
INSERT INTO met_language VALUES('4368','setimgHeight','高','0','0','0','0','en');
INSERT INTO met_language VALUES('4369','setimgPixel','像素','0','0','0','0','en');
INSERT INTO met_language VALUES('4370','setimgWidth','宽','0','0','0','0','en');
INSERT INTO met_language VALUES('4371','authTip2','您所输入的商业注册码与域名不匹配！','0','0','0','0','en');
INSERT INTO met_language VALUES('4372','authKey','密钥','0','0','0','0','en');
INSERT INTO met_language VALUES('4373','authAuthorizedCode','授权码','0','0','0','0','en');
INSERT INTO met_language VALUES('4374','setfilesize','文件大小','0','0','0','0','en');
INSERT INTO met_language VALUES('4375','setsafemember','前台提交验证码','0','0','30','0','en');
INSERT INTO met_language VALUES('4376','setsafeadmin','后台登录验证码','0','0','30','0','en');
INSERT INTO met_language VALUES('4377','setsafeupdate','删除升级文件','0','0','30','0','en');
INSERT INTO met_language VALUES('4378','setsafeupdate1','删除后可以增强网站的安全性能','0','0','30','0','en');
INSERT INTO met_language VALUES('4379','setsafeinstall','删除安装文件','0','0','30','0','en');
INSERT INTO met_language VALUES('4380','setsafeadminname1c','仅创始人可修改，不支持中文，部分空间修改文件名称后需要通过FTP手动修改文件夹名称，当前后台网址：','0','0','30','0','en');
INSERT INTO met_language VALUES('4381','setsafeadminname','后台文件夹名称','0','0','30','0','en');
INSERT INTO met_language VALUES('4382','setsafeadminname1','安全建议:','0','0','30','0','en');
INSERT INTO met_language VALUES('4383','setdbNotExist','文件不存在','0','0','30','0','en');
INSERT INTO met_language VALUES('4384','setdbArchiveOK','压缩成功','0','0','8','0','en');
INSERT INTO met_language VALUES('4385','setdbImportOK','导入成功','0','0','8','0','en');
INSERT INTO met_language VALUES('4386','setdbBackupOK','数据库备份完毕!','0','0','8','0','en');
INSERT INTO met_language VALUES('4387','setdbTip2','数据无法备份到服务器!请检查','0','0','8','0','en');
INSERT INTO met_language VALUES('4388','setdbTip3','目录是否可写。','0','0','8','0','en');
INSERT INTO met_language VALUES('4389','setdbImportData','导入','0','0','8','0','en');
INSERT INTO met_language VALUES('4390','setdbLack','缺少分卷','0','0','8','0','en');
INSERT INTO met_language VALUES('4391','setdbFilesize','文件大小','0','0','8','0','en');
INSERT INTO met_language VALUES('4392','setdbTime','备份时间','0','0','8','0','en');
INSERT INTO met_language VALUES('4393','setdbNumber','分卷数','0','0','8','0','en');
INSERT INTO met_language VALUES('4394','setdbsysver','系统版本','0','0','8','0','en');
INSERT INTO met_language VALUES('4395','setdbFilename','文件名','0','0','8','0','en');
INSERT INTO met_language VALUES('4396','setdbImport','导入备份数据','0','0','8','0','en');
INSERT INTO met_language VALUES('4397','langshuom','说明','0','0','3','0','en');
INSERT INTO met_language VALUES('4398','langtype','语言状态','0','0','0','0','en');
INSERT INTO met_language VALUES('4399','langnameorder','不可以与其他语言排序重复','0','0','16','0','en');
INSERT INTO met_language VALUES('4400','langnamerepeat','语言标识不能重复','0','0','16','0','en');
INSERT INTO met_language VALUES('4401','langone','系统只有一种语言，不能被删除！','0','0','16','0','en');
INSERT INTO met_language VALUES('4402','langnamenull','语言名称不能为空','0','0','16','0','en');
INSERT INTO met_language VALUES('4403','langouturlinfo','务必包含http://或https://，访问该域名程序将自动跳转到此语言（需先做好域名解析绑定），或者做外部链接用。','0','0','16','0','en');
INSERT INTO met_language VALUES('4404','langnewwindows','新窗口打开','0','0','16','0','en');
INSERT INTO met_language VALUES('4405','langmarkinfo','请用英文字母，如 cn ，不可以与其他语言标识重复','0','0','16','0','en');
INSERT INTO met_language VALUES('4406','langurlinfo','网站被访问时默认展示的网站语言','0','0','16','0','en');
INSERT INTO met_language VALUES('4407','langurlinfo1','网站后台被访问时默认展示的网站语言','0','0','16','0','en');
INSERT INTO met_language VALUES('4408','langorderinfo','不可以重复','0','0','16','0','en');
INSERT INTO met_language VALUES('4409','langadminyes','管理员在登录前可以选择后台语言','0','0','16','0','en');
INSERT INTO met_language VALUES('4410','langsw','语言切换','0','0','16','0','en');
INSERT INTO met_language VALUES('4411','langhome','默认语言','0','0','16','0','en');
INSERT INTO met_language VALUES('4412','langchok','一般以链接形式显示在前台右上角','0','0','16','0','en');
INSERT INTO met_language VALUES('4413','langch','简繁体自动切换','0','0','16','0','en');
INSERT INTO met_language VALUES('4414','langwebeditor','编辑参数','0','0','16','0','en');
INSERT INTO met_language VALUES('4415','langmark','语言标识','0','0','0','0','en');
INSERT INTO met_language VALUES('4416','langouturl','独立域名','0','0','16','0','en');
INSERT INTO met_language VALUES('4417','langpara','插件语言','0','0','16','0','en');
INSERT INTO met_language VALUES('4418','langflag','国旗标志','0','0','16','0','en');
INSERT INTO met_language VALUES('4419','langname','语言名称','0','0','16','0','en');
INSERT INTO met_language VALUES('4420','langadd','添加新语言','0','0','16','0','en');
INSERT INTO met_language VALUES('4421','langweb','网站语言','0','0','0','0','en');
INSERT INTO met_language VALUES('4422','langadmin','后台语言','0','0','0','0','en');
INSERT INTO met_language VALUES('4423','setbasicTip11','用于发送邮件的邮箱密码','0','0','39','0','en');
INSERT INTO met_language VALUES('4424','setbasicTip10','如QQ邮箱为smtp.qq.com','0','0','39','0','en');
INSERT INTO met_language VALUES('4425','setbasicSMTPPassword','邮箱密码','0','0','39','0','en');
INSERT INTO met_language VALUES('4426','setbasicSMTPServer','SMTP','0','0','39','0','en');
INSERT INTO met_language VALUES('4427','setbasicTip8','用于发送邮件的邮箱账号','0','0','39','0','en');
INSERT INTO met_language VALUES('4428','setbasicEmailAccount','邮箱账号','0','0','39','0','en');
INSERT INTO met_language VALUES('4429','setbasicTip7','所显示的发件人姓名','0','0','39','0','en');
INSERT INTO met_language VALUES('4430','setbasicTip5','多个请用“|”隔开','0','0','30','0','en');
INSERT INTO met_language VALUES('4431','setbasicTip6','发件箱设置（站内所有邮件均由此邮箱发送，如会员密码找回邮件等）','0','0','39','0','en');
INSERT INTO met_language VALUES('4432','setbasicFromName','发件人','0','0','39','0','en');
INSERT INTO met_language VALUES('4433','setbasicEnableFormat','允许上传的文件格式','0','0','30','0','en');
INSERT INTO met_language VALUES('4434','setbasicUploadMax','文件上传最大值','0','0','30','0','en');
INSERT INTO met_language VALUES('4435','setbasicWebName','网站名称','0','0','39','0','en');
INSERT INTO met_language VALUES('4436','setbasicWebInfoSet','网站基本信息设置','0','0','0','0','en');
INSERT INTO met_language VALUES('4437','reserved','版权所有','0','0','37','0','en');
INSERT INTO met_language VALUES('4438','copyright','长沙米拓信息技术有限公司（MetInfo Inc.）','0','0','0','0','en');
INSERT INTO met_language VALUES('4439','setbasicTip14','gmail邮箱需要空间支持SSL，请开启SSL，或换成其他邮箱！！！','0','0','39','0','en');
INSERT INTO met_language VALUES('4440','setbasicTip15','空间不支持SSL方式发送邮件，请开启SSL，或换成TLS方式！！！','0','0','39','0','en');
INSERT INTO met_language VALUES('4441','feedbackautosms','短信回复设置','0','0','0','0','en');
INSERT INTO met_language VALUES('4442','fdincAutosms','短信回复','0','0','0','0','en');
INSERT INTO met_language VALUES('4443','fdincAutoContentsms','回复短信内容','0','0','0','0','en');
INSERT INTO met_language VALUES('4444','fdincTipsms','勾选后将自动向用户回复短信，需要在我的应用“短信功能”进行短信充值后才能使用','0','0','0','0','en');
INSERT INTO met_language VALUES('4445','fdinctellsms','联系电话字段名','0','0','0','0','en');
INSERT INTO met_language VALUES('4446','fdinctells','用于获取用户的联系电话，以便回复短信。字段类型必须为“电话”','0','0','0','0','en');
INSERT INTO met_language VALUES('4447','hotsearches','热门搜索','0','0','16','0','en');
INSERT INTO met_language VALUES('4448','updatenow','立即升级','0','0','0','0','en');
INSERT INTO met_language VALUES('4449','updatelater','稍后升级','0','0','0','0','en');
INSERT INTO met_language VALUES('4450','tag','TAG标签','0','0','0','0','en');
INSERT INTO met_language VALUES('4451','displaytype','前台显示','0','0','0','0','en');
INSERT INTO met_language VALUES('4452','checkupdate','检测更新','0','0','0','0','en');
INSERT INTO met_language VALUES('4453','checkupdatetips','对不起！您的权限不够，无法操作在线升级。','0','0','0','0','en');
INSERT INTO met_language VALUES('4454','paraname','名称','0','0','0','0','en');
INSERT INTO met_language VALUES('4455','message_name','姓名字段名','0','0','20','0','en');
INSERT INTO met_language VALUES('4456','message_name1','用于获取用户的姓名，字段类型必须为“简短”','0','0','20','0','en');
INSERT INTO met_language VALUES('4457','message_content','留言内容字段名','0','0','20','0','en');
INSERT INTO met_language VALUES('4458','message_content1','用于获取用户的留言内容，字段类型必须为“文本”','0','0','20','0','en');
INSERT INTO met_language VALUES('4459','message_AcceptMail','留言邮件接收邮箱','0','0','20','0','en');
INSERT INTO met_language VALUES('4460','column_searchname','请输入栏目名称','0','0','0','0','en');
INSERT INTO met_language VALUES('4461','jsx38','您没有完全控制权限，请联系管理员开通','0','0','0','0','en');
INSERT INTO met_language VALUES('4462','formerror1','请填写此字段。','0','0','0','0','en');
INSERT INTO met_language VALUES('4463','formerror2','请从这些选项中选择一个。','0','0','0','0','en');
INSERT INTO met_language VALUES('4464','formerror3','请输入正确的手机号码。','0','0','0','0','en');
INSERT INTO met_language VALUES('4465','formerror4','请输入正确的Email地址。','0','0','0','0','en');
INSERT INTO met_language VALUES('4466','formerror5','两次输入的密码不一致，请重新输入。','0','0','0','0','en');
INSERT INTO met_language VALUES('4467','formerror6','请输入至少&metinfo&个字符。','0','0','0','0','en');
INSERT INTO met_language VALUES('4468','formerror7','输入不能超过&metinfo&个字符。','0','0','0','0','en');
INSERT INTO met_language VALUES('4469','formerror8','输入的字符数必须在&metinfo&之间。','0','0','0','0','en');
INSERT INTO met_language VALUES('4470','style_settings','风格设置','0','0','0','0','en');
INSERT INTO met_language VALUES('4471','All_empty_message','清空全部消息','0','0','0','0','en');
INSERT INTO met_language VALUES('4472','manually_static_rules','部分空间需要手动设置伪静态规则文件','0','0','32','0','en');
INSERT INTO met_language VALUES('4473','pseudo_static','查看伪静态规则','0','0','32','0','en');
INSERT INTO met_language VALUES('4474','sys_static','伪静态化','0','0','32','0','en');
INSERT INTO met_language VALUES('4475','anchor_textadd','添加锚文本','0','0','11','0','en');
INSERT INTO met_language VALUES('4476','applies_paper','仅作用于前台页面中的内容文字，比如文章详情页内容文字。','0','0','32','0','en');
INSERT INTO met_language VALUES('4477','configuration_section','配置栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('4478','template_code1','请输入模板编号','0','0','3','0','en');
INSERT INTO met_language VALUES('4479','industry_segments','行业细分','0','0','3','0','en');
INSERT INTO met_language VALUES('4480','color_filter','颜色筛选','0','0','3','0','en');
INSERT INTO met_language VALUES('4481','industry_screening','行业筛选','0','0','3','0','en');
INSERT INTO met_language VALUES('4482','set_password','第三步：设置支付密码','0','0','3','0','en');
INSERT INTO met_language VALUES('4483','login_password','位。付费购买应用时需要输入支付密码，请不要与登录密码一致。','0','0','3','0','en');
INSERT INTO met_language VALUES('4484','services_future','可用于找回密码以及获取应用市场未来提供的更多服务','0','0','3','0','en');
INSERT INTO met_language VALUES('4485','personal_information','第二步：设置个人信息','0','0','3','0','en');
INSERT INTO met_language VALUES('4486','sys_password','登录密码','0','0','3','0','en');
INSERT INTO met_language VALUES('4487','create_account','第一步：创建账户','0','0','3','0','en');
INSERT INTO met_language VALUES('4488','buy_time','购买时间','0','0','3','0','en');
INSERT INTO met_language VALUES('4489','please_click','支付成功，请点击！！','0','0','3','0','en');
INSERT INTO met_language VALUES('4490','payment_method','请选择支付方式','0','0','3','0','en');
INSERT INTO met_language VALUES('4491','sys_unionpay','银联','0','0','3','0','en');
INSERT INTO met_language VALUES('4492','enter_amount','请输入充值金额','0','0','3','0','en');
INSERT INTO met_language VALUES('4493','payment_amount','支付金额','0','0','3','0','en');
INSERT INTO met_language VALUES('4494','account_Settings','用户中心','0','0','3','0','en');
INSERT INTO met_language VALUES('4495','consumption_record','消费记录','0','0','3','0','en');
INSERT INTO met_language VALUES('4496','website_manually','登录成功后您的网站将永久自动登录此帐号，除非手动退出。','0','0','3','0','en');
INSERT INTO met_language VALUES('4497','application_market','登录米拓用户中心','0','0','3','0','en');
INSERT INTO met_language VALUES('4498','installations','安装量','0','0','0','0','en');
INSERT INTO met_language VALUES('4499','goods_comment','购买商品后才能评论','0','0','3','0','en');
INSERT INTO met_language VALUES('4500','product_commented','同一个产品最多评论3次','0','0','3','0','en');
INSERT INTO met_language VALUES('4501','password_mistake','支付密码错误','0','0','3','0','en');
INSERT INTO met_language VALUES('4502','please_again','请先登录应用商店；应用商店可使用米拓官网用户账号登录，无需重复注册！','0','0','3','0','en');
INSERT INTO met_language VALUES('4503','have_bought','已购买','0','0','3','0','en');
INSERT INTO met_language VALUES('4504','download_application','当前系统无法下载此应用，请升级系统','0','0','3','0','en');
INSERT INTO met_language VALUES('4505','sys_evaluation','评价成功！感谢您的评价！','0','0','3','0','en');
INSERT INTO met_language VALUES('4506','downloads','开始下载','0','0','3','0','en');
INSERT INTO met_language VALUES('4507','click_rating','请点击星形评分！','0','0','3','0','en');
INSERT INTO met_language VALUES('4508','payment_password','新支付密码','0','0','3','0','en');
INSERT INTO met_language VALUES('4509','original_password1','请输入原支付密码','0','0','3','0','en');
INSERT INTO met_language VALUES('4510','original_password','原支付密码','0','0','3','0','en');
INSERT INTO met_language VALUES('4511','password_length','密码长度','0','0','3','0','en');
INSERT INTO met_language VALUES('4512','please_enter','请输入新密码','0','0','3','0','en');
INSERT INTO met_language VALUES('4513','login_password_new','新登录密码','0','0','3','0','en');
INSERT INTO met_language VALUES('4514','original_passwords1','请输入原密码','0','0','3','0','en');
INSERT INTO met_language VALUES('4515','original_passwords','原登录密码','0','0','3','0','en');
INSERT INTO met_language VALUES('4516','account_password','请填写应用市场账户登录密码，而不是网站登录密码。','0','0','3','0','en');
INSERT INTO met_language VALUES('4517','please_password','请输入登录密码','0','0','3','0','en');
INSERT INTO met_language VALUES('4518','login_password1','您必须填写登录密码才能修改资料','0','0','3','0','en');
INSERT INTO met_language VALUES('4519','popular_template','热门模板','0','0','3','0','en');
INSERT INTO met_language VALUES('4520','popular_application','热门应用','0','0','3','0','en');
INSERT INTO met_language VALUES('4521','number_installation','安装次数','0','0','3','0','en');
INSERT INTO met_language VALUES('4522','application_name','应用名称','0','0','3','0','en');
INSERT INTO met_language VALUES('4523','introduction_developers','开发者简介','0','0','3','0','en');
INSERT INTO met_language VALUES('4524','sys_head','头像','0','0','3','0','en');
INSERT INTO met_language VALUES('4525','name_developers','开发者名称','0','0','3','0','en');
INSERT INTO met_language VALUES('4526','dont_fill','可不填','0','0','3','0','en');
INSERT INTO met_language VALUES('4527','mouse_click_rating','鼠标放到星形上点击评分','0','0','3','0','en');
INSERT INTO met_language VALUES('4528','score','评分','0','0','3','0','en');
INSERT INTO met_language VALUES('4529','want_comment','我要评论','0','0','3','0','en');
INSERT INTO met_language VALUES('4530','back','上页','0','0','1','0','en');
INSERT INTO met_language VALUES('4531','running_environment','运行环境','0','0','3','0','en');
INSERT INTO met_language VALUES('4532','updated_date','更新日期','0','0','3','0','en');
INSERT INTO met_language VALUES('4533','online_presentation','在线演示','0','0','3','0','en');
INSERT INTO met_language VALUES('4534','screenshots','截图','0','0','3','0','en');
INSERT INTO met_language VALUES('4535','is_introduced','介绍','0','0','3','0','en');
INSERT INTO met_language VALUES('4536','comments','评论','0','0','3','0','en');
INSERT INTO met_language VALUES('4537','evaluation','人评价）','0','0','3','0','en');
INSERT INTO met_language VALUES('4538','total_of','（共','0','0','3','0','en');
INSERT INTO met_language VALUES('4539','pay_password','支付密码','0','0','3','0','en');
INSERT INTO met_language VALUES('4540','temporary_access1','请输入临时访问域名，必须是三级域名。','0','0','3','0','en');
INSERT INTO met_language VALUES('4541','temporary_access','临时访问域名','0','0','3','0','en');
INSERT INTO met_language VALUES('4542','top_domain_names','顶级域名','0','0','3','0','en');
INSERT INTO met_language VALUES('4543','buy_template_must','购买后程序将自动获取当前网站域名并进行绑定，以后此模板只能用于绑定域名下使用。','0','0','3','0','en');
INSERT INTO met_language VALUES('4544','amount_of','金额','0','0','3','0','en');
INSERT INTO met_language VALUES('4545','purchase_program','购买项目','0','0','3','0','en');
INSERT INTO met_language VALUES('4546','success_payment','支付成功后，请点击此链接跳转！！','0','0','3','0','en');
INSERT INTO met_language VALUES('4547','latest_version','已是最新版','0','0','1','0','en');
INSERT INTO met_language VALUES('4548','pay_success','支付成功','0','0','3','0','en');
INSERT INTO met_language VALUES('4549','be_updated','可更新至','0','0','1','0','en');
INSERT INTO met_language VALUES('4550','update_log','更新日志','0','0','37','0','en');
INSERT INTO met_language VALUES('4551','current_version','当前版本','0','0','37','0','en');
INSERT INTO met_language VALUES('4552','program_information','程序信息','0','0','37','0','en');
INSERT INTO met_language VALUES('4553','system_maintenance','系统维护中','0','0','0','0','en');
INSERT INTO met_language VALUES('4554','permission_download','没有权限下载','0','0','3','0','en');
INSERT INTO met_language VALUES('4555','link_remote','链接不上远程服务器','0','0','0','0','en');
INSERT INTO met_language VALUES('4556','try_again','重试','0','0','0','0','en');
INSERT INTO met_language VALUES('4557','give_installation','放弃安装','0','0','0','0','en');
INSERT INTO met_language VALUES('4558','configuratio_template','配置模板','0','0','0','0','en');
INSERT INTO met_language VALUES('4559','seconds_background','秒好后刷新后台','0','0','0','0','en');
INSERT INTO met_language VALUES('4560','installation_complete','安装完成','0','0','0','0','en');
INSERT INTO met_language VALUES('4561','installation','安装中','0','0','0','0','en');
INSERT INTO met_language VALUES('4562','possible_reasons','可能原因','0','0','0','0','en');
INSERT INTO met_language VALUES('4563','download_interrupt','文件下载中断','0','0','0','0','en');
INSERT INTO met_language VALUES('4564','write_permission','文件没有写权限或其新建的子文件夹没有写权限','0','0','0','0','en');
INSERT INTO met_language VALUES('4565','download','下载中','0','0','0','0','en');
INSERT INTO met_language VALUES('4566','following_documents','下列文件没有修改权限，无法进行升级操作！','0','0','0','0','en');
INSERT INTO met_language VALUES('4567','document_upgrade','系统升级文档','0','0','0','0','en');
INSERT INTO met_language VALUES('4568','file_permissions','文件权限检测中','0','0','0','0','en');
INSERT INTO met_language VALUES('4569','anchor_text','站内锚文本','0','0','11','0','en');
INSERT INTO met_language VALUES('4570','please_select','请选择栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('4571','log_successfully','登录成功','0','0','0','0','en');
INSERT INTO met_language VALUES('4572','out_of_success','退出成功','0','0','3','0','en');
INSERT INTO met_language VALUES('4573','password_changing','支付密码修改','0','0','3','0','en');
INSERT INTO met_language VALUES('4574','login_password_changing','登录密码修改','0','0','3','0','en');
INSERT INTO met_language VALUES('4575','account_information','账户信息设置','0','0','3','0','en');
INSERT INTO met_language VALUES('4576','my_bill','充值记录','0','0','0','0','en');
INSERT INTO met_language VALUES('4577','keep_sorting','保存排序','0','0','0','0','en');
INSERT INTO met_language VALUES('4578','structure_mode','构成方式','0','0','32','0','en');
INSERT INTO met_language VALUES('4579','title_cannot_empty!','标题不能为空！','0','0','0','0','en');
INSERT INTO met_language VALUES('4580','adaptive','自适应','0','0','4','0','en');
INSERT INTO met_language VALUES('4581','upload_local_v6','本地上传','0','0','1','0','en');
INSERT INTO met_language VALUES('4582','upload_addoutimg_v6','添加外部图片','0','0','1','0','en');
INSERT INTO met_language VALUES('4583','upload_progress_v6','上传中','0','0','1','0','en');
INSERT INTO met_language VALUES('4584','upload_selectimg_v6','选择图片','0','0','1','0','en');
INSERT INTO met_language VALUES('4585','upload_pselectimg_v6','请选择图片','0','0','1','0','en');
INSERT INTO met_language VALUES('4586','upload_libraryimg_v6','从图片库选择','0','0','1','0','en');
INSERT INTO met_language VALUES('4587','upload_extraimglink_v6','外部图片链接','0','0','1','0','en');
INSERT INTO met_language VALUES('4588','delete_information','您确定要删除该信息吗？删除之后无法再恢复。','0','0','1','0','en');
INSERT INTO met_language VALUES('4589','page_for_details','详情页','0','0','36','0','en');
INSERT INTO met_language VALUES('4590','default_values','默认值','0','0','0','0','en');
INSERT INTO met_language VALUES('4591','label','标签','0','0','0','0','en');
INSERT INTO met_language VALUES('4592','for','为','0','0','0','0','en');
INSERT INTO met_language VALUES('4593','verify_password','请重复输入密码','0','0','3','0','en');
INSERT INTO met_language VALUES('4594','Repeat_password','重复密码','0','0','3','0','en');
INSERT INTO met_language VALUES('4595','for_details','应用详情','0','0','3','0','en');
INSERT INTO met_language VALUES('4596','template','模板','0','0','3','0','en');
INSERT INTO met_language VALUES('4597','application','增值服务','0','0','3','0','en');
INSERT INTO met_language VALUES('4598','Prompt_password','请输入密码','0','0','3','0','en');
INSERT INTO met_language VALUES('4599','alipay','支付宝','0','0','0','0','en');
INSERT INTO met_language VALUES('4600','account','账号','0','0','0','0','en');
INSERT INTO met_language VALUES('4601','Prompt_email','请输入邮箱地址','0','0','3','0','en');
INSERT INTO met_language VALUES('4602','mailbox','邮箱','0','0','0','0','en');
INSERT INTO met_language VALUES('4603','Prompt_mobile','请输入手机号码','0','0','3','0','en');
INSERT INTO met_language VALUES('4604','Prompt_user','请输入您的用户名','0','0','3','0','en');
INSERT INTO met_language VALUES('4605','balance','余额','0','0','3','0','en');
INSERT INTO met_language VALUES('4606','buy_records','购买记录','0','0','3','0','en');
INSERT INTO met_language VALUES('4607','registration','注册','0','0','0','0','en');
INSERT INTO met_language VALUES('4608','landing','登录','0','0','0','0','en');
INSERT INTO met_language VALUES('4609','page_range','上一条下一条翻页范围','0','0','0','0','en');
INSERT INTO met_language VALUES('4610','sys_navigation','导航：栏目设置中可以调整是否新窗口打开。','0','0','35','0','en');
INSERT INTO met_language VALUES('4611','sys_navigation2','显示栏目列表时，图片需要在栏目设置中上传（栏目图片）。','0','0','35','0','en');
INSERT INTO met_language VALUES('4612','suggested_size','建议尺寸','0','0','35','0','en');
INSERT INTO met_language VALUES('4613','website_information','网站信息','0','0','39','0','en');
INSERT INTO met_language VALUES('4614','email_Settings','发件邮箱配置','0','0','39','0','en');
INSERT INTO met_language VALUES('4615','third_party_code','第三方代码','0','0','0','0','en');
INSERT INTO met_language VALUES('4616','please_login','请先登录！','0','0','0','0','en');
INSERT INTO met_language VALUES('4617','next_page','下页','0','0','1','0','en');
INSERT INTO met_language VALUES('4618','background_page','后台首页','0','0','0','0','en');
INSERT INTO met_language VALUES('4619','modify_information','修改个人资料','0','0','0','0','en');
INSERT INTO met_language VALUES('4620','sys_select','精  选','0','0','3','0','en');
INSERT INTO met_language VALUES('4621','should_used','应  用','0','0','3','0','en');
INSERT INTO met_language VALUES('4622','sys_template','模  板','0','0','3','0','en');
INSERT INTO met_language VALUES('4623','sys_purchase','购买','0','0','3','0','en');
INSERT INTO met_language VALUES('4624','sys_payment','支付','0','0','3','0','en');
INSERT INTO met_language VALUES('4625','extension_school','米拓学院','0','0','0','0','en');
INSERT INTO met_language VALUES('4626','the_bit','位','0','0','0','0','en');
INSERT INTO met_language VALUES('4627','the_server','服务器','0','0','0','0','en');
INSERT INTO met_language VALUES('4628','the_version','版本','0','0','0','0','en');
INSERT INTO met_language VALUES('4629','safety_efficiency','安全与效率','0','0','36','0','en');
INSERT INTO met_language VALUES('4630','data_processing','备份与恢复','0','0','36','0','en');
INSERT INTO met_language VALUES('4631','appearance','网站模板','0','0','0','0','en');
INSERT INTO met_language VALUES('4632','the_user','用户管理','0','0','8','0','en');
INSERT INTO met_language VALUES('4633','safety','安全设置','0','0','8','0','en');
INSERT INTO met_language VALUES('4634','attention','关注','0','0','0','0','en');
INSERT INTO met_language VALUES('4635','author','作者','0','0','0','0','en');
INSERT INTO met_language VALUES('4636','sys_authorization1','录入商业授权','0','0','0','0','en');
INSERT INTO met_language VALUES('4637','sys_authorization2','了解商业授权','0','0','0','0','en');
INSERT INTO met_language VALUES('4638','detection','检测中','0','0','0','0','en');
INSERT INTO met_language VALUES('4639','entry_authorization','重新录入授权','0','0','0','0','en');
INSERT INTO met_language VALUES('4640','display_number','选项卡显示数','0','0','36','0','en');
INSERT INTO met_language VALUES('4641','corresponding_products','每个栏目可单独设置，如不单独设置，则调用上级栏目的配置','0','0','36','0','en');
INSERT INTO met_language VALUES('4642','tab_title1','选项卡一标题','0','0','36','0','en');
INSERT INTO met_language VALUES('4643','tab_title2','选项卡二标题','0','0','36','0','en');
INSERT INTO met_language VALUES('4644','tab_title3','选项卡三标题','0','0','36','0','en');
INSERT INTO met_language VALUES('4645','tab_title4','选项卡四标题','0','0','36','0','en');
INSERT INTO met_language VALUES('4646','tab_title5','选项卡五标题','0','0','36','0','en');
INSERT INTO met_language VALUES('4647','download_prompt','正在进行下载，请不要操作页面！','0','0','0','0','en');
INSERT INTO met_language VALUES('4648','purchase_application','购买的应用只能作用于当前的网站','0','0','0','0','en');
INSERT INTO met_language VALUES('4649','text_color','文字颜色','0','0','41','0','en');
INSERT INTO met_language VALUES('4650','the_menu','手机菜单','0','0','41','0','en');
INSERT INTO met_language VALUES('4651','background_color','背景颜色','0','0','41','0','en');
INSERT INTO met_language VALUES('4652','external_links','外部链接','0','0','0','0','en');
INSERT INTO met_language VALUES('4653','appmarket_jurisdiction','您没有查看应用市场的权限，请联系管理员开通。','0','0','0','0','en');
INSERT INTO met_language VALUES('4654','setup_permissions','您没有设置权限，请联系管理员开通。','0','0','0','0','en');
INSERT INTO met_language VALUES('4655','release','添加内容','0','0','0','0','en');
INSERT INTO met_language VALUES('4656','administration','内容管理','0','0','0','0','en');
INSERT INTO met_language VALUES('4657','customers','在线客服','0','0','0','0','en');
INSERT INTO met_language VALUES('4658','seo','SEO','0','0','32','0','en');
INSERT INTO met_language VALUES('4659','member','会员','0','0','38','0','en');
INSERT INTO met_language VALUES('4660','language','语言设置','0','0','0','0','en');
INSERT INTO met_language VALUES('4661','htmltopseudo','静态页面伪静态化','0','0','11','0','en');
INSERT INTO met_language VALUES('4662','htmltopseudotips','使用伪静态方式实现静态页面URL，当前静态页面URL不变。对SEO效果不会产生影响。需要空间支持伪静态，并且会删除静态页面文件。','0','0','11','0','en');
INSERT INTO met_language VALUES('4663','timedrelease','定时发布','0','0','0','0','en');
INSERT INTO met_language VALUES('4664','mod_rewrite_column','开启伪静态化需空间环境配置开启mod_rewrite模块，如没有开启则联系空间商解决。','0','0','32','0','en');
INSERT INTO met_language VALUES('4665','displaytype2','前台隐藏','0','0','0','0','en');
INSERT INTO met_language VALUES('4666','js73','静态页面名称已被使用','0','0','0','0','en');
INSERT INTO met_language VALUES('4667','js74','仅支持中文、大小写字母、数字、下划线','0','0','0','0','en');
INSERT INTO met_language VALUES('4668','js75','名称可用','0','0','0','0','en');
INSERT INTO met_language VALUES('4669','js76','请先添加栏目再在此页面设置页面内容','0','0','0','0','en');
INSERT INTO met_language VALUES('4670','unrecom','取消推荐','0','0','0','0','en');
INSERT INTO met_language VALUES('4671','untop','取消置顶','0','0','0','0','en');
INSERT INTO met_language VALUES('4672','modistauts','状态修改','0','0','0','0','en');
INSERT INTO met_language VALUES('4673','goods','商品','0','0','0','0','en');
INSERT INTO met_language VALUES('4674','js77','后台文件夹名称仅支持大小写字母、数字、下划线','0','0','0','0','en');
INSERT INTO met_language VALUES('4675','js78','管理员名称不能重复','0','0','0','0','en');
INSERT INTO met_language VALUES('4676','banner_pcheight_v6','电脑端高度','0','0','4','0','en');
INSERT INTO met_language VALUES('4677','banner_setmobileImgUrl_v6','手机端图片地址','0','0','4','0','en');
INSERT INTO met_language VALUES('4678','banner_setalert_v6','填数值，（如300，代表300px）建议自适应高度','0','0','4','0','en');
INSERT INTO met_language VALUES('4679','banner_pidheight_v6','平板电脑端高度','0','0','4','0','en');
INSERT INTO met_language VALUES('4680','banner_phoneheight_v6','手机端高度','0','0','4','0','en');
INSERT INTO met_language VALUES('4681','banner_imgtitlecolor_v6','图片标题颜色','0','0','4','0','en');
INSERT INTO met_language VALUES('4682','banner_needtempsupport_v6','一般不需要设置，部分特殊模板支持前台才显示生效','0','0','4','0','en');
INSERT INTO met_language VALUES('4683','banner_imgdesc_v6','图片描述','0','0','4','0','en');
INSERT INTO met_language VALUES('4684','banner_imgdesccolor_v6','图片描述颜色','0','0','4','0','en');
INSERT INTO met_language VALUES('4685','banner_imgwordpos_v6','图片文字位置','0','0','4','0','en');
INSERT INTO met_language VALUES('4686','posleft','左','0','0','4','0','en');
INSERT INTO met_language VALUES('4687','posright','右','0','0','4','0','en');
INSERT INTO met_language VALUES('4688','posup','上','0','0','4','0','en');
INSERT INTO met_language VALUES('4689','poslower','下','0','0','4','0','en');
INSERT INTO met_language VALUES('4690','poscenter','居中','0','0','4','0','en');
INSERT INTO met_language VALUES('4691','batch_wm_v6','批量水印','0','0','5','0','en');
INSERT INTO met_language VALUES('4692','batch_rmwm_v6','去除水印','0','0','5','0','en');
INSERT INTO met_language VALUES('4693','batch_addwm_v6','添加水印','0','0','5','0','en');
INSERT INTO met_language VALUES('4694','admin_movetocolumn_v6','移动到指定栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('4695','admin_copytocolumn_v6','复制到指定栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('4696','admin_colunmmanage_v6','栏目管理','0','0','0','0','en');
INSERT INTO met_language VALUES('4697','parmanage','参数管理','0','0','0','0','en');
INSERT INTO met_language VALUES('4698','refresh','刷新','0','0','0','0','en');
INSERT INTO met_language VALUES('4699','desctext','描述文字','0','0','0','0','en');
INSERT INTO met_language VALUES('4700','linkto','链接至','0','0','0','0','en');
INSERT INTO met_language VALUES('4701','releasenow','立即发布','0','0','0','0','en');
INSERT INTO met_language VALUES('4702','js79','访问量','0','0','0','0','en');
INSERT INTO met_language VALUES('4703','added','新增','0','0','0','0','en');
INSERT INTO met_language VALUES('4704','column_littleicon_v6','小图标icon','0','0','5','0','en');
INSERT INTO met_language VALUES('4705','column_choosicon_v6','选择图标','0','0','5','0','en');
INSERT INTO met_language VALUES('4706','column_inputcolumnfolder_v6','输入栏目文件夹名称','0','0','5','0','en');
INSERT INTO met_language VALUES('4707','browserupdatetips','你正在使用一个 <strong>过时</strong> 的浏览器。请 <a href=https://browsehappy.com/ target=_blank>升级您的浏览器</a>，以提高您的体验。','0','0','0','0','en');
INSERT INTO met_language VALUES('4708','column_selecticonlib_v6','图标库选择','0','0','5','0','en');
INSERT INTO met_language VALUES('4709','column_viewicon_v6','浏览图标','0','0','5','0','en');
INSERT INTO met_language VALUES('4710','tips2_v6','显示在详情页底部，用于聚合内容','0','0','0','0','en');
INSERT INTO met_language VALUES('4711','tips3_v6','多个关键词请用\"|\"隔开，如“建站|企业建站”','0','0','0','0','en');
INSERT INTO met_language VALUES('4712','tips4_v6','请输入网址（需要包含http或https），设置后访问该条信息将直接跳转到设置的网址','0','0','0','0','en');
INSERT INTO met_language VALUES('4713','tips5_v6','定时发布不支持静态页面，请关闭静态页面。（可以使用伪静态）','0','0','0','0','en');
INSERT INTO met_language VALUES('4714','tips6_v6','为空则按系统规则自动构成，可以到SEO设置中修改规则。','0','0','0','0','en');
INSERT INTO met_language VALUES('4715','tips7_v6','当没有手动上传图片时候，会自动提取详细信息第一张图片作为封面（此功能需要模板支持）','0','0','0','0','en');
INSERT INTO met_language VALUES('4716','coverimg','封面图片','0','0','0','0','en');
INSERT INTO met_language VALUES('4717','articletitle','文章标题','0','0','0','0','en');
INSERT INTO met_language VALUES('4718','htmTip3','生成首页','0','0','11','0','en');
INSERT INTO met_language VALUES('4719','js81','您没有此操作权限请联系管理员','0','0','0','0','en');
INSERT INTO met_language VALUES('4720','help2','友情提示','0','0','0','0','en');
INSERT INTO met_language VALUES('4721','tips8_v6','你的网站后台管理文件夹名称存在严重风险，建议你尽快修改','0','0','0','0','en');
INSERT INTO met_language VALUES('4722','nohint','不再提示','0','0','0','0','en');
INSERT INTO met_language VALUES('4723','tochange','前往修改','0','0','0','0','en');
INSERT INTO met_language VALUES('4724','homepage','首页','0','0','0','0','en');
INSERT INTO met_language VALUES('4725','backstage','后台','0','0','0','0','en');
INSERT INTO met_language VALUES('4726','visualization','可视化','0','0','0','0','en');
INSERT INTO met_language VALUES('4727','opfailed','操作失败','0','0','1','0','en');
INSERT INTO met_language VALUES('4728','opsuccess','操作成功','0','0','1','0','en');
INSERT INTO met_language VALUES('4729','unread','未阅读','0','0','0','0','en');
INSERT INTO met_language VALUES('4730','language_outputlang_v6','导出语言包','0','0','16','0','en');
INSERT INTO met_language VALUES('4731','language_batchreplace_v6','批量替换语言','0','0','16','0','en');
INSERT INTO met_language VALUES('4732','language_copysetting_v6','复制基本设置','0','0','16','0','en');
INSERT INTO met_language VALUES('4733','notcopy','不复制','0','0','16','0','en');
INSERT INTO met_language VALUES('4734','language_tips1_v6','基于选中的语言复制除栏目内容外的全部参数配置','0','0','16','0','en');
INSERT INTO met_language VALUES('4735','language_tips2_v6','基于选中的语言复制栏目及内容信息（共用选中语言的图片、附件等）','0','0','16','0','en');
INSERT INTO met_language VALUES('4736','template_style_tips','基于选中的语言复制模板设置参数','0','0','16','0','en');
INSERT INTO met_language VALUES('4737','websitetheme','网站主题风格','0','0','16','0','en');
INSERT INTO met_language VALUES('4738','language_backlangchange_v6','后台语言切换','0','0','16','0','en');
INSERT INTO met_language VALUES('4739','language_updatelang_v6','更新语言包数据<br>请严格按照导出格式粘贴于此','0','0','16','0','en');
INSERT INTO met_language VALUES('4740','message_mailtext_v6','_提交了留言','0','0','20','0','en');
INSERT INTO met_language VALUES('4741','nopicture','暂无图片','0','0','20','0','en');
INSERT INTO met_language VALUES('4742','message_tips1_v6','提示文字，为空时显示，输入文字后消失','0','0','20','0','en');
INSERT INTO met_language VALUES('4743','onlone_onlinelist_v6','客服列表','0','0','23','0','en');
INSERT INTO met_language VALUES('4744','onlone_online_v6','客服设置','0','0','23','0','en');
INSERT INTO met_language VALUES('4745','online_csname_v6','客服名称','0','0','23','0','en');
INSERT INTO met_language VALUES('4746','online_taobaocs_v6','淘宝旺旺','0','0','23','0','en');
INSERT INTO met_language VALUES('4747','online_alics_v6','阿里旺旺','0','0','23','0','en');
INSERT INTO met_language VALUES('4748','online_tips1_v6','添加的QQ需要到【shang.qq.com】登录后在【推广工具—设置】安全级别选择完全公开，否则将显示“未启用” <br>添加的QQ号码，需要到个人QQ设置-权限设置里面，开启临时会话功能，否则点击QQ，将提示添加好友才能对话','0','0','23','0','en');
INSERT INTO met_language VALUES('4749','confirm','确定','0','0','1','0','en');
INSERT INTO met_language VALUES('4750','frontshow','前台显示','0','0','0','0','en');
INSERT INTO met_language VALUES('4751','fronthidden','前台隐藏','0','0','0','0','en');
INSERT INTO met_language VALUES('4752','state','状态','0','0','0','0','en');
INSERT INTO met_language VALUES('4753','visitcount','访问量','0','0','0','0','en');
INSERT INTO met_language VALUES('4754','selectcolumn','请选择所属栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('4755','tips11_v6','可以拖拽图片调整图片顺序。','0','0','28','0','en');
INSERT INTO met_language VALUES('4756','tips12_v6','按下电脑键盘“ctrl”键，可以同时选择多个栏目','0','0','28','0','en');
INSERT INTO met_language VALUES('4757','columumanage','栏目管理','0','0','0','0','en');
INSERT INTO met_language VALUES('4758','titletips','标题（名称）','0','0','28','0','en');
INSERT INTO met_language VALUES('4759','seotipssitemap1','过滤不显示在导航的一级栏目','0','0','32','0','en');
INSERT INTO met_language VALUES('4760','seotips2','网站地图生成的栏目仅限一级栏目和显示在导航栏上栏目。<br / >不显示内容与栏目，都不会在网站地图中生成。','0','0','32','0','en');
INSERT INTO met_language VALUES('4761','seotips3','相比于纯静态功能，伪静态更适合企业网站，既能满足SEO优化，又能方便的管理。','0','0','32','0','en');
INSERT INTO met_language VALUES('4762','defaultlangtag','默认语言标识','0','0','32','0','en');
INSERT INTO met_language VALUES('4763','seotips4','默认语言标示开启后，默认语言伪静态文件会在最后添加一个“-语言标示”，比如“-cn”','0','0','32','0','en');
INSERT INTO met_language VALUES('4764','uisetTips3','当前页面没有可设置参数，请点击页面中相应区块的“设置”和“内容”按钮进行设置','0','0','36','0','en');
INSERT INTO met_language VALUES('4765','addbaricon','地址栏图标','0','0','39','0','en');
INSERT INTO met_language VALUES('4766','webset_tips1_v6','如果无法正常显示新上传图标，清空浏览器缓存后访问。','0','0','39','0','en');
INSERT INTO met_language VALUES('4767','webset_tips2_v6','点击制作ICO','0','0','39','0','en');
INSERT INTO met_language VALUES('4768','icontips','的.ico文件。','0','0','39','0','en');
INSERT INTO met_language VALUES('4769','PC','电脑端','0','0','0','0','en');
INSERT INTO met_language VALUES('4770','memberist','会员列表','0','0','38','0','en');
INSERT INTO met_language VALUES('4771','membergroup','会员组','0','0','38','0','en');
INSERT INTO met_language VALUES('4772','memberattribute','会员属性','0','0','38','0','en');
INSERT INTO met_language VALUES('4773','memberfunc','会员功能设置','0','0','38','0','en');
INSERT INTO met_language VALUES('4774','thirdlogin','社会化登录','0','0','38','0','en');
INSERT INTO met_language VALUES('4775','mailcontentsetting','邮件内容设置','0','0','38','0','en');
INSERT INTO met_language VALUES('4776','user_tips1_v6','可以注册','0','0','38','0','en');
INSERT INTO met_language VALUES('4777','user_tips2_v6','含有非法字符','0','0','38','0','en');
INSERT INTO met_language VALUES('4778','user_tips3_v6','用户名已存在','0','0','38','0','en');
INSERT INTO met_language VALUES('4779','user_tips5_v6','可用参数，下列参数在邮件内容中会被转意为可变参数。','0','0','38','0','en');
INSERT INTO met_language VALUES('4780','user_Registeredmail_v6','注册邮件','0','0','38','0','en');
INSERT INTO met_language VALUES('4781','user_tips6_v6','邮件下一操作的URL地址，必填项。比如找回密码邮件，这个地址就是找回密码的链接。','0','0','38','0','en');
INSERT INTO met_language VALUES('4782','user_tips7_v6','密码找回邮件','0','0','38','0','en');
INSERT INTO met_language VALUES('4783','user_tips8_v6','需要到','0','0','38','0','en');
INSERT INTO met_language VALUES('4784','user_QQinterconnect_v6','QQ互联','0','0','38','0','en');
INSERT INTO met_language VALUES('4785','user_tips9_v6','申请 （管理中心-登录-创建应用-网站）','0','0','38','0','en');
INSERT INTO met_language VALUES('4786','user_backurl_v6','回调地址','0','0','38','0','en');
INSERT INTO met_language VALUES('4787','user_tips10_v6','微信开放平台','0','0','38','0','en');
INSERT INTO met_language VALUES('4788','user_Apply_v6','申请','0','0','38','0','en');
INSERT INTO met_language VALUES('4789','user_tips11_v6','用于PC端会员登录','0','0','38','0','en');
INSERT INTO met_language VALUES('4790','user_Openplatform_v6','开放平台','0','0','38','0','en');
INSERT INTO met_language VALUES('4791','user_publicplatform_v6','微信公众平台','0','0','38','0','en');
INSERT INTO met_language VALUES('4792','user_tips13_v6','需要获取网页授权功能，并设置授权域名为您的网站域名。','0','0','38','0','en');
INSERT INTO met_language VALUES('4793','user_tips14_v6','并且将此微信公众号添加至开放平台账号下。','0','0','38','0','en');
INSERT INTO met_language VALUES('4794','user_tips15_v6','新浪微博','0','0','38','0','en');
INSERT INTO met_language VALUES('4795','user_tips16_v6','微博开放平台','0','0','38','0','en');
INSERT INTO met_language VALUES('4796','user_tips17_v6','（注意：请申请网站不要申请应用）','0','0','38','0','en');
INSERT INTO met_language VALUES('4797','user_accsafe_v6','账号安全','0','0','38','0','en');
INSERT INTO met_language VALUES('4798','user_PasswordReset_v6','密码重置','0','0','38','0','en');
INSERT INTO met_language VALUES('4799','user_tips18_v6','6 - 30 位字符 留空则不修改','0','0','38','0','en');
INSERT INTO met_language VALUES('4800','user_emailuse_v6','邮箱已被绑定','0','0','38','0','en');
INSERT INTO met_language VALUES('4801','user_Accountstatus_v6','账号状态','0','0','38','0','en');
INSERT INTO met_language VALUES('4802','user_must_v6','必填','0','0','38','0','en');
INSERT INTO met_language VALUES('4803','user_tips21_v6','值越大阅读权限越高','0','0','38','0','en');
INSERT INTO met_language VALUES('4804','user_Exportmember_v6','下载CSV文件','0','0','38','0','en');
INSERT INTO met_language VALUES('4805','user_Registratset_v6','注册设置','0','0','38','0','en');
INSERT INTO met_language VALUES('4806','user_Regverificat_v6','注册验证','0','0','38','0','en');
INSERT INTO met_language VALUES('4807','user_tips23_v6','邮箱为用户名','0','0','38','0','en');
INSERT INTO met_language VALUES('4808','user_Mailvalidat_v6','邮件验证','0','0','38','0','en');
INSERT INTO met_language VALUES('4809','user_tips24_v6','（需设置系统发件箱（设置-基本信息-发件邮箱配置）','0','0','38','0','en');
INSERT INTO met_language VALUES('4810','user_tips25_v6','后台审核','0','0','38','0','en');
INSERT INTO met_language VALUES('4811','user_tips26_v6','手机号码为用户名','0','0','38','0','en');
INSERT INTO met_language VALUES('4812','user_tips27_v6','手机短信验证','0','0','38','0','en');
INSERT INTO met_language VALUES('4813','user_tips28_v6','需开通短信服务（我的应用-短信功能）','0','0','38','0','en');
INSERT INTO met_language VALUES('4814','user_Notverifying_v6','不验证','0','0','38','0','en');
INSERT INTO met_language VALUES('4815','user_Backgroundpicture_v6','背景图片','0','0','38','0','en');
INSERT INTO met_language VALUES('4816','user_tips30_v6','登录界面中间横屏背景（建议尺寸 1920 * 800 宽 * 高 ）','0','0','38','0','en');
INSERT INTO met_language VALUES('4817','user_tips4_v6','请输入6-30位的密码','0','0','38','0','en');
INSERT INTO met_language VALUES('4818','weixinlogin','微信登录','0','0','38','0','en');
INSERT INTO met_language VALUES('4819','sinalogin','微博登录','0','0','38','0','en');
INSERT INTO met_language VALUES('4820','qqlogin','QQ登录','0','0','38','0','en');
INSERT INTO met_language VALUES('4821','register','注册','0','0','38','0','en');
INSERT INTO met_language VALUES('4822','lastactive','最后活跃','0','0','38','0','en');
INSERT INTO met_language VALUES('4823','source','来源','0','0','38','0','en');
INSERT INTO met_language VALUES('4824','bindingmail','绑定邮箱','0','0','38','0','en');
INSERT INTO met_language VALUES('4825','bindingmobile','绑定手机','0','0','38','0','en');
INSERT INTO met_language VALUES('4826','systips1','您没有权限访问这个内容！请登录后访问！','0','0','0','0','en');
INSERT INTO met_language VALUES('4827','systips2','您所在用户组没有权限访问这个内容！','0','0','0','0','en');
INSERT INTO met_language VALUES('4828','unrestricted','不限制','0','0','40','0','en');
INSERT INTO met_language VALUES('4829','dowloadauthority','下载权限','0','0','40','0','en');
INSERT INTO met_language VALUES('4830','save','保存','0','0','0','0','en');
INSERT INTO met_language VALUES('4831','baceinfo','基本信息','0','0','0','0','en');
INSERT INTO met_language VALUES('4832','staticpage','静态页面设置','0','0','0','0','en');
INSERT INTO met_language VALUES('4833','pseudostatic','伪静态','0','0','0','0','en');
INSERT INTO met_language VALUES('4834','setequivalentcolumns','当前栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('4835','veditor','可视化编辑','0','0','2','0','en');
INSERT INTO met_language VALUES('4836','veditortips1','开启','0','0','2','0','en');
INSERT INTO met_language VALUES('4837','funcCollection','功能大全','0','0','0','0','en');
INSERT INTO met_language VALUES('4838','websiteSet','网站配置与管理','0','0','0','0','en');
INSERT INTO met_language VALUES('4839','systemModule','系统模块','0','0','0','0','en');
INSERT INTO met_language VALUES('4840','appearanceSetting','外观设置','0','0','0','0','en');
INSERT INTO met_language VALUES('4841','basicInfoSet','基本信息配置','0','0','0','0','en');
INSERT INTO met_language VALUES('4842','multilingual','多语言','0','0','0','0','en');
INSERT INTO met_language VALUES('4843','mailSetting','发件邮箱配置','0','0','0','0','en');
INSERT INTO met_language VALUES('4844','thirdCode','第三方代码添加','0','0','0','0','en');
INSERT INTO met_language VALUES('4845','watermarkThumbnail','水印/缩略图','0','0','0','0','en');
INSERT INTO met_language VALUES('4846','customerService','客服设置','0','0','0','0','en');
INSERT INTO met_language VALUES('4847','recycleBin','回收站','0','0','0','0','en');
INSERT INTO met_language VALUES('4848','securityTools','系统安全与工具','0','0','0','0','en');
INSERT INTO met_language VALUES('4849','searchEngineOptimization','SEO搜索引擎优化','0','0','0','0','en');
INSERT INTO met_language VALUES('4850','seoSetting','SEO参数设置','0','0','0','0','en');
INSERT INTO met_language VALUES('4851','thirdPartyLogin','社会化登录设置','0','0','0','0','en');
INSERT INTO met_language VALUES('4852','appAndPlugin','应用插件','0','0','0','0','en');
INSERT INTO met_language VALUES('4853','metShop','官方商城','0','0','0','0','en');
INSERT INTO met_language VALUES('4854','purchase_notice','购买须知','0','0','0','0','en');
INSERT INTO met_language VALUES('4855','commercialAuthorizationCode','商业授权代码','0','0','0','0','en');
INSERT INTO met_language VALUES('4856','systips13','老版本模板兼容（非响应式模板）','0','0','0','0','en');
INSERT INTO met_language VALUES('4857','mobileSetting','手机版设置','0','0','0','0','en');
INSERT INTO met_language VALUES('4858','mobileVersion','手机版外观','0','0','0','0','en');
INSERT INTO met_language VALUES('4859','uisetTips4','当前页面预览','0','0','36','0','en');
INSERT INTO met_language VALUES('4860','uisetTips5','当前页面系统参数设置','0','0','36','0','en');
INSERT INTO met_language VALUES('4861','uisetTips6','当前页设置','0','0','36','0','en');
INSERT INTO met_language VALUES('4862','moreSettings','更多设置','0','0','36','0','en');
INSERT INTO met_language VALUES('4863','sysMailboxConfig','发件邮箱配置','0','0','36','0','en');
INSERT INTO met_language VALUES('4864','navSetting','导航菜单设置','0','0','36','0','en');
INSERT INTO met_language VALUES('4865','oldBackstage','传统后台','0','0','36','0','en');
INSERT INTO met_language VALUES('4866','sysMessage','系统消息','0','0','36','0','en');
INSERT INTO met_language VALUES('4867','replaceImg','替换图片','0','0','36','0','en');
INSERT INTO met_language VALUES('4868','uisetTips8','隐藏该元素<br>（隐藏后方便修改被遮挡的元素，<br>刷新页面可再次显示）','0','0','36','0','en');
INSERT INTO met_language VALUES('4869','putIntoRecycle','放入回收站','0','0','1','0','en');
INSERT INTO met_language VALUES('4870','thoroughlyDeleting','彻底删除','0','0','1','0','en');
INSERT INTO met_language VALUES('4871','cancel','取消','0','0','1','0','en');
INSERT INTO met_language VALUES('4872','websiteContent','网站基本内容','0','0','16','0','en');
INSERT INTO met_language VALUES('4873','jslang0','放入回收站','0','0','1','0','en');
INSERT INTO met_language VALUES('4874','jslang1','彻底删除','0','0','1','0','en');
INSERT INTO met_language VALUES('4875','jslang2','取消','0','0','1','0','en');
INSERT INTO met_language VALUES('4876','seotips26','开启后能够简化前台网页URL（网址），并且以html结尾（静态页面功能关闭状态下方能生效）。','0','0','32','0','en');
INSERT INTO met_language VALUES('4877','systips14','（开启前请确保伪静态功能已关闭）','0','0','11','0','en');
INSERT INTO met_language VALUES('4878','systips15','MB（如网站后台设置值超过服务器限制的上传文件最大值，则以服务器限制的数值为准）','0','0','30','0','en');
INSERT INTO met_language VALUES('4879','third_code_mobile','移动端第三方代码','0','0','39','0','en');
INSERT INTO met_language VALUES('4880','clearCache','清空缓存','0','0','1','0','en');
INSERT INTO met_language VALUES('4881','jsx39','（删除栏目时将删除栏目下的所有内容）','0','0','5','0','en');
INSERT INTO met_language VALUES('4882','jslang3','没有选中的记录','0','0','1','0','en');
INSERT INTO met_language VALUES('4883','jslang4','请选择所属栏目','0','0','1','0','en');
INSERT INTO met_language VALUES('4884','category','所属栏目','0','0','3','0','en');
INSERT INTO met_language VALUES('4885','jslang5','我知道了','0','0','1','0','en');
INSERT INTO met_language VALUES('4886','jslang6','展开更多设置','0','0','1','0','en');
INSERT INTO met_language VALUES('4887','jslang7','隐藏设置','0','0','1','0','en');
INSERT INTO met_language VALUES('4888','newFeedback','收到了新的反馈','0','0','9','0','en');
INSERT INTO met_language VALUES('4889','wap_descript5_v6','名称不能为空！','0','0','41','0','en');
INSERT INTO met_language VALUES('4890','allapp_v6','全部应用','0','0','21','0','en');
INSERT INTO met_language VALUES('4891','freeapp_v6','免费应用','0','0','21','0','en');
INSERT INTO met_language VALUES('4892','Business_membersapp_v6','商业应用','0','0','21','0','en');
INSERT INTO met_language VALUES('4893','payapp','收费应用','0','0','21','0','en');
INSERT INTO met_language VALUES('4894','servicename_v6','服务名称','0','0','21','0','en');
INSERT INTO met_language VALUES('4895','appstore_descript1_v6','技术支持 服务开通/续费','0','0','21','0','en');
INSERT INTO met_language VALUES('4896','appstore_Servicescope_v6','服务范围','0','0','21','0','en');
INSERT INTO met_language VALUES('4897','appstore_descript2_v6','MetInfo产品服务（安装、升级、搬家、故障排查与处理、服务器调试','0','0','21','0','en');
INSERT INTO met_language VALUES('4898','appstore_descript3_v6','直接帮忙操作。','0','0','21','0','en');
INSERT INTO met_language VALUES('4899','appstore_descript4_v6','服务器调试：首次搭建服务器环境以及与MetInfo故障有关的服务器环境问题处理。','0','0','21','0','en');
INSERT INTO met_language VALUES('4900','appstore_descript5_v6','专业解答（产品使用/技巧、SEO优化、网络营销）','0','0','21','0','en');
INSERT INTO met_language VALUES('4901','appstore_descript6_v6','帮助分析，提供解决方案和指导，不提供操作服务。','0','0','21','0','en');
INSERT INTO met_language VALUES('4902','appstore_descript7_v6','服务范围谨遵上述内容，如未标明则说明不提供相应服务。','0','0','21','0','en');
INSERT INTO met_language VALUES('4903','appstore_descript8_v6','以下情况无法提供服务','0','0','21','0','en');
INSERT INTO met_language VALUES('4904','appstore_descript9_v6','自行修改或使用非原始 MetInfo 程序代码产生的问题','0','0','21','0','en');
INSERT INTO met_language VALUES('4905','appstore_descript10_v6','非官方开发的应用插件、制作的模板造成的问题（应用商店上架的第三方应用/模板属于服务范围）','0','0','21','0','en');
INSERT INTO met_language VALUES('4906','appstore_descript11_v6','服务器、虚拟主机原因造成的系统故障','0','0','21','0','en');
INSERT INTO met_language VALUES('4907','appstore_descript12_v6','未购买商业授权非法去除版权信息','0','0','21','0','en');
INSERT INTO met_language VALUES('4908','appstore_descript13_v6','不含网站内容维护、图片处理、源码修改。','0','0','21','0','en');
INSERT INTO met_language VALUES('4909','appstore_servicemode_v6','服务方式','0','0','21','0','en');
INSERT INTO met_language VALUES('4910','appstore_descript14_v6','提交工单：故障处理、问题咨询（每天）','0','0','21','0','en');
INSERT INTO met_language VALUES('4911','appstore_descript15_v6','在线咨询：问题咨询（仅工作日在线，在线时间：08:30 - 17:30）','0','0','21','0','en');
INSERT INTO met_language VALUES('4912','appstore_descript16_v6','应用商店账号登录MetInfo官网也可以获得工单、在线咨询服务（无法访问网站后台的情况下推荐使用）。','0','0','21','0','en');
INSERT INTO met_language VALUES('4913','appstore_descript17_v6','选择服务时长','0','0','21','0','en');
INSERT INTO met_language VALUES('4914','appstore_descript18_v6','一个月 (300元)','0','0','21','0','en');
INSERT INTO met_language VALUES('4915','appstore_descript19_v6','三个月 (500元)','0','0','21','0','en');
INSERT INTO met_language VALUES('4916','appstore_descript20_v6','一年 (1000元)','0','0','21','0','en');
INSERT INTO met_language VALUES('4917','appstore_QQsalesconsulting_v6','QQ销售咨询','0','0','21','0','en');
INSERT INTO met_language VALUES('4918','appstore_descript21_v6','可咨询QQ了解服务详情','0','0','21','0','en');
INSERT INTO met_language VALUES('4919','appstore_descript22_v6','单次服务价格：网站搬家200元/次，网站安装100元/次，网站升级100元起，故障处理100元起','0','0','21','0','en');
INSERT INTO met_language VALUES('4920','appstore_descript23_v6','应用商店账号的登录密码','0','0','21','0','en');
INSERT INTO met_language VALUES('4921','appstore_descript24_v6','清楚且遵守上述服务范围与服务方式','0','0','21','0','en');
INSERT INTO met_language VALUES('4922','appstore_descript25_v6','立即开通/续费','0','0','21','0','en');
INSERT INTO met_language VALUES('4923','appstore_descript26_v6','模板制作/修改服务商','0','0','21','0','en');
INSERT INTO met_language VALUES('4924','appstore_sign_v6','标志','0','0','21','0','en');
INSERT INTO met_language VALUES('4925','appstore_name_v6','名称','0','0','21','0','en');
INSERT INTO met_language VALUES('4926','appstore_type_v6','类型','0','0','21','0','en');
INSERT INTO met_language VALUES('4927','appstore_place_v6','地区','0','0','21','0','en');
INSERT INTO met_language VALUES('4928','appstore_Abilityvalue_v6','能力值','0','0','21','0','en');
INSERT INTO met_language VALUES('4929','appstore_descript27_v6','商家如何入驻？','0','0','21','0','en');
INSERT INTO met_language VALUES('4930','appstore_descript28_v6','商家入驻说明','0','0','21','0','en');
INSERT INTO met_language VALUES('4931','appstore_Admissionrequirements_v6','入驻要求','0','0','21','0','en');
INSERT INTO met_language VALUES('4932','appstore_descript29_v6','商家入驻说明获得“官方认证模板设计师”称号。','0','0','21','0','en');
INSERT INTO met_language VALUES('4933','appstore_descript30_v6','完成官方模板制作培训并顺利结业','0','0','21','0','en');
INSERT INTO met_language VALUES('4934','appstore_descript31_v6','点此报名培训','0','0','21','0','en');
INSERT INTO met_language VALUES('4935','appstore_descript32_v6','上线一套收费模板至应用商店。','0','0','21','0','en');
INSERT INTO met_language VALUES('4936','appstore_Admissionprocess_v6','入驻流程','0','0','21','0','en');
INSERT INTO met_language VALUES('4937','appstore_descript33_v6','1、联系官方商家合作专员：','0','0','21','0','en');
INSERT INTO met_language VALUES('4938','appstore_descript34_v6','QQ招商加盟','0','0','21','0','en');
INSERT INTO met_language VALUES('4939','appstore_descript35_v6','QQ招商加盟2、报名参加官方模板制作培训并获得“官方认证模板设计师”称号。','0','0','21','0','en');
INSERT INTO met_language VALUES('4940','appstore_descript36_v6','3、通过官网审核并顺利上线一套收费模板至应用商店。','0','0','21','0','en');
INSERT INTO met_language VALUES('4941','appstore_descript37_v6','4、提供商家入驻所需资料，官方进行核实。','0','0','21','0','en');
INSERT INTO met_language VALUES('4942','appstore_descript38_v6','5、正式入驻。','0','0','21','0','en');
INSERT INTO met_language VALUES('4943','appstore_descript39_v6','上线一套作品至应用商店其标准和审核将会非常严格，因为我们需要确保最终用户能够得到足够专业的技术服务。','0','0','21','0','en');
INSERT INTO met_language VALUES('4944','appstore_service_v6','服务','0','0','21','0','en');
INSERT INTO met_language VALUES('4945','appstore_Spacedomain_name_v6','空间域名','0','0','21','0','en');
INSERT INTO met_language VALUES('4946','appstore_Worryfree_service_v6','无忧服务','0','0','21','0','en');
INSERT INTO met_language VALUES('4947','appstore_buildweb_v6','建站套餐','0','0','21','0','en');
INSERT INTO met_language VALUES('4948','appstore_Thirdcooperation_v6','第三方合作','0','0','21','0','en');
INSERT INTO met_language VALUES('4949','appstore_downshowdata_v6','下载演示数据','0','0','21','0','en');
INSERT INTO met_language VALUES('4950','banner_column_v6','栏目','0','0','4','0','en');
INSERT INTO met_language VALUES('4951','batch_watermarking_v6','批量水印操作','0','0','5','0','en');
INSERT INTO met_language VALUES('4952','open_allchildcolumn_v6','展开所有子栏目','0','0','7','0','en');
INSERT INTO met_language VALUES('4953','column_descript1_v6','目录名称只能为小写字母或者数子，且不能和其他栏目重名！','0','0','7','0','en');
INSERT INTO met_language VALUES('4954','add_to_v6','添加至','0','0','7','0','en');
INSERT INTO met_language VALUES('4955','seo_set_v6','SEO设置','0','0','7','0','en');
INSERT INTO met_language VALUES('4956','content_name_v6','名称','0','0','7','0','en');
INSERT INTO met_language VALUES('4957','html_createend_v6','生成完毕','0','0','1','0','en');
INSERT INTO met_language VALUES('4958','html_createfail_v6','生成失败','0','0','11','0','en');
INSERT INTO met_language VALUES('4959','online_addkefu_v6','添加客服','0','0','23','0','en');
INSERT INTO met_language VALUES('4960','indexpic','图片水印','0','0','13','0','en');
INSERT INTO met_language VALUES('4961','databackup7','全部备份','0','0','8','0','en');
INSERT INTO met_language VALUES('4962','adminmobile','手机','0','0','2','0','en');
INSERT INTO met_language VALUES('4963','pay_WeChat_v6','微信','0','0','26','0','en');
INSERT INTO met_language VALUES('4964','notauthen','未认证','0','0','2','0','en');
INSERT INTO met_language VALUES('4965','rnvalidate','实名认证','0','0','2','0','en');
INSERT INTO met_language VALUES('4966','mobile_logo','手机站LOGO','0','0','2','0','en');
INSERT INTO met_language VALUES('4967','mobile_banner_tips1','(不上传手机图片时，手机访问的banner图和电脑端保持一致，手机图片不支持全站静态。)','0','0','2','0','en');
INSERT INTO met_language VALUES('4968','langexisted','语言已存在','0','0','2','0','en');
INSERT INTO met_language VALUES('4969','fdincTip12','后台显示列表项','0','0','0','0','en');
INSERT INTO met_language VALUES('4970','fdincTip13','只能选择下拉、单选、多选反馈字段，此处设置保存后，请到“反馈表单设置”中设置需要关联的产品栏目。','0','0','1','0','en');
INSERT INTO met_language VALUES('4971','unitytxt_1','功能设置','0','0','1','0','en');
INSERT INTO met_language VALUES('4972','enter_folder','双击文件夹图标，进入文件夹选择图片','0','0','1','0','en');
INSERT INTO met_language VALUES('4973','fliptext2','加载中','0','0','1','0','en');
INSERT INTO met_language VALUES('4974','memberarayname','会员组名称','0','0','11','0','en');
INSERT INTO met_language VALUES('4975','thumbs_tips1_v6','修改保存后请到可视化界面导航点击【常用功能】-【清除缩略图】，以使本次保存生效。','0','0','0','0','en');
INSERT INTO met_language VALUES('4976','recahrge_tips','充值后如需退款须扣除 2% 的手续费，充值后 60 天内可以在“用户中心-财务中心-发票申请”提交发票申请。','0','0','0','0','en');
INSERT INTO met_language VALUES('4977','sys_lang_operate','系统语言操作','0','0','0','0','en');
INSERT INTO met_language VALUES('4978','edit_app_lang','编辑插件语言','0','0','0','0','en');
INSERT INTO met_language VALUES('4979','product_para_tips','链接字段类型需要前台模板支持，如模板不支持则可用附件类型进行功能替代','0','0','0','0','en');
INSERT INTO met_language VALUES('4980','metinfoapp3','官方声明','0','0','0','0','en');
INSERT INTO met_language VALUES('4981','metinfoapptext3','第三方商家涵盖MetInfo应用及模板开发、中小企业信息化服务领域等，但MetInfo官方均未参与其相关产品和服务的营运及分成，请广大用户自行选择辨认并承担由此产生的一切后果，如发现商家存在违法或不诚信行为，欢迎向MetInfo官方举报，我们将对其进行下架处理。','0','0','0','0','en');
INSERT INTO met_language VALUES('4982','metinfoappinstallinfo','应用首次安装将自动绑定域名','0','0','0','0','en');
INSERT INTO met_language VALUES('4983','metinfoappinstallinfo4','安装提示','0','0','1','0','en');
INSERT INTO met_language VALUES('4984','columnselect1','选择栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('4985','columnnofollow','nofollow属性','0','0','0','0','en');
INSERT INTO met_language VALUES('4986','columnnofollowinfo','勾选后网站不向链接网址传递权重','0','0','0','0','en');
INSERT INTO met_language VALUES('4987','feedbackinquiry','在线询价','0','0','0','0','en');
INSERT INTO met_language VALUES('4988','feedbackinquiryinfo','已有一个反馈栏目开启此功能，如要在当前栏目启用，请先在已开启反馈栏目中关闭。','0','0','0','0','en');
INSERT INTO met_language VALUES('4989','feedbackinquiryinfo1','开启在线询价后，产品详情页将自动显示询价按钮。','0','0','0','0','en');
INSERT INTO met_language VALUES('4990','webupate1','网站备份','0','0','0','0','en');
INSERT INTO met_language VALUES('4991','webupate3','解压成功','0','0','0','0','en');
INSERT INTO met_language VALUES('4992','webupate4','解压失败','0','0','0','0','en');
INSERT INTO met_language VALUES('4993','webupate5','压缩包不存在','0','0','0','0','en');
INSERT INTO met_language VALUES('4994','webupate6','文件类型','0','0','0','0','en');
INSERT INTO met_language VALUES('4995','webupate7','解压','0','0','0','0','en');
INSERT INTO met_language VALUES('4996','webupate9','使用备份管理员账号','0','0','0','0','en');
INSERT INTO met_language VALUES('4997','webupate10','不覆盖管理员账号','0','0','0','0','en');
INSERT INTO met_language VALUES('4998','seohtaccess1','是否显示根目录下文件列表','0','0','1','0','en');
INSERT INTO met_language VALUES('4999','updatenofile','安装包不存在','0','0','0','0','en');
INSERT INTO met_language VALUES('5000','updateupzipfileno','解压数据失败','0','0','0','0','en');
INSERT INTO met_language VALUES('5001','updateinstallnow','安装中...','0','0','1','0','en');
INSERT INTO met_language VALUES('5002','useinfopay','此功能需要先安装支付接口管理应用才能开启。','0','0','0','0','en');
INSERT INTO met_language VALUES('5003','usegroupauto1','充值满金额自动升级','0','0','0','0','en');
INSERT INTO met_language VALUES('5004','usegroupbuy','付费购买会员组','0','0','0','0','en');
INSERT INTO met_language VALUES('5005','usereadinfo','阅读权限值必需大于0','0','0','0','0','en');
INSERT INTO met_language VALUES('5006','userselectname','选项卡','0','0','0','0','en');
INSERT INTO met_language VALUES('5007','msmnoifno','短信功能未开通','0','0','0','0','en');
INSERT INTO met_language VALUES('5008','templateseditfalse','修改失败','0','0','0','0','en');
INSERT INTO met_language VALUES('5009','templatefilewritno','目录不可写','0','0','0','0','en');
INSERT INTO met_language VALUES('5010','times1','秒前','0','0','0','0','en');
INSERT INTO met_language VALUES('5011','times2','分钟前','0','0','0','0','en');
INSERT INTO met_language VALUES('5012','times3','小时前','0','0','0','0','en');
INSERT INTO met_language VALUES('5013','times4','天前','0','0','0','0','en');
INSERT INTO met_language VALUES('5014','uploadfilenop','无权限上传','0','0','0','0','en');
INSERT INTO met_language VALUES('5015','rurlerror','请求地址出错','0','0','0','0','en');
INSERT INTO met_language VALUES('5016','paranouse','参数不合法','0','0','0','0','en');
INSERT INTO met_language VALUES('5017','linkmetinfoerror','您的服务器链接不上Met用户中心，请联系官网客服人员对服务器进行检测！！！','0','0','0','0','en');
INSERT INTO met_language VALUES('5018','appusererror','后台登录账号密码错误，请在Met用户中心重新设置账号密码！！！','0','0','0','0','en');
INSERT INTO met_language VALUES('5019','parameter10','链接','0','0','0','0','en');
INSERT INTO met_language VALUES('5020','parametervalueinfo','值','0','0','0','0','en');
INSERT INTO met_language VALUES('5021','indexmobilelogoinfo','模板有手机LOGO设置时，此处设置失效，开启静态页面时设置无效，留空手机端使用默认LOGO','0','0','0','0','en');
INSERT INTO met_language VALUES('5022','columndeffflor','你使用的栏目文件名称和系统默认模块文件夹名称冲突，请重新命名','0','0','0','0','en');
INSERT INTO met_language VALUES('5023','idcode','身份证号码','0','0','0','0','en');
INSERT INTO met_language VALUES('5024','recoveryisntallinfo','导入的数据库版本和系统当前版本不一致，导入后可能会存在部分参数及配置数据丢失的情况，请谨慎导入！','0','0','0','0','en');
INSERT INTO met_language VALUES('5025','met_template_nofile','模板文件夹不存在','0','0','0','50002','en');
INSERT INTO met_language VALUES('5026','met_template_fileexist','模板已经存在','0','0','0','50002','en');
INSERT INTO met_language VALUES('5027','met_template_noconfigfile','模板配置文件不存在','0','0','0','50002','en');
INSERT INTO met_language VALUES('5028','met_template_falsedelui','删除UI失败','0','0','0','50002','en');
INSERT INTO met_language VALUES('5029','met_template_falsedeluiconfig','删除UI配置失败','0','0','0','50002','en');
INSERT INTO met_language VALUES('5030','met_template_falsedelconfig','删除全局配置失败','0','0','0','50002','en');
INSERT INTO met_language VALUES('5031','met_template_downloadfalse','下载失败','0','0','0','50002','en');
INSERT INTO met_language VALUES('5032','met_template_downloadok','下载成功','0','0','0','50002','en');
INSERT INTO met_language VALUES('5033','met_template_temnoexist','模板不存在','0','0','0','50002','en');
INSERT INTO met_language VALUES('5034','met_template_demonoexist','演示数据不存在','0','0','0','50002','en');
INSERT INTO met_language VALUES('5035','met_template_upzipdemofalse','解压演示数据失败','0','0','0','50002','en');
INSERT INTO met_language VALUES('5036','met_template_upzipok','解压成功','0','0','0','50002','en');
INSERT INTO met_language VALUES('5037','met_template_installok','安装成功','0','0','0','50002','en');
INSERT INTO met_language VALUES('5038','met_template_templates','UI商业模板','0','0','0','50002','en');
INSERT INTO met_language VALUES('5039','met_template_othertemplates','其他模板','0','0','0','50002','en');
INSERT INTO met_language VALUES('5040','met_template_installdemo','安装演示数据','0','0','0','50002','en');
INSERT INTO met_language VALUES('5041','met_template_deletteminfo','您确定要删除该模板吗？删除之后无法再恢复。','0','0','0','50002','en');
INSERT INTO met_language VALUES('5042','met_template_nodelet','系统应用不允许删除','0','0','0','50002','en');
INSERT INTO met_language VALUES('5043','met_template_filesavef','文件保存失败','0','0','0','50002','en');
INSERT INTO met_language VALUES('5044','met_template_installuierr','导入UI时出错','0','0','0','50002','en');
INSERT INTO met_language VALUES('5045','met_template_installuiparaerr','导入UI参数时出错','0','0','0','50002','en');
INSERT INTO met_language VALUES('5046','met_template_updateok','升级成功','0','0','0','50002','en');
INSERT INTO met_language VALUES('5047','met_template_updatefalse','更新失败','0','0','0','50002','en');
INSERT INTO met_language VALUES('5048','met_template_updatedatafalse','数据更新失败','0','0','0','50002','en');
INSERT INTO met_language VALUES('5049','met_template_donotinfo','不需要操作或没有权限','0','0','0','50002','en');
INSERT INTO met_language VALUES('5050','met_template_langinfotext','开启多语言时，必须先切换到对应语言的可视化管理或传统后台，然后在此启用一套模板；不同的语言可以启用不同的模板。','0','0','0','50002','en');
INSERT INTO met_language VALUES('5051','met_template_metinfouserinfo','米拓官网用户中心账号可同步安装已购买且绑定域名为本站的商业模板，购买后60天内可以在米拓用户中心绑定域名','0','0','0','50002','en');
INSERT INTO met_language VALUES('5052','met_template_buytemplates','购买新模板','0','0','0','50002','en');
INSERT INTO met_language VALUES('5053','met_template_delettemplatesinfo','列表中删除模板并不会删除 网站根目录/templates/ 下的模板文件夹','0','0','0','50002','en');
INSERT INTO met_language VALUES('5054','met_template_demoinstalltitle','演示数据安装提示！！！','0','0','0','50002','en');
INSERT INTO met_language VALUES('5055','met_template_demoinstallsel','请选择合适你的安装方式','0','0','0','50002','en');
INSERT INTO met_language VALUES('5056','met_template_demoinstallt1','恢复出厂设置：系统将清空网站所有已有数据，将网站恢复至模板演示数据状态；','0','0','0','50002','en');
INSERT INTO met_language VALUES('5057','met_template_demoinstallt2','备份已有数据并安装：系统将先自动备份网站现有数据库及图片，然后将网站恢复至模板演示数据状态，日后可以通过恢复备份数据将网站还原至演示数据安装前的状态；','0','0','0','50002','en');
INSERT INTO met_language VALUES('5058','met_template_demoinstallt3','取消：如果你的网站已经添加了内容，我们建议你不要安装演示数据，安装模板后直接在可视化中设置相关区块内容即可。','0','0','0','50002','en');
INSERT INTO met_language VALUES('5059','met_template_saveinstall','备份已有数据并安装','0','0','0','50002','en');
INSERT INTO met_language VALUES('5060','met_template_installnewmetinfo','恢复出厂设置','0','0','0','50002','en');
INSERT INTO met_language VALUES('5061','met_template_downloadtemjs','正在下载模板...','0','0','1','50002','en');
INSERT INTO met_language VALUES('5062','met_template_downloadtemokjs','下载模板成功','0','0','1','50002','en');
INSERT INTO met_language VALUES('5063','met_template_downloaduijs','正在下载UI','0','0','1','50002','en');
INSERT INTO met_language VALUES('5064','met_template_setmarktext','点击展开高级设置','0','0','0','50002','en');
INSERT INTO met_language VALUES('5065','met_template_setmarktexth','隐藏高级设置','0','0','0','50002','en');
INSERT INTO met_language VALUES('5066','setpnorder','上一条下一条调用设置','0','0','0','50002','en');
INSERT INTO met_language VALUES('5067','disableCssJs','关闭系统css和js','0','0','0','0','en');
INSERT INTO met_language VALUES('5068','disableCssJsTips','禁止系统加载默认的css和js（仅供开发者制作模板使用，普通用户切勿关闭）','0','0','0','0','en');
INSERT INTO met_language VALUES('5069','301jump','301跳转','0','0','0','0','en');
INSERT INTO met_language VALUES('5070','setseoLogoKeyword','Logo关键词','0','0','0','0','en');
INSERT INTO met_language VALUES('5071','301jumpDescription','开启后网站域名将自动跳转带www的网站域名。例：*****.cn 跳转 www.*****.cn','0','0','0','0','en');
INSERT INTO met_language VALUES('5072','gotohttps','http跳转https','0','0','0','0','en');
INSERT INTO met_language VALUES('5073','gotohttps_tips','此功能需要服务器安装SSL证书并支持https协议才能开启。','0','0','0','0','en');
INSERT INTO met_language VALUES('5074','admin_login_lang','登录后台默认语言','0','0','0','0','en');
INSERT INTO met_language VALUES('5075','admin_del_error','禁止删除创始人','0','0','0','0','en');
INSERT INTO met_language VALUES('5076','sethttps','开启后系统自动替换本站所有http路径并清除模板缓存','0','0','0','0','en');
INSERT INTO met_language VALUES('5077','404page','404 页面内容','0','0','0','0','en');
INSERT INTO met_language VALUES('5078','data_null','无内容提示文字','0','0','0','0','en');
INSERT INTO met_language VALUES('5079','column_other_info','栏目其他信息','0','0','0','0','en');
INSERT INTO met_language VALUES('5080','column_custom_info','自定义栏目信息','0','0','0','0','en');
INSERT INTO met_language VALUES('5081','seting','设置','0','0','0','0','en');
INSERT INTO met_language VALUES('5082','special_che_deny','请勿使用特殊字符','0','0','0','0','en');
INSERT INTO met_language VALUES('5083','clearThumb','清除缩略图','0','0','0','0','en');
INSERT INTO met_language VALUES('5084','operation_log','操作日志','0','0','0','0','en');
INSERT INTO met_language VALUES('5085','request_address','请求地址','0','0','0','0','en');
INSERT INTO met_language VALUES('5086','request_result','请求结果','0','0','0','0','en');
INSERT INTO met_language VALUES('5087','admin_log','开启后台操作日志','0','0','0','0','en');
INSERT INTO met_language VALUES('5088','associated_columns','关联栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('5089','pass_empty','不输入不会更改密码','0','0','0','0','en');
INSERT INTO met_language VALUES('5090','unzip_tips','解压会覆盖upload文件夹中相同命名的文件','0','0','0','0','en');
INSERT INTO met_language VALUES('5091','adminFunOperate','功能模块操作权限','0','0','0','0','en');
INSERT INTO met_language VALUES('5092','tags_title','标签页面Title','0','0','0','0','en');
INSERT INTO met_language VALUES('5093','tags_title_tips','Tgas页面标题','0','0','0','0','en');
INSERT INTO met_language VALUES('5094','text_size','字体大小','0','0','0','0','en');
INSERT INTO met_language VALUES('5095','desc_size','描述字体大小','0','0','0','0','en');
INSERT INTO met_language VALUES('5096','desc_color','描述字体大小','0','0','0','0','en');
INSERT INTO met_language VALUES('5097','column_style_tips','该设置需要模板支持','0','0','0','0','en');
INSERT INTO met_language VALUES('5098','content_style_tips','该设置一般只在信息列表中有效','0','0','0','0','en');
INSERT INTO met_language VALUES('5099','modifyaccemail','绑定邮箱修改邮件','0','0','0','0','en');
INSERT INTO met_language VALUES('5100','temSupport','此功能需要模板支持','0','0','0','0','en');
INSERT INTO met_language VALUES('5101','update','更新','0','0','0','0','en');
INSERT INTO met_language VALUES('5102','onlyInStyle3','仅在风格3中生效','0','0','0','0','en');
INSERT INTO met_language VALUES('5103','thumb_tips','(宽 X 高)(像素)模块默认缩略图尺寸，可视化编辑中可独立设置每个栏目的缩略图尺寸。','0','0','0','0','en');
INSERT INTO met_language VALUES('5104','freeapp','免费插件','0','0','0','0','en');
INSERT INTO met_language VALUES('5105','businessapp','商业插件','0','0','0','0','en');
INSERT INTO met_language VALUES('5106','chargeapp','收费插件','0','0','0','0','en');
INSERT INTO met_language VALUES('5107','userCondition','注册米拓用户中心可免费下载使用','0','0','0','0','en');
INSERT INTO met_language VALUES('5108','installCondition','购买米拓企业建站系统商业版可在绑定域名站点下安装使用','0','0','0','0','en');
INSERT INTO met_language VALUES('5109','buyCondition','单独购买后可在一个绑定域名站点下安装使用','0','0','0','0','en');
INSERT INTO met_language VALUES('5110','thumb_size_list','列表页缩略图尺寸','0','0','0','0','en');
INSERT INTO met_language VALUES('5111','thumb_size_showpage','详情页缩略图尺寸','0','0','0','0','en');
INSERT INTO met_language VALUES('5112','thumb_seting_tips','详情页缩略图尺寸、选项卡请在对应栏目的可视化编辑“当前页设置”中设置','0','0','0','0','en');
INSERT INTO met_language VALUES('5113','member_agreement','用户协议功能','0','0','0','0','en');
INSERT INTO met_language VALUES('5114','top_menu','顶部菜单','0','0','0','0','en');
INSERT INTO met_language VALUES('5115','admin_name_repeat','管理员姓名不能重复','0','0','0','0','en');
INSERT INTO met_language VALUES('5116','ing','中','0','0','0','0','en');
INSERT INTO met_language VALUES('5117','static_page_success','静态页面生成完成','0','0','0','0','en');
INSERT INTO met_language VALUES('5118','successful_conversion','转换成功！','0','0','0','0','en');
INSERT INTO met_language VALUES('5119','full_site','全站','0','0','0','0','en');
INSERT INTO met_language VALUES('5120','settings_tab','设置选项卡','0','0','0','0','en');
INSERT INTO met_language VALUES('5121','custom_info','自定义信息','0','0','0','0','en');
INSERT INTO met_language VALUES('5122','admin_content_list1','点击表格每行空白部分上下拖曳后保存即可改变排序','0','0','0','0','en');
INSERT INTO met_language VALUES('5123','module_reply1','多个号码请用|隔开','0','0','0','0','en');
INSERT INTO met_language VALUES('5124','module_reply2','回复短信内容需要在短信功能提供平台提交内容模板审核，审核通过后才能发送成功。','0','0','0','0','en');
INSERT INTO met_language VALUES('5125','online_list1','号码/链接/图片','0','0','0','0','en');
INSERT INTO met_language VALUES('5126','choice_style','风格选择','0','0','0','0','en');
INSERT INTO met_language VALUES('5127','reading_authority','阅读权限','0','0','0','0','en');
INSERT INTO met_language VALUES('5128','empty_not_modified','为空则不修改','0','0','0','0','en');
INSERT INTO met_language VALUES('5129','button','按钮','0','0','0','0','en');
INSERT INTO met_language VALUES('5130','fliptext1','查看更多','0','0','0','0','en');
INSERT INTO met_language VALUES('5131','being_imported','正在导入中，请不要操作。','0','0','0','0','en');
INSERT INTO met_language VALUES('5132','least_one_item','请选择至少一项。','0','0','0','0','en');
INSERT INTO met_language VALUES('5133','feedfback','反馈','0','0','0','0','en');
INSERT INTO met_language VALUES('5134','message','留言','0','0','0','0','en');
INSERT INTO met_language VALUES('5135','job','招聘','0','0','0','0','en');
INSERT INTO met_language VALUES('5136','product','产品','0','0','0','0','en');
INSERT INTO met_language VALUES('5137','saving','保存中，请等待...','0','0','0','0','en');
INSERT INTO met_language VALUES('5138','no_data','暂无数据','0','0','0','0','en');
INSERT INTO met_language VALUES('5139','numbering','编号','0','0','0','0','en');
INSERT INTO met_language VALUES('5140','successful_syn','同步成功','0','0','0','0','en');
INSERT INTO met_language VALUES('5141','failed_syn','同步失败','0','0','0','0','en');
INSERT INTO met_language VALUES('5142','being_synced','正在同步中，请耐心等待。','0','0','0','0','en');
INSERT INTO met_language VALUES('5143','national_flag','国旗','0','0','0','0','en');
INSERT INTO met_language VALUES('5144','national_flag_tips1','自定义国旗gif图片可放置在网站public/images/flag/文件夹下','0','0','0','0','en');
INSERT INTO met_language VALUES('5145','manage_tips1','点击收起/展开栏目列表','0','0','0','0','en');
INSERT INTO met_language VALUES('5146','set_default_section','设置默认栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('5147','enter_user_name','请输入用户名','0','0','0','0','en');
INSERT INTO met_language VALUES('5148','system_plugin_uninstall','系统插件，无法卸载','0','0','0','0','en');
INSERT INTO met_language VALUES('5149','install_first','请先安装！','0','0','0','0','en');
INSERT INTO met_language VALUES('5150','upgrade','升级中，请稍后...','0','0','0','0','en');
INSERT INTO met_language VALUES('5151','file_download_failed','文件下载失败','0','0','0','0','en');
INSERT INTO met_language VALUES('5152','column_search','栏目搜索','0','0','0','0','en');
INSERT INTO met_language VALUES('5153','advanced_search','高级搜索','0','0','0','0','en');
INSERT INTO met_language VALUES('5154','replacement_text','替换文字不能为空','0','0','0','0','en');
INSERT INTO met_language VALUES('5155','default','默认','0','0','0','0','en');
INSERT INTO met_language VALUES('5156','valid_phone_number','请输入有效电话号码','0','0','0','0','en');
INSERT INTO met_language VALUES('5157','valid_email_address','请输入有效邮箱地址','0','0','0','0','en');
INSERT INTO met_language VALUES('5158','button_text','按钮文字','0','0','0','0','en');
INSERT INTO met_language VALUES('5159','open_mode','打开方式','0','0','0','0','en');
INSERT INTO met_language VALUES('5160','button_size','按钮大小','0','0','0','0','en');
INSERT INTO met_language VALUES('5161','button_color','按钮颜色','0','0','0','0','en');
INSERT INTO met_language VALUES('5162','mouse_over_button_color','鼠标经过按钮颜色','0','0','0','0','en');
INSERT INTO met_language VALUES('5163','mouse_over_text_color','鼠标经过文字颜色','0','0','0','0','en');
INSERT INTO met_language VALUES('5164','font_size','文字大小','0','0','0','0','en');
INSERT INTO met_language VALUES('5165','display_client','显示客户端','0','0','0','0','en');
INSERT INTO met_language VALUES('5166','original_window','原窗口','0','0','0','0','en');
INSERT INTO met_language VALUES('5167','new_window','新窗口','0','0','0','0','en');
INSERT INTO met_language VALUES('5168','mobile_terminal','手机端','0','0','0','0','en');
INSERT INTO met_language VALUES('5169','image_title_font_size','图片标题字体大小','0','0','0','0','en');
INSERT INTO met_language VALUES('5170','image_description_font_size','图片描述字体大小','0','0','0','0','en');
INSERT INTO met_language VALUES('5171','mobile_terminal_settings','手机端设置','0','0','0','0','en');
INSERT INTO met_language VALUES('5172','mobile_phone_picture_title','手机端图片标题','0','0','0','0','en');
INSERT INTO met_language VALUES('5173','banner_edit1','如不填写设置，则保持和电脑端一致','0','0','0','0','en');
INSERT INTO met_language VALUES('5174','banner_edit2','手机端图片标题颜色：','0','0','0','0','en');
INSERT INTO met_language VALUES('5175','banner_edit3','手机端图片标题字体大小','0','0','0','0','en');
INSERT INTO met_language VALUES('5176','banner_edit5','手机端图片描述','0','0','0','0','en');
INSERT INTO met_language VALUES('5177','banner_edit6','手机端图片描述颜色','0','0','0','0','en');
INSERT INTO met_language VALUES('5178','banner_edit7','手机端图片描述字体大小','0','0','0','0','en');
INSERT INTO met_language VALUES('5179','banner_edit8','手机端图片文字位置','0','0','0','0','en');
INSERT INTO met_language VALUES('5180','feedbackTip5','导出当前选中信息','0','0','0','0','en');
INSERT INTO met_language VALUES('5181','setimgLeftMid','左中','0','0','0','0','en');
INSERT INTO met_language VALUES('5182','function_ency1','此处仅列出传统后台功能，更多设置功能，请在可视化编辑后台按栏目和页面编辑。','0','0','0','0','en');
INSERT INTO met_language VALUES('5183','environmental_test','环境检测','0','0','0','0','en');
INSERT INTO met_language VALUES('5184','function_ency2','请在“栏目管理”中添加对应模块栏目后再在相应功能菜单中进行管理。','0','0','0','0','en');
INSERT INTO met_language VALUES('5185','sms_function','短信功能','0','0','0','0','en');
INSERT INTO met_language VALUES('5186','website_overview','网站概况','0','0','0','0','en');
INSERT INTO met_language VALUES('5187','system_cache','系统缓存','0','0','0','0','en');
INSERT INTO met_language VALUES('5188','help_manual','帮助手册','0','0','0','0','en');
INSERT INTO met_language VALUES('5189','online_quiz','在线问答','0','0','0','0','en');
INSERT INTO met_language VALUES('5190','online_work_order','在线工单','0','0','0','0','en');
INSERT INTO met_language VALUES('5191','admin_job1','需要到招聘职位管理的职位中添加简历接收邮箱','0','0','0','0','en');
INSERT INTO met_language VALUES('5192','admin_manage1','点击左侧栏目列表管理内容','0','0','0','0','en');
INSERT INTO met_language VALUES('5193','admin_menu1','此功能需要模板支持，部分模板底部自带了手机菜单，请在可视化界面设置。','0','0','0','0','en');
INSERT INTO met_language VALUES('5194','search_range','搜索范围','0','0','0','0','en');
INSERT INTO met_language VALUES('5195','admin_search1','指定一级栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('5196','admin_search2','是否开启搜索方式','0','0','0','0','en');
INSERT INTO met_language VALUES('5197','admin_search3','是否联动','0','0','0','0','en');
INSERT INTO met_language VALUES('5198','admin_search4','搜索框默认内容','0','0','0','0','en');
INSERT INTO met_language VALUES('5199','admin_search5','当前所属一级栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('5200','admin_search6','搜索方式','0','0','0','0','en');
INSERT INTO met_language VALUES('5201','admin_search7','标题和内容','0','0','0','0','en');
INSERT INTO met_language VALUES('5202','by_module','按模块','0','0','0','0','en');
INSERT INTO met_language VALUES('5203','by_column','按栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('5204','admin_seo1','index-语言标识.html(如：index-cn.html)','0','0','0','0','en');
INSERT INTO met_language VALUES('5205','admin_seo2','目录名称/list-静态页面名称或ID-语言标识.html(如：product/list-1-cn.html)','0','0','0','0','en');
INSERT INTO met_language VALUES('5206','admin_seo3','目录名称/静态页面名称或ID-语言标识.html(如：product/100-cn.html)','0','0','0','0','en');
INSERT INTO met_language VALUES('5207','admin_tag_setting1','TAG标签设置','0','0','0','0','en');
INSERT INTO met_language VALUES('5208','admin_tag_setting2','TAG标签生成规则','0','0','0','0','en');
INSERT INTO met_language VALUES('5209','admin_tag_setting3','按一级栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('5210','admin_tag_setting4','TAG标签聚合规则','0','0','0','0','en');
INSERT INTO met_language VALUES('5211','admin_tag_setting5','设置了相同TAG标签的内容','0','0','0','0','en');
INSERT INTO met_language VALUES('5212','admin_tag_setting6','内容详情页聚合条数','0','0','0','0','en');
INSERT INTO met_language VALUES('5213','add_tag','添加标签','0','0','0','0','en');
INSERT INTO met_language VALUES('5214','admin_tag_setting8','请先在栏目管理”中添加设置\"TAG标签”模块的栏目，前台访问地址为','0','0','0','0','en');
INSERT INTO met_language VALUES('5215','tag_name','标签名称','0','0','0','0','en');
INSERT INTO met_language VALUES('5216','add_manully','手动添加','0','0','0','0','en');
INSERT INTO met_language VALUES('5217','aggregation_range','聚合范围','0','0','0','0','en');
INSERT INTO met_language VALUES('5218','admin_tag_setting7','不填写则使用系统默认值','0','0','0','0','en');
INSERT INTO met_language VALUES('5219','admin_tag_setting9','标签名称格式不正确','0','0','0','0','en');
INSERT INTO met_language VALUES('5220','admin_tag_setting10','静态页面名称格式不正确','0','0','0','0','en');
INSERT INTO met_language VALUES('5221','system_check1','检查你的服务器是否支持系统所有功能。','0','0','0','0','en');
INSERT INTO met_language VALUES('5222','system_check2','环境/函数检测结果','0','0','0','0','en');
INSERT INTO met_language VALUES('5223','system_check3','文件和目录权限','0','0','0','0','en');
INSERT INTO met_language VALUES('5224','system_check4','要能正常使用系统的缓存、伪静态、上传文件功能，需要将以下文件/目录设置为 \"可写\"。下面是需要设置为\"可写\" 的目录清单，以及建议的 CHMOD 设置。','0','0','0','0','en');
INSERT INTO met_language VALUES('5225','system_check5','某些主机不允许你设置 CHMOD 777，要用666。先试最高的值，不行的话，再逐步降低该值。','0','0','0','0','en');
INSERT INTO met_language VALUES('5226','visualization1','长按需要修改的地方即可触发修改功能','0','0','0','0','en');
INSERT INTO met_language VALUES('5227','stand_by','支持','0','0','0','0','en');
INSERT INTO met_language VALUES('5228','close_this_time','本次关闭','0','0','0','0','en');
INSERT INTO met_language VALUES('5229','rename_admin_dir','当前系统环境不支持修改后台文件夹名称，请手动进行修改。','0','0','0','0','en');
INSERT INTO met_language VALUES('5230','notemptips','当前语言没有设置网站模板，请到“风格-网站模板”中选择1套模板','0','0','0','0','en');
INSERT INTO met_language VALUES('5231','short_message','短信','0','0','0','0','en');
INSERT INTO met_language VALUES('5232','common_qq','普通QQ','0','0','0','0','en');
INSERT INTO met_language VALUES('5233','enterprise_qq','企业QQ','0','0','0','0','en');
INSERT INTO met_language VALUES('5234','back_folder_list','返回文件夹列表','0','0','0','0','en');
INSERT INTO met_language VALUES('5235','back_icon_iibrary_list','返回图标库列表','0','0','0','0','en');
INSERT INTO met_language VALUES('5236','choose_icon_tips','点击选中图标并保存','0','0','0','0','en');
INSERT INTO met_language VALUES('5237','jump_to_no','跳转到第','0','0','0','0','en');
INSERT INTO met_language VALUES('5238','page','页','0','0','0','0','en');
INSERT INTO met_language VALUES('5239','goto','跳转','0','0','0','0','en');
INSERT INTO met_language VALUES('5240','save_image_to_website','保存图片到本地','0','0','0','0','en');
INSERT INTO met_language VALUES('5241','save_allimages_to_website','保存全部图片到本地','0','0','0','0','en');
INSERT INTO met_language VALUES('5242','block_style','区块风格','0','0','0','0','en');
INSERT INTO met_language VALUES('5243','change','切换','0','0','0','0','en');
INSERT INTO met_language VALUES('5244','change_blockstyle_tips','选择好风格后请点击【切换】按钮','0','0','0','0','en');
INSERT INTO met_language VALUES('5245','installing','安装中，请不要操作。','0','0','0','0','en');
INSERT INTO met_language VALUES('5246','databacking','备份中，请不要操作。','0','0','0','0','en');
INSERT INTO met_language VALUES('5247','already_update_package','存在手动升级包','0','0','0','0','en');
INSERT INTO met_language VALUES('5248','edit_authority','前台编辑权限','0','0','0','0','en');
INSERT INTO met_language VALUES('5249','editable','可编辑','0','0','0','0','en');
INSERT INTO met_language VALUES('5250','non_editable','不可编辑','0','0','0','0','en');
INSERT INTO met_language VALUES('5251','cv_export','导出简历','0','0','0','0','en');
INSERT INTO met_language VALUES('5252','access_type','阅读权限展示方式','0','0','0','0','en');
INSERT INTO met_language VALUES('5253','access_type1','前台显示无权限信息，点击阅读后判断权限','0','0','0','0','en');
INSERT INTO met_language VALUES('5254','access_type2','前台不显示无权限信息','0','0','0','0','en');
INSERT INTO met_language VALUES('5255','database_switch','数据库切换','0','0','0','0','en');
INSERT INTO met_language VALUES('5256','database_switch_tips','网站使用过程中请不要频繁切换数据库类型，部分应用不支持sqlite数据库，建议使用更为稳定高效的mysql数据库','0','0','0','0','en');
INSERT INTO met_language VALUES('5257','database_switch_tips1','请配置MySQL数据库参数，数据库信息可联系你的服务器提供商获取','0','0','0','0','en');
INSERT INTO met_language VALUES('5258','database_switch_tips2','例如：met_ 请不要留空，且使用“_”结尾','0','0','0','0','en');
INSERT INTO met_language VALUES('5259','database_switch_tips3','一般不需要更改，参考主机或服务器MYSQL控制面板','0','0','0','0','en');
INSERT INTO met_language VALUES('5260','database_switch_tips4','例如\"met\"或\"my_met\",请确保用字母开头','0','0','0','0','en');
INSERT INTO met_language VALUES('5261','database_type','数据库类型','0','0','0','0','en');
INSERT INTO met_language VALUES('5262','table_prefix','数据表前缀','0','0','0','0','en');
INSERT INTO met_language VALUES('5263','database_address','数据库连接地址','0','0','0','0','en');
INSERT INTO met_language VALUES('5264','database_name','数据库名','0','0','0','0','en');
INSERT INTO met_language VALUES('5265','database_user','数据库用户名','0','0','0','0','en');
INSERT INTO met_language VALUES('5266','database_password','数据库密码','0','0','0','0','en');
INSERT INTO met_language VALUES('5267','read_protocol','请仔细阅读以下协议','0','0','0','0','en');
INSERT INTO met_language VALUES('5268','disagree','不同意','0','0','0','0','en');
INSERT INTO met_language VALUES('5269','agree','同意','0','0','0','0','en');
INSERT INTO met_language VALUES('5270','copyright_nofollow','前台版权链接nofollow属性','0','0','0','0','en');
INSERT INTO met_language VALUES('5271','copyright_nofollow_description','开启后前台底部版权链接会添加nofollow属性','0','0','0','0','en');
INSERT INTO met_language VALUES('5272','close_allchildcolumn_v6','隐藏所有子栏目','0','0','0','0','en');
INSERT INTO met_language VALUES('5273','emailhave','邮箱已被注册','0','0','0','0','en');
INSERT INTO met_language VALUES('5274','telhave','手机号已被注册','0','0','0','0','en');
INSERT INTO met_language VALUES('5275','noupdate','没有可用更新','0','0','0','0','en');
INSERT INTO met_language VALUES('5276','delete_all_saveimgbtn','删除全部保存图片按钮','0','0','0','0','en');

DROP TABLE IF EXISTS met_link;
CREATE TABLE `met_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `webname` varchar(255) NOT NULL DEFAULT '',
  `module` varchar(255) NOT NULL DEFAULT '',
  `weburl` varchar(255) NOT NULL DEFAULT '',
  `weblogo` varchar(255) NOT NULL DEFAULT '',
  `link_type` int(11) NOT NULL DEFAULT '0',
  `info` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `orderno` int(11) NOT NULL DEFAULT '0',
  `com_ok` int(11) NOT NULL DEFAULT '0',
  `show_ok` int(11) NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL,
  `lang` varchar(50) NOT NULL DEFAULT '',
  `ip` varchar(255) NOT NULL DEFAULT '',
  `nofollow` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO met_link VALUES('1','十合一建站',',10001,34,39,77,43,42,4,38,84,83,111,72,3,37,35,36,81,82,74,73,2,1,94,101,102,103,104,105,106,107,108,109,110,','https://www.mituo.cn/','','0','十合一建站','','1','0','1','2020-02-25 17:50:46','cn','','0');
INSERT INTO met_link VALUES('2','小程序模板',',10001,34,39,77,43,42,4,38,84,83,111,72,3,37,35,36,81,82,74,73,2,1,94,101,102,103,104,105,106,107,108,109,110,','https://www.mituo.cn/','','0','小程序模板','','0','0','1','2020-02-25 17:35:29','cn','','0');

DROP TABLE IF EXISTS met_menu;
CREATE TABLE `met_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `text_color` varchar(100) NOT NULL DEFAULT '',
  `but_color` varchar(100) NOT NULL DEFAULT '',
  `target` int(11) NOT NULL DEFAULT '0',
  `enabled` int(11) NOT NULL DEFAULT '1',
  `no_order` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO met_menu VALUES('1','网站首页','../','icon fa-home','#ffffff','#2eb6ff','0','1','0','cn');
INSERT INTO met_menu VALUES('2','设计方案','../product/','icon fa-superpowers','#ffffff','#2eb6ff','0','1','1','cn');
INSERT INTO met_menu VALUES('3','案例展示','../img/','icon fa-bandcamp','#ffffff','#2eb6ff','0','1','2','cn');
INSERT INTO met_menu VALUES('4','联系我们','../about1/','icon fa-address-book-o','#ffffff','#2eb6ff','0','1','3','cn');

DROP TABLE IF EXISTS met_message;
CREATE TABLE `met_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL,
  `readok` int(11) NOT NULL DEFAULT '0',
  `useinfo` text NOT NULL,
  `lang` varchar(50) NOT NULL DEFAULT '',
  `access` int(11) NOT NULL DEFAULT '0',
  `customerid` varchar(30) NOT NULL DEFAULT '0',
  `checkok` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO met_message VALUES('7','117.178.36.224','2020-02-22 16:44:47','1','免费使用在未经授权前，请务必保留底部版权字样及链接，后台版权及链接，否则我们将追究法律责任。 购买商业授权后可以使用官方开发的部分商业应用，如七牛云、商城模块等。','cn','0','','1');
INSERT INTO met_message VALUES('8','117.178.36.224','2020-02-22 16:46:35','1','请登录我们的官网选择你喜欢的模板，购买后你可以直接下载源代码或一键安装。','cn','0','','1');

DROP TABLE IF EXISTS met_mlist;
CREATE TABLE `met_mlist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL DEFAULT '0',
  `paraid` int(11) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `lang` varchar(50) NOT NULL DEFAULT '',
  `imgname` varchar(255) NOT NULL DEFAULT '',
  `module` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

INSERT INTO met_mlist VALUES('27','7','137','李四','cn','姓名','7');
INSERT INTO met_mlist VALUES('28','7','186','email@email.mt','cn','Email','7');
INSERT INTO met_mlist VALUES('29','7','138','111','cn','联系电话','7');
INSERT INTO met_mlist VALUES('30','7','139','','cn','联系地址','7');
INSERT INTO met_mlist VALUES('31','7','140','可以免费使用吗？免费版和收费版有什么区别？','cn','留言内容','7');
INSERT INTO met_mlist VALUES('32','7','0','','cn','','7');
INSERT INTO met_mlist VALUES('33','8','137','张三','cn','姓名','7');
INSERT INTO met_mlist VALUES('34','8','186','email@email.nt','cn','Email','7');
INSERT INTO met_mlist VALUES('35','8','138','111','cn','联系电话','7');
INSERT INTO met_mlist VALUES('36','8','139','','cn','联系地址','7');
INSERT INTO met_mlist VALUES('37','8','140','如何购买十合一建站产品？','cn','留言内容','7');
INSERT INTO met_mlist VALUES('38','8','0','','cn','','7');

DROP TABLE IF EXISTS met_news;
CREATE TABLE `met_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `ctitle` varchar(200) NOT NULL DEFAULT '',
  `keywords` varchar(200) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `class1` int(11) NOT NULL DEFAULT '0',
  `class2` int(11) NOT NULL DEFAULT '0',
  `class3` int(11) NOT NULL DEFAULT '0',
  `no_order` int(11) NOT NULL DEFAULT '0',
  `wap_ok` int(1) NOT NULL DEFAULT '0',
  `img_ok` int(1) NOT NULL DEFAULT '0',
  `imgurl` varchar(255) NOT NULL DEFAULT '',
  `imgurls` varchar(255) NOT NULL DEFAULT '',
  `com_ok` int(1) NOT NULL DEFAULT '0',
  `issue` varchar(100) NOT NULL DEFAULT '',
  `hits` int(11) NOT NULL DEFAULT '0',
  `updatetime` datetime NOT NULL,
  `addtime` datetime NOT NULL,
  `access` int(11) NOT NULL DEFAULT '0',
  `top_ok` int(1) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(50) NOT NULL DEFAULT '',
  `recycle` int(11) NOT NULL DEFAULT '0',
  `displaytype` int(11) NOT NULL DEFAULT '1',
  `tag` text NOT NULL,
  `links` varchar(200) NOT NULL DEFAULT '',
  `publisher` varchar(50) NOT NULL DEFAULT '',
  `text_size` int(11) NOT NULL DEFAULT '0',
  `text_color` varchar(100) NOT NULL DEFAULT '',
  `other_info` text NOT NULL,
  `custom_info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

INSERT INTO met_news VALUES('26','一个出色的数字展厅设计具备什么关键元素？','','','对企业的发展具有较为重要的作用，所以现在很多大型企业都开始创建属于自己的企业数字展厅。数字展厅跟传统的展厅还是有很大的差距的，传统的展厅通常都是直接将企业的产品展现在大众的眼前，但是数字展厅主要是依托于多媒体展项来呈现品牌形象','<p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">数字展厅对企业的发展具有较为重要的作用，所以现在很多大型企业都开始创建属于自己的企业数字展厅。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">数字展厅跟传统的展厅还是有很大的差距的，传统的展厅通常都是直接将企业的产品展现在大众的眼前，但是数字展厅主要是依托于多媒体展项来呈现品牌形象与品牌内容。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">企业数字展设计<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">优秀的数字展厅，是能够根据实际需求进行设计，而并非是盲目的将许多互动展项堆放进去。除此之外，还需要具备什么元素呢？<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">1.真实的场景</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">数字展厅之所以能够取代传统的展厅，就是因为它在发挥科技优势的同时不会湮没景象的真实感。因此要想获得一个完美的数字展厅，首先需要具备的元素就是富有真实感，因而数字展厅设计的时候，都是采用真实拍摄的视频来，通过光影以及音效来将其还原，从而达到活临活现的效果。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">2.深切代入感<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">数字展厅的代入感，指的是能够让观众有一种身临其境并亲身参与其中的感觉，因此在做数字展厅的时候就要精心策划设计，通过各种虚拟场景和真实情感的配合，让观众产生共鸣，从而达到这种深深代入感的目的。</span></p><p style=\"text-align: center\"><img src=\"../upload/202003/1584629876392667.jpg\" data-width=\"900\" data-height=\"600\" title=\"\"/></p>','3','36','0','0','0','0','../upload/202003/1584686808.jpg','','0','admin','0','2020-03-19 22:55:41','2020-03-19 22:55:41','0','0','','cn','0','1','','','admin','0','','','');
INSERT INTO met_news VALUES('27','计算机模拟空间造型和运动动画形式','','','数字展厅跟传统的展厅还是有很大的差距的，传统的展厅通常都是直接将企业的产品展现在大众的眼前，但是数字展厅主要是依托于多媒体展项来呈现品牌形象与品牌内容。企业数字展设计优秀的数字展厅，是能够根据实际需求进行设计','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">数字展厅跟传统的展厅还是有很大的差距的，传统的展厅通常都是直接将企业的产品展现在大众的眼前，但是数字展厅主要是依托于多媒体展项来呈现品牌形象与品牌内容。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">企业数字展设计<br/></span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">优秀的数字展厅，是能够根据实际需求进行设计，而并非是盲目的将许多互动展项堆放进去。除此之外，还需要具备什么元素呢？<br/></span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">1.真实的场景</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">数字展厅之所以能够取代传统的展厅，就是因为它在发挥科技优势的同时不会湮没景象的真实感。因此要想获得一个完美的数字展厅，首先需要具备的元素就是富有真实感，因而数字展厅设计的时候，都是采用真实拍摄的视频来，通过光影以及音效来将其还原，从而达到活临活现的效果。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">2.深切代入感<br/></span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">数字展厅的代入感，指的是能够让观众有一种身临其境并亲身参与其中的感觉，因此在做数字展厅的时候就要精心策划设计，通过各种虚拟场景和真实情感的配合，让观众产生共鸣，从而达到这种深深代入感的目的。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\"><span style=\"font-size: 14px; text-indent: 32px;\">数字展厅对企业的发展具有较为重要的作用，所以现在很多大型企业都开始创建属于自己的企业数字展厅。</span></span></p><p style=\"white-space: normal; text-align: center;\"><img src=\"../upload/202003/1584629876392667.jpg\" data-width=\"900\" data-height=\"600\" title=\"\"/></p>','3','36','0','0','0','0','../upload/202003/1584686481.jpg','','0','admin','0','2020-03-19 22:58:18','2020-03-19 22:58:18','0','0','','cn','0','1','','','admin','0','','','');
INSERT INTO met_news VALUES('28','根据实际需求进行设计发挥科技优势','','','企业数字展设计优秀的数字展厅，是能够根据实际需求进行设计，而并非是盲目的将许多互动展项堆放进去。除此之外，还需要具备什么元素呢？1.真实的场景数字展厅之所以能够取代传统的展厅，就是因为它在发挥科技优势的同时不会湮没景象的真实感。','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">企业数字展设计</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">优秀的数字展厅，是能够根据实际需求进行设计，而并非是盲目的将许多互动展项堆放进去。除此之外，还需要具备什么元素呢？<br/></span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">1.真实的场景</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">数字展厅之所以能够取代传统的展厅，就是因为它在发挥科技优势的同时不会湮没景象的真实感。因此要想获得一个完美的数字展厅，首先需要具备的元素就是富有真实感，因而数字展厅设计的时候，都是采用真实拍摄的视频来，通过光影以及音效来将其还原，从而达到活临活现的效果。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">2.深切代入感<br/></span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">数字展厅的代入感，指的是能够让观众有一种身临其境并亲身参与其中的感觉，因此在做数字展厅的时候就要精心策划设计，通过各种虚拟场景和真实情感的配合，让观众产生共鸣，从而达到这种深深代入感的目的。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">数字展厅对企业的发展具有较为重要的作用，所以现在很多大型企业都开始创建属于自己的企业数字展厅。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\"><span style=\"font-size: 14px; text-indent: 28px;\">数字展厅跟传统的展厅还是有很大的差距的，传统的展厅通常都是直接将企业的产品展现在大众的眼前，但是数字展厅主要是依托于多媒体展项来呈现品牌形象与品牌内容。</span></span></p><p style=\"white-space: normal; text-align: center;\"><img src=\"../upload/202003/1584629876392667.jpg\" data-width=\"900\" data-height=\"600\" title=\"\"/></p>','3','36','0','0','0','0','../upload/202003/1584686686.jpg','','0','admin','0','2020-03-19 22:58:54','2020-03-19 22:58:54','0','0','','cn','0','1','','','admin','0','','','');
INSERT INTO met_news VALUES('29','虚拟场景和真实情感的配合','','','1.真实的场景数字展厅之所以能够取代传统的展厅，就是因为它在发挥科技优势的同时不会湮没景象的真实感。因此要想获得一个完美的数字展厅，首先需要具备的元素就是富有真实感，因而数字展厅设计的时候，都是采用真实拍摄的视频来','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">1.真实的场景</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">数字展厅之所以能够取代传统的展厅，就是因为它在发挥科技优势的同时不会湮没景象的真实感。因此要想获得一个完美的数字展厅，首先需要具备的元素就是富有真实感，因而数字展厅设计的时候，都是采用真实拍摄的视频来，通过光影以及音效来将其还原，从而达到活临活现的效果。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">2.深切代入感<br/></span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">数字展厅的代入感，指的是能够让观众有一种身临其境并亲身参与其中的感觉，因此在做数字展厅的时候就要精心策划设计，通过各种虚拟场景和真实情感的配合，让观众产生共鸣，从而达到这种深深代入感的目的。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">数字展厅对企业的发展具有较为重要的作用，所以现在很多大型企业都开始创建属于自己的企业数字展厅。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\"><span style=\"text-indent: 28px;\">数字展厅跟传统的展厅还是有很大的差距的，传统的展厅通常都是直接将企业的产品展现在大众的眼前，但是数字展厅主要是依托于多媒体展项来呈现品牌形象与品牌内容。</span></span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\"><span style=\"text-indent: 28px;\"></span></span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">企业数字展设计</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">优秀的数字展厅，是能够根据实际需求进行设计，而并非是盲目的将许多互动展项堆放进去。除此之外，还需要具备什么元素呢？</span></p><p style=\"white-space: normal; text-align: center;\"><img src=\"../upload/202003/1584629876392667.jpg\" data-width=\"900\" data-height=\"600\" title=\"\"/></p>','3','36','0','0','0','0','../upload/202003/1584686744.jpg','','0','admin','0','2020-03-19 22:59:33','2020-03-19 22:59:33','0','0','','cn','0','1','','','admin','0','','','');
INSERT INTO met_news VALUES('30','实现轻挥手自由翻阅的科技“小魔法”','','','在这个瞬息万变的时代，纸质的书本地位下降，手机、平板电脑等逐渐成为主流的阅读载体。虚拟翻书是数字展厅产品的其中一种，虚拟翻书又称做电子翻书，通过虚拟投影技术结合传统翻书体验，结合创意设计和互动科技在视觉上和体感','<p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">在这个瞬息万变的时代，纸质的书本地位下降，手机、平板电脑等逐渐成为主流的阅读载体。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">虚拟翻书是数字展厅产品的其中一种，虚拟翻书又称做电子翻书，通过虚拟投影技术结合传统翻书体验，结合创意设计和互动科技在视觉上和体感上带给人们一种全新的互动交互体验，在支撑台上放上一本书页翻开的虚拟图书，当我们将手放在书页上空做一个翻书动作，眼前的虚拟图书会跟实际中翻书效果一样，还伴随着清脆的翻书音效，生动立体，栩栩如生。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">&nbsp;数字展厅产品 &nbsp;迪拓科技翻书一体机是基于投影识别技术开发的产品，采用一体化机身，安装维护简单，更换内容方便。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">正是因为它的便捷性和创意有趣性，多被应用在服务行业的数字展厅中。</span></p><p style=\"text-align: center\"><img src=\"../upload/202003/1584630207150617.jpg\" data-width=\"900\" data-height=\"600\" title=\"\"/></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">数字展厅一体化</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">（1）采用红外线体感交互程序，支持图书翻页，如前翻、后翻、跨页翻阅等交互手势；</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">（2）目录选页功能。不单可以通过人的挥手产生翻页效果，同时还能通过页面上的书签。这一点可以避免在一个很多页的书本上操作时，翻页过多而使人失去兴趣问题。参观者可以通过书签自由跳转到所要了解的目录；</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">（3）分模块化设计，交互程序与书内容独立设计。如页面\r\n UI \r\n设计，可根据用户需求进行风格设计；翻书多媒体内容设计，如翻书里面的资料，如文字、图片、声音、图像、视频、动画等多媒体内容，可进行整合设计；虚拟翻书作为受欢迎的数字展厅产品，该展项无论是台体还是播放内容都可以根据各场馆的实际情况进行创意设计。可以作为知识背景介绍、图片文字展示或者是公共服务指引。适合各种博物馆、展览馆、临时展览、图书馆以及服务行业的公共场合。</span></p>','3','35','0','0','0','0','../upload/202003/1584686949.jpg','','0','admin','1','2020-03-19 23:07:08','2020-03-19 23:07:08','0','0','','cn','0','1','','','admin','0','','','');
INSERT INTO met_news VALUES('31','数字展厅成为人们关注焦点','','','数字展厅一体化 （1）采用红外线体感交互程序，支持图书翻页，如前翻、后翻、跨页翻阅等交互手势； （2）目录选页功能。不单可以通过人的挥手产生翻页效果，同时还能通过页面上的书签。这一点可以避免在一个很多页的书本上操作时','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">在这个瞬息万变的时代，纸质的书本地位下降，手机、平板电脑等逐渐成为主流的阅读载体。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">虚拟翻书是数字展厅产品的其中一种，虚拟翻书又称做电子翻书，通过虚拟投影技术结合传统翻书体验，结合创意设计和互动科技在视觉上和体感上带给人们一种全新的互动交互体验，在支撑台上放上一本书页翻开的虚拟图书，当我们将手放在书页上空做一个翻书动作，眼前的虚拟图书会跟实际中翻书效果一样，还伴随着清脆的翻书音效，生动立体，栩栩如生。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">&nbsp;数字展厅产品 &nbsp;迪拓科技翻书一体机是基于投影识别技术开发的产品，采用一体化机身，安装维护简单，更换内容方便。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">正是因为它的便捷性和创意有趣性，多被应用在服务行业的数字展厅中。</span></p><p style=\"white-space: normal; text-align: center;\"><img src=\"../upload/202003/1584630207150617.jpg\" data-width=\"900\" data-height=\"600\" title=\"\"/></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">数字展厅一体化</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">（1）采用红外线体感交互程序，支持图书翻页，如前翻、后翻、跨页翻阅等交互手势；</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">（2）目录选页功能。不单可以通过人的挥手产生翻页效果，同时还能通过页面上的书签。这一点可以避免在一个很多页的书本上操作时，翻页过多而使人失去兴趣问题。参观者可以通过书签自由跳转到所要了解的目录；</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">（3）分模块化设计，交互程序与书内容独立设计。如页面 UI 设计，可根据用户需求进行风格设计；翻书多媒体内容设计，如翻书里面的资料，如文字、图片、声音、图像、视频、动画等多媒体内容，可进行整合设计；虚拟翻书作为受欢迎的数字展厅产品，该展项无论是台体还是播放内容都可以根据各场馆的实际情况进行创意设计。可以作为知识背景介绍、图片文字展示或者是公共服务指引。适合各种博物馆、展览馆、临时展览、图书馆以及服务行业的公共场合。</span></p>','3','35','0','0','0','0','../upload/202003/1584686929.jpg','','0','admin','2','2020-03-19 23:06:49','2020-03-19 23:06:49','0','0','','cn','0','1','','','admin','0','','','');
INSERT INTO met_news VALUES('32','三维动画计算机模拟空间造型运动','','','数字展厅产品 迪拓科技翻书一体机是基于投影识别技术开发的产品，采用一体化机身，安装维护简单，更换内容方便。正是因为它的便捷性和创意有趣性，多被应用在服务行业的数字展厅中。在这个瞬息万变的时代，纸质的书本地位下降','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">数字展厅产品 &nbsp;迪拓科技翻书一体机是基于投影识别技术开发的产品，采用一体化机身，安装维护简单，更换内容方便。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">正是因为它的便捷性和创意有趣性，多被应用在服务行业的数字展厅中。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\"></span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">在这个瞬息万变的时代，纸质的书本地位下降，手机、平板电脑等逐渐成为主流的阅读载体。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">虚拟翻书是数字展厅产品的其中一种，虚拟翻书又称做电子翻书，通过虚拟投影技术结合传统翻书体验，结合创意设计和互动科技在视觉上和体感上带给人们一种全新的互动交互体验，在支撑台上放上一本书页翻开的虚拟图书，当我们将手放在书页上空做一个翻书动作，眼前的虚拟图书会跟实际中翻书效果一样，还伴随着清脆的翻书音效，生动立体，栩栩如生。</span></p><p style=\"white-space: normal; text-align: center;\"><img src=\"../upload/202003/1584630207150617.jpg\" data-width=\"900\" data-height=\"600\" title=\"\"/></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">数字展厅一体化</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">（1）采用红外线体感交互程序，支持图书翻页，如前翻、后翻、跨页翻阅等交互手势；</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">（2）目录选页功能。不单可以通过人的挥手产生翻页效果，同时还能通过页面上的书签。这一点可以避免在一个很多页的书本上操作时，翻页过多而使人失去兴趣问题。参观者可以通过书签自由跳转到所要了解的目录；</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">（3）分模块化设计，交互程序与书内容独立设计。如页面 UI 设计，可根据用户需求进行风格设计；翻书多媒体内容设计，如翻书里面的资料，如文字、图片、声音、图像、视频、动画等多媒体内容，可进行整合设计；虚拟翻书作为受欢迎的数字展厅产品，该展项无论是台体还是播放内容都可以根据各场馆的实际情况进行创意设计。可以作为知识背景介绍、图片文字展示或者是公共服务指引。适合各种博物馆、展览馆、临时展览、图书馆以及服务行业的公共场合。</span></p>','3','35','0','0','0','0','../upload/202003/1584686600.jpg','','0','admin','1','2020-03-19 23:04:29','2020-03-19 23:04:29','0','0','','cn','0','1','','','admin','0','','','');
INSERT INTO met_news VALUES('33','分模块化设计，内容独立设计','','','分模块化设计，交互程序与书内容独立设计。如页面 UI 设计，可根据用户需求进行风格设计；翻书多媒体内容设计，如翻书里面的资料，如文字、图片、声音、图像、视频、动画等多媒体内容，可进行整合设计；虚拟翻书作为受欢迎的数字展厅产品','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">在这个瞬息万变的时代，纸质的书本地位下降，手机、平板电脑等逐渐成为主流的阅读载体。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">虚拟翻书是数字展厅产品的其中一种，虚拟翻书又称做电子翻书，通过虚拟投影技术结合传统翻书体验，结合创意设计和互动科技在视觉上和体感上带给人们一种全新的互动交互体验，在支撑台上放上一本书页翻开的虚拟图书，当我们将手放在书页上空做一个翻书动作，眼前的虚拟图书会跟实际中翻书效果一样，还伴随着清脆的翻书音效，生动立体，栩栩如生。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">&nbsp;数字展厅产品&nbsp; 科技翻书一体机是基于投影识别技术开发的产品，采用一体化机身，安装维护简单，更换内容方便。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">正是因为它的便捷性和创意有趣性，多被应用在服务行业的数字展厅中。</span></p><p style=\"white-space: normal; text-align: center;\"><img src=\"../upload/202003/1584630207150617.jpg\" data-width=\"900\" data-height=\"600\" title=\"\"/></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">数字展厅一体化</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">（1）采用红外线体感交互程序，支持图书翻页，如前翻、后翻、跨页翻阅等交互手势；</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">（2）目录选页功能。不单可以通过人的挥手产生翻页效果，同时还能通过页面上的书签。这一点可以避免在一个很多页的书本上操作时，翻页过多而使人失去兴趣问题。参观者可以通过书签自由跳转到所要了解的目录；</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">（3）分模块化设计，交互程序与书内容独立设计。如页面 UI 设计，可根据用户需求进行风格设计；翻书多媒体内容设计，如翻书里面的资料，如文字、图片、声音、图像、视频、动画等多媒体内容，可进行整合设计；虚拟翻书作为受欢迎的数字展厅产品，该展项无论是台体还是播放内容都可以根据各场馆的实际情况进行创意设计。可以作为知识背景介绍、图片文字展示或者是公共服务指引。适合各种博物馆、展览馆、临时展览、图书馆以及服务行业的公共场合。</span></p>','3','35','0','0','0','0','../upload/202003/1584686523.jpg','','0','admin','1','2020-03-19 23:07:14','2020-03-19 23:07:14','0','0','','cn','0','1','','','admin','0','','','');

DROP TABLE IF EXISTS met_online;
CREATE TABLE `met_online` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `no_order` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO met_online VALUES('1','0','','4000084433','icon fa-qq','0','cn');
INSERT INTO met_online VALUES('2','0','','4000084433','icon fa-qq','0','cn');
INSERT INTO met_online VALUES('3','0','','4000084433','icon fa-phone-square','3','cn');
INSERT INTO met_online VALUES('4','0','','../upload/202002/1582625379.jpg','icon fa-wechat','4','cn');

DROP TABLE IF EXISTS met_otherinfo;
CREATE TABLE `met_otherinfo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `info1` varchar(255) NOT NULL DEFAULT '',
  `info2` varchar(255) NOT NULL DEFAULT '',
  `info3` varchar(255) NOT NULL DEFAULT '',
  `info4` varchar(255) NOT NULL DEFAULT '',
  `info5` varchar(255) NOT NULL DEFAULT '',
  `info6` varchar(255) NOT NULL DEFAULT '',
  `info7` varchar(255) NOT NULL DEFAULT '',
  `info8` text NOT NULL,
  `info9` text NOT NULL,
  `info10` text NOT NULL,
  `imgurl1` varchar(255) NOT NULL DEFAULT '',
  `imgurl2` varchar(255) NOT NULL DEFAULT '',
  `rightmd5` varchar(255) NOT NULL DEFAULT '',
  `righttext` varchar(255) NOT NULL DEFAULT '',
  `authcode` text NOT NULL,
  `authpass` varchar(255) NOT NULL DEFAULT '',
  `authtext` varchar(255) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  `lang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO met_otherinfo VALUES('1','NOUSER','2147483647','','','','','','','','','','','','','','','','','metinfo');

DROP TABLE IF EXISTS met_para;
CREATE TABLE `met_para` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  `module` int(10) NOT NULL DEFAULT '0',
  `order` int(10) NOT NULL DEFAULT '0',
  `lang` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO met_para VALUES('1','141','索取资料','8','1','cn');
INSERT INTO met_para VALUES('2','141','产品购买','8','2','cn');
INSERT INTO met_para VALUES('3','141','商务合作','8','3','cn');
INSERT INTO met_para VALUES('4','141','其他反馈','8','4','cn');
INSERT INTO met_para VALUES('5','164','先生','6','1','cn');
INSERT INTO met_para VALUES('6','164','女士','6','2','cn');
INSERT INTO met_para VALUES('7','180','搜索引擎','8','1','cn');
INSERT INTO met_para VALUES('8','180','网站链接','8','2','cn');
INSERT INTO met_para VALUES('9','180','朋友介绍','8','3','cn');
INSERT INTO met_para VALUES('10','180','电视广告','8','4','cn');
INSERT INTO met_para VALUES('11','180','其他方式','8','5','cn');

DROP TABLE IF EXISTS met_parameter;
CREATE TABLE `met_parameter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `options` text NOT NULL,
  `description` text NOT NULL,
  `no_order` int(2) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `wr_ok` int(2) NOT NULL DEFAULT '0',
  `class1` int(11) NOT NULL DEFAULT '0',
  `class2` int(11) NOT NULL DEFAULT '0',
  `class3` int(11) NOT NULL DEFAULT '0',
  `module` int(2) NOT NULL DEFAULT '0',
  `lang` varchar(50) NOT NULL DEFAULT '',
  `wr_oks` int(2) NOT NULL DEFAULT '0',
  `related` varchar(50) NOT NULL DEFAULT '',
  `edit_ok` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

INSERT INTO met_parameter VALUES('1','公司名称','','','9','1','0','0','0','0','0','10','cn','1','','1');
INSERT INTO met_parameter VALUES('2','公司传真','','','10','1','0','0','0','0','0','10','cn','1','','1');
INSERT INTO met_parameter VALUES('3','公司联系地址','','','11','1','0','0','0','0','0','10','cn','1','','1');
INSERT INTO met_parameter VALUES('4','公司邮政编码','','','12','1','0','0','0','0','0','10','cn','1','','1');
INSERT INTO met_parameter VALUES('5','公司网址','','','13','1','0','0','0','0','0','10','cn','1','','1');
INSERT INTO met_parameter VALUES('137','姓名','','','0','1','0','1','0','0','0','7','cn','0','','1');
INSERT INTO met_parameter VALUES('138','联系电话','','','2','8','0','1','0','0','0','7','cn','0','','1');
INSERT INTO met_parameter VALUES('139','联系地址','','','3','1','0','0','0','0','0','7','cn','0','','1');
INSERT INTO met_parameter VALUES('140','留言内容','','','4','3','0','1','0','0','0','7','cn','0','','1');
INSERT INTO met_parameter VALUES('141','反馈主题','','','0','2','0','1','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('142','姓名','','','1','1','0','0','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('143','职务','','','2','1','0','0','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('144','E-mail','','','3','9','0','1','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('163','姓名','','','1','1','0','1','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('164','性别','','','2','6','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('165','出生年月','','','3','1','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('166','籍贯','','','4','1','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('167','联系电话','','','5','8','0','1','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('168','E-mail','','','6','9','0','1','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('169','学历','','','7','1','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('170','专业','','','8','1','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('171','学校','','','9','1','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('172','通讯地址','','','10','1','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('173','工作经历','','','11','3','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('174','业余爱好','','','12','3','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('175','作品','','','13','5','0','0','0','0','0','6','cn','0','','1');
INSERT INTO met_parameter VALUES('176','联系电话','','','4','8','0','0','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('177','单位名称','','','5','1','0','0','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('178','详细地址','','','6','1','0','0','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('179','信息描述','','','7','3','0','0','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('180','您是怎么找到我们的','','','8','4','0','0','0','0','0','8','cn','0','','1');
INSERT INTO met_parameter VALUES('186','Email','','','1','9','0','1','0','0','0','7','cn','0','','1');
INSERT INTO met_parameter VALUES('187','文件版本','','','0','1','0','0','0','0','0','4','cn','0','','1');

DROP TABLE IF EXISTS met_plist;
CREATE TABLE `met_plist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL DEFAULT '0',
  `paraid` int(11) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `lang` varchar(50) NOT NULL DEFAULT '',
  `imgname` varchar(255) NOT NULL DEFAULT '',
  `module` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_product;
CREATE TABLE `met_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `ctitle` varchar(200) NOT NULL DEFAULT '',
  `keywords` varchar(200) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `class1` int(11) NOT NULL DEFAULT '0',
  `class2` int(11) NOT NULL DEFAULT '0',
  `class3` int(11) NOT NULL DEFAULT '0',
  `classother` text NOT NULL,
  `no_order` int(11) NOT NULL DEFAULT '0',
  `wap_ok` int(1) NOT NULL DEFAULT '0',
  `new_ok` int(1) NOT NULL DEFAULT '0',
  `imgurl` varchar(255) NOT NULL DEFAULT '',
  `imgurls` varchar(255) NOT NULL DEFAULT '',
  `displayimg` text NOT NULL,
  `com_ok` int(1) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `updatetime` datetime NOT NULL,
  `addtime` datetime NOT NULL,
  `issue` varchar(100) NOT NULL DEFAULT '',
  `access` int(11) NOT NULL DEFAULT '0',
  `top_ok` int(1) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(50) NOT NULL DEFAULT '',
  `content1` mediumtext NOT NULL,
  `content2` mediumtext NOT NULL,
  `content3` mediumtext NOT NULL,
  `content4` mediumtext NOT NULL,
  `contentinfo` varchar(255) NOT NULL DEFAULT '',
  `contentinfo1` varchar(255) NOT NULL DEFAULT '',
  `contentinfo2` varchar(255) NOT NULL DEFAULT '',
  `contentinfo3` varchar(255) NOT NULL DEFAULT '',
  `contentinfo4` varchar(255) NOT NULL DEFAULT '',
  `recycle` int(11) NOT NULL DEFAULT '0',
  `displaytype` int(11) NOT NULL DEFAULT '1',
  `tag` text NOT NULL,
  `links` varchar(200) NOT NULL DEFAULT '',
  `imgsize` varchar(200) NOT NULL DEFAULT '',
  `text_size` int(11) NOT NULL DEFAULT '0',
  `text_color` varchar(100) NOT NULL DEFAULT '',
  `other_info` text NOT NULL,
  `custom_info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

INSERT INTO met_product VALUES('33','企业数字展厅','','','企业展厅，浓缩着一个企业的历史和发展，文化和精神，辉煌与成就，调性与风格，将企业本身一独特、完美的角度呈现给观者。作为企业的窗口，企业展厅自然是经过精心设计。格调与内容紧紧相扣不可分离，作为展示形式这一载体出现。新媒体技术支持下的各种互动设备，以主动姿态迎合企业展厅的整体格调。以主题为线索和灵魂，互动设备为构成元素，形成独具一格的企业展厅。企业展馆，是一个企业形象最直接的展示平台。一个企业的历史和','<p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">企业展厅，浓缩着一个企业的历史和发展，文化和精神，辉煌与成就，调性与风格，将企业本身一独特、完美的角度呈现给观者。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>作为企业的窗口，企业展厅自然是经过精心设计。格调与内容紧紧相扣不可分离，作为展示形式这一载体出现。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>新媒体技术支持下的各种互动设备，以主动姿态迎合企业展厅的整体格调。以主题为线索和灵魂，互动设备为构成元素，形成独具一格的企业展厅。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>企业展馆，是一个企业形象最直接的展示平台。一个企业的历史和发展，文化和精神，辉煌与成就，都通过企业展馆对外展示。合理、恰当地运用虚拟现实和新型多媒体技术，可以事半功倍地向观众传达信息，同时更是提高企业形象与格调的最佳途径。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>凭借在业内浸润多年的宝贵经验，迪拓为您推荐以下几种展示手段，您可以通过自由的组合，构建一个精彩纷呈的城市规划展馆。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/><br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">大型弧幕/环幕/虚拟漫游</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">在企业展馆的解决方案中，大型弧幕是挑大梁者，在很大程度上代表着一个企业展馆的水平和规模，也就间接地代表了一所企业的水平和规模。大型弧幕一般用于播放高清影片，叙述企业的历史、成就、文化以及企业精神等等，气势恢宏，对展馆格调、档次的提升有很大帮助。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>在特殊的展厅结构——如圆形展厅中，我们可以将弧幕扩展为360°环幕。与大型环幕相比，360°环幕的视听效果更为霸道，360°无死角影片播放、360°环绕声音效，给观众极大的视觉震撼。另外，360°环绕式的视听效果有助于播放环境展示影片，在沉浸式的环境展示下，观众将感受到不同凡响的身心体验。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>大型弧幕、环幕可以与多媒体投影沙盘、虚拟漫游组合，迸发出更精彩的火花。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>虚拟漫游提供了一种自由度极高的模拟漫游方式。观众站在一个大型弧幕前，以简易舒适的操作方式（摇杆、轨迹球、多点触摸或体感）控制画面中视角的移动与变化，使观众可以在虚拟的3D世界中随意漫游。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">这是一种非常直观的展示手段，它可以还原一个企业的工业园区、建筑群，甚至描绘出企业未来的扩展蓝图，并使其更容易被观众所理解和接受，虚拟3D世界漫游让观众把握了主导权，超越传统的填鸭展示，以一种零死角的观察角度将企业的规模和环境展现在观众面前。</span></p><p><br/></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">球形投影/多点触控墙</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">相比较于多媒体投影沙盘和虚拟漫游系统，球形投影更多的是起到一个画龙点睛的作用。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>球形投影顾名思义，是一个球体，我们通过无缝融合纠正技术将画面扭曲剔除，使视频图片等内容得以在球体的表面自然呈现，以一种360°的角度向全方位的观众展示一个大型企业展馆的中心内容。多点触控墙正如当下流行的多点触控手机一般，提供了一个可以同时识别多个手指的自然操控界面。事实上，触控墙更拥有大尺寸屏幕、高分辨率、理论上无限个识别点等手机难以比拟的优势。<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">在大型企业展馆中，多点触控墙提供了一个让观众主动获取信息、自主提炼信息的平台。文字、图片及视频事先录入到触控墙，观众通过简单的点击和拖拽等手势就可以随意选择浏览。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>多点触控墙可以是嵌在墙壁中的屏幕，也可以以全透明的科技感造型出现，外形设计灵活多变，与展馆的装饰设计配合度高。</span></p>','4','0','0','','4','0','0','../upload/202003/1584686026.jpg','','企业数字展厅*../upload/202003/1584685997.jpg*640x800','0','3','2020-03-20 14:25:08','2020-03-20 14:25:08','admin','0','0','','cn','<p style=\"text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 32px;\">在大型企业展馆中，多点触控墙提供了一个让观众主动获取信息、自主提炼信息的平台。文字、图片及视频事先录入到触控墙，观众通过简单的点击和拖拽等手势就可以随意选择浏览。</span><br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\" style=\"font-size: 14px; text-indent: 32px; white-space: normal;\"/><span style=\"font-size: 14px; text-indent: 32px;\">多点触控墙可以是嵌在墙壁中的屏幕，也可以以全透明的科技感造型出现，外形设计灵活多变，与展馆的装饰设计配合度高。</span></p>','<p style=\"text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 32px;\">在大型企业展馆中，多点触控墙提供了一个让观众主动获取信息、自主提炼信息的平台。文字、图片及视频事先录入到触控墙，观众通过简单的点击和拖拽等手势就可以随意选择浏览。</span><br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\" style=\"font-size: 14px; text-indent: 32px; white-space: normal;\"/><span style=\"font-size: 14px; text-indent: 32px;\">多点触控墙可以是嵌在墙壁中的屏幕，也可以以全透明的科技感造型出现，外形设计灵活多变，与展馆的装饰设计配合度高。</span></p>','','','','','','','','0','1','','','640x800','0','','','');
INSERT INTO met_product VALUES('34','军事数字展厅','','','在和平年代，军事展厅的存在无疑起到至关重要的作用。或警醒世人，或彰显军力，或体现新时代军队的精神风貌，或铭记一支部队在历史上刻下的累累战功。新时代的军事展厅，更多注重于观者的体验性，注重于他们对军事领域的感知程度。因此，传统的展示手法理应得到新媒体技术的全面升级。注入虚拟军备展示、多媒体战争演示沙盘等等，一方面解决了一些展示上的难题，也升华了展示效果和教育效果。凭借在业内浸润多年的宝贵经验，迪拓推','<section><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">在和平年代，军事展厅的存在无疑起到至关重要的作用。或警醒世人，或彰显军力，或体现新时代军队的精神风貌，或铭记一支部队在历史上刻下的累累战功。<br microsoft=\"\" font-size:=\"\" white-space:=\"\"/>新时代的军事展厅，更多注重于观者的体验性，注重于他们对军事领域的感知程度。因此，传统的展示手法理应得到新媒体技术的全面升级。注入虚拟军备展示、多媒体战争演示沙盘等等，一方面解决了一些展示上的难题，也升华了展示效果和教育效果。<br microsoft=\"\" font-size:=\"\" white-space:=\"\"/>凭借在业内浸润多年的宝贵经验，迪拓推荐以下几种展示手段，可以通过自由的组合，构建一个信息化科技化军队。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">在如今信息化战争年代，多媒体设备的运用在军事上起到了至关重要的作用，它可以将语音、图片、视频等信息清晰高效地展现出来，以便部队人员快速、准确的做出战场决策和行动。</span><span style=\"font-size: 14px;\"><br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">大型弧幕适合运用于作战室、指挥室等作战指挥场所，本公司通过边缘融合技术，可以使用多台投影机，构成多通道投影通过高清视频召开视频会议，并且可以制作一套作战指挥系统，让各指战员全面掌握战场信息。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">沙盘实在军队指挥作战中必不可少的设备之一。传统的纸质地图显示的各类信息较为抽象，指挥员稍有疏忽便会出现错判、漏判等情况，进而影响作战效果。本公司推荐在各大指挥场所设置作战沙盘，山川河流、道路桥梁在沙盘上模拟显示，使部队人员对当地地形更加了解，让各指战员的作战计划能够更加生动、清晰的展现。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">触控屏主要分多点触控墙和多点触控桌。正如当下流行的多点触控手机一般，提供了一个可以同时识别多个触控点的自然操控界面。事实上，触控墙更拥有大尺寸屏幕、高分辨率、理论上无限个识别点等手机难以比拟的优势。可以单独作为展示信息的载体，也可以配合大型弧幕使用。推荐在浏览作战地图和部队信息等使用。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">增强现实<br microsoft=\"\" font-size:=\"\" white-space:=\"\"/>增强现实也称之为AR技术，是将虚拟的信息应用到真实世界，真实的环境和虚拟的物体实时地叠加到同一个画面或空间同时存在，从而在设备屏幕上生成对应的虚拟3D模型，从而实现虚实结合。公司推荐作为虚拟军备展示，即免除了军备移动搬运上的不便，又全方位地生动展现了军备设施。</span></p></section>','4','0','0','','3','0','0','../upload/202003/1584686062.jpg','','军事数字展厅*../upload/202003/1584685679.jpg*','0','0','2020-03-20 14:25:15','2020-03-20 14:25:15','admin','0','0','','cn','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">触控屏主要分多点触控墙和多点触控桌。正如当下流行的多点触控手机一般，提供了一个可以同时识别多个触控点的自然操控界面。事实上，触控墙更拥有大尺寸屏幕、高分辨率、理论上无限个识别点等手机难以比拟的优势。可以单独作为展示信息的载体，也可以配合大型弧幕使用。推荐在浏览作战地图和部队信息等使用。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">增强现实<br microsoft=\"\" font-size:=\"\" white-space:=\"\"/>增强现实也称之为AR技术，是将虚拟的信息应用到真实世界，真实的环境和虚拟的物体实时地叠加到同一个画面或空间同时存在，从而在设备屏幕上生成对应的虚拟3D模型，从而实现虚实结合。公司推荐作为虚拟军备展示，即免除了军备移动搬运上的不便，又全方位地生动展现了军备设施。</span></p>','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">触控屏主要分多点触控墙和多点触控桌。正如当下流行的多点触控手机一般，提供了一个可以同时识别多个触控点的自然操控界面。事实上，触控墙更拥有大尺寸屏幕、高分辨率、理论上无限个识别点等手机难以比拟的优势。可以单独作为展示信息的载体，也可以配合大型弧幕使用。推荐在浏览作战地图和部队信息等使用。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">增强现实<br microsoft=\"\" font-size:=\"\" white-space:=\"\"/>增强现实也称之为AR技术，是将虚拟的信息应用到真实世界，真实的环境和虚拟的物体实时地叠加到同一个画面或空间同时存在，从而在设备屏幕上生成对应的虚拟3D模型，从而实现虚实结合。公司推荐作为虚拟军备展示，即免除了军备移动搬运上的不便，又全方位地生动展现了军备设施。</span></p>','','','','','','','','0','1','','','','0','','','');
INSERT INTO met_product VALUES('35','城市规划体验馆','','','随着城市化进程加快，城市规划越来越受到政府管理者、建设者、投资者、市民等社会各界的重视。而城市规划馆，就是为了诠释和展示城市规划成果的产物。城市规划馆能体现一个城市文化的独特性和规划的专业性，是向市民宣传规划内容的最佳平台。同时，一个规划馆的建设还有利于提升城市品位，是向外界展示的一个窗口，对一个城市的形象树立、招商引资的作用是难以替代的。在丰富内涵的基础上，辅以多媒体展览展示手段，如弧幕、环幕、','<p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">随着城市化进程加快，城市规划越来越受到政府管理者、建设者、投资者、市民等社会各界的重视。而城市规划馆，就是为了诠释和展示城市规划成果的产物。城市规划馆能体现一个城市文化的独特性和规划的专业性，是向市民宣传规划内容的最佳平台。同时，一个规划馆的建设还有利于提升城市品位，是向外界展示的一个窗口，对一个城市的形象树立、招商引资的作用是难以替代的。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>在丰富内涵的基础上，辅以多媒体展览展示手段，如弧幕、环幕、多媒体投影沙盘、城市虚拟漫游等，将一个庞大复杂的城市规划方案立体化、生动化，在带给观众视听震撼的同时，以最直观的方式将城市规划展现得淋漓尽致。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>凭借在业内浸润多年的宝贵经验，迪拓为您推荐以下几种展示手段，您可以通过自由的组合，构建一个精彩纷呈的城市规划展馆。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/></span></p><p><br/></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">大型弧幕/环幕</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">在城市规划馆的解决方案中，大型弧幕是挑大梁者，在很大程度上代表着一个城市规划馆的水平和规模。大型弧幕一般用于播放高清影片，展示城市历史、文化以及城市形象，气势恢宏，对展馆格调、档次的提升有很大帮助。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">在特殊的展厅结构——如圆形展厅中，我们可以将弧幕扩展为360°环幕。与大型环幕相比，360°环幕的视听效果更为霸道，360°无死角影片播放、360°环绕声音效，给观众极大的视觉震撼。另外，360°环绕式的视听效果有助于播放环境展示影片，在沉浸式的环境展示下，观众将感受到不同凡响的身心体验。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>大型弧幕、环幕可以与多媒体投影沙盘、城市虚拟漫游组合，迸发出更精彩的火花。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/><br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">多媒体投影沙盘</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">多媒体投影沙盘是一项革命性的创新，在传统固态沙盘的基础上，加入了以动态投影为主的各种多媒体声光手段，打破了人们对沙盘单调刻板的印象。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>在城市规划馆中，最不可缺少的就是沙盘。沙盘是一个城市的微缩，向观众提供一个鸟瞰的角度观察城市，通览全局。但传统的沙盘模型只能在一个时间维度上表现城市，对于一个长达几年甚至几十年的城市规划来说，表现力远远不足。多媒体投影沙盘通过严谨的设计，实现多功能同步联动，调用沙盘LED灯光、动态投影视频、大型弧幕等子设备，动态地展现一个城市的过去、现在和未来，在不同的时间维度上跳跃变化，是阐述一个城市规划的最佳工具。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">城市虚拟漫游系统&nbsp;&nbsp;<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">城市虚拟漫游系统是针对城市规划馆、房地产展厅优化的解决方案之一。观众站在一个大型弧幕前，以简易舒适的操作方式（摇杆、轨迹球、多点触摸或体感）控制画面中视角的移动与变化，使观众可以在虚拟的3D世界中随意漫游。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>这是一种非常直观的展示手段，它使一个城市的规划更容易被观众所理解和接受。3D世界漫游让观众把握了主导权，超越传统的填鸭展示，以一种零死角的观察角度将城市全方位展现在观众面前，市政设施、城市风光等都将在强大的3D建模技术支持下一览无遗。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>城市虚拟漫游系统是多媒体投影沙盘的最佳拍档。通过中控主机的联动调配，可以实现漫游与沙盘定位的同步，获得“所见即所得”的效果。另外，这样的组合在展示设计上也允许更多的灵活性。如随着沙盘叙述的时间变换，一个城市从现在进入未来，虚拟漫游的内容将相应地发生变化，观众从现在走入未来，在获得“恍若隔世”的体验的同时，也切实感受到城市“蜕变”后的美好。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/><br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">球形投影</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">相比较于多媒体投影沙盘和城市虚拟漫游系统，球形投影更多的是起到一个画龙点睛的作用。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">球形投影顾名思义，是一个球体，我们通过无缝融合纠正技术将画面扭曲剔除，使视频图片等内容得以在球体的表面自然呈现，以一种360°的角度向全方位的观众展示一个城市规划馆的中心内容。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>时光隧道</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">时光隧道，是最贴合城市规划馆的虚拟现实应用。城市规划馆要展现的核心内容，就是对一座城市未来的蓝图规划和美好展望，简而言之就是一个时空的变化。而时光隧道毫无疑问将是体现时空变化的最佳方案。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">时光隧道是基于地面融合、墙面融合互动技术的针对性解决方案。我们用无缝融合技术，在一个特定区域的地面与墙面进行投影，原本空白的区域化为一段隧道。观众走入其中时，脚下、两侧都是投影画面，并且由这些画面构成一个沉浸式的空间。举例说明，一段反映城市的过去、现在和未来的时光隧道，观众进入其中时，首先看到的是城市令人缅怀的过去街景；随着观众的深入，四周的景象逐渐发展变迁，进入现代；最后，时光隧道继续深入，将美好的未来呈现在观众的面前。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/><br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">多点触控墙</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">多点触控墙正如当下流行的多点触控手机一般，提供了一个可以同时识别多个手指的自然操控界面。事实上，触控墙更拥有大尺寸屏幕、高分辨率、理论上无限个识别点等手机难以比拟的优势。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">在城市规划馆中，多点触控墙提供了一个让观众主动获取信息、自主提炼信息的平台。城市规划信息通过文字、图片及视频等方式录入到触控墙，观众通过简单的点击和拖拽等手势就可以随意选择浏览。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>多点触控墙可以是嵌在墙壁中的屏幕，也可以以全透明的科技感造型出现，外形设计灵活多变，与展馆的装饰设计配合度高。</span></p>','4','0','0','','2','0','0','../upload/202003/1584686415.jpg','','城市规划体验馆*../upload/202003/1584686186.jpg*','0','3','2020-03-20 14:25:24','2020-03-20 14:25:24','admin','0','0','','cn','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">在城市规划馆的解决方案中，大型弧幕是挑大梁者，在很大程度上代表着一个城市规划馆的水平和规模。大型弧幕一般用于播放高清影片，展示城市历史、文化以及城市形象，气势恢宏，对展馆格调、档次的提升有很大帮助。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">在特殊的展厅结构——如圆形展厅中，我们可以将弧幕扩展为360°环幕。与大型环幕相比，360°环幕的视听效果更为霸道，360°无死角影片播放、360°环绕声音效，给观众极大的视觉震撼。另外，360°环绕式的视听效果有助于播放环境展示影片，在沉浸式的环境展示下，观众将感受到不同凡响的身心体验。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>大型弧幕、环幕可以与多媒体投影沙盘、城市虚拟漫游组合，迸发出更精彩的火花。</span></p>','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">在城市规划馆的解决方案中，大型弧幕是挑大梁者，在很大程度上代表着一个城市规划馆的水平和规模。大型弧幕一般用于播放高清影片，展示城市历史、文化以及城市形象，气势恢宏，对展馆格调、档次的提升有很大帮助。</span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">在特殊的展厅结构——如圆形展厅中，我们可以将弧幕扩展为360°环幕。与大型环幕相比，360°环幕的视听效果更为霸道，360°无死角影片播放、360°环绕声音效，给观众极大的视觉震撼。另外，360°环绕式的视听效果有助于播放环境展示影片，在沉浸式的环境展示下，观众将感受到不同凡响的身心体验。<br data-filtered=\"filtered\" microsoft=\"\" font-size:=\"\" white-space:=\"\"/>大型弧幕、环幕可以与多媒体投影沙盘、城市虚拟漫游组合，迸发出更精彩的火花。</span></p>','','','','','','','','0','1','','','','0','','','');
INSERT INTO met_product VALUES('36','博物科技馆','','','作为科普气氛浓厚的教育/展览展示场合，博物馆与科技馆的根本功能就是普及知识。科学知识往往艰涩得让人不得不抬头仰望，而如何将这些高高在上的知识梳理的平易近人，则是博物馆与科技馆的设计重点。通过新媒体技术，极大程度地实现抽象概念具象化、文字描述图形化、数据资料可视化，大大提高展览展示内容的易理解性。凭借在业内浸润多年的宝贵经验，我们为您推荐以下几种展示手段，您可以通过自由的组合，构建一个精彩纷呈的城市','<section><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">作为科普气氛浓厚的教育/展览展示场合，博物馆与科技馆的根本功能就是普及知识。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">科学知识往往艰涩得让人不得不抬头仰望，而如何将这些高高在上的知识梳理的平易近人，则是博物馆与科技馆的设计重点。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">通过新媒体技术，极大程度地实现抽象概念具象化、文字描述图形化、数据资料可视化，大大提高展览展示内容的易理解性。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">凭借在业内浸润多年的宝贵经验，我们为您推荐以下几种展示手段，您可以通过自由的组合，构建一个精彩纷呈的城市规划展馆。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\"><br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">大型弧幕/环幕</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">在博物馆、科技馆的解决方案中，大型弧幕是挑大梁者，在很大程度上代表着一个博物馆或科技馆的水平和规模。大型弧幕一般用于播放高清影片，气势恢宏，对展馆格调、档次的提升有很大帮助。<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">在特殊的展厅结构——如圆形展厅中，我们可以将弧幕扩展为360°环幕。与大型环幕相比，360°环幕的视听效果更为霸道，360°无死角影片播放、360°环绕声音效，给观众极大的视觉震撼。另外，360°环绕式的视听效果有助于播放环境展示影片，在沉浸式的环境展示下，观众将感受到不同凡响的身心体验。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">大型弧幕、环幕可以与多媒体投影沙盘、虚拟漫游组合，迸发出更精彩的火花。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">多媒体投影沙盘<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">多媒体投影沙盘是一项革命性的创新，在传统固态沙盘的基础上，加入了以动态投影为主的各种多媒体声光手段，打破了人们对沙盘单调刻板的印象。<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">在历史博物馆、生态博物馆中，沙盘是很好的解说工具，它可以还原千年以前的一座古老遗址，也可以将某个地区的地貌展露无遗。但传统的沙盘模型只能表现一个时间维度的情景，对于一座历史悠久的古城来说，表现力远远不足。多媒体投影沙盘通过严谨的设计，实现多功能同步联动，调用沙盘LED灯光、动态投影视频、大型弧幕等子设备，动态地展现一座古城的发源、发展和繁荣壮大，是阐述历史变迁的最佳工具。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">虚拟漫游<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">虚拟漫游提供了一种自由度极高的模拟漫游方式。观众站在一个大型弧幕前，以简易舒适的操作方式（摇杆、轨迹球、多点触摸或体感）控制画面中视角的移动与变化，使观众可以在虚拟的3D世界中随意漫游。<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">这是一种非常直观的展示手段，它可以塑造一个虚拟的未来城市乃至世界，或者还原非洲大草原的生态环境，并使其更容易被观众所理解和接受，虚拟3D世界漫游让观众把握了主导权，超越传统的填鸭展示，以一种零死角的观察角度将未来城市或者非洲草原展现在观众面前，未来的汽车、非洲的羚羊可以表现得栩栩如生，令人叹为观止。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">城市虚拟漫游系统是多媒体投影沙盘的最佳拍档。通过中控主机的联动调配，可以实现漫游与沙盘定位的同步，获得“所见即所得”的效果。另外，这样的组合在展示设计上也允许更多的灵活性。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">球形投影</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">相比较于多媒体投影沙盘和虚拟漫游系统，球形投影更多的是起到一个画龙点睛的作用。<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">球形投影顾名思义，是一个球体，我们通过无缝融合纠正技术将画面扭曲剔除，使视频图片等内容得以在球体的表面自然呈现，以一种360°的角度向全方位的观众展示一个博物馆、科技馆的中心内容。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">镜面互动<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">镜面互动是建立在墙面融合互动技术基础之上的一种互动应用，以美观的外形和虚实变幻的特点，在墙面融合互动中凸显出自己的优势。<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">镜面互动处于待机状态时是一面普通的镜子，梳妆打扮的功能不在话下；当观众以手指触摸镜面时，镜面上即浮现各种图形元素（内容根据客户需求制定），观众可以在镜子上玩玩小游戏、查看天气、浏览网络信息等，是一种非常有趣的体验。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">多点触控墙</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">多点触控墙正如当下流行的多点触控手机一般，提供了一个可以同时识别多个手指的自然操控界面。事实上，触控墙更拥有大尺寸屏幕、高分辨率、理论上无限个识别点等手机难以比拟的优势。<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">在博物馆、科技馆中，多点触控墙提供了一个让观众主动获取信息、自主提炼信息的平台。文字、图片及视频事先录入到触控墙，观众通过简单的点击和拖拽等手势就可以随意选择浏览。</span><br/></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">多点触控墙可以是嵌在墙壁中的屏幕，也可以以全透明的科技感造型出现，外形设计灵活多变，与展馆的装饰设计配合度高。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">多点触控桌<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">与多点触控墙类似，多点触控桌是一台灵活、拓展性高的多点触控信息台。多点触控桌可以单独作为展示信息的载体，也可以配合大型弧幕使用，观众在多点触控桌上预览和选择内容，然后在大型弧幕上进行欣赏。<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">增强现实<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">由于在博物馆、科技馆中，有许多展示对象是无法进行实物展示的，如化石欠缺的古老生物、无法复原的珍贵古物，或者现实中并不存在的未来概念机械等，因此增强现实在这类场所的应用具有非常实际的意义，它是展示对象的完美替身。在一般应用中，将不同展示对象通过3D建模技术，制作出相应的3D模型，并将这些模型与二维码卡片（也可以是带有计算机识别标志的其它物体）一一对应，输入到计算机中。观众拿出二维码卡片，面对带有摄像头的屏幕，就会看到屏幕中的二维码卡片变成了一个3D模型，转动卡片更可以对其进行多角度观察。<br/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 14px;\">“3D还原”的应用能够大大提高观众对古生物、未来科技的理解能力，同时观众与3D模型同在一个画面中的虚实感也增加了展示的趣味性。</span></p></section><p><br/></p>','4','0','0','','0','0','0','../upload/202003/1584685608.jpg','','博物科技馆*../upload/202003/1584686469.jpg*640x800','0','0','2020-03-20 14:24:57','2020-03-20 14:24:57','admin','0','0','','cn','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">多点触控墙正如当下流行的多点触控手机一般，提供了一个可以同时识别多个手指的自然操控界面。事实上，触控墙更拥有大尺寸屏幕、高分辨率、理论上无限个识别点等手机难以比拟的优势。<br/></span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">在博物馆、科技馆中，多点触控墙提供了一个让观众主动获取信息、自主提炼信息的平台。文字、图片及视频事先录入到触控墙，观众通过简单的点击和拖拽等手势就可以随意选择浏览。</span></p>','<p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px;\">多点触控墙正如当下流行的多点触控手机一般，提供了一个可以同时识别多个手指的自然操控界面。事实上，触控墙更拥有大尺寸屏幕、高分辨率、理论上无限个识别点等手机难以比拟的优势。<br/></span></p><p style=\"white-space: normal; text-indent: 2em;\"><span style=\"font-size: 14px; text-indent: 2em;\">在博物馆、科技馆中，多点触控墙提供了一个让观众主动获取信息、自主提炼信息的平台。文字、图片及视频事先录入到触控墙，观众通过简单的点击和拖拽等手势就可以随意选择浏览。</span></p>','','','','','','','','0','1','','','640x800','0','','','');

DROP TABLE IF EXISTS met_skin_table;
CREATE TABLE `met_skin_table` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `skin_name` varchar(200) NOT NULL DEFAULT '',
  `skin_file` varchar(20) NOT NULL DEFAULT '',
  `skin_info` text NOT NULL,
  `devices` int(11) NOT NULL DEFAULT '0',
  `ver` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO met_skin_table VALUES('1','metv7','metv7','MetInfo v7.0正式版新推出一套全新精致免费模板！','0','');
INSERT INTO met_skin_table VALUES('7','medu074','medu074','','0','');

DROP TABLE IF EXISTS met_tags;
CREATE TABLE `met_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) NOT NULL DEFAULT '',
  `tag_pinyin` varchar(255) NOT NULL DEFAULT '',
  `module` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  `list_id` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `tag_color` varchar(255) NOT NULL DEFAULT '',
  `tag_size` int(10) NOT NULL DEFAULT '0',
  `sort` int(10) NOT NULL DEFAULT '0',
  `lang` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO met_tags VALUES('1','企业','qiye','2','3','|12|','文章模块自动聚合标签','','','#f7113f','0','0','cn');
INSERT INTO met_tags VALUES('2','消费','xiaofei','2','3','|12|','','','','','0','0','cn');
INSERT INTO met_tags VALUES('3','华为','huawei','3','4','','产品聚合标签','','','','0','0','cn');

DROP TABLE IF EXISTS met_templates;
CREATE TABLE `met_templates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `no` varchar(20) NOT NULL DEFAULT '0',
  `pos` int(11) NOT NULL DEFAULT '0',
  `no_order` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `style` int(11) NOT NULL DEFAULT '0',
  `selectd` varchar(500) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `defaultvalue` text NOT NULL,
  `valueinfo` varchar(100) NOT NULL DEFAULT '',
  `tips` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(50) NOT NULL DEFAULT '',
  `bigclass` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1434 DEFAULT CHARSET=utf8;

INSERT INTO met_templates VALUES('1','metv7','0','11','1','3','','met_foot','','','底部设置','','cn','0');
INSERT INTO met_templates VALUES('2','metv7','0','14','4','3','$M$底部$T$0$M$顶部$T$1','cn1_position','','0','简繁体切换按钮位置','','cn','1');
INSERT INTO met_templates VALUES('3','metv7','0','13','2','3','','footlink_title','','友情链接','友情链接标题','','cn','1');
INSERT INTO met_templates VALUES('4','metv7','0','12','4','3','$M$开启$T$1$M$关闭$T$0','link_ok','','1','友情链接开关','','cn','1');
INSERT INTO met_templates VALUES('5','metv7','0','15','4','3','$M$开启$T$1$M$关闭$T$0','cn1_ok','','1','简繁体切换开关','','cn','1');
INSERT INTO met_templates VALUES('6','metv7','2','9','1','3','','met_news','','','文章模块','','cn','0');
INSERT INTO met_templates VALUES('7','metv7','2','10','4','3','$M$开启$T$1$M$关闭$T$0','news_imgok','','1','图片开关','','cn','6');
INSERT INTO met_templates VALUES('8','metv7','3','8','1','3','','downlaod_bar','','','下载模块','','cn','0');
INSERT INTO met_templates VALUES('9','metv7','3','13','4','3','$M$开启$T$1$M$关闭$T$0','downloadsidebar_column_ok','','1','侧栏栏目开关','','cn','8');
INSERT INTO met_templates VALUES('10','metv7','3','14','4','3','$M$开启$T$1$M$关闭$T$0','sidebar_downloadlist_ok','','1','侧栏文章列表开关','','cn','8');
INSERT INTO met_templates VALUES('11','metv7','3','11','4','3','$M$全部$T$all$M$推荐$T$com','download_bar_list_type','','all','侧栏列表下载类型','','cn','8');
INSERT INTO met_templates VALUES('12','metv7','3','9','2','3','','download_bar_list_title','','为你推荐','侧栏下载列表标题','','cn','8');
INSERT INTO met_templates VALUES('13','metv7','3','12','4','3','$M$开启$T$1$M$关闭$T$0','download_column3_ok','','1','三级栏目开关','','cn','8');
INSERT INTO met_templates VALUES('14','metv7','3','10','2','3','','sidebar_downloadlist_num','','5','侧栏下载列表数量','','cn','8');
INSERT INTO met_templates VALUES('15','metv7','2','3','1','3','','met_img','','','图片模块','','cn','0');
INSERT INTO met_templates VALUES('16','metv7','2','4','4','3','$M$浏览模式$T$1$M$详情模式$T$0','img_listlook_style','','1','查看模式','浏览模式为在列表页浏览图片，详情模式为点击进入详情页','cn','15');
INSERT INTO met_templates VALUES('17','metv7','2','7','1','3','','subcolumn_nav','','','子栏目设置','','cn','0');
INSERT INTO met_templates VALUES('18','metv7','2','8','4','3','$M$开启$T$1$M$关闭$T$0','tagshow_2','','1','区块开关','','cn','17');
INSERT INTO met_templates VALUES('19','metv7','0','8','1','3','','met_position','','','当前位置','','cn','0');
INSERT INTO met_templates VALUES('20','metv7','0','9','2','3','','position_text','','你的位置','当前位置标题','','cn','19');
INSERT INTO met_templates VALUES('21','metv7','0','10','4','3','$M$开启$T$1$M$关闭$T$0','tagshow_1','','1','区域开关','','cn','19');
INSERT INTO met_templates VALUES('22','metv7','3','15','1','3','','img_bar','','','图片模块','','cn','0');
INSERT INTO met_templates VALUES('23','metv7','3','18','4','3','$M$全部$T$all$M$推荐$T$com','img_bar_list_type','','all','侧栏列表图片类型','','cn','22');
INSERT INTO met_templates VALUES('24','metv7','3','17','2','3','','img_bar_list_title','','为您推荐','侧栏图片列表标题','','cn','22');
INSERT INTO met_templates VALUES('25','metv7','3','16','4','3','$M$开启$T$1$M$关闭$T$0','img_bar_list_open','','1','侧栏图片列表开关','','cn','22');
INSERT INTO met_templates VALUES('26','metv7','3','20','4','3','$M$开启$T$1$M$关闭$T$0','imgbar_column_open','','1','侧栏栏目开关','','cn','22');
INSERT INTO met_templates VALUES('27','metv7','3','19','2','3','','img_bar_list_num','','5','侧栏列表图片数量','','cn','22');
INSERT INTO met_templates VALUES('28','metv7','3','21','4','3','$M$开启$T$1$M$关闭$T$0','img_column3_ok','','1','三级栏目开关','','cn','22');
INSERT INTO met_templates VALUES('29','metv7','3','22','1','3','','product_bar','','','产品模块侧边栏','','cn','0');
INSERT INTO met_templates VALUES('30','metv7','3','26','4','3','当前一级栏目内容列表$T$1$M$TAG标签聚合$T$0','product_sidebar_content','1','1','调用内容','默认调用当前栏目内容列表','cn','29');
INSERT INTO met_templates VALUES('31','metv7','3','23','2','3','','product_sidebar_piclist_title','相关推荐','热门推荐','区块标题','','cn','29');
INSERT INTO met_templates VALUES('32','metv7','3','24','2','3','','product_sidebar_piclist_num','3','5','调用条数','','cn','29');
INSERT INTO met_templates VALUES('33','metv7','3','25','4','3','$M$全部$T$all$M$推荐$T$com','product_sidebar_piclist_type','all','all','调用类型','','cn','29');
INSERT INTO met_templates VALUES('34','metv7','0','24','1','3','','banner','','','banner设置','','cn','0');
INSERT INTO met_templates VALUES('35','metv7','0','25','4','3','$M$提示$T$1','info','1','1','提示','此banner是图片不适合设置高度，如果觉得banner尺寸不合适请更换banner尺寸','cn','34');
INSERT INTO met_templates VALUES('36','metv7','0','26','9','3','','page_top_bgcolor','#1baadb','#ccc','内页无banner背景色','','cn','34');
INSERT INTO met_templates VALUES('37','metv7','0','27','9','3','','bannersub_color','#ffffff','#fff','内页无banner字体色','','cn','34');
INSERT INTO met_templates VALUES('38','metv7','0','28','2','3','','btn_margin','5','5','电脑端按钮之间的边距','默认为5px','cn','34');
INSERT INTO met_templates VALUES('39','metv7','0','29','2','3','','mbtn_margin','5','5','手机端按钮之间的边距','默认为5px','cn','34');
INSERT INTO met_templates VALUES('40','metv7','1','18','1','3','','met_index_news','','','首页新闻区块','','cn','0');
INSERT INTO met_templates VALUES('41','metv7','1','28','2','3','','home_product_img_h','125','125','缩略图高','默认为125px','cn','40');
INSERT INTO met_templates VALUES('42','metv7','1','27','2','3','','home_product_img_w','200','200','缩略图宽','默认为200px','cn','40');
INSERT INTO met_templates VALUES('43','metv7','1','22','2','3','','home_news_num','4','5','调用条数','','cn','40');
INSERT INTO met_templates VALUES('44','metv7','1','26','2','3','','home_news_img_maxnum','80','80','描述文字字数限制','默认为80个字符','cn','40');
INSERT INTO met_templates VALUES('45','metv7','1','21','6','3','','home_news1','3','4','调用栏目','调用当前栏目的内容列表','cn','40');
INSERT INTO met_templates VALUES('46','metv7','1','25','4','3','显示$T$1$M$隐藏$T$0','home_news_img_ok','1','1','是否显示图片','默认为显示','cn','40');
INSERT INTO met_templates VALUES('47','metv7','1','24','2','3','','home_news_more','MORE','MORE','更多文字','','cn','40');
INSERT INTO met_templates VALUES('48','metv7','1','19','2','3','','index_news_title','新闻资讯','标题','区块标题','','cn','40');
INSERT INTO met_templates VALUES('49','metv7','1','23','4','3','$M$全部$T$all$M$推荐$T$com','home_news_type','all','all','调用类型','','cn','40');
INSERT INTO met_templates VALUES('50','metv7','1','20','3','3','','index_news_desc','Latest news and information','描述','区块描述','','cn','40');
INSERT INTO met_templates VALUES('51','metv7','0','1','1','3','','met_head','','','顶部设置','','cn','0');
INSERT INTO met_templates VALUES('52','metv7','0','5','4','3','$M$鼠标经过$T$1$M$点击展开$T$0','navhoverok','1','1','下拉方式','','cn','51');
INSERT INTO met_templates VALUES('53','metv7','0','7','4','3','$M$开启$T$1$M$关闭$T$0','langlist1_icon_ok','1','1','语言国旗开关','','cn','51');
INSERT INTO met_templates VALUES('54','metv7','0','3','2','3','','nav_ml','10','10','导航间距','默认是0，仅支持5的倍数（0/5/10/15/20...最大50）<br/>不同网站的导航数量不同，根据需求适当调整间距，让网站更协调。','cn','51');
INSERT INTO met_templates VALUES('55','metv7','0','2','4','3','$M$开启$T$1$M$关闭$T$0','navbarok','1','1','下拉菜单','','cn','51');
INSERT INTO met_templates VALUES('56','metv7','0','4','2','3','','all','全部','全部','下拉菜单全部','仅在手机端显示','cn','51');
INSERT INTO met_templates VALUES('57','metv7','0','6','4','3','$M$头部$T$1$M$底部$T$0','langlist_position','1','1','多语言位置','','cn','51');
INSERT INTO met_templates VALUES('58','metv7','0','16','1','3','','global','','','全局参数','','cn','0');
INSERT INTO met_templates VALUES('59','metv7','0','21','2','3','','search_placeholder','请输入内容关键词','请输入内容关键词','搜索文字','','cn','58');
INSERT INTO met_templates VALUES('60','metv7','0','18','2','3','','sub_all','全部','全部','页面文字','','cn','58');
INSERT INTO met_templates VALUES('61','metv7','0','22','9','3','','first_color','#1baadb','#000000','模板主色调','','cn','58');
INSERT INTO met_templates VALUES('62','metv7','0','23','4','3','当前窗口打开$T$target=_self$M$新窗口打开$T$target=_blank','urlnew','target=_self','target=_self','内容列表链接打开方式','列表页链接打开方式可在栏目管理中对每个栏目进行单独设置','cn','58');
INSERT INTO met_templates VALUES('63','metv7','0','20','2','3','','nodata','没有数据了','没有数据了','无数据提示','','cn','58');
INSERT INTO met_templates VALUES('64','metv7','0','19','2','3','','page_ajax_next','加载更多','加载更多','分页文字','无刷新分页默认文字','cn','58');
INSERT INTO met_templates VALUES('65','metv7','0','17','2','3','','met_font','','','页面字体','非特殊语种，建议留空使用模板默认字体','cn','58');
INSERT INTO met_templates VALUES('66','metv7','2','5','1','3','','met_job','','','招聘模块','','cn','0');
INSERT INTO met_templates VALUES('67','metv7','2','6','2','3','','cvtitle','在线应聘','在线应聘','按钮文字','','cn','66');
INSERT INTO met_templates VALUES('68','metv7','1','1','1','3','','met_index_product','','','首页产品区块','','cn','0');
INSERT INTO met_templates VALUES('69','metv7','1','2','2','3','','index_product_title','产品中心','标题','区块标题','','cn','68');
INSERT INTO met_templates VALUES('70','metv7','1','3','3','3','','index_product_desc','Recommended products and services','描述','区块描述','','cn','68');
INSERT INTO met_templates VALUES('71','metv7','1','5','2','3','','index_product_all','全部','全部','栏目列表代表文字','','cn','68');
INSERT INTO met_templates VALUES('72','metv7','1','4','6','3','','index_product_id','4','','调用栏目','','cn','68');
INSERT INTO met_templates VALUES('73','metv7','1','7','2','3','','index_product_column_lg','4','4','普通电脑显示列数','浏览器宽度大于992像素小于1600像素时','cn','68');
INSERT INTO met_templates VALUES('74','metv7','1','6','2','3','','index_product_column_xxl','4','4','大尺寸电脑显示列数','浏览器宽度大于1600像素时','cn','68');
INSERT INTO met_templates VALUES('75','metv7','1','8','2','3','','index_product_column_md','2','2','平板显示列数','浏览器宽度大于768像素小于992像素时','cn','68');
INSERT INTO met_templates VALUES('76','metv7','1','9','2','3','','index_product_column_xs','2','2','手机显示列数','浏览器宽度小于768像素时','cn','68');
INSERT INTO met_templates VALUES('77','metv7','1','10','2','3','','index_product_allnum','8','8','调用条数','每个列表调用信息最多条数','cn','68');
INSERT INTO met_templates VALUES('78','metv7','1','11','4','3','全部$T$all$M$推荐$T$com','index_product_type','all','all','调用类型','列表信息调用类型，【推荐】可以在添加或管理文章列表时设置。','cn','68');
INSERT INTO met_templates VALUES('79','metv7','1','13','2','3','','index_product_img_h','300','300','缩略图高','默认为300px','cn','68');
INSERT INTO met_templates VALUES('80','metv7','1','12','2','3','','index_product_img_w','484','484','缩略图宽','默认为484px','cn','68');
INSERT INTO met_templates VALUES('81','metv7','1','29','1','3','','met_index_case','','','首页合作伙伴','','cn','0');
INSERT INTO met_templates VALUES('82','metv7','1','30','2','3','','home_case_title','成功案例','标题','区块标题','','cn','81');
INSERT INTO met_templates VALUES('83','metv7','1','31','2','3','','home_case_desc','Success stories and customer shows','描述','区块描述','','cn','81');
INSERT INTO met_templates VALUES('84','metv7','1','33','2','3','','home_case_num','8','8','调用条数','默认调用8条','cn','81');
INSERT INTO met_templates VALUES('85','metv7','1','32','6','3','','home_case_id','38','','栏目选择','','cn','81');
INSERT INTO met_templates VALUES('86','metv7','1','34','4','3','全部$T$all$M$推荐$T$com','home_case_type','all','all','调用类型','','cn','81');
INSERT INTO met_templates VALUES('87','metv7','1','35','4','3','纯展示$T$0$M$超链接$T$1','home_case_linkok','1','1','展示方式','默认为超链接','cn','81');
INSERT INTO met_templates VALUES('88','metv7','1','36','2','3','','home_case_imgw','320','320','缩略图宽','默认为320px','cn','81');
INSERT INTO met_templates VALUES('89','metv7','1','37','2','3','','home_case_imgh','200','200','缩略图高','默认为200px','cn','81');
INSERT INTO met_templates VALUES('90','metv7','1','14','1','3','','met_index_about','','','首页简介区块','','cn','0');
INSERT INTO met_templates VALUES('91','metv7','1','15','2','3','','home_about_title','关于我们','标题','区块标题','','cn','90');
INSERT INTO met_templates VALUES('92','metv7','1','16','2','3','','home_about_desc','About us and company introduction','描述','区块描述','','cn','90');
INSERT INTO met_templates VALUES('93','metv7','1','17','8','3','','home_about_content','<div microsoft=\"\" white-space:=\"\" style=\"text-align: left;\"><p style=\"text-align:center;\"><img src=\"../upload/201801/1516066438664023.jpg\" data-width=\"1180\" width=\"545\" data-height=\"664\" height=\"307\" alt=\"图片关键词\" border=\"0\" vspace=\"10\" hspace=\"10\" title=\"图片关键词\" style=\"width: 545px; height: 307px; float: left; display: inline-block;\"/></p><p>米拓企业建站系统（原名：MetInfo企业网站管理系统）自2009年发布至今，已成为众多企业建站的主流工具。</p><p><strong>米拓企业建站系统支持将1个网站内容轻松同步到10种终端展示（电脑、手机、平板、微官网、微信小程序、百度小程序、支付宝小程序、字节跳动小程序[今日头条、抖音]、360小程序、QQ小程序），开源免费，适合用于搭建专业的网站。</strong></p>米拓企业建站系统采用PHP+MySQL架构，支持SQLite数据库，全站内置了SEO搜索引擎优化机制，支持用户自定义语言（全球各种语言），支持可视化编辑管理，拥有企业网站常用的功能模块（简介模块、文章模块、产品模块、下载模块、图片模块、招聘模块、在线留言、反馈系统、在线交流、友情链接、网站地图、会员与权限管理、TAG标签），强大的SEO及伪静态设置功能，支持自定义网站颜色风格，支持按栏目自定义Banner图和数据调用，支持手机底部菜单，支持用户自主二次开发，商业模板支持在线升级。系统内置标准的应用插件开发接口，拥有丰富的免费插件和收费插件，如短信接口、robots文件修改、模板制作助手、小程序、支付接口、商城模块、系统诊所、图片加速、网站广告插件等。无论你是技术大咖还是建站小白，都可以使用MetInfo快速搭建一个功能齐全的响应式专业网站。</div>','','区块内容','','cn','90');
INSERT INTO met_templates VALUES('94','metv7','3','1','1','3','','news_bar','','','文章模块','','cn','0');
INSERT INTO met_templates VALUES('95','metv7','3','6','2','3','','news_bar_list_num','','5','侧栏列表文章数量','','cn','94');
INSERT INTO met_templates VALUES('96','metv7','3','7','4','3','$M$全部$T$all$M$推荐$T$com','news_bar_list_type','','all','侧栏列表文章类型','','cn','94');
INSERT INTO met_templates VALUES('97','metv7','3','2','4','3','$M$开启$T$1$M$关闭$T$0','bar_column3_open','','1','三级栏目开关','除开产品模块以外的侧栏','cn','94');
INSERT INTO met_templates VALUES('98','metv7','3','4','4','3','$M$开启$T$1$M$关闭$T$0','news_bar_list_open','','1','侧栏文章列表开关','','cn','94');
INSERT INTO met_templates VALUES('99','metv7','3','3','4','3','$M$开启$T$1$M$关闭$T$0','bar_column_open','','1','侧栏栏目开关','除开产品模块以外的侧栏','cn','94');
INSERT INTO met_templates VALUES('100','metv7','3','5','2','3','','news_bar_list_title','','为您推荐','侧栏文章列表标题','','cn','94');
INSERT INTO met_templates VALUES('101','metv7','2','1','1','3','','met_download','','','下载模块','','cn','0');
INSERT INTO met_templates VALUES('102','metv7','2','2','2','3','','download','','立即下载','按钮文字','','cn','101');
INSERT INTO met_templates VALUES('103','metv7','0','30','1','3','','met_contact','','','底部联系信息设置','','cn','0');
INSERT INTO met_templates VALUES('104','metv7','0','47','2','3','','footinfo_email','','','邮箱地址','','cn','103');
INSERT INTO met_templates VALUES('105','metv7','0','46','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_emailok','0','0','邮箱','','cn','103');
INSERT INTO met_templates VALUES('106','metv7','0','45','2','3','','footinfo_facebook','','','Facebook网址','','cn','103');
INSERT INTO met_templates VALUES('107','metv7','0','42','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_googleok','0','0','google+','','cn','103');
INSERT INTO met_templates VALUES('108','metv7','0','44','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_facebookok','0','0','Facebook','','cn','103');
INSERT INTO met_templates VALUES('109','metv7','0','41','2','3','','footinfo_twitter','','','twitter网址','','cn','103');
INSERT INTO met_templates VALUES('110','metv7','0','40','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_twitterok','0','0','twitter（推特）','','cn','103');
INSERT INTO met_templates VALUES('111','metv7','0','39','2','3','','footinfo_sina','','','新浪微博网址','请输入微博网址','cn','103');
INSERT INTO met_templates VALUES('112','metv7','0','38','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_sina_ok','1','1','新浪微博','','cn','103');
INSERT INTO met_templates VALUES('113','metv7','0','37','2','3','','footinfo_qq','','','QQ号码','点击QQ链接可直接对话，需要先到 shang.qq.com 免费开通。<br/>企业营销QQ 无需开通','cn','103');
INSERT INTO met_templates VALUES('114','metv7','0','36','4','3','$M$个人QQ$T$1$M$企业营销QQ$T$2','foot_info_qqtype','1','1','QQ类型','个人QQ和企业营销QQ超链接结构不一样，因此请务必选择正确。','cn','103');
INSERT INTO met_templates VALUES('115','metv7','0','35','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_qq_ok','1','1','QQ','','cn','103');
INSERT INTO met_templates VALUES('116','metv7','0','33','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_wx_ok','1','1','微信','','cn','103');
INSERT INTO met_templates VALUES('117','metv7','0','43','2','3','','footinfo_google','','','google+网址','','cn','103');
INSERT INTO met_templates VALUES('118','metv7','0','32','2','3','','footinfo_dsc','100-000-0000','','描述文字','','cn','103');
INSERT INTO met_templates VALUES('119','metv7','0','31','2','3','','footinfo_tel','服务热线','','服务热线','','cn','103');
INSERT INTO met_templates VALUES('120','metv7','0','34','7','3','','footinfo_wx','../upload/201807/1554199135.jpg','','微信二维码','','cn','103');
INSERT INTO met_templates VALUES('330','metv7','1','38','2','3','','home_case_num_xxl','8','8','大尺寸电脑显示列数','浏览器宽度大于1600像素时','cn','81');
INSERT INTO met_templates VALUES('331','metv7','1','39','2','3','','home_case_num_lg','6','6','普通电脑显示列数','浏览器宽度大于1024像素小于1600像素时','cn','81');
INSERT INTO met_templates VALUES('332','metv7','1','40','2','3','','home_case_num_md','4','4','平板显示列数','浏览器宽度大于768像素小于1024像素时','cn','81');
INSERT INTO met_templates VALUES('333','metv7','1','41','2','3','','home_case_num_xs','2','2','手机显示列数','浏览器宽度小于768像素时','cn','81');
INSERT INTO met_templates VALUES('1241','medu074','0','15','1','3','','met_foot','','','底部设置','','cn','0');
INSERT INTO met_templates VALUES('1242','medu074','0','18','4','3','$M$底部$T$0$M$顶部$T$1','cn1_position','0','0','简繁体切换按钮位置','','cn','1241');
INSERT INTO met_templates VALUES('1243','medu074','0','17','2','3','','footlink_title','友情链接','友情链接','友情链接标题','','cn','1241');
INSERT INTO met_templates VALUES('1244','medu074','0','16','4','3','$M$开启$T$1$M$关闭$T$0','link_ok','1','1','友情链接开关','','cn','1241');
INSERT INTO met_templates VALUES('1245','medu074','0','19','4','3','$M$开启$T$1$M$关闭$T$0','cn1_ok','1','1','简繁体切换开关','','cn','1241');
INSERT INTO met_templates VALUES('1246','medu074','0','21','9','3','','foot_columncolor','#cccccc','#8080','栏目文字颜色','默认是#808080','cn','1241');
INSERT INTO met_templates VALUES('1247','medu074','0','22','9','3','','footinfo_color','#cccccc','#808080','底部信息颜色','默认是#808080','cn','1241');
INSERT INTO met_templates VALUES('1248','medu074','0','20','9','3','','met_foot_bgcolor','#000a57','#f5f5f5','底部背景色','默认是#f5f5f5','cn','1241');
INSERT INTO met_templates VALUES('1249','medu074','0','23','2','3','','tips','关注公众号','','关注公众号','','cn','1241');
INSERT INTO met_templates VALUES('1250','medu074','0','24','7','3','','tipsimg','../upload/202002/1582623359.jpg','','关注公众号二维码','','cn','1241');
INSERT INTO met_templates VALUES('1251','medu074','2','9','1','3','','met_news','','','文章模块','','cn','0');
INSERT INTO met_templates VALUES('1252','medu074','2','10','4','3','$M$开启$T$1$M$关闭$T$0','news_imgok','','1','图片开关','','cn','1251');
INSERT INTO met_templates VALUES('1253','medu074','3','13','1','3','','downlaod_bar','','','下载模块','','cn','0');
INSERT INTO met_templates VALUES('1254','medu074','3','18','4','3','$M$开启$T$1$M$关闭$T$0','downloadsidebar_column_ok','','1','侧栏栏目开关','','cn','1253');
INSERT INTO met_templates VALUES('1255','medu074','3','19','4','3','$M$开启$T$1$M$关闭$T$0','sidebar_downloadlist_ok','','1','侧栏文章列表开关','','cn','1253');
INSERT INTO met_templates VALUES('1256','medu074','3','16','4','3','$M$全部$T$all$M$推荐$T$com','download_bar_list_type','','all','侧栏列表下载类型','','cn','1253');
INSERT INTO met_templates VALUES('1257','medu074','3','14','2','3','','download_bar_list_title','','为你推荐','侧栏下载列表标题','','cn','1253');
INSERT INTO met_templates VALUES('1258','medu074','3','17','4','3','$M$开启$T$1$M$关闭$T$0','download_column3_ok','','1','三级栏目开关','','cn','1253');
INSERT INTO met_templates VALUES('1259','medu074','3','15','2','3','','sidebar_downloadlist_num','','5','侧栏下载列表数量','','cn','1253');
INSERT INTO met_templates VALUES('1260','medu074','2','3','1','3','','met_img','','','图片模块','','cn','0');
INSERT INTO met_templates VALUES('1261','medu074','2','4','4','3','$M$浏览模式$T$1$M$详情模式$T$0','img_listlook_style','','1','查看模式','浏览模式为在列表页浏览图片，详情模式为点击进入详情页','cn','1260');
INSERT INTO met_templates VALUES('1262','medu074','2','7','1','3','','subcolumn_nav','','','子栏目设置','','cn','0');
INSERT INTO met_templates VALUES('1263','medu074','2','8','4','3','$M$开启$T$1$M$关闭$T$0','tagshow_2','','1','区块开关','','cn','1262');
INSERT INTO met_templates VALUES('1264','medu074','0','12','1','3','','met_position','','','当前位置','','cn','0');
INSERT INTO met_templates VALUES('1265','medu074','0','13','2','3','','position_text','','你的位置','当前位置标题','','cn','1264');
INSERT INTO met_templates VALUES('1266','medu074','0','14','4','3','$M$开启$T$1$M$关闭$T$0','tagshow_1','','1','区域开关','','cn','1264');
INSERT INTO met_templates VALUES('1267','medu074','3','20','1','3','','img_bar','','','图片模块','','cn','0');
INSERT INTO met_templates VALUES('1268','medu074','3','23','4','3','$M$全部$T$all$M$推荐$T$com','img_bar_list_type','','all','侧栏列表图片类型','','cn','1267');
INSERT INTO met_templates VALUES('1269','medu074','3','22','2','3','','img_bar_list_title','','为您推荐','侧栏图片列表标题','','cn','1267');
INSERT INTO met_templates VALUES('1270','medu074','3','21','4','3','$M$开启$T$1$M$关闭$T$0','img_bar_list_open','','1','侧栏图片列表开关','','cn','1267');
INSERT INTO met_templates VALUES('1271','medu074','3','25','4','3','$M$开启$T$1$M$关闭$T$0','imgbar_column_open','','1','侧栏栏目开关','','cn','1267');
INSERT INTO met_templates VALUES('1272','medu074','3','24','2','3','','img_bar_list_num','','5','侧栏列表图片数量','','cn','1267');
INSERT INTO met_templates VALUES('1273','medu074','3','26','4','3','$M$开启$T$1$M$关闭$T$0','img_column3_ok','','1','三级栏目开关','','cn','1267');
INSERT INTO met_templates VALUES('1274','medu074','3','27','1','3','','product_bar','','','产品模块侧边栏','','cn','0');
INSERT INTO met_templates VALUES('1275','medu074','3','31','4','3','当前一级栏目内容列表$T$1$M$TAG标签聚合$T$0','product_sidebar_content','1','1','调用内容','默认调用当前栏目内容列表','cn','1274');
INSERT INTO met_templates VALUES('1276','medu074','3','28','2','3','','product_sidebar_piclist_title','相关推荐','热门推荐','区块标题','','cn','1274');
INSERT INTO met_templates VALUES('1277','medu074','3','29','2','3','','product_sidebar_piclist_num','3','5','调用条数','','cn','1274');
INSERT INTO met_templates VALUES('1278','medu074','3','30','4','3','$M$全部$T$all$M$推荐$T$com','product_sidebar_piclist_type','all','all','调用类型','','cn','1274');
INSERT INTO met_templates VALUES('1279','medu074','0','33','1','3','','banner','','','banner设置','','cn','0');
INSERT INTO met_templates VALUES('1280','medu074','0','34','4','3','$M$提示$T$1','info','1','1','提示','此banner是图片不适合设置高度，如果觉得banner尺寸不合适请更换banner尺寸','cn','1279');
INSERT INTO met_templates VALUES('1281','medu074','0','35','9','3','','page_top_bgcolor','#0c635d','#ccc','内页无banner背景色','','cn','1279');
INSERT INTO met_templates VALUES('1282','medu074','0','36','9','3','','bannersub_color','#ffffff','#fff','内页无banner字体色','','cn','1279');
INSERT INTO met_templates VALUES('1283','medu074','0','37','2','3','','btn_margin','5','5','电脑端按钮之间的边距','默认为5px','cn','1279');
INSERT INTO met_templates VALUES('1284','medu074','0','38','2','3','','mbtn_margin','5','5','手机端按钮之间的边距','默认为5px','cn','1279');
INSERT INTO met_templates VALUES('1285','medu074','1','35','1','3','','met_index_news','','','首页新闻区块','','cn','0');
INSERT INTO met_templates VALUES('1286','medu074','1','36','2','3','','index_news_title','新闻中心','标题','区块标题','','cn','1285');
INSERT INTO met_templates VALUES('1287','medu074','1','45','2','3','','index_news_column_xs','1','1','手机显示列数','手机：浏览器宽度小于768像素','cn','1285');
INSERT INTO met_templates VALUES('1288','medu074','1','37','3','3','','index_news_desc','Latest news and information','描述','区块描述','','cn','1285');
INSERT INTO met_templates VALUES('1289','medu074','1','46','2','3','','index_news_column_md','2','2','平板显示列数','平板：浏览器宽度大于或等于768像素且小于992像素','cn','1285');
INSERT INTO met_templates VALUES('1290','medu074','1','40','6','3','','home_news_id','3','','栏目调用','调用子栏目列表以及子栏目下内容列表的标题、描述、时间','cn','1285');
INSERT INTO met_templates VALUES('1291','medu074','1','41','2','3','','home_news_num','8','8','内容调用条数','默认为调用8条','cn','1285');
INSERT INTO met_templates VALUES('1292','medu074','1','38','9','3','','news_bgcolor','#ffffff','#f5f5f5','区块背景颜色','默认为#f5f5f5','cn','1285');
INSERT INTO met_templates VALUES('1293','medu074','1','39','7','3','','news_bgpic','../upload/202002/1582623173.jpg','','区块背景图','建议上传宽为1920px高自定义的图片，上传区块背景图会覆盖区块背景色','cn','1285');
INSERT INTO met_templates VALUES('1294','medu074','1','44','9','3','','news_desccolor','#333333','#666','描述颜色','默认是#666','cn','1285');
INSERT INTO met_templates VALUES('1295','medu074','1','43','9','3','','news_titlecolor','#212121','#000','标题颜色','默认是#000','cn','1285');
INSERT INTO met_templates VALUES('1296','medu074','1','42','9','3','','tab_active_color','#2eb6ff','#f01308','鼠标经过栏目颜色','默认为#f01308','cn','1285');
INSERT INTO met_templates VALUES('1297','medu074','1','48','2','3','','index_news_column_xxl','4','4','大尺寸电脑显示列数','大尺寸电脑：浏览器窗口宽度大于或等于1600像素','cn','1285');
INSERT INTO met_templates VALUES('1298','medu074','1','47','2','3','','index_news_column_lg','4','4','普通电脑显示列数','普通电脑：浏览器窗口宽度大于或等于992像素且小于1600像素','cn','1285');
INSERT INTO met_templates VALUES('1299','medu074','0','1','1','3','','met_head','','','顶部设置','','cn','0');
INSERT INTO met_templates VALUES('1300','medu074','0','8','9','3','','headcolumn_color','#ffffff','#000000','一级导航栏目颜色','默认是#000000','cn','1299');
INSERT INTO met_templates VALUES('1301','medu074','0','6','4','3','$M$开启$T$1$M$关闭$T$0','langlist1_icon_ok','1','1','语言国旗开关','','cn','1299');
INSERT INTO met_templates VALUES('1302','medu074','0','3','2','3','','nav_ml','0','10','导航间距','默认是0，仅支持5的倍数（0/5/10/15/20...最大50）<br/>不同网站的导航数量不同，根据需求适当调整间距，让网站更协调。','cn','1299');
INSERT INTO met_templates VALUES('1303','medu074','0','2','4','3','$M$开启$T$1$M$关闭$T$0','navbarok','0','1','下拉菜单','','cn','1299');
INSERT INTO met_templates VALUES('1304','medu074','0','4','2','3','','all','全部','全部','下拉菜单全部','仅在手机端显示','cn','1299');
INSERT INTO met_templates VALUES('1305','medu074','0','5','4','3','$M$头部$T$1$M$底部$T$0','langlist_position','1','1','多语言位置','','cn','1299');
INSERT INTO met_templates VALUES('1306','medu074','0','7','9','3','','head_bgcolor','#000a57','','导航背景色','默认是透明','cn','1299');
INSERT INTO met_templates VALUES('1307','medu074','0','9','9','3','','headsubcolumn_color','#ffffff','#000000','二级导航栏颜色','默认是#000000','cn','1299');
INSERT INTO met_templates VALUES('1308','medu074','0','10','9','3','','headcolumn_activecolor','#ffffff','#ffffff','导航栏目激活色和鼠标经过色','默认是#ffffff','cn','1299');
INSERT INTO met_templates VALUES('1309','medu074','0','11','9','3','','headcolumnitem_color','#30b3ff','#ffffff','导航栏目激活背景色','默认是#ffffff','cn','1299');
INSERT INTO met_templates VALUES('1310','medu074','0','25','1','3','','global','','','全局参数','','cn','0');
INSERT INTO met_templates VALUES('1311','medu074','0','30','2','3','','search_placeholder','请输入内容关键词','请输入内容关键词','搜索文字','','cn','1310');
INSERT INTO met_templates VALUES('1312','medu074','0','27','2','3','','sub_all','全部','全部','页面文字','','cn','1310');
INSERT INTO met_templates VALUES('1313','medu074','0','31','9','3','','first_color','#2eb6ff','#000000','模板主色调','','cn','1310');
INSERT INTO met_templates VALUES('1314','medu074','0','32','4','3','当前窗口打开$T$target=_self$M$新窗口打开$T$target=_blank','urlnew','target=_self','target=_self','内容列表链接打开方式','列表页链接打开方式可在栏目管理中对每个栏目进行单独设置','cn','1310');
INSERT INTO met_templates VALUES('1315','medu074','0','29','2','3','','nodata','没有数据了','没有数据了','无数据提示','','cn','1310');
INSERT INTO met_templates VALUES('1316','medu074','0','28','2','3','','page_ajax_next','加载更多','加载更多','分页文字','无刷新分页默认文字','cn','1310');
INSERT INTO met_templates VALUES('1317','medu074','0','26','2','3','','met_font','','','页面字体','非特殊语种，建议留空使用模板默认字体','cn','1310');
INSERT INTO met_templates VALUES('1318','medu074','2','5','1','3','','met_job','','','招聘模块','','cn','0');
INSERT INTO met_templates VALUES('1319','medu074','2','6','2','3','','cvtitle','在线应聘','在线应聘','按钮文字','','cn','1318');
INSERT INTO met_templates VALUES('1320','medu074','1','1','1','3','','met_index_product','','','首页产品区块','','cn','0');
INSERT INTO met_templates VALUES('1321','medu074','1','18','2','3','','index_product_case_column_lg','4','4','普通电脑显示列数','普通电脑：浏览器窗口宽度大于或等于992像素且小于1600像素','cn','1320');
INSERT INTO met_templates VALUES('1322','medu074','1','19','2','3','','index_product_column_xxl','4','4','大尺寸电脑显示列数','大尺寸电脑：浏览器窗口宽度大于或等于1600像素','cn','1320');
INSERT INTO met_templates VALUES('1323','medu074','1','17','2','3','','index_product_column_md','2','2','平板显示列数','平板：浏览器宽度大于或等于768像素且小于992像素','cn','1320');
INSERT INTO met_templates VALUES('1324','medu074','1','16','2','3','','index_product_column_xs','2','2','手机显示列数','手机：浏览器宽度小于768像素','cn','1320');
INSERT INTO met_templates VALUES('1325','medu074','1','15','9','3','','morebtn_bgcolor','#2eb6ff','#000','more按钮背景色','默认是#000','cn','1320');
INSERT INTO met_templates VALUES('1326','medu074','1','12','9','3','','product_titlecolor','#212121','#000','标题颜色','默认是#000','cn','1320');
INSERT INTO met_templates VALUES('1327','medu074','1','13','9','3','','productdesc_color','#333333','#666','描述颜色','默认是#666','cn','1320');
INSERT INTO met_templates VALUES('1328','medu074','1','14','9','3','','productimg_color','#333333','#000','图片标题颜色','默认是#000','cn','1320');
INSERT INTO met_templates VALUES('1329','medu074','1','2','2','3','','index_product_title','设计方案','标题','区块标题','','cn','1320');
INSERT INTO met_templates VALUES('1330','medu074','1','3','3','3','','index_product_desc','Designing scheme','描述','区块描述','','cn','1320');
INSERT INTO met_templates VALUES('1331','medu074','1','4','6','3','','index_product_id','4','','调用栏目','','cn','1320');
INSERT INTO met_templates VALUES('1332','medu074','1','5','2','3','','index_product_allnum','4','8','调用条数','每个列表调用信息最多条数','cn','1320');
INSERT INTO met_templates VALUES('1333','medu074','1','6','4','3','全部$T$all$M$推荐$T$com','index_product_type','all','all','调用类型','列表信息调用类型，【推荐】可以在添加或管理文章列表时设置。','cn','1320');
INSERT INTO met_templates VALUES('1334','medu074','1','8','2','3','','index_product_img_h','800','439','缩略图高','默认为439px','cn','1320');
INSERT INTO met_templates VALUES('1335','medu074','1','7','2','3','','index_product_img_w','640','640','缩略图宽','默认为640px','cn','1320');
INSERT INTO met_templates VALUES('1336','medu074','1','9','4','3','背景色$T$1$M$背景图片$T$0','bg_type','0','1','区块背景类型','默认是背景色','cn','1320');
INSERT INTO met_templates VALUES('1337','medu074','1','10','9','3','','index_product_bgcolor','#ffffff','#f5f5f5f5','区块背景色','默认是#f5f5f5','cn','1320');
INSERT INTO met_templates VALUES('1338','medu074','1','11','7','3','','index_product_bgpic','../upload/202002/1582622711.jpg','','区块背景图','建议上传宽为1920px高自定义的图片','cn','1320');
INSERT INTO met_templates VALUES('1339','medu074','1','20','4','3','标题居左$T$1$M$标题居中$T$0','img_titleposition','0','1','图片标题位置','默认是居左','cn','1320');
INSERT INTO met_templates VALUES('1340','medu074','1','49','1','3','','met_index_case','','','首页服务案例区块','','cn','0');
INSERT INTO met_templates VALUES('1341','medu074','1','60','4','3','背景色$T$1$M$背景图$T$0','casebg_type','1','','区块背景类型','','cn','1340');
INSERT INTO met_templates VALUES('1342','medu074','1','65','9','3','','caseimg_title','#333333','#000','图片标题颜色','默认是#000','cn','1340');
INSERT INTO met_templates VALUES('1343','medu074','1','64','9','3','','case_desccolor','#555555','#666','描述颜色','默认是#666','cn','1340');
INSERT INTO met_templates VALUES('1344','medu074','1','61','2','3','','caseimg_x','605','480','缩略图宽','默认是480px','cn','1340');
INSERT INTO met_templates VALUES('1345','medu074','1','62','2','3','','caseimg_y','375','350','缩略图高','默认是350px','cn','1340');
INSERT INTO met_templates VALUES('1346','medu074','1','63','9','3','','case_titlecolor','#212121','#000','标题颜色','默认是#000','cn','1340');
INSERT INTO met_templates VALUES('1347','medu074','1','66','9','3','','caseimg_desc','#555555','#000','图片描述颜色','默认是#000','cn','1340');
INSERT INTO met_templates VALUES('1348','medu074','1','50','2','3','','home_case_title','服务案例','标题','区块标题','','cn','1340');
INSERT INTO met_templates VALUES('1349','medu074','1','51','2','3','','home_case_desc','Success stories and customer shows','描述','区块描述','','cn','1340');
INSERT INTO met_templates VALUES('1350','medu074','1','53','2','3','','home_case_num','8','8','调用条数','默认调用8条','cn','1340');
INSERT INTO met_templates VALUES('1351','medu074','1','52','6','3','','home_case_id','38','','栏目选择','','cn','1340');
INSERT INTO met_templates VALUES('1352','medu074','1','58','9','3','','index_case_bgcolor','#ffffff','#f5f5f5','区块背景色','默认#f5f5f5','cn','1340');
INSERT INTO met_templates VALUES('1353','medu074','1','57','2','3','','index_case_column_xs','2','2','手机显示列数','手机：浏览器宽度小于768像素','cn','1340');
INSERT INTO met_templates VALUES('1354','medu074','1','54','2','3','','index_case_column_md','2','2','平板显示列数','平板：浏览器宽度大于或等于768像素且小于992像素','cn','1340');
INSERT INTO met_templates VALUES('1355','medu074','1','55','2','3','','index_case_column_lg','4','4','普通电脑显示列数','普通电脑：浏览器窗口宽度大于或等于992像素且小于1600像素','cn','1340');
INSERT INTO met_templates VALUES('1356','medu074','1','56','2','3','','index_case_column_xxl','4','4','大尺寸电脑显示列数','大尺寸电脑：浏览器窗口宽度大于或等于1600像素','cn','1340');
INSERT INTO met_templates VALUES('1357','medu074','1','59','7','3','','index_case_bgpic','','','区块背景图','建议上传宽为1920px高自定义的图片，上传区块背景图会覆盖区块背景色','cn','1340');
INSERT INTO met_templates VALUES('1358','medu074','1','21','1','3','','met_index_about','','','首页简介区块','','cn','0');
INSERT INTO met_templates VALUES('1359','medu074','1','32','4','3','背景色$T$1$M$背景图片$T$0','aboutbg_type','1','1','背景类型','默认是背景色','cn','1358');
INSERT INTO met_templates VALUES('1360','medu074','1','33','9','3','','about_titlecolor','#212121','#000','标题颜色','默认是#000','cn','1358');
INSERT INTO met_templates VALUES('1361','medu074','1','34','9','3','','about_desccolor','#333333','#666','描述颜色','默认是#666','cn','1358');
INSERT INTO met_templates VALUES('1362','medu074','1','30','7','3','','about_bgpic','','','区块背景图','建议上传宽为1920px高自定义的图片','cn','1358');
INSERT INTO met_templates VALUES('1363','medu074','1','31','9','3','','about_bgcolor','#f5f5f5','#f5f5f5','区块背景颜色','默认为#f5f5f5','cn','1358');
INSERT INTO met_templates VALUES('1364','medu074','1','26','7','3','','home_about_mbimgurl','../upload/202003/1584679035.jpg','','手机端顶部图片','','cn','1358');
INSERT INTO met_templates VALUES('1365','medu074','1','22','2','3','','home_about_title','关于我们','标题','区块标题','','cn','1358');
INSERT INTO met_templates VALUES('1366','medu074','1','23','2','3','','home_about_desc','About us and company introduction','描述','区块描述','','cn','1358');
INSERT INTO met_templates VALUES('1367','medu074','1','24','8','3','','home_about_content','<p dir=\"ltr\" style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">米拓企业建站系统（原名：MetInfo企业网站管理系统）自2009年发布至今，已成为众多企业建站的主流工具。米拓企业建站系统支持将1个网站内容轻松同步到10种终端展示（电脑、手机、平板、微官网、微信小程序、百度小程序、支付宝小程序、字节跳动小程序[今日头条、抖音]、360小程序、QQ小程序），开源免费，适合用于搭建专业的网站</span></p><p dir=\"ltr\" style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">米拓企业建站系统采用PHP+MySQL架构，支持SQLite数据库，全站内置了SEO搜索引擎优化机制，支持用户自定义语言（全球各种语言），支持可视化编辑管理，拥有企业网站常用的功能模块（简介模块、文章模块、产品模块、下载模块、图片模块、招聘模块、在线留言、反馈系统、在线交流、友情链接、网站地图、会员与权限管理、TAG标签），强大的SEO及伪静态设置功能，支持自定义网站颜色风格，支持按栏目自定义Banner图和数据调用，支持手机底部菜单，支持用户自主二次开发，商业模板支持在线升级。系统内置标准的应用插件开发接口，拥有丰富的免费插件和收费插件，如短信接口、robots文件修改、模板制作助手、小程序、支付接口、商城模块、系统诊所、图片加速、网站广告插件等。无论你是技术大咖还是建站小白，都可以使用MetInfo快速搭建一个功能齐全的响应式专业网站。</span></p><p style=\"text-align: center; text-indent: 0em;\"><span style=\"text-align:center;font-size: 14px;\"><video class=\"edui-upload-video vjs-default-skin video-js\" controls=\"\" poster=\"\" width=\"511\" height=\"330\" src=\"../upload/video/202002/1582622058385196.mp4\" data-setup=\"{}\"><source src=\"../upload/video/202002/1582622058385196.mp4\" type=\"video/mp4\"/></video></span></p>','','区块内容','','cn','1358');
INSERT INTO met_templates VALUES('1368','medu074','1','27','9','3','','abouttext_bgcolor','#f5f5f5','#f5f5f5','内容背景色','默认是#f5f5f5','cn','1358');
INSERT INTO met_templates VALUES('1369','medu074','1','28','9','3','','morebtn_color','#2eb6ff','#ffffff','按钮颜色','默认是模板主色','cn','1358');
INSERT INTO met_templates VALUES('1370','medu074','1','29','4','3','关闭$T$1$M$开启$T$0','home_about_img_ok','0','','顶部图片开关','默认是关闭','cn','1358');
INSERT INTO met_templates VALUES('1371','medu074','1','25','7','3','','home_about_imgurl','../upload/202003/1584679600.jpg','','电脑端顶部图片','建议图片尺寸是1920*550','cn','1358');
INSERT INTO met_templates VALUES('1372','medu074','3','1','1','3','','news_bar','','','文章模块','','cn','0');
INSERT INTO met_templates VALUES('1373','medu074','3','6','2','3','','news_bar_list_num','5','5','侧栏列表文章数量','','cn','1372');
INSERT INTO met_templates VALUES('1374','medu074','3','7','4','3','$M$全部$T$all$M$推荐$T$com','news_bar_list_type','all','all','侧栏列表文章类型','','cn','1372');
INSERT INTO met_templates VALUES('1375','medu074','3','2','4','3','$M$开启$T$1$M$关闭$T$0','bar_column3_open','1','1','三级栏目开关','除开产品模块以外的侧栏','cn','1372');
INSERT INTO met_templates VALUES('1376','medu074','3','4','4','3','$M$开启$T$1$M$关闭$T$0','news_bar_list_open','1','1','侧栏文章列表开关','','cn','1372');
INSERT INTO met_templates VALUES('1377','medu074','3','3','4','3','$M$开启$T$1$M$关闭$T$0','bar_column_open','1','1','侧栏栏目开关','除开产品模块以外的侧栏','cn','1372');
INSERT INTO met_templates VALUES('1378','medu074','3','5','2','3','','news_bar_list_title','为您推荐','为您推荐','侧栏文章列表标题','','cn','1372');
INSERT INTO met_templates VALUES('1379','medu074','3','8','4','3','开启$T$1$M$关闭$T$0','product_bar_list_open','1','1','侧栏热门产品开关','','cn','1372');
INSERT INTO met_templates VALUES('1380','medu074','3','9','2','3','','product_bar_list_num','4','3','侧栏热门产品数量','默认是3条','cn','1372');
INSERT INTO met_templates VALUES('1381','medu074','3','10','2','3','','product_bar_list_title','热门产品','热门产品','侧栏热门产品标题','','cn','1372');
INSERT INTO met_templates VALUES('1382','medu074','3','11','4','3','全部$T$all$M$推荐$T$com','product_bar_list_type','all','all','侧栏热门产品类型','','cn','1372');
INSERT INTO met_templates VALUES('1383','medu074','3','12','6','3','','product_bar_id','4','','栏目选择','','cn','1372');
INSERT INTO met_templates VALUES('1384','medu074','2','1','1','3','','met_download','','','下载模块','','cn','0');
INSERT INTO met_templates VALUES('1385','medu074','2','2','2','3','','download','','立即下载','按钮文字','','cn','1384');
INSERT INTO met_templates VALUES('1386','medu074','0','39','1','3','','met_contact','','','底部联系信息设置','','cn','0');
INSERT INTO met_templates VALUES('1387','medu074','0','56','2','3','','footinfo_email','','','邮箱地址','','cn','1386');
INSERT INTO met_templates VALUES('1388','medu074','0','55','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_emailok','0','0','邮箱','','cn','1386');
INSERT INTO met_templates VALUES('1389','medu074','0','54','2','3','','footinfo_facebook','','','Facebook网址','','cn','1386');
INSERT INTO met_templates VALUES('1390','medu074','0','51','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_googleok','0','0','google+','','cn','1386');
INSERT INTO met_templates VALUES('1391','medu074','0','53','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_facebookok','0','0','Facebook','','cn','1386');
INSERT INTO met_templates VALUES('1392','medu074','0','50','2','3','','footinfo_twitter','','','twitter网址','','cn','1386');
INSERT INTO met_templates VALUES('1393','medu074','0','49','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_twitterok','0','0','twitter（推特）','','cn','1386');
INSERT INTO met_templates VALUES('1394','medu074','0','48','2','3','','footinfo_sina','','','新浪微博网址','请输入微博网址','cn','1386');
INSERT INTO met_templates VALUES('1395','medu074','0','47','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_sina_ok','1','1','新浪微博','','cn','1386');
INSERT INTO met_templates VALUES('1396','medu074','0','46','2','3','','footinfo_qq','4000084433','','QQ号码','点击QQ链接可直接对话，需要先到 shang.qq.com 免费开通。<br/>企业营销QQ 无需开通','cn','1386');
INSERT INTO met_templates VALUES('1397','medu074','0','45','4','3','$M$个人QQ$T$1$M$企业营销QQ$T$2','foot_info_qqtype','2','1','QQ类型','个人QQ和企业营销QQ超链接结构不一样，因此请务必选择正确。','cn','1386');
INSERT INTO met_templates VALUES('1398','medu074','0','44','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_qq_ok','1','1','QQ','','cn','1386');
INSERT INTO met_templates VALUES('1399','medu074','0','42','4','3','$M$开启$T$1$M$关闭$T$0','footinfo_wx_ok','1','1','微信','','cn','1386');
INSERT INTO met_templates VALUES('1400','medu074','0','52','2','3','','footinfo_google','','','google+网址','','cn','1386');
INSERT INTO met_templates VALUES('1401','medu074','0','41','2','3','','footinfo_dsc','0731-85514433','','描述文字','','cn','1386');
INSERT INTO met_templates VALUES('1402','medu074','0','40','2','3','','footinfo_tel','服务热线','','服务热线','','cn','1386');
INSERT INTO met_templates VALUES('1403','medu074','0','43','7','3','','footinfo_wx','../upload/202002/1582625379.jpg','','微信二维码','','cn','1386');
INSERT INTO met_templates VALUES('1404','medu074','0','57','2','3','','footinfo_time','周一至周五 9：00—18：00','周一至周五 9：00—18：00','时间','','cn','1386');
INSERT INTO met_templates VALUES('1405','medu074','1','67','1','3','','met_index_service','','','首页服务区块','','cn','0');
INSERT INTO met_templates VALUES('1406','medu074','1','78','9','3','','service_titlecolor','#212121','#000','标题颜色','默认是#000','cn','1405');
INSERT INTO met_templates VALUES('1407','medu074','1','77','4','3','背景色$T$1$M$背景图片$T$0','sevicebg_type','1','1','背景类型','默认是背景色','cn','1405');
INSERT INTO met_templates VALUES('1408','medu074','1','76','7','3','','service_bgpic','','','区块背景图','建议上传宽为1920px高自定义的图片','cn','1405');
INSERT INTO met_templates VALUES('1409','medu074','1','80','4','3','开启$T$1$M$关闭$T$0','serviceok','0','1','区块显示开关','','cn','1405');
INSERT INTO met_templates VALUES('1410','medu074','1','79','9','3','','service_desccolor','#333333','#666','描述颜色','默认是#666','cn','1405');
INSERT INTO met_templates VALUES('1411','medu074','1','75','9','3','','service_bgcolor','#ffffff','#f5f5f5','区块背景色','默认是#f5f5f5','cn','1405');
INSERT INTO met_templates VALUES('1412','medu074','1','68','2','3','','index_service_title','什么是10合1？','标题','区块标题','','cn','1405');
INSERT INTO met_templates VALUES('1413','medu074','1','69','3','3','','index_service_desc','使用米拓企业建站系统搭建1个网站，即可同步网站内容到以下10种终端展示','描述','区块描述','','cn','1405');
INSERT INTO met_templates VALUES('1414','medu074','1','74','2','3','','index_service_column_xs','2','1','手机显示列数','手机：浏览器宽度小于768像素','cn','1405');
INSERT INTO met_templates VALUES('1415','medu074','1','71','2','3','','index_service_column_xxl','5','4','大尺寸电脑显示列数','大尺寸电脑：浏览器窗口宽度大于或等于1600像素','cn','1405');
INSERT INTO met_templates VALUES('1416','medu074','1','72','2','3','','index_service_column_lg','5','4','普通电脑显示列数','普通电脑：浏览器窗口宽度大于或等于992像素且小于1600像素','cn','1405');
INSERT INTO met_templates VALUES('1417','medu074','1','73','2','3','','index_service_column_md','2','2','平板显示列数','平板：浏览器宽度大于或等于768像素且小于992像素','cn','1405');
INSERT INTO met_templates VALUES('1418','medu074','1','70','6','3','','index_service_id','94','','调用栏目','调用子栏目标题、描述、小图标','cn','1405');
INSERT INTO met_templates VALUES('1419','medu074','2','11','1','3','','met_product','','','产品模块','','cn','0');
INSERT INTO met_templates VALUES('1420','medu074','2','12','9','3','','product_btncolor','#613333','','查看详情文字颜色','默认是模板配色','cn','1419');
INSERT INTO met_templates VALUES('1421','medu074','2','13','9','3','','product_desccolor','','','描述文字颜色','默认是模板副色','cn','1419');
INSERT INTO met_templates VALUES('1422','medu074','2','14','2','3','','product_moredesc','查看更多','查看详情','查看更多','','cn','1419');
INSERT INTO met_templates VALUES('1423','medu074','2','15','9','3','','product_item_bgcolor','#ffffff','#f6f6f6','列表区块背景色','默认是#f6f6f6','cn','1419');
INSERT INTO met_templates VALUES('1424','medu074','2','16','2','3','','more','更多','more','查看更多文本','手机端不显示','cn','1419');
INSERT INTO met_templates VALUES('1425','medu074','2','17','2','3','','img_maxh','330','350','图片模块最大高度','默认为350 （定义图片外层区块的最大高度，内层图片高出的话会有个隐藏的滚动条，滚动条在内侧可滚动）','cn','1419');
INSERT INTO met_templates VALUES('1426','medu074','2','18','9','3','','box_borcolor','','#e8e8e8','内容边框颜色','默认为#E8E8E8','cn','1419');
INSERT INTO met_templates VALUES('1427','medu074','2','19','9','3','','box_borhovcolor','','','内容边框鼠标经过颜色','默认继承模板配色调','cn','1419');
INSERT INTO met_templates VALUES('1428','medu074','2','20','9','3','','box_titlecolor','','','内容标题颜色','默认继承模板主色调','cn','1419');
INSERT INTO met_templates VALUES('1429','medu074','2','21','9','3','','box_hrcolor','','#cccccc','内容标题下方横线颜色','默认为#ccc','cn','1419');
INSERT INTO met_templates VALUES('1430','medu074','2','22','9','3','','box_hrhovcolor','','','内容标题下方横线鼠标经过颜色','默认继承模板配色调','cn','1419');
INSERT INTO met_templates VALUES('1431','medu074','2','23','9','3','','box_desccolor','','','内容描述颜色','默认为模板副色调','cn','1419');
INSERT INTO met_templates VALUES('1432','medu074','2','24','9','3','','box_morecolor','','','查看更多主颜色','默认继承模板配色调','cn','1419');
INSERT INTO met_templates VALUES('1433','medu074','2','25','9','3','','box_morecolors','','#ffffff','查看更多副颜色','默认为#ffffff','cn','1419');

DROP TABLE IF EXISTS met_ui_config;
CREATE TABLE `met_ui_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL DEFAULT '0',
  `parent_name` varchar(100) NOT NULL DEFAULT '',
  `ui_name` varchar(100) NOT NULL DEFAULT '',
  `skin_name` varchar(100) NOT NULL DEFAULT '',
  `uip_type` int(10) NOT NULL DEFAULT '0',
  `uip_style` int(1) NOT NULL DEFAULT '0',
  `uip_select` varchar(500) NOT NULL DEFAULT '1',
  `uip_name` varchar(100) NOT NULL DEFAULT '',
  `uip_key` varchar(100) NOT NULL DEFAULT '',
  `uip_value` text NOT NULL,
  `uip_default` varchar(255) NOT NULL DEFAULT '',
  `uip_title` varchar(100) NOT NULL DEFAULT '',
  `uip_description` varchar(255) NOT NULL DEFAULT '',
  `uip_order` int(10) NOT NULL DEFAULT '0',
  `lang` varchar(100) NOT NULL DEFAULT '',
  `uip_hidden` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_ui_list;
CREATE TABLE `met_ui_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `installid` int(10) NOT NULL DEFAULT '0',
  `parent_name` varchar(100) NOT NULL DEFAULT '',
  `ui_name` varchar(100) NOT NULL DEFAULT '',
  `skin_name` varchar(100) NOT NULL DEFAULT '',
  `ui_page` varchar(200) NOT NULL DEFAULT '',
  `ui_title` varchar(100) NOT NULL DEFAULT '',
  `ui_description` varchar(500) NOT NULL DEFAULT '',
  `ui_order` int(10) NOT NULL DEFAULT '0',
  `ui_version` varchar(100) NOT NULL DEFAULT '',
  `ui_installtime` int(10) NOT NULL DEFAULT '0',
  `ui_edittime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_user;
CREATE TABLE `met_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `head` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `tel` varchar(20) NOT NULL DEFAULT '',
  `groupid` int(11) NOT NULL DEFAULT '0',
  `register_time` int(11) NOT NULL DEFAULT '0',
  `register_ip` varchar(15) NOT NULL DEFAULT '',
  `login_time` int(11) NOT NULL DEFAULT '0',
  `login_count` int(11) NOT NULL DEFAULT '0',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `valid` int(1) NOT NULL DEFAULT '0',
  `source` varchar(20) NOT NULL DEFAULT '',
  `lang` varchar(50) NOT NULL DEFAULT '',
  `idvalid` int(1) NOT NULL DEFAULT '0',
  `reidinfo` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO met_user VALUES('1','fghdfghdfgh','d06ab98b24bd315ab9a20477c1a26ca4','','','','1','1584108386','49.4.253.68','1584108386','1','49.4.253.68','1','','cn','0','');

DROP TABLE IF EXISTS met_user_group;
CREATE TABLE `met_user_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `access` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO met_user_group VALUES('1','普通会员','1','cn');
INSERT INTO met_user_group VALUES('2','代理商','3','cn');

DROP TABLE IF EXISTS met_user_group_pay;
CREATE TABLE `met_user_group_pay` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `recharge_price` double(10,2) NOT NULL DEFAULT '0.00',
  `buyok` int(1) NOT NULL DEFAULT '0',
  `rechargeok` int(50) NOT NULL DEFAULT '0',
  `lang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_user_list;
CREATE TABLE `met_user_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL DEFAULT '0',
  `paraid` int(11) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `lang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS met_user_other;
CREATE TABLE `met_user_other` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `met_uid` int(11) NOT NULL DEFAULT '0',
  `openid` varchar(100) NOT NULL DEFAULT '',
  `unionid` varchar(100) NOT NULL DEFAULT '',
  `access_token` varchar(255) NOT NULL DEFAULT '',
  `expires_in` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


