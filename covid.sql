/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80026
Source Host           : localhost:3306
Source Database       : covid

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2022-04-19 19:43:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `description` text,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '你的专业素养很高，很负责，应急反应能力很好，组织能力也很强。面对突发事件时，你总能凭借过硬的专业能力进行妥善解决。但是你有时候需要考虑专业以外的因素，行政水平、等级有时候也能发挥关键作用，要学会向合适的人求助。你是一个有同理心、共情心的人，这样的品质会让你有更好的人生体验。你对家人很关心，再重大的国家责任也需要由小家的温馨组成，因此在工作条件允许的情况下你希望自己能照顾到家人。');
INSERT INTO `comment` VALUES ('2', '面对可能的危险，你能够很好地做出预判。你服从国家安排，危难时刻听从指挥。你很有奉献、互助的精神，愿意在危难时刻为社区分忧。你是一个很乐观的人，身边的人也会受你鼓舞而感到乐观。生活需要乐趣和分享，它也能为你带来意想不到的收获。经过疫情，你越来越认识到陪伴家人的重要性。');
INSERT INTO `comment` VALUES ('3', '你从小到大都很服从安排，工作以后也一样，这是你能得到领导赏识的原因之一。你很清楚权责关系，因此在工作中能够比较好地处理各方关系。你是一名合格的医学生，在危难时刻做出了勇敢的决定。在紧急关头，你很有担当，很有领导力。你的专业知识过硬，对自己的身体状况也很清楚。人们总说当局者迷，旁观者清，但你很好地对自己的健康状况进行了评估。');
INSERT INTO `comment` VALUES ('4', '自律即自由，你的自觉性非常高。你知道高考的重要性，所以重视每次测试。虽然年纪不大，但你已经会帮家里分担，同时也能兼顾好自己的学习，真的很棒！虽然只是高中生，但你已经领悟了家国的真谛，你为母亲感到骄傲，母亲也为你感到自豪。胸有成竹才会淡定自若你的实力很强！你是意气风发的少年，一切会是最好的安排。');
INSERT INTO `comment` VALUES ('5', '你是一位负责的科室主任，即使帮助别人，也会为自己医院考虑。你是一位体贴的领导，你会考虑大家的难处，同时也知人善用。你在用药方面没有偏见，医者仁心，认为一切都应该以病人为主。你认为每一位医护工作人员都是伟大的，每个人都是并肩作战的队友。工作和家庭，你都能兼顾。');
INSERT INTO `comment` VALUES ('6', '你是一个独立的人，在两难困境中，你总是能清楚自己想要什么。你很惜命的人，也有及时止损的勇气。你是一个很明智的人，即使现实不乐观，你也要做出损失最小的选择。家国面前，你能有很好的平衡。你很有正义感，有质疑精神但也遵循法规。你有勇气挑战生活，值得敬佩！');

-- ----------------------------
-- Table structure for `commentary`
-- ----------------------------
DROP TABLE IF EXISTS `commentary`;
CREATE TABLE `commentary` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `description` text,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of commentary
-- ----------------------------
INSERT INTO `commentary` VALUES ('1', '你是一个负责任的专家');
INSERT INTO `commentary` VALUES ('2', '尽管你的专业水平很高，但在关键时刻需要有足够的担当，因为你的挺身而出可能会挽救数百个家庭，人们需要你这样的专家。');
INSERT INTO `commentary` VALUES ('3', '你在专业领域和生活工作中都保持着高度的审慎态度。');
INSERT INTO `commentary` VALUES ('4', '你有时候需要考虑专业以外的因素，行政水平、等级有时候也能发挥关键作用，要学会向合适的人求助。');
INSERT INTO `commentary` VALUES ('5', '你对生活工作运转的规律很清晰，懂得什么样的事该找合适的人帮忙。');
INSERT INTO `commentary` VALUES ('6', '你对于生活不必过分悲观，有时尝试向他人求助也不失为好方法。');
INSERT INTO `commentary` VALUES ('7', '你的专业素养很高，应急反应能力很好，组织能力也很强，以后能够有更多的晋升机会。');
INSERT INTO `commentary` VALUES ('8', '在面对选择时，你需要对国家利益、人民安全进行深度思考，权衡后做出正确的决定，要开拓格局。尽管你的专业水平很高，但在关键时刻需要有足够的担当，因为你的挺身而出可能会挽救数百个家庭，人们需要你这样的专家。');
INSERT INTO `commentary` VALUES ('9', '有时候要把大道理和个人情感相结合，不能一味站在道德制高点劝阻别人，每个人都有难处。');
INSERT INTO `commentary` VALUES ('10', '你会体谅别人的难处，但你也需要保持你的权威性，在人情与制度的权衡中，你往往会选择后者。');
INSERT INTO `commentary` VALUES ('11', '你是一个由同理心、共情心的人，这样的品质会让你有更好的人生体验。');
INSERT INTO `commentary` VALUES ('12', '你对家人很关心，再重大的国家责任也需要由小家的温馨组成。');
INSERT INTO `commentary` VALUES ('13', '你认为国大于家，你的思想很高尚，但其实妻子也很需要你，不一定时时刻刻都要保持理性大于感性的状态。');
INSERT INTO `commentary` VALUES ('14', '你虽然思想有斗争，但最终还是选择承担身为医者的道义与责任。');
INSERT INTO `commentary` VALUES ('15', '趋利避害是人的本能，面对未知，人类时常感到恐惧。');
INSERT INTO `commentary` VALUES ('16', '面对可能的危险，你能够很好地做出预判。');
INSERT INTO `commentary` VALUES ('17', '从众心理是人进行自我保护的一种方式。');
INSERT INTO `commentary` VALUES ('18', '你很有奉献、互助的精神。');
INSERT INTO `commentary` VALUES ('19', '在利益面前，偶尔也可以屈服一下，打工人有自己的不容易。');
INSERT INTO `commentary` VALUES ('20', '和政府调控相比，你认为个人自主意识更重要，但有时会忽略他人的感受');
INSERT INTO `commentary` VALUES ('21', '你服从国家安排，危难时刻听从指挥。');
INSERT INTO `commentary` VALUES ('22', '生活需要松弛有度，你很能顺势而为');
INSERT INTO `commentary` VALUES ('23', '生活需要乐趣和分享，它也能为你带来意想不到的收获。');
INSERT INTO `commentary` VALUES ('24', '你的思想觉悟很高，奉献精神突出，是为民服务的积极分子。');
INSERT INTO `commentary` VALUES ('25', '在面对困难时，你要学会调节情绪，要从阴霾中看到希望。');
INSERT INTO `commentary` VALUES ('26', '你是一个很乐观的人，身边的人也会受你鼓舞而感到乐观');
INSERT INTO `commentary` VALUES ('27', '经过疫情，你越来越认识到陪伴家人的重要性。');
INSERT INTO `commentary` VALUES ('28', '学会感恩，是疫情给我们上的生活课。');
INSERT INTO `commentary` VALUES ('29', '学会感恩，是疫情给我们上的生活课。');
INSERT INTO `commentary` VALUES ('30', '人与人之间的善意可以汇集成一股河流，哺育希望的种子。');
INSERT INTO `commentary` VALUES ('31', '你从小到大都很服从安排，工作以后也一样，这是你能得到领导赏识的原因之一。');
INSERT INTO `commentary` VALUES ('32', '你有一颗求证之心。');
INSERT INTO `commentary` VALUES ('33', '没有人能说你错，因为生命对每个人来说只有一次。');
INSERT INTO `commentary` VALUES ('34', '你是一名合格的医学生，在危难时刻做出了勇敢的决定。');
INSERT INTO `commentary` VALUES ('35', '在紧急关头，你很有担当，很有领导力。');
INSERT INTO `commentary` VALUES ('36', '和生命有关的利益物品，人的本性总是会为自己考虑，这无可厚非。');
INSERT INTO `commentary` VALUES ('37', '你的专业知识过硬，对自己的身体状况也很清楚。人们总说当局者迷，旁观者清，但你很好地对自己的健康状况进行了评估。');
INSERT INTO `commentary` VALUES ('38', '有时不需要强撑，累了就需要休息。作为一名医护人员，也需要对自己的身体状况进行专业监测。');
INSERT INTO `commentary` VALUES ('39', '你很清楚权责关系，因此在工作中能够比较好地处理各方关系。');
INSERT INTO `commentary` VALUES ('40', '在处理医患关系上，你还缺乏些经验，要多向前辈清教。');
INSERT INTO `commentary` VALUES ('41', '在处理医患关系上，你还缺乏些经验，要多向前辈清教。');
INSERT INTO `commentary` VALUES ('42', '自律即自由，你的自觉性非常高。');
INSERT INTO `commentary` VALUES ('43', '弦有松有紧，紧张的高三生活也需要放松时间。');
INSERT INTO `commentary` VALUES ('44', '适当放松可以，但不能过度。');
INSERT INTO `commentary` VALUES ('45', '你知道高考的重要性，所以重视每次测试。');
INSERT INTO `commentary` VALUES ('46', '考试时你也是张弛有度。');
INSERT INTO `commentary` VALUES ('47', '作为考试，适当的严肃性还是必要的。');
INSERT INTO `commentary` VALUES ('48', '虽然只是高中生，但你已经领悟了家国的真谛，你为母亲感到骄傲，母亲也为你感到自豪。');
INSERT INTO `commentary` VALUES ('49', '疫情当前，每个人都想守护自己的家人，这完全没错。');
INSERT INTO `commentary` VALUES ('50', '虽然年纪不大，但你已经会帮家里分担，同时也能兼顾好自己的学习，真的很棒！');
INSERT INTO `commentary` VALUES ('51', '身体是革命的本钱，你很能分清主次。');
INSERT INTO `commentary` VALUES ('52', '高三是人生很重要的阶段，焦躁也是正常，要注意调整心态。');
INSERT INTO `commentary` VALUES ('53', '胸有成竹才会淡定自若你的实力很强！');
INSERT INTO `commentary` VALUES ('54', '你是意气风发的少年，一切会是最好的安排。');
INSERT INTO `commentary` VALUES ('55', '长风破浪会有时，直挂云帆济沧海！');
INSERT INTO `commentary` VALUES ('56', '高考保持平常心，发挥出平常实力就是最好的。');
INSERT INTO `commentary` VALUES ('57', '高考保持平常心，发挥出平常实力就是最好的。');
INSERT INTO `commentary` VALUES ('58', '你是一位无私的医疗工作者，面对陷入困境的W市医院，你会毫不犹豫地伸出援手。');
INSERT INTO `commentary` VALUES ('59', '你是一位负责的科室主任，即使帮助别人，也会为自己医院考虑。');
INSERT INTO `commentary` VALUES ('60', '你有作为科室主任的权威。你认为党员就要起到模范带头作用。');
INSERT INTO `commentary` VALUES ('61', '你是一位体贴的领导，你会考虑大家的难处，同时也知人善用。');
INSERT INTO `commentary` VALUES ('62', '你是一位非常民主的领导，但有时在人情和职责上会陷入两难。');
INSERT INTO `commentary` VALUES ('63', '你为人坚强，所以你认为每个人都应该坚强，但有时候对他人的要求过高。');
INSERT INTO `commentary` VALUES ('64', '在用药方面，你很有自己的主见。');
INSERT INTO `commentary` VALUES ('65', '你在用药方面没有偏见，医者仁心，认为一切都应该以病人为主。');
INSERT INTO `commentary` VALUES ('66', '你认真对待生活、工作中的每一件事，做到事事有回响，这也是你声誉优良的原因之一。');
INSERT INTO `commentary` VALUES ('67', '你认为每一位医护工作人员都是伟大的，每个人都是并肩作战的队友。');
INSERT INTO `commentary` VALUES ('68', '工作和家庭，你都能兼顾。');
INSERT INTO `commentary` VALUES ('69', '你是一名伟大的医生，但有时也要兼顾好家庭和工作的关系，你的家人们也很需要你。');
INSERT INTO `commentary` VALUES ('70', '是普通社畜的一员，在工作和生活中，总是身不由己。');
INSERT INTO `commentary` VALUES ('71', '你是一个独立的人，在两难困境中，你总是能清楚自己想要什么。你是一个惜命的人。');
INSERT INTO `commentary` VALUES ('72', '你有及时止损的勇气。');
INSERT INTO `commentary` VALUES ('73', '你有时会抱着侥幸心理，但在生命面前要谨慎。');
INSERT INTO `commentary` VALUES ('74', '你深深体会到打工人的心酸。');
INSERT INTO `commentary` VALUES ('75', '你是一个很明智的人，即使现实不乐观，你也要做出损失最小的选择。');
INSERT INTO `commentary` VALUES ('76', '你是一个很有奉献精神的人');
INSERT INTO `commentary` VALUES ('77', '大难面前，人为己实属正常。');
INSERT INTO `commentary` VALUES ('78', '家国面前，你能有很好的平衡。你是一个很有奉献精神的人。');
INSERT INTO `commentary` VALUES ('79', '你很有正义感，有质疑精神但也遵循法规。');
INSERT INTO `commentary` VALUES ('80', '你有很多想法，但有时要注意适当表达的渠道。');
INSERT INTO `commentary` VALUES ('81', '你认为世间不公道的事自有人去处理。');
INSERT INTO `commentary` VALUES ('82', '你趋于安逸，有时为了生活能够平稳，也会做一些本不愿意的社交。');
INSERT INTO `commentary` VALUES ('83', '你趋于安逸，也不愿意为生活做出更多的改变。');
INSERT INTO `commentary` VALUES ('84', '你有勇气挑战生活，值得敬佩！');

-- ----------------------------
-- Table structure for `comment_commentaries`
-- ----------------------------
DROP TABLE IF EXISTS `comment_commentaries`;
CREATE TABLE `comment_commentaries` (
  `comment_id` int NOT NULL,
  `cid` int NOT NULL,
  PRIMARY KEY (`comment_id`,`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of comment_commentaries
-- ----------------------------
INSERT INTO `comment_commentaries` VALUES ('1', '1');
INSERT INTO `comment_commentaries` VALUES ('1', '4');
INSERT INTO `comment_commentaries` VALUES ('1', '7');
INSERT INTO `comment_commentaries` VALUES ('1', '11');
INSERT INTO `comment_commentaries` VALUES ('1', '12');
INSERT INTO `comment_commentaries` VALUES ('2', '16');
INSERT INTO `comment_commentaries` VALUES ('2', '18');
INSERT INTO `comment_commentaries` VALUES ('2', '21');
INSERT INTO `comment_commentaries` VALUES ('2', '23');
INSERT INTO `comment_commentaries` VALUES ('2', '25');
INSERT INTO `comment_commentaries` VALUES ('2', '26');
INSERT INTO `comment_commentaries` VALUES ('3', '31');
INSERT INTO `comment_commentaries` VALUES ('3', '34');
INSERT INTO `comment_commentaries` VALUES ('3', '35');
INSERT INTO `comment_commentaries` VALUES ('3', '37');
INSERT INTO `comment_commentaries` VALUES ('3', '39');
INSERT INTO `comment_commentaries` VALUES ('4', '42');
INSERT INTO `comment_commentaries` VALUES ('4', '45');
INSERT INTO `comment_commentaries` VALUES ('4', '48');
INSERT INTO `comment_commentaries` VALUES ('4', '50');
INSERT INTO `comment_commentaries` VALUES ('4', '52');
INSERT INTO `comment_commentaries` VALUES ('4', '54');
INSERT INTO `comment_commentaries` VALUES ('5', '58');
INSERT INTO `comment_commentaries` VALUES ('5', '61');
INSERT INTO `comment_commentaries` VALUES ('5', '65');
INSERT INTO `comment_commentaries` VALUES ('5', '67');
INSERT INTO `comment_commentaries` VALUES ('5', '68');
INSERT INTO `comment_commentaries` VALUES ('6', '71');
INSERT INTO `comment_commentaries` VALUES ('6', '72');
INSERT INTO `comment_commentaries` VALUES ('6', '75');
INSERT INTO `comment_commentaries` VALUES ('6', '77');
INSERT INTO `comment_commentaries` VALUES ('6', '79');
INSERT INTO `comment_commentaries` VALUES ('6', '84');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `description` text,
  `oid` int DEFAULT NULL,
  `sequence_number` int DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '对方医院出于各方面考虑，表示他们的床位也不够，拒绝了你。你知道那家医院有许多轻症的病人，还不需要住院治疗，但是你不能继续追问，感到很失落。', '4', '1');
INSERT INTO `message` VALUES ('2', '市级卫健委出面，终于解决了病床问题，各医院进行协调合作，现在终于扩大了收治病人的数量，你感到很欣慰', '4', '2');
INSERT INTO `message` VALUES ('3', '但随着越来越多的病例出现，你发现病毒出现了人传人现象......', '4', '3');
INSERT INTO `message` VALUES ('4', '市级卫健委出面，终于解决了病床问题，各医院进行协调合作，现在终于扩大了收治病人的数量，你感到很欣慰', '5', '1');
INSERT INTO `message` VALUES ('5', '但随着越来越多的病例出现，你发现病毒出现了人传人现象......', '5', '2');
INSERT INTO `message` VALUES ('6', '市级卫健委出面，终于解决了病床问题，各医院进行协调合作，现在终于扩大了收治病人的数量，你感到很欣慰', '6', '1');
INSERT INTO `message` VALUES ('7', '但随着越来越多的病例出现，你发现病毒出现了人传人现象......', '6', '2');
INSERT INTO `message` VALUES ('8', '由于你的及时上报，全国医院迅速采取了隔离措施，避免了疫情的加剧扩散', '7', '1');
INSERT INTO `message` VALUES ('9', '所幸你的同事因为掌握了这一证据，他及时向上级报告，这才避免了更大范围的疫情扩散', '8', '1');
INSERT INTO `message` VALUES ('10', '大部分医护人员听了你的劝说后打算继续投入工作，但仍有一部分医护表示无法坚持......你最终同意了他们的请求...', '9', '1');
INSERT INTO `message` VALUES ('11', '由于你们的不懈努力，疫情被控制住了。', '9', '2');
INSERT INTO `message` VALUES ('12', '医护人员向你表示感谢，但仍有人小声抱怨......', '10', '1');
INSERT INTO `message` VALUES ('13', '由于你们的不懈努力，疫情被控制住了。', '10', '2');
INSERT INTO `message` VALUES ('14', '医护人员很感动你能设身处地为他们着想，他们决定留下来，共克时艰。小王和小金也决定推迟举办婚礼，全身心投入一线工作，与R型病毒作斗争。', '11', '1');
INSERT INTO `message` VALUES ('15', '由于你们的不懈努力，疫情被控制住了。', '11', '2');
INSERT INTO `message` VALUES ('16', '妻子很感动，她认为自己能够战胜R型病毒，让你不用专程来看望她，于是你继续投入救治病人的工作......', '12', '1');
INSERT INTO `message` VALUES ('17', '你帮助许多病人战胜了病魔，妻子也完全康复！你留下了感动的泪水......', '12', '2');
INSERT INTO `message` VALUES ('18', '经过数千万像你这样的医护人员日日夜夜的努力，以及公众的配合隔离，R型病毒疫情终于被控制住了......日子又恢复了以往的平静。只是每个人都更加珍惜生命，珍惜生活，珍惜身边的人......', '12', '3');
INSERT INTO `message` VALUES ('19', '妻子也表示理解你，但是你能从语气中感到她的失落......', '13', '1');
INSERT INTO `message` VALUES ('20', '你帮助许多病人战胜了病魔，妻子也完全康复！你留下了感动的泪水......', '13', '2');
INSERT INTO `message` VALUES ('21', '经过数千万像你这样的医护人员日日夜夜的努力，以及公众的配合隔离，R型病毒疫情终于被控制住了......日子又恢复了以往的平静。只是每个人都更加珍惜生命，珍惜生活，珍惜身边的人......', '13', '3');
INSERT INTO `message` VALUES ('22', '你在医院的学生（实习医生）向你发来求助，他们已经陷入危急关头，这时你终于下定决心返回工作岗位', '15', '1');
INSERT INTO `message` VALUES ('23', '由于你们家在市外并没有亲戚，一时间难以启程，于是计划暂时搁置，你在陆续准备出城的物资并规划路线。', '16', '1');
INSERT INTO `message` VALUES ('24', '疫情当头，医院真的变成了重灾区，你的同事们接单时都尽量远离医院。', '16', '2');
INSERT INTO `message` VALUES ('25', '你打算陆续减少工作量，宁可在外少接触，身体比较重要。', '17', '1');
INSERT INTO `message` VALUES ('26', '疫情当头，医院真的变成了重灾区，你的同事们接单时都尽量远离医院。', '17', '2');
INSERT INTO `message` VALUES ('27', '你决定不去送这一单，这对你来说并没有多少损失，但心里多少有一些愧疚。', '18', '1');
INSERT INTO `message` VALUES ('28', '隔壁小区由于出现了较多病例，已经被隔离管控了。但是大家齐心协力，也有许多志愿者自告奋勇，在社区内配送生活物资，使隔离的住户能够正常生活，虽然对于疫情很担心，但是你也感到很温暖。', '18', '2');
INSERT INTO `message` VALUES ('29', '医护人员收到了你送的餐，十分高兴，因为他们已经好久没有正常地吃过饭了，而且一般来说也没有外卖员愿意送，他们十分感激你，你也很高兴！', '19', '1');
INSERT INTO `message` VALUES ('30', '隔壁小区由于出现了较多病例，已经被隔离管控了。但是大家齐心协力，也有许多志愿者自告奋勇，在社区内配送生活物资，使隔离的住户能够正常生活，虽然对于疫情很担心，但是你也感到很温暖。', '19', '2');
INSERT INTO `message` VALUES ('31', '医护人员对你表示感谢，你对自己原本的想法有些不好意思，心里由衷地佩服医护人员。', '20', '1');
INSERT INTO `message` VALUES ('32', '隔壁小区由于出现了较多病例，已经被隔离管控了。但是大家齐心协力，也有许多志愿者自告奋勇，在社区内配送生活物资，使隔离的住户能够正常生活，虽然对于疫情很担心，但是你也感到很温暖。', '20', '2');
INSERT INTO `message` VALUES ('33', '可是父母劝你不要外出，可能会给别市带来危险。最终你被父母说服，决定留在W市，和爸妈交代好注意事项，购买好储备物资.', '21', '1');
INSERT INTO `message` VALUES ('34', '很多人和你一样，决定服从安排，留在W市，你感到很暖心。', '22', '2');
INSERT INTO `message` VALUES ('35', '平台上粉丝数翻了好几倍，很多人都留言为W市加油，你甚至登上了热搜！', '24', '1');
INSERT INTO `message` VALUES ('36', '有许多和你一样觉悟的同志，你们受到了政府和单位的表扬！你被推荐入党。', '25', '1');
INSERT INTO `message` VALUES ('37', '随着疫情越来越严重，国家制定政策，承担治疗R型病毒治疗的所有费用。社区工作人员每天上门为自我隔离的住户运送物资...一切都在慢慢变好...你望向窗边，看到了久违的太阳...', '26', '1');
INSERT INTO `message` VALUES ('38', '随着疫情越来越严重，国家制定政策，承担治疗R型病毒治疗的所有费用。社区工作人员每天上门为自我隔离的住户运送物资...一切都在慢慢变好...你望向窗边，看到了久违的太阳...', '27', '1');
INSERT INTO `message` VALUES ('39', '向所有社区人员、医护人员等在各个岗位兢兢业业的人们表示感谢，正是你们的坚持，疫情才能慢慢好转。疫情使人们更加珍惜身边的美好...', '28', '1');
INSERT INTO `message` VALUES ('40', '向所有社区人员、医护人员等在各个岗位兢兢业业的人们表示感谢，正是你们的坚持，疫情才能慢慢好转。疫情使人们更加珍惜身边的美好...', '29', '1');
INSERT INTO `message` VALUES ('41', '向所有社区人员、医护人员等在各个岗位兢兢业业的人们表示感谢，正是你们的坚持，疫情才能慢慢好转。疫情使人们更加珍惜身边的美好...', '30', '1');
INSERT INTO `message` VALUES ('42', '向所有社区人员、医护人员等在各个岗位兢兢业业的人们表示感谢，正是你们的坚持，疫情才能慢慢好转。疫情使人们更加珍惜身边的美好...', '31', '1');
INSERT INTO `message` VALUES ('43', '这时你突然得到消息，自己一直在照料的病人由于感染R型病毒，病情突然恶化。你感到很难受，经过一番激烈的思想斗争，还是决定留下，继续照料病人。', '34', '1');
INSERT INTO `message` VALUES ('44', '各地向W市驰援物资，口罩总算是能解燃眉之急了。', '36', '1');
INSERT INTO `message` VALUES ('45', '各地向W市驰援物资，口罩总算是能解燃眉之急了。', '37', '1');
INSERT INTO `message` VALUES ('46', '父母表示自己目前很好，不需要你担心，让你好好工作，好好休息，他们会照顾好自己的。你哭成了泪人，但还是擦干眼泪，继续完成手上的任务。', '38', '1');
INSERT INTO `message` VALUES ('47', '医院对你采取了隔离措施，并对你进行核酸检测。所幸你多次的核酸检测均为阴性。', '40', '1');
INSERT INTO `message` VALUES ('48', '医院内部出现了医护人员被感染的情况，医院决定对全体医护人员进行核酸检测，你的核酸检测均为阴性。', '41', '1');
INSERT INTO `message` VALUES ('49', '这是最妥当的处置方式。', '42', '1');
INSERT INTO `message` VALUES ('50', '由于全市各医院都出现了类似情况，市卫健委做出部署，全市统一协调病床资源，将医院分类进行收治病人。', '42', '2');
INSERT INTO `message` VALUES ('51', '在全体医护人员的不懈努力下，疫情终于被遏制住了。在这次抗疫行动中，你表现优异，被护士长提拔。', '42', '3');
INSERT INTO `message` VALUES ('52', '只依据护士的判断，家属有些不服，最后由主任医生做出妥当安排。', '43', '1');
INSERT INTO `message` VALUES ('53', '由于全市各医院都出现了类似情况，市卫健委做出部署，全市统一协调病床资源，将医院分类进行收治病人。', '43', '2');
INSERT INTO `message` VALUES ('54', '在全体医护人员的不懈努力下，疫情终于被遏制住了。在这次抗疫行动中，你表现优异，被护士长提拔。', '43', '3');
INSERT INTO `message` VALUES ('55', '但是不能一刀切，要按照具体情况妥善安排。', '44', '1');
INSERT INTO `message` VALUES ('56', '由于全市各医院都出现了类似情况，市卫健委做出部署，全市统一协调病床资源，将医院分类进行收治病人。', '44', '2');
INSERT INTO `message` VALUES ('57', '在全体医护人员的不懈努力下，疫情终于被遏制住了。在这次抗疫行动中，你表现优异，被护士长提拔。', '44', '3');
INSERT INTO `message` VALUES ('58', '上网课的日子总是过得很快。你一直待在家里，对疫情的感触似乎...还好？但你的妈妈是一名医护工作者，你深知疫情当前，医护工作者是多么危险。', '48', '1');
INSERT INTO `message` VALUES ('59', '上网课的日子总是过得很快。你一直待在家里，对疫情的感触似乎...还好？但你的妈妈是一名医护工作者，你深知疫情当前，医护工作者是多么危险。', '49', '1');
INSERT INTO `message` VALUES ('60', '上网课的日子总是过得很快。你一直待在家里，对疫情的感触似乎...还好？但你的妈妈是一名医护工作者，你深知疫情当前，医护工作者是多么危险。', '50', '1');
INSERT INTO `message` VALUES ('61', '在你的悉心照料下，妈妈终于康复了。医院也批准妈妈休假，你们可以安心在家做好自我防护了。', '53', '1');
INSERT INTO `message` VALUES ('62', '在你的悉心照料下，妈妈终于康复了。医院也批准妈妈休假，你们可以安心在家做好自我防护了。', '54', '1');
INSERT INTO `message` VALUES ('63', '作为高三学子，你们真的很不容易，顶住生活和学习的压力，你们已经完成了成人的蜕变。今后，愿你们带着这份勇敢和决绝，在人生的道路上所向披靡。', '59', '1');
INSERT INTO `message` VALUES ('64', '作为高三学子，你们真的很不容易，顶住生活和学习的压力，你们已经完成了成人的蜕变。今后，愿你们带着这份勇敢和决绝，在人生的道路上所向披靡。', '60', '1');
INSERT INTO `message` VALUES ('65', '作为高三学子，你们真的很不容易，顶住生活和学习的压力，你们已经完成了成人的蜕变。今后，愿你们带着这份勇敢和决绝，在人生的道路上所向披靡。', '61', '1');
INSERT INTO `message` VALUES ('66', '作为高三学子，你们真的很不容易，顶住生活和学习的压力，你们已经完成了成人的蜕变。今后，愿你们带着这份勇敢和决绝，在人生的道路上所向披靡。', '62', '1');
INSERT INTO `message` VALUES ('67', '一支白衣天使战队组建完成，你是带队出征的将军。', '65', '1');
INSERT INTO `message` VALUES ('68', '你们安全到达了W市，根据每人的特长，分配到不同的岗位，投入紧张的战斗中。', '65', '2');
INSERT INTO `message` VALUES ('69', '一支白衣天使战队组建完成，你是带队出征的将军。', '66', '1');
INSERT INTO `message` VALUES ('70', '你们安全到达了W市，根据每人的特长，分配到不同的岗位，投入紧张的战斗中。', '66', '2');
INSERT INTO `message` VALUES ('71', '一支白衣天使战队组建完成，你是带队出征的将军。', '67', '1');
INSERT INTO `message` VALUES ('72', '你们安全到达了W市，根据每人的特长，分配到不同的岗位，投入紧张的战斗中。', '67', '2');
INSERT INTO `message` VALUES ('73', '原来小吴是想家了，加上最近工作太疲惫，所以有点难受。你安慰了小吴，小吴表示自己也恢复了，可以重新投入工作中。', '68', '1');
INSERT INTO `message` VALUES ('74', '原来小吴是想家了，加上最近工作太疲惫，所以有点难受。你安慰了小吴，小吴表示自己也恢复了，可以重新投入工作中。', '69', '1');
INSERT INTO `message` VALUES ('75', '全国各省市都派出了驰援W市的医疗战队，疫情已经被遏制住，一切都在慢慢变好......', '75', '1');
INSERT INTO `message` VALUES ('76', '全国各省市都派出了驰援W市的医疗战队，疫情已经被遏制住，一切都在慢慢变好......', '76', '1');
INSERT INTO `message` VALUES ('77', '老板临时决定员工不用再到公司上班，改为线上办公...你十分高兴，终于能安全待在家里了，也能不用被扣奖金了。', '79', '1');
INSERT INTO `message` VALUES ('78', '老板临时决定员工不用再到公司上班，改为线上办公...你十分高兴，终于能安全待在家里了，也能不用被扣奖金了。', '80', '1');
INSERT INTO `message` VALUES ('79', '你收到了捐赠机构的表扬信，觉得十分有成就感。', '83', '1');
INSERT INTO `message` VALUES ('80', '你收到了捐赠机构的表扬信，觉得十分有成就感。', '85', '1');
INSERT INTO `message` VALUES ('81', '果然，W市红十字会存在贪污腐败情况，相关部门已进行整改，防疫物资得到了合理利用。', '86', '1');
INSERT INTO `message` VALUES ('82', '果然，W市红十字会存在贪污腐败情况，相关部门已进行整改，防疫物资得到了合理利用。', '88', '1');
INSERT INTO `message` VALUES ('83', '果然，W市红十字会存在贪污腐败情况，相关部门已进行整改，防疫物资得到了合理利用。但有关部门也提醒广大网友注意质疑的方式。', '87', '1');
INSERT INTO `message` VALUES ('84', '由于疫情，许多公司都面临破产的压力。你所在的公司经济效益也不容乐观。', '86', '2');
INSERT INTO `message` VALUES ('85', '由于疫情，许多公司都面临破产的压力。你所在的公司经济效益也不容乐观。', '87', '2');
INSERT INTO `message` VALUES ('86', '由于疫情，许多公司都面临破产的压力。你所在的公司经济效益也不容乐观。', '88', '2');
INSERT INTO `message` VALUES ('87', '由于你表现较好，老板没有将你裁员。许多人因为疫情失业，相比他们，你是幸运的。', '89', '1');
INSERT INTO `message` VALUES ('88', '果不其然，你在裁员名单当中。你感到有点沮丧，但同时又觉得一块石头落了地，因为你心中一直有想要换一种生活方式的想法。', '90', '1');
INSERT INTO `message` VALUES ('89', '面对疫情，每个人的生活都比以往更艰难。要透过阴霾看到太阳，不能自我消沉，要振作！', '92', '1');
INSERT INTO `message` VALUES ('90', '你能够从生活的打击中及时跳脱出来。希望你能保持这份乐观，在生活中勇往直前。生活不会一帆风顺，但逆水行舟更能磨练人的意志力。', '93', '1');
INSERT INTO `message` VALUES ('91', '你很有勇气，你把人生的转折看做是进行新尝试的机会！疫情期间，打工人的生活尤为艰难，祝你好运！', '91', '1');

-- ----------------------------
-- Table structure for `option`
-- ----------------------------
DROP TABLE IF EXISTS `option`;
CREATE TABLE `option` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `description` text,
  `next_qid` int DEFAULT NULL,
  `qid` int DEFAULT NULL,
  `sequence_number` int DEFAULT NULL,
  `cid` int DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of option
-- ----------------------------
INSERT INTO `option` VALUES ('1', '将病情上报医院、卫健委，积极组织医院对伤病员开展救治 ', '2', '1', '1', '1');
INSERT INTO `option` VALUES ('2', '预见到R病毒来势汹汹，向医院告假，打算去其他地方避难 ', '6', '1', '2', '2');
INSERT INTO `option` VALUES ('3', '不行动，保持观望态度 ', '2', '1', '3', '3');
INSERT INTO `option` VALUES ('4', '求助其他有收治能力的医院 ', '3', '2', '1', '4');
INSERT INTO `option` VALUES ('5', '向上级领导请示 ', '3', '2', '2', '5');
INSERT INTO `option` VALUES ('6', '无能为力，只能看着大量病人无法住院，无法得到及时救治 ', '3', '2', '3', '6');
INSERT INTO `option` VALUES ('7', '立即上报医院、卫健委，展开专案讨论', '4', '3', '1', '7');
INSERT INTO `option` VALUES ('8', '隐瞒消息，因为可能会引起更大的恐慌 ', '4', '3', '2', '8');
INSERT INTO `option` VALUES ('9', '竭力劝阻他们不要辞职，人民的生命高于一切', '5', '4', '1', '9');
INSERT INTO `option` VALUES ('10', '不说挽留的话，因为他们肯定有自己的考虑，很快批准，但是和他们表明，以后不能再来这家医院就职', '5', '4', '2', '10');
INSERT INTO `option` VALUES ('11', '了解他们的难处，看是否能够协调安排，毕竟医院人手不足，但是医护人员的心理状况也需要关注', '5', '4', '3', '11');
INSERT INTO `option` VALUES ('12', '先去陪伴妻子，因为手上的病人还没有出现重症症状', '-1', '5', '1', '12');
INSERT INTO `option` VALUES ('13', '只能和妻子说抱歉，在心里为妻子加油；毕竟身为医生，对病人责任是天职', '-1', '5', '2', '13');
INSERT INTO `option` VALUES ('14', '决定不离开W市，返回岗位，与病魔作斗争', '2', '6', '1', '14');
INSERT INTO `option` VALUES ('15', '还在犹豫中', '2', '6', '2', '-1');
INSERT INTO `option` VALUES ('16', '你感到惊慌失措，第一反应是逃离W 市', '8', '7', '1', '15');
INSERT INTO `option` VALUES ('17', '赶紧在家中备好生活物资，打算蹲守在家', '8', '7', '2', '16');
INSERT INTO `option` VALUES ('18', '惜命要紧，同事不接活我也不接活，无论工资多么高', '9', '8', '1', '17');
INSERT INTO `option` VALUES ('19', '医护工作人员很辛苦，他们做出了很多牺牲，当他们有需要的时候，我愿意挺身而出去送单', '9', '8', '2', '18');
INSERT INTO `option` VALUES ('20', '难得运费这么高，送了这一单，今天可以轻松一些，早点回家', '9', '8', '3', '19');
INSERT INTO `option` VALUES ('21', '认为W市太危险了，想带上父母逃离W市', '10', '9', '1', '20');
INSERT INTO `option` VALUES ('22', '决定服从安排，就待在W市，和爸妈交代好注意事项，购买好储备物资决定守城', '10', '9', '2', '21');
INSERT INTO `option` VALUES ('23', '待在家中，享受难得的空闲“假期”', '11', '10', '1', '22');
INSERT INTO `option` VALUES ('24', '打算拍摄Vlog，和全国人民分享封城的生活', '11', '10', '2', '23');
INSERT INTO `option` VALUES ('25', '报名小区志愿者，帮忙分担', '11', '10', '3', '24');
INSERT INTO `option` VALUES ('26', '觉得心头很压抑，甚至产生了轻生的念头', '12', '11', '1', '25');
INSERT INTO `option` VALUES ('27', '给亲友打气，我们一定能渡过难关', '12', '11', '2', '26');
INSERT INTO `option` VALUES ('28', '和父母一起去江边散步', '-1', '12', '1', '27');
INSERT INTO `option` VALUES ('29', ' 对每天给你送饭的社区人员表示感谢', '-1', '12', '2', '28');
INSERT INTO `option` VALUES ('30', '给医护人员写感谢信', '-1', '12', '3', '29');
INSERT INTO `option` VALUES ('31', '向给W市加油的网友表示感谢', '-1', '12', '4', '30');
INSERT INTO `option` VALUES ('32', '服从上级安排，不在公开场合讨论R型病毒的事，但还是会在网上时刻关注消息', '14', '13', '1', '31');
INSERT INTO `option` VALUES ('33', '你认为护士长在有意隐瞒什么，上班时间还是会和同事悄悄讨论这件事', '14', '13', '2', '32');
INSERT INTO `option` VALUES ('34', '决定辞职，因为病毒十分凶险，自己随时都有被感染的可能性', '15', '14', '1', '33');
INSERT INTO `option` VALUES ('35', '和父母交代好注意事项，决定奔赴战场', '15', '14', '2', '34');
INSERT INTO `option` VALUES ('36', '及时向上级请示，号召同事们减少口罩替换频率', '16', '15', '1', '35');
INSERT INTO `option` VALUES ('37', '自己私下多囤几个口罩', '16', '15', '2', '36');
INSERT INTO `option` VALUES ('38', '想辞职', '17', '16', '1', '-1');
INSERT INTO `option` VALUES ('39', '继续工作，在工作的空余时间给父母打电话询问消息', '17', '16', '2', '-1');
INSERT INTO `option` VALUES ('40', '及时向医院报告，进行隔离', '18', '17', '1', '37');
INSERT INTO `option` VALUES ('41', '认为自己应该没事，继续照顾病人', '18', '17', '2', '38');
INSERT INTO `option` VALUES ('42', '将情况上报，由领导进行指示', '-1', '18', '1', '39');
INSERT INTO `option` VALUES ('43', '按照病人情况的轻重进行安排', '-1', '18', '2', '40');
INSERT INTO `option` VALUES ('44', '优先安排R型病毒感染患者入住', '-1', '18', '3', '41');
INSERT INTO `option` VALUES ('45', '保持在校的自律作息', '20', '19', '1', '42');
INSERT INTO `option` VALUES ('46', '略微放松，但仍保持认真听课的好习惯', '20', '19', '2', '43');
INSERT INTO `option` VALUES ('47', '完全放松', '20', '19', '3', '44');
INSERT INTO `option` VALUES ('48', '认真复习，即使线上测试也尽量不看书，测出真实水平', '21', '20', '1', '45');
INSERT INTO `option` VALUES ('49', '认真复习，但由于是线上测试，遗忘处也会翻书', '21', '20', '2', '46');
INSERT INTO `option` VALUES ('50', '不作特别复习，全程开卷考', '21', '20', '3', '47');
INSERT INTO `option` VALUES ('51', '尊重妈妈的决定，并为妈妈准备好口罩，叮嘱妈妈注意事项并让妈妈不要担心自己', '22', '21', '1', '48');
INSERT INTO `option` VALUES ('52', '不愿妈妈前往一线抗疫，劝说妈妈休假在家', '22', '21', '2', '49');
INSERT INTO `option` VALUES ('53', '做好自身防护，照顾好妈妈，同时兼顾学习', '23', '22', '1', '50');
INSERT INTO `option` VALUES ('54', '身体为重，学习先放一边', '23', '22', '2', '51');
INSERT INTO `option` VALUES ('55', '焦躁不安', '24', '23', '1', '52');
INSERT INTO `option` VALUES ('56', '平常淡定', '24', '23', '2', '53');
INSERT INTO `option` VALUES ('57', '又有多准备的时间，感到小确幸', '25', '24', '1', '-1');
INSERT INTO `option` VALUES ('58', ' 目测假期会缩短，有点小抱怨', '25', '24', '2', '-1');
INSERT INTO `option` VALUES ('59', '信心满满', '-1', '25', '1', '54');
INSERT INTO `option` VALUES ('60', '有些忐忑，但也很期待', '-1', '25', '2', '55');
INSERT INTO `option` VALUES ('61', '平常心，更慎重', '-1', '25', '3', '56');
INSERT INTO `option` VALUES ('62', '异常紧张', '-1', '25', '4', '57');
INSERT INTO `option` VALUES ('63', '向W市捐赠大量医疗物资 ', '27', '26', '1', '58');
INSERT INTO `option` VALUES ('64', '少量捐赠，与其他医院进行比较再调整数量，同时为自己医院备好储备 物资', '27', '26', '2', '59');
INSERT INTO `option` VALUES ('65', '强制党员先上 ', '28', '27', '1', '60');
INSERT INTO `option` VALUES ('66', '考虑每位医护人员的身体状况、家庭状况，心中拟定合适的人选后进行劝说工作 ', '28', '27', '2', '61');
INSERT INTO `option` VALUES ('67', '采取自愿报名的形式 ', '28', '27', '3', '62');
INSERT INTO `option` VALUES ('68', '假装没看见，因为谁都会有情绪崩溃的时候，让小吴自己缓过来 ', '29', '28', '1', '63');
INSERT INTO `option` VALUES ('69', '上前询问，是不是工作、生活遇到难处了，可以一起面对困难 ', '29', '28', '2', '-1');
INSERT INTO `option` VALUES ('70', '坚持中医疗法 ', '30', '29', '1', '64');
INSERT INTO `option` VALUES ('71', '坚持西医疗法 ', '30', '29', '2', '64');
INSERT INTO `option` VALUES ('72', '认为应该都尝试，根据患者的不同体质给出具体方案 ', '30', '29', '3', '65');
INSERT INTO `option` VALUES ('73', '开心收下这封信，日后回复 ', '31', '30', '1', '66');
INSERT INTO `option` VALUES ('74', '感到心头一阵暖流涌过，把信念给每一位同事听，因为他们都是需要被感谢的对象 ', '31', '30', '2', '67');
INSERT INTO `option` VALUES ('75', '与队员们一同回去，见见许久未见的家人 ', '-1', '31', '1', '68');
INSERT INTO `option` VALUES ('76', '你觉得W市需要你，决定继续留下 ', '-1', '31', '2', '69');
INSERT INTO `option` VALUES ('77', '尽管认为疫情很严重，但你怕得罪领导，还是打算去上班 ', '33', '32', '1', '70');
INSERT INTO `option` VALUES ('78', '你认为生命高于一切，向老板说明了疫情的严重性，希望老板能够批准在家办公 ', '34', '32', '2', '71');
INSERT INTO `option` VALUES ('79', '果断回家，再难也要和老板请假，生命第一 ', '35', '33', '1', '72');
INSERT INTO `option` VALUES ('80', '都已经出门了，还是硬着头皮去吧，病毒应该没有这么凑巧盯上我吧 ', '35', '33', '2', '73');
INSERT INTO `option` VALUES ('81', '只得硬着头皮上班 ', '35', '34', '1', '74');
INSERT INTO `option` VALUES ('82', '认为生命是所有0前的1，还是决定待在家中，并号召同事们也在家办公 ', '35', '34', '2', '75');
INSERT INTO `option` VALUES ('83', '购买口罩，全部无偿捐赠给W市 红十字会', '36', '35', '1', '76');
INSERT INTO `option` VALUES ('84', '购买口罩，在家囤货 ', '36', '35', '2', '77');
INSERT INTO `option` VALUES ('85', '购买口罩，一部分留在家备用，一部分捐赠 给W市 红十字会', '36', '35', '3', '78');
INSERT INTO `option` VALUES ('86', '在网上通过合理的渠道提出自己的质疑 ', '37', '36', '1', '79');
INSERT INTO `option` VALUES ('87', '直接拿起键盘“开喷” ', '37', '36', '2', '80');
INSERT INTO `option` VALUES ('88', '不发声，默默关注新闻 ', '37', '36', '3', '81');
INSERT INTO `option` VALUES ('89', '好好表现，在老板面前多刷脸，争取不要被裁员 ', '38', '37', '1', '82');
INSERT INTO `option` VALUES ('90', '觉得自己可能在裁员名单内，但得过且过，走一步看一步 ', '38', '37', '2', '83');
INSERT INTO `option` VALUES ('91', '觉得自己可能在裁员名单内，于是提前辞职，打算重新寻找一份工作，这也是你一直想做的事 ', '-1', '37', '3', '84');
INSERT INTO `option` VALUES ('92', '一直消沉，无法振作', '-1', '38', '1', '-1');
INSERT INTO `option` VALUES ('93', '衡量目前的经济状况，做好未来的计划打算', '-1', '38', '2', '-1');

-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `qid` int NOT NULL AUTO_INCREMENT,
  `description` text,
  `uid` int DEFAULT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', 'W市突然出现了流行R型病毒，身为传染病专科医院专家，你应该采取的行动是？', '1');
INSERT INTO `question` VALUES ('2', '你们是全市第一家定点救助R型病毒感染者的医院，数千数万的病人被送往你们医院，出现了床位告急的情况，这时你…', '1');
INSERT INTO `question` VALUES ('3', '你掌握了病毒出现人传人现象的充分证据，这时你会...', '1');
INSERT INTO `question` VALUES ('4', '由于疫情形势不容乐观，一些医护人员出现了畏难情绪，想要辞职，这时你会......', '1');
INSERT INTO `question` VALUES ('5', '但是家里传来消息，你的妻子不幸感染了R型病毒，但你手头还有很多病人需要救助，一时间也找不到合适的同事来接班，这时你会...', '1');
INSERT INTO `question` VALUES ('6', '正当你打算离开W市，疫情突然严重了起来，你每天都会在媒体上看到病例的大幅增加......你想起了自己进入医学院时的誓言.....这时你会', '1');
INSERT INTO `question` VALUES ('7', '这天，你又接到前往药店的订单，下单顾客表明自己是医生，你鼓起勇气询问最近是怎么回事？顾客和你说，“非典”可能又来了。', '2');
INSERT INTO `question` VALUES ('8', '这天，你接到了老板的电话，实在没有同事愿意接医院的外卖单，老板希望你能去送，并承诺运单费翻十倍。这时你会...', '2');
INSERT INTO `question` VALUES ('9', 'W市出现了越来越多的病例，即将被封城，这时你...', '2');
INSERT INTO `question` VALUES ('10', '这天，W市正式封城，城市被按下了暂停键。你如何安排封城生活？', '2');
INSERT INTO `question` VALUES ('11', '但形势仍不容乐观，越来越多的人被确诊，这时你会...', '2');
INSERT INTO `question` VALUES ('12', '当疫情结束后，你想做的第一件事是...', '2');
INSERT INTO `question` VALUES ('13', '你隐约感到R型病毒来势汹汹，医院上上下下变得非常忙碌。你很想求证自己的想法，但是护士长告诉你不要多问，也不要讨论。这时你会...', '3');
INSERT INTO `question` VALUES ('14', '这天，院里接到紧急通知，卫健委确定了R型病毒的等级，各大媒体纷纷报导，全市进入最高紧急状态。你们被分配了N95口罩和防护服，你感到事态很严重，这时你会...', '3');
INSERT INTO `question` VALUES ('15', '由于物资紧缺，你们的N95口罩供应量已经不够了，这时你会...', '3');
INSERT INTO `question` VALUES ('16', '家中传来消息，父母居住的小区有阳性病例出现，需要全员隔离，你很担心。这时你会...', '3');
INSERT INTO `question` VALUES ('17', '由于太过劳累，你感到身体不适，怀疑自己感染了R型病毒，但目前症状不明显，这时你会...', '3');
INSERT INTO `question` VALUES ('18', '医院的病床越来越少了，出现了R型病毒感染患者和普通疾病患者“争夺”病床资源的情况 ，你会...', '3');
INSERT INTO `question` VALUES ('19', '疫情突然来袭，学校宣布放假改上网课。现在正处于高三的关键时期，这时你会...', '4');
INSERT INTO `question` VALUES ('20', '学校举行线上测试，你会...', '4');
INSERT INTO `question` VALUES ('21', '这天，妈妈告诉你，她要去一线抗疫，这时你会...', '4');
INSERT INTO `question` VALUES ('22', '妈妈已经很小心做了防护，但还是不幸被感染，好在是轻微症状，于是你和妈妈一起进行居家隔离。面对生病的妈妈，你会...', '4');
INSERT INTO `question` VALUES ('23', '眼看马上到6月份了，疫情还没有稳定下来，高考日子也没有准信，你会...', '4');
INSERT INTO `question` VALUES ('24', '消息传来，全国高考延期，这时你会...', '4');
INSERT INTO `question` VALUES ('25', '对即将来临的高考，你的态度是...', '4');
INSERT INTO `question` VALUES ('26', 'W市医疗物资告急，向全国发出求助信息，身为市综合医院呼吸道科室主任，你会......', '5');
INSERT INTO `question` VALUES ('27', 'W市疫情越来越严重 ，医护人员远远不够，需要各地驰援。身为科室主任，你如何派遣人员呢？', '5');
INSERT INTO `question` VALUES ('28', '你们的工作任务量很大，许多同事都很疲惫。这天深夜，你看到驰援队小吴躲在楼梯间抹眼泪，这时你会...', '5');
INSERT INTO `question` VALUES ('29', '患者的情况不容乐观，医院里考虑采用新疗法，这时你会...', '5');
INSERT INTO `question` VALUES ('30', '这天，你收到了一位小朋友的来信，他向你表示感谢。你会......', '5');
INSERT INTO `question` VALUES ('31', '第一批驰援队的任务期限已到，你安排好了队员们的回程，这时你选择...', '5');
INSERT INTO `question` VALUES ('32', '疫情还没有被官方全面报导，公司也没有重视这件事。但是你经常刷手机，已经了解到W市的疫情是多么严重，可能有感染的风险。此时公司依然让员工正常上班，这时你会...', '6');
INSERT INTO `question` VALUES ('33', '这天上班途中，官方媒体正式报导了疫情的严重性，你越想越害怕，这时你会...', '6');
INSERT INTO `question` VALUES ('34', '老板不批假，这时你会...', '6');
INSERT INTO `question` VALUES ('35', '在家的你感到很安心，但你时时刻刻关注着新闻。你发现W市的疫情越来越严重了，口罩等防护物资严重短缺，Z市市民也陆续开始抢购口罩。你会...', '6');
INSERT INTO `question` VALUES ('36', '也有很多像你一样的人向W市捐赠口罩，可是好奇怪，W市物资短缺的问题似乎并没有缓解，许多网友也和你有一样的疑惑，这时你会...', '6');
INSERT INTO `question` VALUES ('37', '这天，老板宣布由于公司效益不佳，将要裁员。这时你会...', '6');
INSERT INTO `question` VALUES ('38', '尘埃落定，这时你会...', '6');

-- ----------------------------
-- Table structure for `record`
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `qid` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of record
-- ----------------------------

-- ----------------------------
-- Table structure for `record_commentaries`
-- ----------------------------
DROP TABLE IF EXISTS `record_commentaries`;
CREATE TABLE `record_commentaries` (
  `rid` int NOT NULL,
  `cid` int NOT NULL,
  PRIMARY KEY (`rid`,`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of record_commentaries
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for `user_commentaries`
-- ----------------------------
DROP TABLE IF EXISTS `user_commentaries`;
CREATE TABLE `user_commentaries` (
  `user_id` int NOT NULL,
  `cid` int NOT NULL,
  PRIMARY KEY (`user_id`,`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user_commentaries
-- ----------------------------

-- ----------------------------
-- Table structure for `user_identity`
-- ----------------------------
DROP TABLE IF EXISTS `user_identity`;
CREATE TABLE `user_identity` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `description` text,
  `first_qid` int DEFAULT NULL,
  `pic` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user_identity
-- ----------------------------
INSERT INTO `user_identity` VALUES ('1', 'W市传染病专科医院专家（59岁）', '你曾经随中国医疗队出征，援助非洲，有比较充分的传染病应急管理救治经验。三年前，你不幸被查出患有渐冻症，消沉了一段时间后，你决定振作起来，继续救治了千余名病人。你有一位美丽体贴的妻子，是你坚强的后盾。', '1', null);
INSERT INTO `user_identity` VALUES ('2', 'W市外卖员（28岁）', '你是W市本地人，毕业于当地一所普通大学。顺应父母的意思，你在W市找工作。但由于竞争激烈，你只能成为外卖员。你感觉生活千篇一律，有时候想出去看看。', '7', null);
INSERT INTO `user_identity` VALUES ('3', 'W市综合医院普通护士（26岁）', '你刚从医科大学毕业，顺利拿到了研究生学历。在外地上大学的你十分牵挂在W市的父母，毕业后你决定回到W市，既能够实现自己治病救人的抱负，又能够孝顺父母，现在一家综合医院当护士，颇得领导赏识。', '13', null);
INSERT INTO `user_identity` VALUES ('4', 'W市高三学生（17岁）', '你在班里的成绩总是名列前茅，老师、家长对你的期待都很高，你对自己的要求也很高，希望能在高考中一展身手，考到理想中的大学。', '19', null);
INSERT INTO `user_identity` VALUES ('5', 'Z市综合医院呼吸道科室主任（50岁）', '你擅长感染性疾病临床救治，救治无数病人，具有极强的科研能力，在病人、同事间享有极高的声望。目前兼职Z大学医学部副教授。', '26', null);
INSERT INTO `user_identity` VALUES ('6', 'Z 市某公司普通职员（28岁）', '你在经济发达的Z市上大学，毕业以后没有回家乡，选择留在Z市。已入职6年，但还是底层员工，工资不高，还没有结婚，目前在租房，感觉生活压力很大。', '32', null);
