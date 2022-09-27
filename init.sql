DROP DATABASE IF EXISTS `course_selection`;

CREATE DATABASE `course_selection`;
USE `course_selection`;

CREATE TABLE `student`
(
    `id` int PRIMARY KEY AUTO_INCREMENT,
    `student_id` char(12) NOT NULL UNIQUE,
    `name` char(10) NOT NULL,
    `college_grade` char(6) NOT NULL,
    `major` char(20) NOT NULL DEFAULT "",
    `class` char(20) NOT NULL DEFAULT "",
    `email` varchar(255) NOT NULL DEFAULT ""
);

CREATE TABLE `course`
(
    `id` int PRIMARY KEY AUTO_INCREMENT,
    `course_id` char(20) NOT NULL UNIQUE,
    `name` char(15) NOT NULL,
    `teacher` char(10) NOT NULL,
    `classroom` char(15) NOT NULL DEFAULT "",
    `max_capacity` smallint NOT NULL,
    `cur_capacity` smallint NOT NULL DEFAULT 0,
    CONSTRAINT `check_max_capacity` CHECK (`max_capacity` >= 0),
    CONSTRAINT `check_cur_capacity` CHECK (`cur_capacity` >= 0)
);

CREATE TABLE `selection`
(
    `id` int PRIMARY KEY AUTO_INCREMENT,
    `student_id` char(12) NOT NULL,
    `course_id` char(20) NOT NULL,
    `score` smallint,
    FOREIGN KEY(`student_id`) REFERENCES `student`(`student_id`),
    FOREIGN KEY(`course_id`) REFERENCES `course`(`course_id`),
    CONSTRAINT `check_score` CHECK(score >= 0 AND score <= 100)
);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB2164', '电子技术', '施龙宸', 'ROOM9404', 0, 21);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB6194', '离散数学', '孙驿豪', 'ROOM9392', 0, 26);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB2503', '程序设计', '苏紫仕', 'ROOM0244', 0, 39);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB7738', '数据结构', '许贵益', 'ROOM7684', 0, 31);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB8230', '操作系统', '奚宇宇', 'ROOM4655', 0, 31);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB5063', '计算机组成原理', '沈正瑶', 'ROOM3267', 0, 29);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB5363', '微机系统', '卫艺宗', 'ROOM3121', 0, 26);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB9527', '计算机系统结构', '水伯嘉', 'ROOM1475', 0, 39);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB1684', '编译原理', '俞甜子', 'ROOM3947', 0, 29);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB3675', '计算机网络', '郑瑶喜', 'ROOM7752', 0, 33);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB6937', '数据库系统', '李海全', 'ROOM4676', 0, 35);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB4279', '软件工程', '何钰豪', 'ROOM9069', 0, 24);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB7569', '人工智能', '花寅云', 'ROOM9248', 0, 20);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB8857', '计算机图形学', '花鹏伟', 'ROOM3770', 0, 23);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB3314', '数字图像处理', '云伟洋', 'ROOM4404', 0, 28);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB5920', '计算机通讯原理', '褚甜浩', 'ROOM4230', 0, 27);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB2071', '多媒体信息处理技术', '凤雯驿', 'ROOM4270', 0, 26);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB8587', '数字信号处理', '孙浩帝', 'ROOM7099', 0, 25);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB1076', '计算机控制', '花悦寅', 'ROOM9264', 0, 39);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB9560', '网络计算', '魏宇艺', 'ROOM6172', 0, 37);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB0779', '算法设计与分析', '周琪天', 'ROOM1905', 0, 21);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB8349', '信息安全', '华嘉毓', 'ROOM3839', 0, 20);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB3878', '应用密码学基础', '孔源淳', 'ROOM2871', 0, 39);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB0683', '信息对抗', '鲁伟紫', 'ROOM1832', 0, 40);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB4444', '移动计算', '苏艾沁', 'ROOM2511', 0, 37);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB8825', '数论与有限域基础', '沈豪贵', 'ROOM9059', 0, 21);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB3140', '人机界面设计', '严运益', 'ROOM1312', 0, 32);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB5403', '面向对象程序设计', '任嵘信', 'ROOM9140', 0, 29);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB2213', '高等代数', '华槐洋', 'ROOM8900', 0, 24);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB5872', '数学分析', '邹明书', 'ROOM6843', 0, 24);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB1015', '解析几何', '吕捷天', 'ROOM2881', 0, 35);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB0408', '概率论', '金贵财', 'ROOM0406', 0, 30);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB9382', '高等几何', '郑捷曦', 'ROOM7982', 0, 32);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB7504', '微分几何', '郑卿源', 'ROOM8491', 0, 27);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB8282', '复变函数', '褚宇霞', 'ROOM2485', 0, 23);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB3668', '实变函数', '施华嘉', 'ROOM8296', 0, 25);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB7601', '微分方程', '邹雯林', 'ROOM5963', 0, 21);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB9793', '近世代数', '赵莉阳', 'ROOM0980', 0, 26);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB2281', '初等数论', '葛天心', 'ROOM3793', 0, 33);

INSERT INTO `course` (`course_id`, `name`, `teacher`, `classroom`, `cur_capacity`, `max_capacity`)
VALUES ('JXB4679', '普通物理学', '沈涵书', 'ROOM5284', 0, 35);

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('81918377', '曹熙文', '2019', '体育教育', 'CLASS5138', 'OoMKhUqC@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('15820123', '李艳璀', '2022', '法学', 'CLASS3625', 'gn4v8mrWuYF@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('97294745', '袁兵贵', '2019', '汉语言文学', 'CLASS6590', '5yP6oSiLVo@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('54217405', '施尔浩', '2021', '新闻学', 'CLASS7761', 'dJHNA1Uga@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('17229485', '秦鹏槐', '2017', '历史学', 'CLASS6340', 'Ac54GpEN@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('82051024', '水君洋', '2021', '教育学', 'CLASS1993', 'XisZIyGFXJa2@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('11681898', '褚昆满', '2016', '法学', 'CLASS1668', 'NUAB9X62u6T@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('51972773', '许璀运', '2018', '信息与计算科学', 'CLASS7448', '9KoUD2i7@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('62805843', '水辉运', '2018', '体育教育', 'CLASS6339', 'dURRARa6a9R@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('58959817', '孙艳悦', '2022', '新闻学', 'CLASS9479', 'x6zFoxyhVVU@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('95260176', '彭明海', '2018', '法学', 'CLASS5642', 'Tw3koFonYEG@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('72947110', '许国满', '2020', '体育教育', 'CLASS3144', 'Rae1QbMs0@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('47834346', '花东骏', '2019', '财政学', 'CLASS7403', 'W3Ngv6X7s@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('43248853', '苗心诗', '2021', '哲学', 'CLASS7463', '39BHmq55Y6sO@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('42924975', '方运辉', '2018', '历史学', 'CLASS4230', 'dqhMqapf9Dy@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('42624646', '花子誉', '2020', '财政学', 'CLASS8595', 'b1XDj606jbO@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('81814043', '苏杰宸', '2022', '历史学', 'CLASS9563', 'B4Q1jEdvXB7@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('89109718', '冯苹莉', '2016', '新闻学', 'CLASS2077', 'nD4SYm3ORo@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('41458270', '郑美宇', '2018', '经济学', 'CLASS5135', 'hjzEjVukwrM@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('77553888', '昌东海', '2017', '外交学', 'CLASS0778', 'Hx9gjT6jblU@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('42773295', '吴玄璀', '2022', '应用化学', 'CLASS0182', 'FGTAOsR8@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('91270388', '张豪治', '2018', '财政学', 'CLASS2194', 'Dqv3TiSws48@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('96549079', '范子天', '2020', '信息与计算科学', 'CLASS8564', 'eUxTk2YyTY@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('13076140', '俞宸昊', '2019', '历史学', 'CLASS9859', 'akr3axE4wT@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('99967855', '方誉辉', '2018', '哲学', 'CLASS3535', 'wW8ZGrErO@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('25668875', '窦子璀', '2016', '地理科学', 'CLASS6960', 'bEkV54XEn5sf@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('74628012', '谢美子', '2020', '法学', 'CLASS5137', 'xbfey6y6l@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('64672943', '章墨帅', '2020', '物理学', 'CLASS5071', 'VmaRp5QjoZ@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('95447036', '蒋云曦', '2017', '财政学', 'CLASS8506', '489fBMqa5ZLY@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('39864169', '赵莉贵', '2016', '治安学', 'CLASS9202', 'mzkdlch5E@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('89119072', '昌宗淳', '2016', '社会学', 'CLASS6374', 'bsMzDNkBc3@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('90266057', '葛明璀', '2020', '汉语言文学', 'CLASS3179', 'SsXE2EngoRqP@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('54532684', '云华龙', '2018', '体育教育', 'CLASS0583', 'NxhgzIRcB@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('46758139', '章甜沁', '2019', '应用化学', 'CLASS6723', '009x5IvC@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('48957980', '鲁天云', '2016', '金融学', 'CLASS9178', 'ZgJFv1jJCU@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('35787536', '沈源宇', '2019', '历史学', 'CLASS0717', 'wQuMkRSy9Y4Z@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('69026577', '苗文俊', '2016', '汉语言文学', 'CLASS6586', 'C7SVYRCXs@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('21236681', '郎思艳', '2019', '物理学', 'CLASS8203', 'JYP6DrYYu@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('13934226', '凤苹悦', '2019', '体育教育', 'CLASS1713', '5BQYa26NeS@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('21832356', '韦国尔', '2018', '财政学', 'CLASS3931', 'mrrLHh6Tc6Sp@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('64602294', '严超治', '2022', '金融学', 'CLASS2459', 'OCOTHbr7Sf@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('62963648', '彭诚源', '2017', '经济学', 'CLASS9139', 'KgWWT5Txt@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('56982423', '严宇天', '2017', '法学', 'CLASS9348', 'blgBBxR77B@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('40506285', '赵钰轩', '2017', '财政学', 'CLASS4517', 'BHRV5OGjI@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('47388430', '范莲治', '2016', '哲学', 'CLASS5920', 'KpKXiRT6n@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('93117741', '喻俊云', '2022', '哲学', 'CLASS1739', 'gAVuP0k5x2zm@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('55277733', '邹欣金', '2019', '治安学', 'CLASS1148', 'GRdYAZnmX@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('47479103', '戚誉天', '2021', '财政学', 'CLASS9632', '92SahVZV3T@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('32595580', '凤财雯', '2021', '哲学', 'CLASS7932', 'Cols9B9v@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('66847446', '褚嘉天', '2019', '体育教育', 'CLASS8205', 'Jr42IIi7@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('79543673', '窦嘉艾', '2022', '法学', 'CLASS1135', 'zOtpKeDs6@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('24310263', '邹嘉信', '2021', '治安学', 'CLASS2263', 'tlrkMS9wIgvO@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('37638360', '吕苹宇', '2020', '金融学', 'CLASS4445', 'wHpMaT3XPa6L@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('73803347', '褚熙艾', '2021', '应用化学', 'CLASS2986', 'pGxqHNH6eA13@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('90583231', '云辉艾', '2016', '哲学', 'CLASS1842', 'EhfspMuED4m@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('27512021', '章天杰', '2022', '社会学', 'CLASS6936', 'QnAdUBUaWIAk@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('69928845', '王宗璀', '2016', '物理学', 'CLASS9937', 'Eel0JTn1K6@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('89050089', '陈天驿', '2016', '财政学', 'CLASS2403', 'A2LaMbXQ7@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('58469386', '张墨财', '2016', '应用化学', 'CLASS4917', 'M24CppA1@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('92982738', '曹宇海', '2022', '财政学', 'CLASS5278', 'tw1rpEcVAYR@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('36220518', '吴昆文', '2018', '汉语言文学', 'CLASS6574', 'k3AgqHZx2EF@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('12032377', '尤喜曦', '2019', '物理学', 'CLASS0473', 'CE9ehfH72ReU@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('95829395', '严益瑶', '2017', '汉语言文学', 'CLASS7684', 'S6eOMzK029U@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('86207473', '魏苹天', '2019', '应用化学', 'CLASS1892', 'qPiQmRKQS5@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('23150362', '卫艺骏', '2022', '金融学', 'CLASS0189', 'Alqk51v4sE@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('79489891', '范木杰', '2022', '新闻学', 'CLASS5968', 'QA8kAGuL@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('96165281', '范巧天', '2020', '信息与计算科学', 'CLASS1804', 'oLpQcfBI4oVs@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('49545172', '严捷寅', '2017', '地理科学', 'CLASS3833', 'lAwgSGWIjGpC@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('23808058', '褚贵甜', '2017', '汉语言文学', 'CLASS6150', 'dVjNqFt3@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('35754306', '苗美伯', '2020', '信息与计算科学', 'CLASS9317', '38TOtbCsKx@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('61850098', '奚昆伟', '2019', '应用化学', 'CLASS4381', 'zAth9XlbqNA@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('88823872', '鲁天瑶', '2016', '历史学', 'CLASS1669', 'SRuKTtQzNA@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('73820775', '姜莉苹', '2021', '外交学', 'CLASS3657', 'qiwD0wXpie@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('94557566', '杨宇熙', '2022', '法学', 'CLASS2928', 'N9R5D54g7X@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('31504441', '蒋益兵', '2022', '经济学', 'CLASS3584', 'stAwWDKu46e@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('66853592', '沈艳超', '2021', '地理科学', 'CLASS5728', 'hDYnTjfxLX@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('96301149', '李源喜', '2016', '地理科学', 'CLASS5294', 'e5TaYcael@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('76831897', '任运昊', '2021', '金融学', 'CLASS8723', 'TBxYv9Zx3VPQ@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('81181700', '尤林诗', '2020', '历史学', 'CLASS7061', 'q6HxJURvaO4V@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('93381391', '葛美桥', '2022', '地理科学', 'CLASS7322', 'C5yYsJLd@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('50228818', '褚誉心', '2017', '哲学', 'CLASS1851', 'DrFF8Xr8L@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('62846316', '朱信贵', '2016', '教育学', 'CLASS4257', '74HVbVSUdvav@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('11040522', '吕辉梅', '2017', '金融学', 'CLASS3348', 'GoGwN3nWudnT@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('25694945', '任瑜卿', '2022', '物理学', 'CLASS9140', '3kp0p7XSmSd@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('97090442', '杨瑶巧', '2018', '应用化学', 'CLASS7951', 'cSHdRATC6B@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('38960049', '何满淳', '2017', '治安学', 'CLASS2005', 'UFY9uka3MSo@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('94918034', '葛宇尔', '2018', '物理学', 'CLASS9714', '7BHIkQuoe@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('57293360', '杨艺华', '2019', '治安学', 'CLASS3867', 'L5jNZ5id1xM@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('31880916', '奚正益', '2020', '新闻学', 'CLASS3267', 'Ujg5XsL4BMU@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('48417955', '许墨源', '2018', '地理科学', 'CLASS1687', 'r6lsR91fIz@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('89132184', '韦熙利', '2017', '历史学', 'CLASS5713', 'lvjwzj540I@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('16960235', '杨诚金', '2020', '经济学', 'CLASS5552', 'CfHZRzSqvQUD@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('78057231', '喻泽瑶', '2016', '新闻学', 'CLASS4096', 'mgNnq3al@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('49993494', '袁峻骏', '2019', '外交学', 'CLASS2092', '8u9vS35vRXj@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('97548804', '吕林海', '2018', '社会学', 'CLASS2064', 'ReOCGOp794AP@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('19390308', '卫昆信', '2018', '地理科学', 'CLASS5038', '2qt8vCOvFrVy@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('47670166', '冯宇源', '2018', '哲学', 'CLASS9798', 'uoYxeiMrFB@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('20797815', '吕帅森', '2021', '金融学', 'CLASS9914', 'aygK6Z3t@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('63267107', '马瑶墨', '2020', '金融学', 'CLASS5071', 'XMlmlVJ6O@buaa.edu.cn');

INSERT INTO `student` (`student_id`, `name`, `college_grade`, `major`, `class`, `email`)
VALUES ('68881653', '马宸艾', '2019', '信息与计算科学', 'CLASS8581', 'MlEIZSg8@buaa.edu.cn');

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81918377', 'JXB2281', 100);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81918377', 'JXB1015', 8);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81918377', 'JXB3668', 66);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81918377', 'JXB8587', 34);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81918377', 'JXB9527', 8);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81918377', 'JXB4679', 30);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81918377', 'JXB4444', 30);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81918377', 'JXB6937', 82);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('15820123', 'JXB9793', 83);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('15820123', 'JXB8349', 10);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('15820123', 'JXB4679', 56);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('15820123', 'JXB4444', 69);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('15820123', 'JXB2503', 58);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('15820123', 'JXB3140', 36);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('15820123', 'JXB5403', 7);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('15820123', 'JXB7569', 59);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('15820123', 'JXB1015', 85);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97294745', 'JXB5363', 93);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97294745', 'JXB3668', 40);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97294745', 'JXB8587', 50);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97294745', 'JXB8349', 26);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97294745', 'JXB2281', 99);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97294745', 'JXB5063', 69);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97294745', 'JXB4679', 18);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97294745', 'JXB9793', 70);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97294745', 'JXB6194', 54);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54217405', 'JXB7601', 42);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54217405', 'JXB3668', 60);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54217405', 'JXB2213', 65);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54217405', 'JXB8230', 56);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54217405', 'JXB4279', 53);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54217405', 'JXB5403', 5);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54217405', 'JXB8587', 68);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54217405', 'JXB9382', 19);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('17229485', 'JXB7569', 95);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('17229485', 'JXB4679', 42);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('17229485', 'JXB1684', 15);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('17229485', 'JXB8230', 49);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('17229485', 'JXB5403', 17);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('17229485', 'JXB5363', 55);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('17229485', 'JXB1015', 48);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('17229485', 'JXB2071', 84);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('17229485', 'JXB0779', 95);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('82051024', 'JXB2281', 47);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('82051024', 'JXB3675', 29);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('82051024', 'JXB0408', 40);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('82051024', 'JXB5063', 24);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('82051024', 'JXB3314', 37);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('82051024', 'JXB9527', 21);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('82051024', 'JXB7569', 32);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('82051024', 'JXB2164', 57);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('82051024', 'JXB2213', 47);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11681898', 'JXB9560', 72);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11681898', 'JXB9793', 61);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11681898', 'JXB3140', 11);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11681898', 'JXB8230', 12);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11681898', 'JXB7504', 31);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11681898', 'JXB8282', 35);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11681898', 'JXB4444', 75);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11681898', 'JXB0683', 17);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11681898', 'JXB3675', 49);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('51972773', 'JXB2213', 83);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('51972773', 'JXB7601', 8);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('51972773', 'JXB5363', 45);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('51972773', 'JXB2281', 51);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('51972773', 'JXB8857', 19);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('51972773', 'JXB2164', 37);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('51972773', 'JXB8230', 84);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('51972773', 'JXB1076', 48);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('51972773', 'JXB7569', 27);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('51972773', 'JXB9527', 99);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62805843', 'JXB3675', 0);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62805843', 'JXB8857', 79);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62805843', 'JXB9560', 74);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62805843', 'JXB4679', 80);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62805843', 'JXB8349', 16);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62805843', 'JXB7569', 80);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62805843', 'JXB3878', 76);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62805843', 'JXB5363', 12);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62805843', 'JXB8230', 98);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58959817', 'JXB5363', 40);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58959817', 'JXB9560', 95);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58959817', 'JXB0779', 2);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58959817', 'JXB2213', 65);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58959817', 'JXB1684', 11);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58959817', 'JXB3140', 76);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58959817', 'JXB4679', 24);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58959817', 'JXB9793', 31);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95260176', 'JXB3675', 67);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95260176', 'JXB1076', 91);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95260176', 'JXB2071', 22);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95260176', 'JXB7569', 44);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95260176', 'JXB4679', 41);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95260176', 'JXB3878', 82);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95260176', 'JXB6937', 65);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95260176', 'JXB1684', 90);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95260176', 'JXB8282', 24);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('72947110', 'JXB8282', 49);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('72947110', 'JXB3140', 32);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('72947110', 'JXB9560', 29);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('72947110', 'JXB2071', 88);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('72947110', 'JXB4279', 39);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('72947110', 'JXB8857', 43);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('72947110', 'JXB0683', 76);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('72947110', 'JXB9382', 1);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('72947110', 'JXB4444', 32);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('72947110', 'JXB1015', 94);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47834346', 'JXB8857', 86);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47834346', 'JXB3878', 62);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47834346', 'JXB5363', 29);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47834346', 'JXB5872', 60);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47834346', 'JXB7601', 80);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47834346', 'JXB2503', 73);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47834346', 'JXB7504', 14);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47834346', 'JXB6194', 25);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47834346', 'JXB2213', 17);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('43248853', 'JXB8282', 79);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('43248853', 'JXB5403', 64);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('43248853', 'JXB3668', 90);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('43248853', 'JXB1684', 77);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('43248853', 'JXB6937', 98);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('43248853', 'JXB1076', 73);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('43248853', 'JXB0683', 79);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('43248853', 'JXB5920', 63);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('43248853', 'JXB7601', 8);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42924975', 'JXB6194', 69);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42924975', 'JXB1015', 70);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42924975', 'JXB9527', 74);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42924975', 'JXB0408', 97);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42924975', 'JXB5403', 18);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42924975', 'JXB6937', 72);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42924975', 'JXB7504', 77);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42924975', 'JXB3140', 77);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42924975', 'JXB4679', 54);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42624646', 'JXB1015', 54);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42624646', 'JXB8282', 36);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42624646', 'JXB8587', 65);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42624646', 'JXB0779', 28);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42624646', 'JXB3314', 69);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42624646', 'JXB5363', 8);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42624646', 'JXB7569', 19);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42624646', 'JXB8230', 94);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81814043', 'JXB5872', 63);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81814043', 'JXB1076', 26);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81814043', 'JXB8230', 3);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81814043', 'JXB4679', 11);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81814043', 'JXB0779', 55);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81814043', 'JXB0683', 82);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81814043', 'JXB2281', 35);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81814043', 'JXB7738', 0);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81814043', 'JXB3314', 73);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89109718', 'JXB5872', 12);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89109718', 'JXB7569', 86);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89109718', 'JXB3314', 3);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89109718', 'JXB2071', 39);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89109718', 'JXB2281', 6);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89109718', 'JXB8857', 10);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89109718', 'JXB4679', 70);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89109718', 'JXB5920', 87);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('41458270', 'JXB0779', 34);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('41458270', 'JXB8825', 82);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('41458270', 'JXB5403', 44);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('41458270', 'JXB4679', 35);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('41458270', 'JXB5920', 17);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('41458270', 'JXB3140', 92);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('41458270', 'JXB5872', 8);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('77553888', 'JXB8230', 48);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('77553888', 'JXB3878', 38);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('77553888', 'JXB9793', 46);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('77553888', 'JXB0779', 70);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('77553888', 'JXB5920', 20);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('77553888', 'JXB2071', 61);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('77553888', 'JXB5403', 94);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('77553888', 'JXB6194', 18);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42773295', 'JXB8587', 36);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42773295', 'JXB4679', 98);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42773295', 'JXB7738', 35);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42773295', 'JXB5872', 44);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42773295', 'JXB3140', 89);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42773295', 'JXB5403', 62);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42773295', 'JXB9560', 22);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('42773295', 'JXB2071', 100);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('91270388', 'JXB0408', 58);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('91270388', 'JXB5063', 29);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('91270388', 'JXB3314', 77);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('91270388', 'JXB8230', 82);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('91270388', 'JXB2164', 6);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('91270388', 'JXB6194', 22);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('91270388', 'JXB9527', 73);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('91270388', 'JXB4679', 56);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('91270388', 'JXB3140', 23);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('91270388', 'JXB7738', 92);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96549079', 'JXB2281', 34);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96549079', 'JXB4679', 73);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96549079', 'JXB6937', 62);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96549079', 'JXB5920', 2);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96549079', 'JXB1076', 3);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96549079', 'JXB8857', 60);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96549079', 'JXB5403', 82);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96549079', 'JXB8230', 49);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('13076140', 'JXB2164', 16);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('13076140', 'JXB4279', 42);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('13076140', 'JXB8349', 99);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('13076140', 'JXB8587', 46);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('13076140', 'JXB5403', 73);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('13076140', 'JXB2281', 32);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('13076140', 'JXB3878', 38);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('13076140', 'JXB7601', 38);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('99967855', 'JXB1684', 100);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('99967855', 'JXB0683', 14);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('99967855', 'JXB3140', 94);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('99967855', 'JXB8282', 54);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('99967855', 'JXB2164', 51);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('99967855', 'JXB6937', 57);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('99967855', 'JXB5872', 53);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('99967855', 'JXB1076', 30);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('99967855', 'JXB9793', 7);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('25668875', 'JXB5063', 72);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('25668875', 'JXB1076', 29);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('25668875', 'JXB8825', 62);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('25668875', 'JXB0408', 61);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('25668875', 'JXB2213', 45);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('25668875', 'JXB9793', 14);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('25668875', 'JXB5920', 20);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('25668875', 'JXB4679', 15);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('25668875', 'JXB8349', 17);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('25668875', 'JXB0779', 83);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('74628012', 'JXB5363', 23);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('74628012', 'JXB0683', 61);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('74628012', 'JXB3675', 88);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('74628012', 'JXB1684', 96);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('74628012', 'JXB2164', 23);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('74628012', 'JXB2213', 64);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('74628012', 'JXB8587', 67);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('74628012', 'JXB7601', 88);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('64672943', 'JXB9560', 53);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('64672943', 'JXB4679', 49);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('64672943', 'JXB5063', 55);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('64672943', 'JXB6194', 71);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('64672943', 'JXB1015', 92);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('64672943', 'JXB5363', 64);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('64672943', 'JXB2281', 68);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('64672943', 'JXB8825', 11);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95447036', 'JXB5872', 34);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95447036', 'JXB7601', 25);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95447036', 'JXB3675', 45);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95447036', 'JXB4444', 44);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95447036', 'JXB2281', 90);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95447036', 'JXB6937', 7);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95447036', 'JXB0683', 41);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95447036', 'JXB2164', 58);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('39864169', 'JXB5920', 94);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('39864169', 'JXB8349', 96);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('39864169', 'JXB2503', 90);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('39864169', 'JXB2213', 30);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('39864169', 'JXB3140', 99);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('39864169', 'JXB4679', 80);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('39864169', 'JXB0408', 18);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('39864169', 'JXB9527', 66);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('39864169', 'JXB2281', 89);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89119072', 'JXB4279', 51);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89119072', 'JXB2071', 0);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89119072', 'JXB5403', 22);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89119072', 'JXB1684', 64);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89119072', 'JXB9793', 15);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89119072', 'JXB8857', 38);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89119072', 'JXB5920', 69);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89119072', 'JXB4444', 98);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89119072', 'JXB5872', 19);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89119072', 'JXB2503', 99);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90266057', 'JXB7601', 88);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90266057', 'JXB0683', 97);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90266057', 'JXB2213', 100);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90266057', 'JXB3675', 81);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90266057', 'JXB8282', 92);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90266057', 'JXB5920', 61);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90266057', 'JXB8349', 10);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90266057', 'JXB7738', 100);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90266057', 'JXB2164', 19);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90266057', 'JXB8230', 99);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54532684', 'JXB8349', 84);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54532684', 'JXB5920', 34);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54532684', 'JXB8857', 66);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54532684', 'JXB5063', 88);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54532684', 'JXB2071', 49);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54532684', 'JXB4679', 20);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54532684', 'JXB3675', 1);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54532684', 'JXB8587', 45);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54532684', 'JXB0779', 78);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('54532684', 'JXB7601', 78);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('46758139', 'JXB5363', 13);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('46758139', 'JXB4679', 36);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('46758139', 'JXB5872', 33);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('46758139', 'JXB8587', 26);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('46758139', 'JXB0408', 19);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('46758139', 'JXB1684', 64);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('46758139', 'JXB3675', 34);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('48957980', 'JXB8825', 46);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('48957980', 'JXB1015', 97);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('48957980', 'JXB1684', 1);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('48957980', 'JXB5063', 100);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('48957980', 'JXB4679', 16);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('48957980', 'JXB5920', 62);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('48957980', 'JXB6937', 91);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('48957980', 'JXB9793', 54);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('48957980', 'JXB0408', 88);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35787536', 'JXB1076', 46);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35787536', 'JXB5403', 88);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35787536', 'JXB8282', 29);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35787536', 'JXB7601', 64);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35787536', 'JXB8349', 65);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35787536', 'JXB0779', 90);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35787536', 'JXB3140', 40);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35787536', 'JXB4679', 63);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35787536', 'JXB9382', 11);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35787536', 'JXB0408', 73);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69026577', 'JXB5920', 18);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69026577', 'JXB2164', 21);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69026577', 'JXB9560', 11);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69026577', 'JXB5363', 95);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69026577', 'JXB4679', 36);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69026577', 'JXB0683', 44);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69026577', 'JXB8857', 54);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69026577', 'JXB7569', 78);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69026577', 'JXB8825', 95);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69026577', 'JXB8587', 95);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21236681', 'JXB2071', 51);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21236681', 'JXB8825', 45);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21236681', 'JXB2164', 39);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21236681', 'JXB9793', 63);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21236681', 'JXB5363', 37);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21236681', 'JXB1076', 1);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21236681', 'JXB4679', 31);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21236681', 'JXB9382', 99);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21236681', 'JXB8857', 32);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('13934226', 'JXB6937', 91);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('13934226', 'JXB8825', 70);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('13934226', 'JXB7601', 89);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('13934226', 'JXB9527', 87);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('13934226', 'JXB5403', 64);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('13934226', 'JXB2213', 69);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('13934226', 'JXB2071', 29);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('13934226', 'JXB9793', 51);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('13934226', 'JXB8857', 64);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21832356', 'JXB5403', 8);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21832356', 'JXB8282', 38);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21832356', 'JXB4679', 96);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21832356', 'JXB3878', 9);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21832356', 'JXB2071', 91);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21832356', 'JXB0779', 10);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21832356', 'JXB1076', 46);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21832356', 'JXB3668', 32);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('21832356', 'JXB4279', 18);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('64602294', 'JXB8857', 35);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('64602294', 'JXB2071', 98);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('64602294', 'JXB6194', 11);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('64602294', 'JXB4679', 2);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('64602294', 'JXB8587', 44);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('64602294', 'JXB3140', 91);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('64602294', 'JXB9793', 44);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('64602294', 'JXB8349', 81);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62963648', 'JXB3878', 45);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62963648', 'JXB2281', 35);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62963648', 'JXB4679', 29);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62963648', 'JXB9382', 81);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62963648', 'JXB0683', 54);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62963648', 'JXB7738', 27);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62963648', 'JXB3668', 57);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62963648', 'JXB3140', 56);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62963648', 'JXB8230', 63);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62963648', 'JXB5363', 8);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('56982423', 'JXB5872', 51);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('56982423', 'JXB0683', 45);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('56982423', 'JXB9560', 35);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('56982423', 'JXB8282', 44);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('56982423', 'JXB4279', 85);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('56982423', 'JXB8825', 70);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('56982423', 'JXB5363', 10);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('56982423', 'JXB3668', 21);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('56982423', 'JXB9527', 77);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('56982423', 'JXB5920', 78);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('40506285', 'JXB3314', 44);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('40506285', 'JXB6937', 57);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('40506285', 'JXB8857', 45);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('40506285', 'JXB3140', 97);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('40506285', 'JXB7738', 24);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('40506285', 'JXB9527', 91);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('40506285', 'JXB5872', 65);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('40506285', 'JXB3675', 56);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47388430', 'JXB2164', 14);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47388430', 'JXB0408', 80);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47388430', 'JXB4279', 82);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47388430', 'JXB7504', 29);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47388430', 'JXB1015', 77);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47388430', 'JXB2503', 28);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47388430', 'JXB9793', 51);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47388430', 'JXB1684', 51);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47388430', 'JXB3314', 53);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('93117741', 'JXB4279', 54);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('93117741', 'JXB3675', 58);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('93117741', 'JXB6937', 56);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('93117741', 'JXB9527', 100);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('93117741', 'JXB8230', 46);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('93117741', 'JXB5363', 1);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('93117741', 'JXB7569', 12);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('93117741', 'JXB8349', 21);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('93117741', 'JXB0408', 0);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('55277733', 'JXB4679', 0);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('55277733', 'JXB9382', 48);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('55277733', 'JXB5872', 41);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('55277733', 'JXB8587', 49);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('55277733', 'JXB3878', 1);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('55277733', 'JXB8349', 22);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('55277733', 'JXB2164', 10);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('55277733', 'JXB1684', 40);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('55277733', 'JXB7738', 43);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47479103', 'JXB4279', 67);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47479103', 'JXB7738', 36);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47479103', 'JXB6937', 14);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47479103', 'JXB5920', 6);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47479103', 'JXB9527', 75);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47479103', 'JXB3140', 11);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47479103', 'JXB3668', 77);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47479103', 'JXB1076', 61);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('32595580', 'JXB1076', 44);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('32595580', 'JXB7504', 18);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('32595580', 'JXB9560', 1);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('32595580', 'JXB4679', 70);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('32595580', 'JXB1015', 93);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('32595580', 'JXB7738', 95);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('32595580', 'JXB9527', 15);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('32595580', 'JXB7569', 3);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('32595580', 'JXB5063', 36);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66847446', 'JXB2164', 94);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66847446', 'JXB9793', 40);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66847446', 'JXB5920', 45);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66847446', 'JXB8230', 51);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66847446', 'JXB8587', 75);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66847446', 'JXB1076', 38);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66847446', 'JXB5063', 2);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66847446', 'JXB3140', 50);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66847446', 'JXB4279', 74);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66847446', 'JXB0683', 56);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('79543673', 'JXB8587', 65);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('79543673', 'JXB9560', 33);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('79543673', 'JXB4679', 1);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('79543673', 'JXB0683', 21);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('79543673', 'JXB8825', 62);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('79543673', 'JXB3314', 56);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('79543673', 'JXB5063', 23);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('79543673', 'JXB1684', 95);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('24310263', 'JXB1076', 57);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('24310263', 'JXB9527', 36);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('24310263', 'JXB7601', 31);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('24310263', 'JXB9382', 42);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('24310263', 'JXB8857', 86);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('24310263', 'JXB4279', 39);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('24310263', 'JXB1684', 23);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('24310263', 'JXB5872', 85);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('37638360', 'JXB5403', 49);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('37638360', 'JXB6194', 41);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('37638360', 'JXB6937', 31);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('37638360', 'JXB8587', 91);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('37638360', 'JXB8825', 25);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('37638360', 'JXB9527', 14);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('37638360', 'JXB4444', 100);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('37638360', 'JXB7601', 58);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73803347', 'JXB4679', 91);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73803347', 'JXB1076', 21);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73803347', 'JXB7569', 19);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73803347', 'JXB8857', 2);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73803347', 'JXB0779', 7);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73803347', 'JXB8349', 96);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73803347', 'JXB6937', 1);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73803347', 'JXB8230', 59);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73803347', 'JXB0683', 40);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73803347', 'JXB8282', 65);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90583231', 'JXB9793', 59);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90583231', 'JXB3668', 82);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90583231', 'JXB2503', 38);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90583231', 'JXB7601', 79);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90583231', 'JXB3675', 98);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90583231', 'JXB2071', 40);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90583231', 'JXB1015', 71);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90583231', 'JXB3878', 87);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('90583231', 'JXB7504', 30);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('27512021', 'JXB8825', 90);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('27512021', 'JXB8587', 97);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('27512021', 'JXB2503', 58);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('27512021', 'JXB5063', 53);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('27512021', 'JXB5363', 26);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('27512021', 'JXB4679', 31);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('27512021', 'JXB7504', 43);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('27512021', 'JXB7738', 28);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69928845', 'JXB1015', 81);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69928845', 'JXB7601', 87);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69928845', 'JXB3314', 93);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69928845', 'JXB8349', 25);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69928845', 'JXB5403', 6);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69928845', 'JXB3140', 43);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69928845', 'JXB4444', 21);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69928845', 'JXB1684', 53);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('69928845', 'JXB5920', 83);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89050089', 'JXB0779', 44);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89050089', 'JXB9382', 98);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89050089', 'JXB6937', 68);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89050089', 'JXB5363', 76);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89050089', 'JXB0408', 63);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89050089', 'JXB9527', 63);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89050089', 'JXB8825', 17);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89050089', 'JXB5920', 2);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58469386', 'JXB3878', 28);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58469386', 'JXB5920', 45);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58469386', 'JXB7569', 26);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58469386', 'JXB0779', 64);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58469386', 'JXB4679', 62);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58469386', 'JXB3140', 20);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58469386', 'JXB3314', 66);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58469386', 'JXB4279', 67);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58469386', 'JXB6937', 13);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('58469386', 'JXB9560', 87);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('92982738', 'JXB1684', 39);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('92982738', 'JXB4679', 36);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('92982738', 'JXB8857', 20);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('92982738', 'JXB7569', 59);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('92982738', 'JXB5920', 68);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('92982738', 'JXB6194', 8);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('92982738', 'JXB3675', 18);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('36220518', 'JXB9793', 97);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('36220518', 'JXB4444', 20);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('36220518', 'JXB0779', 28);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('36220518', 'JXB8825', 93);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('36220518', 'JXB9382', 31);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('36220518', 'JXB5920', 31);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('36220518', 'JXB6194', 29);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('36220518', 'JXB4679', 86);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('36220518', 'JXB5363', 45);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('36220518', 'JXB2164', 11);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('12032377', 'JXB2503', 31);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('12032377', 'JXB5403', 49);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('12032377', 'JXB2213', 76);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('12032377', 'JXB2071', 45);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('12032377', 'JXB9560', 7);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('12032377', 'JXB3140', 69);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('12032377', 'JXB6194', 63);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('12032377', 'JXB1684', 84);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('12032377', 'JXB4279', 40);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('12032377', 'JXB8587', 34);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95829395', 'JXB6937', 34);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95829395', 'JXB3878', 99);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95829395', 'JXB5363', 23);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95829395', 'JXB0779', 93);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95829395', 'JXB2071', 13);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95829395', 'JXB7569', 88);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95829395', 'JXB8349', 91);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95829395', 'JXB8282', 55);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('95829395', 'JXB7504', 85);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('86207473', 'JXB2213', 77);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('86207473', 'JXB6937', 68);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('86207473', 'JXB1684', 94);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('86207473', 'JXB8230', 89);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('86207473', 'JXB2164', 57);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('86207473', 'JXB9527', 82);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('86207473', 'JXB7601', 90);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('86207473', 'JXB4444', 62);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('86207473', 'JXB9560', 49);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23150362', 'JXB0408', 5);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23150362', 'JXB2281', 1);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23150362', 'JXB8282', 27);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23150362', 'JXB5403', 91);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23150362', 'JXB8825', 6);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23150362', 'JXB7601', 87);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23150362', 'JXB3668', 81);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23150362', 'JXB1015', 84);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23150362', 'JXB2213', 29);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('79489891', 'JXB5872', 21);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('79489891', 'JXB5920', 20);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('79489891', 'JXB2281', 29);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('79489891', 'JXB3878', 9);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('79489891', 'JXB3668', 53);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('79489891', 'JXB7569', 28);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('79489891', 'JXB3140', 47);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('79489891', 'JXB3314', 42);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96165281', 'JXB5872', 35);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96165281', 'JXB0779', 64);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96165281', 'JXB3878', 83);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96165281', 'JXB3314', 97);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96165281', 'JXB5063', 56);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96165281', 'JXB4279', 60);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96165281', 'JXB7738', 35);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96165281', 'JXB4679', 99);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96165281', 'JXB6194', 76);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('49545172', 'JXB4444', 38);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('49545172', 'JXB8857', 63);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('49545172', 'JXB5363', 75);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('49545172', 'JXB3140', 82);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('49545172', 'JXB9560', 99);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('49545172', 'JXB8587', 8);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('49545172', 'JXB8282', 21);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('49545172', 'JXB7601', 37);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23808058', 'JXB8282', 9);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23808058', 'JXB8349', 87);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23808058', 'JXB1684', 73);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23808058', 'JXB0408', 55);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23808058', 'JXB8230', 60);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23808058', 'JXB2503', 89);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23808058', 'JXB4444', 16);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23808058', 'JXB4279', 8);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('23808058', 'JXB9382', 63);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35754306', 'JXB2071', 27);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35754306', 'JXB5920', 97);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35754306', 'JXB8349', 97);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35754306', 'JXB4444', 89);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35754306', 'JXB1015', 6);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35754306', 'JXB8825', 18);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35754306', 'JXB5363', 54);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35754306', 'JXB8282', 95);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('35754306', 'JXB5872', 63);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('61850098', 'JXB5920', 16);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('61850098', 'JXB3314', 78);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('61850098', 'JXB0683', 3);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('61850098', 'JXB4444', 21);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('61850098', 'JXB2213', 58);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('61850098', 'JXB7738', 80);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('61850098', 'JXB6194', 34);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('61850098', 'JXB0779', 93);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('61850098', 'JXB8587', 45);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('61850098', 'JXB7601', 51);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('88823872', 'JXB0683', 30);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('88823872', 'JXB1015', 24);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('88823872', 'JXB3668', 25);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('88823872', 'JXB8587', 45);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('88823872', 'JXB8349', 22);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('88823872', 'JXB5920', 14);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('88823872', 'JXB3314', 36);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('88823872', 'JXB2213', 86);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73820775', 'JXB1015', 78);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73820775', 'JXB3668', 88);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73820775', 'JXB5403', 58);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73820775', 'JXB5363', 77);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73820775', 'JXB9527', 70);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73820775', 'JXB0408', 0);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73820775', 'JXB8230', 64);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73820775', 'JXB3675', 68);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('73820775', 'JXB5872', 95);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94557566', 'JXB0683', 31);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94557566', 'JXB4279', 7);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94557566', 'JXB9560', 25);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94557566', 'JXB5920', 59);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94557566', 'JXB6194', 54);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94557566', 'JXB7601', 91);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94557566', 'JXB8230', 29);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94557566', 'JXB8587', 5);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94557566', 'JXB9527', 59);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('31504441', 'JXB5363', 80);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('31504441', 'JXB7504', 10);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('31504441', 'JXB9382', 82);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('31504441', 'JXB4444', 49);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('31504441', 'JXB9560', 79);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('31504441', 'JXB8587', 100);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('31504441', 'JXB1076', 99);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('31504441', 'JXB5920', 100);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('31504441', 'JXB0408', 19);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('31504441', 'JXB8230', 80);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66853592', 'JXB7601', 47);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66853592', 'JXB1076', 81);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66853592', 'JXB5403', 4);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66853592', 'JXB0779', 76);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66853592', 'JXB3878', 11);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66853592', 'JXB2281', 46);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66853592', 'JXB6937', 58);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66853592', 'JXB5063', 25);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('66853592', 'JXB4279', 80);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96301149', 'JXB9793', 83);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96301149', 'JXB6937', 29);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96301149', 'JXB0408', 8);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96301149', 'JXB2213', 78);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96301149', 'JXB9382', 84);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96301149', 'JXB4279', 24);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96301149', 'JXB9527', 8);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96301149', 'JXB1076', 52);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('96301149', 'JXB7504', 68);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('76831897', 'JXB2164', 70);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('76831897', 'JXB4444', 29);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('76831897', 'JXB3314', 72);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('76831897', 'JXB0683', 71);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('76831897', 'JXB7504', 54);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('76831897', 'JXB3668', 100);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('76831897', 'JXB9527', 50);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('76831897', 'JXB9382', 100);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('76831897', 'JXB8825', 96);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('76831897', 'JXB1076', 14);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81181700', 'JXB5363', 21);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81181700', 'JXB1076', 27);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81181700', 'JXB8825', 7);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81181700', 'JXB0683', 8);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81181700', 'JXB7569', 13);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81181700', 'JXB3314', 41);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81181700', 'JXB2503', 1);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81181700', 'JXB0779', 97);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81181700', 'JXB3140', 54);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('81181700', 'JXB9527', 18);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('93381391', 'JXB0408', 68);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('93381391', 'JXB5872', 68);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('93381391', 'JXB4279', 78);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('93381391', 'JXB3668', 32);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('93381391', 'JXB3140', 18);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('93381391', 'JXB1684', 36);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('93381391', 'JXB2164', 53);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('93381391', 'JXB2071', 56);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('50228818', 'JXB5363', 68);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('50228818', 'JXB0408', 24);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('50228818', 'JXB3675', 1);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('50228818', 'JXB1076', 90);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('50228818', 'JXB5920', 87);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('50228818', 'JXB6194', 51);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('50228818', 'JXB9527', 19);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('50228818', 'JXB9382', 100);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('50228818', 'JXB8587', 14);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62846316', 'JXB3314', 7);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62846316', 'JXB8857', 42);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62846316', 'JXB1076', 93);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62846316', 'JXB9793', 54);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62846316', 'JXB2213', 42);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62846316', 'JXB5063', 49);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62846316', 'JXB8587', 87);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62846316', 'JXB8282', 9);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('62846316', 'JXB9560', 12);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11040522', 'JXB3140', 65);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11040522', 'JXB8282', 40);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11040522', 'JXB8857', 2);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11040522', 'JXB6194', 80);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11040522', 'JXB2164', 14);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11040522', 'JXB9527', 5);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11040522', 'JXB8825', 93);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11040522', 'JXB7504', 13);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('11040522', 'JXB8587', 28);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('25694945', 'JXB7504', 14);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('25694945', 'JXB4279', 82);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('25694945', 'JXB8825', 78);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('25694945', 'JXB2213', 24);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('25694945', 'JXB3314', 94);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('25694945', 'JXB8857', 42);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('25694945', 'JXB4444', 9);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97090442', 'JXB3140', 88);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97090442', 'JXB1015', 53);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97090442', 'JXB5872', 92);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97090442', 'JXB7738', 74);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97090442', 'JXB9793', 28);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97090442', 'JXB2071', 52);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97090442', 'JXB7569', 45);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('38960049', 'JXB3668', 38);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('38960049', 'JXB3878', 50);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('38960049', 'JXB8282', 88);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('38960049', 'JXB5403', 59);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('38960049', 'JXB5063', 75);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('38960049', 'JXB3314', 52);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('38960049', 'JXB3675', 79);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('38960049', 'JXB2071', 89);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('38960049', 'JXB0408', 56);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94918034', 'JXB2213', 77);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94918034', 'JXB0779', 83);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94918034', 'JXB9560', 92);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94918034', 'JXB4279', 18);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94918034', 'JXB3314', 71);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94918034', 'JXB8230', 43);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94918034', 'JXB2503', 99);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94918034', 'JXB3668', 41);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('94918034', 'JXB8857', 83);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('57293360', 'JXB2281', 60);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('57293360', 'JXB2164', 36);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('57293360', 'JXB1015', 4);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('57293360', 'JXB3675', 83);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('57293360', 'JXB8825', 33);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('57293360', 'JXB6937', 91);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('57293360', 'JXB9560', 67);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('31880916', 'JXB4444', 26);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('31880916', 'JXB0779', 53);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('31880916', 'JXB9527', 26);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('31880916', 'JXB2503', 100);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('31880916', 'JXB3675', 99);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('31880916', 'JXB3668', 55);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('48417955', 'JXB1015', 33);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('48417955', 'JXB8825', 31);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('48417955', 'JXB2213', 94);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('48417955', 'JXB5403', 97);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('48417955', 'JXB3668', 78);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('48417955', 'JXB7738', 40);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('48417955', 'JXB6937', 47);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89132184', 'JXB8282', 88);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89132184', 'JXB4444', 54);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89132184', 'JXB8230', 51);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89132184', 'JXB9527', 25);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89132184', 'JXB5363', 52);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89132184', 'JXB2071', 44);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89132184', 'JXB0683', 89);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('89132184', 'JXB9382', 68);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('16960235', 'JXB9527', 62);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('16960235', 'JXB8230', 16);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('16960235', 'JXB7569', 35);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('16960235', 'JXB3675', 56);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('16960235', 'JXB1015', 92);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('16960235', 'JXB4444', 5);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('78057231', 'JXB3878', 55);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('78057231', 'JXB0408', 91);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('78057231', 'JXB8349', 20);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('78057231', 'JXB9793', 89);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('78057231', 'JXB1076', 58);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('78057231', 'JXB2164', 61);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('49993494', 'JXB6194', 49);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('49993494', 'JXB9382', 38);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('49993494', 'JXB0683', 92);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('49993494', 'JXB0408', 62);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('49993494', 'JXB3675', 54);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('49993494', 'JXB3668', 46);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('49993494', 'JXB6937', 88);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97548804', 'JXB7738', 30);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97548804', 'JXB9793', 71);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97548804', 'JXB2503', 48);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97548804', 'JXB7569', 67);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97548804', 'JXB5403', 82);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97548804', 'JXB6194', 2);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('97548804', 'JXB2213', 89);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('19390308', 'JXB9560', 1);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('19390308', 'JXB3675', 54);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('19390308', 'JXB3668', 12);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('19390308', 'JXB0683', 94);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('19390308', 'JXB1076', 53);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47670166', 'JXB2164', 10);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47670166', 'JXB6194', 30);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47670166', 'JXB1076', 19);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47670166', 'JXB2213', 88);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47670166', 'JXB3140', 58);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47670166', 'JXB8857', 61);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47670166', 'JXB8282', 81);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('47670166', 'JXB1015', 56);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('20797815', 'JXB2071', 83);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('20797815', 'JXB3668', 95);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('20797815', 'JXB4279', 88);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('20797815', 'JXB8230', 19);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('20797815', 'JXB9527', 9);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('20797815', 'JXB0683', 63);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('20797815', 'JXB5063', 71);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('20797815', 'JXB3878', 28);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('63267107', 'JXB4444', 0);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('63267107', 'JXB3668', 61);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('63267107', 'JXB5063', 83);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('63267107', 'JXB2213', 15);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('63267107', 'JXB1684', 44);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('63267107', 'JXB9793', 45);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('63267107', 'JXB9527', 32);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('68881653', 'JXB8230', 8);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('68881653', 'JXB5063', 46);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('68881653', 'JXB3675', 48);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('68881653', 'JXB2071', 69);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('68881653', 'JXB0408', 96);

INSERT INTO `selection` (`student_id`, `course_id`, `score`)
VALUES ('68881653', 'JXB9527', 17);

UPDATE `course` SET `cur_capacity` = 21
WHERE `course_id` = 'JXB2164';

UPDATE `course` SET `cur_capacity` = 19
WHERE `course_id` = 'JXB6194';

UPDATE `course` SET `cur_capacity` = 13
WHERE `course_id` = 'JXB2503';

UPDATE `course` SET `cur_capacity` = 15
WHERE `course_id` = 'JXB7738';

UPDATE `course` SET `cur_capacity` = 25
WHERE `course_id` = 'JXB8230';

UPDATE `course` SET `cur_capacity` = 18
WHERE `course_id` = 'JXB5063';

UPDATE `course` SET `cur_capacity` = 26
WHERE `course_id` = 'JXB5363';

UPDATE `course` SET `cur_capacity` = 29
WHERE `course_id` = 'JXB9527';

UPDATE `course` SET `cur_capacity` = 20
WHERE `course_id` = 'JXB1684';

UPDATE `course` SET `cur_capacity` = 22
WHERE `course_id` = 'JXB3675';

UPDATE `course` SET `cur_capacity` = 23
WHERE `course_id` = 'JXB6937';

UPDATE `course` SET `cur_capacity` = 22
WHERE `course_id` = 'JXB4279';

UPDATE `course` SET `cur_capacity` = 20
WHERE `course_id` = 'JXB7569';

UPDATE `course` SET `cur_capacity` = 22
WHERE `course_id` = 'JXB8857';

UPDATE `course` SET `cur_capacity` = 20
WHERE `course_id` = 'JXB3314';

UPDATE `course` SET `cur_capacity` = 27
WHERE `course_id` = 'JXB5920';

UPDATE `course` SET `cur_capacity` = 22
WHERE `course_id` = 'JXB2071';

UPDATE `course` SET `cur_capacity` = 25
WHERE `course_id` = 'JXB8587';

UPDATE `course` SET `cur_capacity` = 25
WHERE `course_id` = 'JXB1076';

UPDATE `course` SET `cur_capacity` = 20
WHERE `course_id` = 'JXB9560';

UPDATE `course` SET `cur_capacity` = 21
WHERE `course_id` = 'JXB0779';

UPDATE `course` SET `cur_capacity` = 19
WHERE `course_id` = 'JXB8349';

UPDATE `course` SET `cur_capacity` = 17
WHERE `course_id` = 'JXB3878';

UPDATE `course` SET `cur_capacity` = 23
WHERE `course_id` = 'JXB0683';

UPDATE `course` SET `cur_capacity` = 21
WHERE `course_id` = 'JXB4444';

UPDATE `course` SET `cur_capacity` = 21
WHERE `course_id` = 'JXB8825';

UPDATE `course` SET `cur_capacity` = 26
WHERE `course_id` = 'JXB3140';

UPDATE `course` SET `cur_capacity` = 23
WHERE `course_id` = 'JXB5403';

UPDATE `course` SET `cur_capacity` = 23
WHERE `course_id` = 'JXB2213';

UPDATE `course` SET `cur_capacity` = 19
WHERE `course_id` = 'JXB5872';

UPDATE `course` SET `cur_capacity` = 21
WHERE `course_id` = 'JXB1015';

UPDATE `course` SET `cur_capacity` = 22
WHERE `course_id` = 'JXB0408';

UPDATE `course` SET `cur_capacity` = 16
WHERE `course_id` = 'JXB9382';

UPDATE `course` SET `cur_capacity` = 13
WHERE `course_id` = 'JXB7504';

UPDATE `course` SET `cur_capacity` = 21
WHERE `course_id` = 'JXB8282';

UPDATE `course` SET `cur_capacity` = 23
WHERE `course_id` = 'JXB3668';

UPDATE `course` SET `cur_capacity` = 21
WHERE `course_id` = 'JXB7601';

UPDATE `course` SET `cur_capacity` = 22
WHERE `course_id` = 'JXB9793';

UPDATE `course` SET `cur_capacity` = 16
WHERE `course_id` = 'JXB2281';

UPDATE `course` SET `cur_capacity` = 35
WHERE `course_id` = 'JXB4679';




