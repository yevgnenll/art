/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `birth_year` int(11) DEFAULT NULL,
  `death_year` int(11) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (102,'빈센트 반 고흐',1853,1890,'네더란드','후기 인상주의'),(103,'바실리 칸딘스키',1866,1944,'프랑스','표현주의'),(104,'에두아르 마네',1832,1883,'프랑스','인상주의'),(105,'존 밀레이',1928,1896,'영국','라파엘 전파'),(106,'가쓰시카 호쿠사이',1760,1849,'일본','우키요에'),(107,'앙리 마티스',1869,1954,'프랑스','야수파'),(108,'장 조프루아',NULL,NULL,'프랑스',NULL),(109,'에드가 드가',1834,1917,'프랑스','인상주의'),(110,'오귀스트 르누아르',1841,1919,'프랑스','인상주의'),(111,'정선',1676,1759,'한국','풍경화'),(112,'에드바르트 뭉크',1863,1944,'노르웨이','표현주의'),(113,'장 오노레 프라고나르',1732,1806,'프랑스','로코코'),(114,'그랜마 모제스',1860,1961,'미국','민속'),(115,'윌리엄 터너',1775,1851,'영국','낭만주의'),(116,'장 프랑수아 밀레',1814,1875,'프랑스','현실주의'),(117,'미켈란젤로 메리시 다 카라바조',1571,1610,'이탈리아','바로크'),(118,'클로드 모네',1840,1926,'프랑스','인상주의'),(119,'로렌스 알마 타데마',1836,1912,'영국','고전주의'),(120,'프레데릭 레이턴',1830,1896,'영국','고전주의'),(121,'파울 클레',1879,1940,'스위스','표현주의'),(122,'카스파르 프리드리히',1774,1840,'독일','낭만주의'),(123,'모리츠 폰 슈빈트',1804,1871,'오스트리아','낭만주의'),(124,'조지 클로젠',1852,1944,'영국','현실주의'),(125,'아르테미시아 젠틸레스키',1593,1652,'이탈리아','바로크'),(126,'로버트 리드',1862,1929,'미국','인상주의'),(127,'구스타브 카유보트',1848,1894,'프랑스','인상주의'),(128,'잭슨 폴락',1912,1956,'미국','표현주의'),(129,'제임스 티소',1836,1902,'프랑스',NULL),(130,'마크 로스코',1903,1970,'미국','인상주의'),(131,'제니 오델',1974,NULL,'미국',NULL),(132,'파블로 피카소',1881,1973,'스페인','큐비즘'),(133,'알폰스 무하',1860,1939,'체코','아르 누보'),(134,'에드워드 호퍼',1882,1967,'미국',NULL),(135,'르네 마그리트',1898,1967,'벨기에','초현실주의'),(136,'레오니드 아프레모브',1955,NULL,NULL,NULL),(137,'페르난도 보테로',1932,NULL,NULL,NULL),(138,'이영철',NULL,NULL,NULL,NULL),(139,'조르주 쇠라',1859,1891,'프랑스','점묘주의'),(140,'피트 몬드리안',1872,1944,'네더란드','신조형주의'),(141,'타마라 드 렘피카',1898,1980,'미국','아르 데코'),(142,'블라디미르 쿠쉬',1965,NULL,'라시아','초현실주의'),(143,'디에고 벨라스케스',1599,1660,'스페인','바로크'),(144,'프란스시코 데 고야',1746,1828,'스페인','로코코'),(145,'외젠 들라크루아',1798,1863,'프랑스','낭만주의'),(146,'앙리 루소',1844,1910,'프랑스','후기인상주의'),(147,'마르크 샤갈',1887,1985,'프랑스',NULL),(148,'후앙 미로',1893,1983,'스페인','초현실주의'),(149,'구스타프 클림트',1862,1918,'오스트리아','아르 누보'),(150,'자크 루이 다비드',1748,1825,'프랑스','신고전주의'),(151,'레오나르도 다 빈치',1452,1519,'이탈리아','르네상스');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `artist_idx` (`artist_id`),
  CONSTRAINT `artist` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'http://www.vggallery.com/painting/f_0467.jpg','밤의 카페 테라스',1888,102,'캔버스에 유채'),(2,'http://www.wassilykandinsky.net/images/works/370.jpg','동심원들과 정사각형들',1913,103,'수채, 과슈, 초크'),(3,'http://www.gulbenkian.pt/prjdir/gulbenkian/images/mediaRep/museu/colecao/pintura/Inv._2361Trat.jpg','비눗방울 부는 소년',1867,104,'캔버스에 유채'),(4,'http://www.nineteenthcenturydisability.org/files/original/b3aa732d8ec9ce789862a1e948ee4838.jpg','눈 먼 소녀',1856,105,'캔버스에 유채'),(5,'http://www.metmuseum.org/toah/images/h2/h2_JP1847.jpg','가나가와 해변의 높은 파도 아래',1832,106,'판화'),(6,'http://www.everypainterpaintshimself.com/images/made/article_images_new/Harmony_in_Red_440_356.JPG','붉은 조화',1908,107,'캔버스에 유채'),(7,'http://images.cdn.bridgemanimages.com/api/1.0/image/600wm.CHT.8748710.7055475/175299.jpg','교실, 공부하는 아이들',1889,108,'캔버스에 유화'),(8,'http://mfas3.s3.amazonaws.com/objects/SC232880.jpg','시골 경마장',1869,109,'캔버스에 유채'),(9,'http://www.musee-orsay.fr/typo3temp/zoom/tmp_c10fcf21603fb85e177b5a4d6cf21777.gif','피아노 치는 소녀',1892,110,'캔버스에 유채'),(10,'http://www.moma.org/wp/moma_learning/wp-content/uploads/2012/07/Van-Gogh.-Portrait-of-Joseph-Roulin-334x395.jpg','우체부 조제프 룰랭의 초상',1889,102,'캔버스에 유채'),(11,'http://www.cha.go.kr/unisearch/images/national_treasure/1611690.jpg','인왕제색도',1751,111,'종이에 수묵'),(12,'http://www.artble.com/imgs/7/d/7/67173/dance_at_le_moulin_de_la_galette.jpg','물랭 드 라 갈레트의 무도회',1876,110,'캔버스에 유채'),(13,'http://uploads4.wikiart.org/images/edvard-munch/the-sun-1916.jpg!Blog.jpg','태양',1916,112,'캔버스에 유채'),(14,'http://www.artble.com/imgs/2/6/6/933850/the_swing.jpg','그네',1767,113,'캔버스에 유채'),(15,'http://uploads0.wikiart.org/images/grandma-moses/the-quilting-bee.jpg!Blog.jpg','퀼팅 비',1950,114,'목판에 유채'),(16,'http://www.wga.hu/detail/t/turner/2/201turne.jpg','전함 테메레르',1839,115,'캔버스에 유채'),(17,'http://www.edgar-degas.net/images/paintings/the-star.jpg','스타',1876,109,'종이에 파스텔'),(18,'http://catherinedelors.com/blog/wp-content/uploads/Millet_spring.jpg','봄',1873,116,'캔버스에 유채'),(19,'http://www.vangogh.net/images/paintings/wheat-field-with-a-reaper.jpg','수확하는 농부',1889,102,'캔버스에 유채'),(20,'http://www.edvardmunch.org/images/paintings/the-dance-of-life.jpg','생의 춤',1900,112,'캔버스에 유채'),(21,'https://www.kimbellart.org/sites/default/files/styles/large_800/public/tms/AP1987_06_MAIN.jpg?itok=eEMsODZX','속임수를 쓰는 사람',1595,117,'캔버스에 유채'),(22,'http://www.ibiblio.org/wm/paint/auth/monet/first/regate/monet.regate.jpg','아르장퇴유의 뱃놀이',1872,118,'캔버스에 유채'),(23,'http://bertc.com/subfive/g72/images/alma_tadema15.jpg','기대',1885,119,'패널에 유화'),(24,'http://www.frick.org/sites/default/files/styles/960/public/exhibitions/Leighton-Flaming-June.jpg?itok=Z9ijk344','타오르는 6월',1895,120,'캔버스에 유채'),(25,'http://www.paulklee.net/images/paintings/Senecio-1922.jpg','세네치오',1922,121,'캔버스에 유채'),(26,'http://www.artble.com/imgs/3/f/4/534414/wanderer_above_the_sea_of_fog.jpg','안개 낀 바다 위의 방랑자',1817,122,'캔버스에 유채'),(27,'http://www.wikigallery.org/paintings/162001-162500/162226/painting1.jpg','아침시간',1860,123,'캔버스에 유채'),(28,'http://i.telegraph.co.uk/multimedia/archive/02691/Youth-Mourning_2691983b.jpg','울고 있는 젊은이',1916,124,'캔버스에 유채'),(29,'http://www.thehistoryblog.com/wp-content/uploads/2014/03/Artemisia-Gentileschi-Self-Portrait-as-a-Lute-Player-c.-1616%E2%80%9318.jpg','류트를 든 자화상',1617,125,'캔버스에 유채'),(30,'http://www.kunsthalle-karlsruhe.de/fileadmin/_processed_/csm_02_Friedrich_2261_e292b93f54.jpg','해변의 암초',1825,122,'캔버스에 유채'),(31,'http://www.whsvisualarts.org/Images15/YelBirds.jpg','노란 새가 있는 풍경',1923,121,'검은 바탕에 수채'),(32,'http://www.the-athenaeum.org/art/display_image.php?id=137689','섬머 걸',1896,126,'캔버스에 유채'),(33,'http://www.wassilykandinsky.net/images/works/55.jpg','푸른 하늘',1940,103,'캔버스에 유채'),(34,'http://www.the-athenaeum.org/art/display_image.php?id=22025','낮잠',1877,127,'파스텔'),(35,'http://images.metmuseum.org/CRDImages/ma/web-large/DP259920.jpg','가을의 리듬: 넘버 30',1950,128,'캔버스에 유채'),(36,'http://www.vggallery.com/painting/f_0474.jpg','별이 빛나는 밤의 론',1888,102,'캔버스에 유채'),(37,'http://www.thebark.com/sites/default/files/styles/full/public/tissot_youngboat_600.jpg?itok=XIWKWul5','보트 위의 여인',1870,129,'캔버스에 유채'),(38,'http://media-3.web.britannica.com/eb-media/66/43666-004-B9017BC8.jpg','오렌지와 노랑',1956,130,'캔버스에 유채'),(39,'http://www.jennyodell.com/garbage-portrait-web.jpg','쓰레기 셀카',2014,131,'사진 콜라주'),(40,'http://www.pablopicasso.org/images/paintings/girl-before-a-mirror.jpg','거울 앞에 선 처녀',1932,132,'캔버스에 유채'),(41,'http://www.pinakothek.de/sites/default/files/imagecache/cloud_zoom_large/gemaelde/original/2008-1216_11577.jpg','신혼여행',1852,123,'캔버스에 유채'),(42,'http://artnouveauposters.biz/wp-content/uploads/2010/11/Mucha-Spring.jpg','사계: 봄',1896,133,'컬러 석판화'),(43,'http://www.larousse.fr/encyclopedie/data/images/1312386-Edgar_Degas_la_Classe_de_danse.jpg','발레 수업',1876,109,'캔버스에 유채'),(44,'http://www.artic.edu/aic/collections/citi/images/standard/WebLarge/WebImg_000254/187455_3026962.jpg','밤을 지새우는 사람들',1942,134,'캔버스에 유채'),(45,'http://www.renemagritte.org/images/paintings/son-of-man.jpg','인간의 아들',1946,135,'캔버스에 유채'),(46,'http://www.manet.org/images/gallery/the-luncheon-on-the-grass.jpg','풀밭 위의 점심식사',1863,104,'캔버스에 유채'),(47,'http://afremov.com/image.php?type=P&id=17685','꿈의 파리',2014,136,'캔버스에 팔레트 나이프로 유채'),(48,'http://uploads1.wikiart.org/images/claude-monet/impression-sunrise.jpg!Blog.jpg','인상, 일출 해돋이',1872,118,'캔버스에 유채'),(49,'https://s-media-cache-ak0.pinimg.com/736x/e0/bd/7c/e0bd7c2b0d810e65f165ce31d77143fe.jpg','빨간 꽃',2006,137,'캔버스에 유채'),(50,'http://www.yeongnam.com/Photo/2014/03/04/L20140304.010240814000001i3.jpg','이만큼 너를 사랑해',2013,138,'캔버스 위에 아크릴물감'),(51,'http://www.metmuseum.org/toah/images/h2/h2_51.112.6.jpg','그랑드자트섬의 일요일 오후',1886,139,'캔버스에 유채'),(52,'http://www.piet-mondrian.org/images/paintings/broadway-boogie-woogie.jpg','브로드웨이 부기우기',1912,140,'캔버스에 유채'),(53,'https://cafephilos.files.wordpress.com/2008/09/girl-in-green-with-gloves-1929.jpg?w=676','녹색 옷을 입은 소녀',1929,141,'캔버스에 유채'),(54,'https://www.artbrokerage.com/artthumb/vladimirkush_61577_6/625x559/Vladimir_Kush_Arrival_of_the_Flower_Ship_2001.jpg','플라워 선박의 입항',2001,142,'캔버스에 유채'),(55,'https://www.museodelprado.es/typo3temp/pics/779e7c3d73.jpg','하녀들',1656,143,'캔버스에 유채'),(56,'http://www.artble.com/imgs/c/e/3/233877/young_girl_reading_300px.jpg','책 읽는 소녀',1770,113,'캔버스에 유채'),(57,'https://www.museodelprado.es/typo3temp/pics/6721c14c3f.jpg','허공에 떠있는 마녀들',1798,144,'캔버스에 유채'),(58,'https://www.mtholyoke.edu/courses/rschwart/hist255/la/bigliberty.jpg','민중을 이끄는 자유의 여신',1830,145,'캔버스에 유채'),(59,'http://www.henrirousseau.net/images/famous/the-sleeping-gypsy.jpg','잠자는 집시',1897,146,'캔버스에 유채'),(60,'http://www.galleryintell.com/wp-content/uploads/2012/11/Marc-Chagall-Birthday.jpg','탄생',1915,147,'캔버스에 유채'),(61,'http://www.joan-miro.net/images/paintings/harlequins-carnival.jpg','할리퀸의 카니발',1925,148,'캔버스에 유채'),(62,'http://totallyhistory.com/wp-content/uploads/2012/12/fish-magic-1925.jpg','물고기 마술',1925,121,'패널에 유채와 수채'),(63,'https://www.belvedere.at/website/var/tmp/image-thumbnails/0/4416/thumb__collectionDetailPicture/klimt_kuss_400@2x.jpeg','키스',1908,149,'캔버스에 유채, 금박, 은박'),(64,'http://www.napoleon.org/en/img/Ill1/object/482581_1.jpg','알프스를 넘는 나폴레옹',1805,150,'캔버스에 유채'),(65,'http://media-1.web.britannica.com/eb-media/21/95421-004-9DAA003C.jpg','모나리자',1517,151,'나무판 위에 유채');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
