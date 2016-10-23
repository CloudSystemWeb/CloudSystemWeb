CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `boleta`
--

DROP TABLE IF EXISTS `boleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boleta` (
  `idboleta` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `idcliente` int(11) NOT NULL,
  PRIMARY KEY (`idboleta`),
  KEY `fk_boleta_cliente` (`idcliente`),
  CONSTRAINT `fk_boleta_cliente` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boleta`
--

LOCK TABLES `boleta` WRITE;
/*!40000 ALTER TABLE `boleta` DISABLE KEYS */;
/*!40000 ALTER TABLE `boleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (6,'Bebibles'),(7,'Comestibles'),(8,'ElectrodomÃ©ticos'),(9,'InformÃ¡tica');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `correo` varchar(80) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `foto` longblob,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Luis','Perez','luis@gmail.com','2015-05-07','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777ÿÀ\0\0}\0S\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\06\0	\0\0\0\0\0\0!1A\"QaqBÁ#2Rbr‘¡Ñ$CáğÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0!1\"2AÿÚ\0\0\0?\0ÒÅt+‘Š<Ö˜jºÎŸ¤Eï5¸á\\pò~Â :ÿ\0«Ó¦ìÖ+}­8ı=ycùV©jwZ…ÃÏu+É+—cÍnhIi±Mí[Fb©ou$gñ€ö4îËÚgOÜ¸I,’?ñX0$Ÿú¥•øÀÈ­êœÓõ[\rMØ]E8ö6H§‚¼Ñ¥jwZMäwV“4n§9½mÕñu- Ey¨<8ı¡C˜cE®ˆŠêŠ°ÃŒP£¡\\p˜®e‘cFy*(,Äø5Lö©¨›.˜h£r²]H\"\\Í½2î²Õ‡Pu4÷dÂ@Hóû#ÍBËlÀúTšy¥ wy{ŒàTı½€—£š\Z¾¬®8õ8á,ı©H­$fô‚jï»yAóíO Ñ•H/×µåaÿ\0Š(ïc2ôqN4MBm\'Q†ê£Âà‘óE_ÃlÇ5Nêe·Ôƒªú\\cZéäíà7Æ’ÔoZeìzŒpŒG2§UKö[zÓh2[HÙkyŠòR]3FLÂÅ\nUÆø¬§ÛT¯ñ:d?ñ{·a÷È­S5œûg¶VÓtë¬ª´s2•=È#ÇôhÉúfÚ3•]¿3WM9K*‘;U#OcÎí¤Ê´°Ààïg÷¹äÁ¥\\ë,Šê&ÊàgéN¡‹)Tı¨%y’’›Œüë¾ ÔîàÅÌ1ûÏŞ”çÜ\ZëÍ-w1ˆàxªU\'¥_É8§\Z6«ÈVê{°Ùá‰ôçïKu{5\"´›²×5Ó=h]=’sÙ\rÆ/o­ûæ$r­jšÍ}˜[.áb‘ûÈ7—#¶`+I§îü%¹ÆP¡B¸¯+:öÁ2ioÉPÒçè+Dª‡´ûa?O#í$E8bG€Ai¼²2‹Â1¸qô§¶znKF§aÈÏšNÓÒª3Øâ§­b÷‘ã~>”:Ê¦S\" LêğåAóŒqš³ßÙ	.äp=â¯ vaUûyíáÖdUN[î5‰^E`2qÅ±²†–ºT!IÂ“’¤\0	şTµíŠÉ¨c÷eFG\'>jj8¡¤EÏÚš_·¤\n^°Zé­Ë«Û¨f’4Ê£Ÿáæ¯‹P\Z•<3¬óìP«éUó‘Ş§ñÅ:\"~zU^B‹šBF¹â¹–(ç‰¢š5’6eak¡Š1D	™ûCÑm´Ùlîlmã†R‘®áÈ?ûåP¶bã¹ì+Mëh®ºnøJ¶D]~„sXı¼â)>y9-iOyƒÆkt¿ê\0<5?cycks çŒy¨T·[™LĞ€	ïRÖ“ƒºFWÅ*™\\æzMÙŞG*“†³@ˆ¹†øäûŠes\'»;°Ë^Á ì’)şô¿è¦iª»x8dfˆ8İÅuT‘â…(«ŠëÅp\rÊ1\0äø¢\0gÔ \nü1\0~Õƒn#‘ZŸVëqê×\Z],2^OÈJÌ’/x ùóBŞq-´¿xqÍNCÔ*[\'åUÅ·Üø©‹$Ê’3÷¥Ö$Ç‚ê}AÂ\0Á<æ¥âQjŒR6Ñª‘€;tÜ§–ÃÃEÓ¯#¾³ŠxUÆiÖjĞòÉo¤®X’$sÏÈ“Š·ExŒïI5J ¯PïPÃ±çšC\'(ëL ïu­\0{É1Âz¨jš…Íôò£‹Ø\nwpïË1=¹¨eVørÿ\0Švóò¢WC·êvğrHşU¨Xÿ\0§ê·ÍÂÜŸÂy­ÿ\0PÏ¤Ìœˆ\\T2Ğ\n}suRZÃs\Z„½DÄ‘ŸÆ?tÒ¬£‡ñ~ÒÀñRV[ŒšBÚ”eõ\nZ4xœ¸¤¶W„´[1œRw—K¬Ò·áSŠRÔMõ+	®WÜ¦6{\nµ™M/¥—§\"1éğ>¯v¹ZEÊñQ\ZJGŒø©PxÇš¥S÷CÛB¸!óÃœP­Ó\næ¦»¡;ÉÀ¦\Z«¤!ÆÑ0È­sn¤p«ŸçG©\0qDb*è	uf¿Xw¢Ó´ÿ\0væĞ	ãûŠ²i¼Ë\"cŠOUm].\"’7R?ÅcZfˆëU+6Û”Úİ„ßëR7PÂTmÕSv04¹r¨«•6åã[f@\'éSÜ”qò:x\'nj#2ç€rjiôÑ™ o×#s7ÌÓ•A/¼¹~\\¶ÑŸ§õAşÆAû´q8´k×…/VÕ5\r.Îßà6™›rçÓâtïXC¨ºÛ_\'ÃİÕoñOå°†UÚã#°Í3mÍnU\\:òbü,Ã$d½\nB%Äj3â…qÿÙ'),(3,'Sonia','Perez','sonia@gmail.com','2015-05-13','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777ÿÀ\0\0{\0]\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0=\0	\0\0\0\0\0!1AQq\"a‘±#2BR¡ÁÑğb3Crs’¢Â$%ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0!1ÿÚ\0\0\0?\0ÜiR¥@\n•*Ú\r~ËB¶]6éû¸Sí?ì=´\0Z•bš÷¤bIÚÜ%¤YÀHÔ‹Ÿ…AÓı*k‘£C=Ô2ïà²<k¹<±€}àĞóJ°Öí—h,ÜMªòn9(à2Ÿ/v*Ç¢úYö¦µbSÆkc‘şÓú@\Z}*a}k¨Z¥Õ”ñÍŒ«£d=•\"€*T¨R¥_‚©f \02Ié@;E­[èZd—·qêÇç#ôùÊ±\rsT¸¼š[íBV’y>èè:(ğwµúÓëz“Jş¬9X<1ø¼ÏíáTë‚g“<†HQíñøP5/#–æR_§KCæî¡mªw?³¥Ô™aŒCÚ<êFƒÙsvD×\nH=)\\”}\Z0rğg/}Šã{É‰Îi™ƒ@I‚CÃî·\Z¶j]œî5¾—‘j±¨¡FÛ *ãÃ•qdR	bqv+¶×½Ÿ¾/nçëí™¸8ñ_ö×BèÚ¥¦³§Ca\'yo*åO\"\"èAá\\Iİ•áŠÒ}ö½´­`iw²bÊù€<#—’Ÿ#Èû¼+·BÑ¾Ò¥J˜QUcÒ¢ÖZ†2Cİ·tHæcğáï«=fş‘®ûİ^+l¶ğî>ÆcŸZYºCÁ\\Šób,rg<\0éBLÂ8åœòQ²5ñ9çñ&öræFSËÔ_óó4R”\'qn¼‡¬ß!\\OƒKÒ^™gôıB8ß[sV¤VÖê¨£€ªoa¬Ì’=Á:UòT\nœúT2;4AjØ*Ağª^½d²£œô5q½\"€jqå	©EÓ,ÕÄÍdÈbÚSƒ_br9â§õXÌWeº\Zˆ\rl]F©]Ø=lv‡²zv¢[2¼[&ÿ\0QNÖüÁ>ú?X÷ş=ê»­µm!Øå$K¨Á=mo†ÕøÖÃL„b¬?¶:›PÔ.sòfT9û«À~@VÃ®^géw@á¢‰Šÿ\0›§çŠç{ûÅŸPTİD	>ïÜüêyR+‰q±©=I681®Xÿ\0QâhóyxXrváä9TBä÷l3õ“1$ø´o±z:j	Ÿ³ŒŸ*ãt‡Œva«{¤ÒôÄ„]r»˜FUvù³r¡+«_ÍpE¬Ü«Ê®·½œ²7›`ì>Ër<ª¿gÙi~˜Ş(Ò-Ù95%$[F¶ÓEÍĞ]ØÉ+ÈÕC_Ö2b·“Í˜ò­NòÑaĞäˆ€8`{+¿Ó{û‡7UÅ[tì­Ç€‹•šéYÚh‡5\0ƒCA àÑÙô™!Ä‘pUåŠ ú×^ªkDZ~\'ºÍ#ĞMÏsÛë8R§™[ş¦º&¹³Ğ‚÷½´?‚Oüık¤éÑ6fş—;Eô[¤ÛŒ¼¸iXtÌóò¬Mæîbvsõ’<zuüşU¢úAÚúÆ¥<‡q@z`Y.£3I30åÈyVx½¤Í¬ÕİÓM\'<[£=š`¸#Ç*Å™pFzÖûØìµ‘SşïO—‘äÃºŒ€CŠ¦ŞôÖ$ÛÄñcÒ§ë›¾ƒ¹X¨+–=qË‡™\"…i\'Nµ¤»½æÛøãY×]šÓáfÖ6ÿ\0fH—8èk(}©vİT·:°k—pñ[ÜÅ2øB	5Uï h™rOSÄÓzìíj‰úˆG€åŠÍî\\}:b¼·‘WÙ¬\'yõ@Ïº³ÔÌ²3d“TÄ½2ı.èÓ}ÆOn·t[Iø ®‹¬Ğ%Åµ¿hîÌ‰“Z”‡yÆó¹N·…oõh»3HçşÚÜı#P»(xI,Œ¼òªTšnäv~à*Ñ©Î/nn>_Î	î„š’@ªwnğÉ+>$Íy*¨	=™ãÁÈ×õıêéèÓµ)j[J¾m‘»Ÿºzƒì8øĞ;¨Kñ^39âL—1}’zt5WÕL‚ã´oÎŸJÊpÏ´g5ö^â%!ãSTÊöáŠ8îI’ 1ıKûŠ¸Ë,vÂx¤¾ÊÏZšc+)ÚÔVóÌÿ\0VAü€x\",É\ZƒãŠ³jiBà\0*“ÚUlcÙgû#ÃÚhVøŠä.»EªZFFç\\>:\nc\n»ª;mqŸ\nŒ¥ËÈIf9$õ§RL0ÇJÒ£ª¤`rÙÛé-ÜÉÜL03ğ>\"´ıÒ¡¤ÄöÓ¨Ä»{¦•ğñŒqë{ë&ŠmûXµ:Gv`Ñ–8àãAÚvŠêš<^ê)a\n•9~µ\nÀ”¼‚Fl’ãI‰íAõ”gÎ¢(=ì\\‡¬kBr°¬s„bÇ`ëQû±ËñEb¾ãÈÓS\"Ç4ãÎ¬9É1\\:Ñ&Âf¶—»ÏµhÒjsÄ¤Á3ÆO0:®ç¼LıäÆ*PrÑƒSeêÿ\0TºÚç¾<¸â©Ï#Í3I+bx“GuivÇà(Õ ˆåvÇIõN)µ5éx‚+ÀàiÄ&Aq´Œò¢]–\\«`P5ãN¬¦1€M$£cÆtu¸Îy`†r<Ez¹‰.¢2B’2Wğ·•5¥±’&G;•O\0zg4åŸ,9ä3`ºy1³B	ºœ0öÓJçqC¸yÀ.Ã¦qî¡×>¬ÊËÀòùÒXíÔ1JÙÏNéM\\ê{êW$f¡±úâ<Ãq\0MwUèljy¤¸“|­¹¹yRvmÀİÏ>Ï\nñ_<iÉÇàÅHÊ×Özï\\xài[ıãì¯™*Í¶ƒ¨ò\\ŒRòÍHI €åM¨á\\:ÿÙ'),(4,'Juana','Del Arco','juana@gmail.com','2015-05-14','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777ÿÀ\0\0z\0X\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0	\r\0\0\0\0\0\0!1Aq2Qa‘\"#R¡b±Áğ%3S‚’Ñâ4Bdt“”£²³ÒáñÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0#\0\0\0\0\0\0\0\0\0\0\0!1AQa\"2BÿÚ\0\0\0?\0q4Ùp\r­zª¾!O´®PT\0ÕUñU_‚£\0êªø„Nª¯ˆG:³Šè”UdŸŸmş…Zÿ\0e7#Î+ÎmV€•™zŠÀ= Ê@ù¨ñeËª«â:ª¾!úNĞpİMÄ´‰î®ê‚&P[¹ç»ç ¡pn;àÀnª¯ˆDêªø„€¶[ {Æcdçi<¢@”í+”Éö•Ê\n€BjCq‰—(”Y’ÑG³34Ùöøİâw÷E×h˜“ù5‡˜jÆmãĞË§é>C_HAÒ¨ÏÕ&\nò-ÇQR—{êc2’Ckƒ—`­:ÌP­J”¥¨ê{Ïï´¨=ŞC{{&âÜËl‚éöÎ§-Äu¥0m9†È[edñT)ÛÅSõb½}À¹T§}âÍ‚qÜæy¹iç™¤¨„”oSâŸİ‰Ì%NË™†‚8ˆ¢b\nòÉrÂé½ón‚6¦ğäèèôd¤Ë3’ÍÌË:—Yu!m­&á@î\"7Bb¡D»†ç$·w%3o¶õ#Ë¬8!úC%g;Iå$çi<¢@d’}¥r‚L\r\'ÚW(ŞâÃm©j6	0\0‰ÚõIuLc/ ƒ™™k¶5ö´*>º~¬[0Å%¹I6ìŸlL)jnÕ1‚]eY”ôÊ´æ«Ã¶Ra™9VÌÊò›X$•\051-¾QèR²,é6ĞËMØÚ—«É8÷@]SO~ä)æ åXñ&ôÖ†S*¬ƒsë\nMî#§=Z‘–Qg:Şzßšej€A‡BRë‘£O£\"ˆğïò8úŒ‹’³\n ãYW³Ğ>\r÷X__”zq—­¥cr…ãÍXöSˆ¥ÜI­ ‹xÛX~`™ÕOájlÂÍÜ,„¬ı$œ§æ\"ªŞÇH>¢9#§9ÚO(‘&ûIå†™“í+”‹§†\Z©L“lŒ*ÜÈ°ƒ¤ûJåª<\ZÁÓ`ÛÛ²mãÂj+d„†\r§\Z…U.¶W$ê]qWŞ•\0õÖUN5&§)©@™PÊ•‘¸B»fN¶14Ô‚ÍŒËi>(Uíó>ãP[ixĞÄ“ŞG£âTÙ“®~6{­Ìu™¥%’ê™JÓ5û¢Ô–Y_GA?‘	Ì| U¡Kaj~èä.Ê­~B¦ë!T—º7Tâoee<MÀ>–ƒiÒó¾ö^}Ã0Êv\\q6Pçãã™\"’ÔFÉ¢Lwù;êQ1ñ•våĞD®gkÜç„[öI<Üİm\rhÛ3ÎÅïd›öÇ¾ò%)³•WY\nRGZÃ™6_ƒóŸ’*læ¸KÈPÓo²7N¡?Uœ~F|ßi<£™¾ÒyF\"ƒÏ3\'ÚW( í‘å*BNP_*œ.+È}q~“í+”.6ÆîUJ§‰JÕûãÀÊ¿a9/S›¡U[¨È%¢úZ)÷ˆÌa¾İğèÁUw*ÔYI÷ŠzWÒK™E†ktò„”úwşT06MTIbf’éÛQy‘Ş“ÚFçÎg,¯©`Ó~Î6iá\0.]}]m‰…æ?Hıı#HqæÂRê>r€\'óÏÕ^v…ôÊaî$Øa+QR’,	$üÎøÑ:é]ÂL\r.‡ÛÍå©$è\r´z‹ºkó³*²[MÀâ£Àf9ğ§¢«âš„ÌÅB‰îŠ	£ºı•¿†£Ò/ƒúòªªÑ:©\r«Ğ«÷Âqç32ëîvŞYQæOşÃoaJ	ªÏ#viqoÚŠRÌ Ÿå­¾ÒyD‰5½<¢C	LÊv•ÊÛh˜ÍR—d+T´M» }ÒTä´‹.LNÌ5.ÊG´ã«	Hó0ÇõizŞ%}é7ƒÒÉ!)q;ˆ[zFfúBÙùĞ_ €9&ÿ\0d\\p\na7VRJY\nèR®òEïò+­É.£3\'\"À»Ó_vìÆßTzš%ğò$%”ÓC£\'Š† Ÿ1\nâåRæ¡$‚¦ìU¨ïŠ}¢.mÊ>¥\\DÔ°^\\ª\Z)zOcáÉv¥)„hİ÷™}7öl.mìOJvµ üšP¢ ÊO‚’Eó‹m²û¯g°C6¸·àê)évd \0ñ²4Ô h™¹ó×’3dò,ósm <’âT©±ÖÇu¡‹±ç:R†î=ã+\0ƒ¡Ü¡õGÒ[§Wç¥BrûÒãGè®Ê2G”cgõF¨øŠRjqeÍ)Jpü)¹ñ‡¿$şQèÉ®ÒyF Yj”•VY¹ªlÓ3,(h¶–/Ü{„Ha(¸Ûÿ\0ÒmÂpÿ\0 ÂÂ\\Í’lUìhmÄH¤ßpœ?í˜Uèmİ÷ùÂìet,Z_ö;\"ÅGNÍ9euR¤Ş¢R-È$úˆrÎNËÉ5ÒL8Ş®CŒy›b¹Ü$ìôÅ5¦vi®‡Şß*,nn6×OèàêÕB©å\'*ónLºó…•)Ópx¸ÛA\Zs)k³ÉRENT)-Lm\nà¯ûˆ™Æ–›to¬L€[§4B”Hô´sİ•\"EùÄ¶u7…•wÈÖ”Šƒ0•ôM\"ÊqGAnqd‘\rÊ†’”Œ¨l6mÂÖ±å¤sªŞ¢Â—&€¥,dPP¹_ŸÇÊlã*…2¯51Mœ&UÇÔD´Á*E¯Ã»Kj-Õ_¤–Ï›ëÁİÛDìªñ\\”›³İLôË}ÔJAò\nõŠ\nºÔ»$…\\((^÷ññˆjOV«ÕJPëËIÈ˜\"À\0<4ˆÒÀF•«	\Z¯ØllDªß\\Mÿ\0»LHÙ°áù&±ı´òÓ6O%Ù×Úv\Z©bZt‹4®ƒ¤b`¸®™Ì‚ÙHî=ğ¿NË±@Ş$;6şsÆàü>ó‰qLÔl”V!”â|™Všy7½úÏğ÷:…³\\KMªJL­29\Z}.(‰››/ıö‡LHÀûŒ\réU9:)í€uÜ¯½£LÔƒê€›ó”HÃª-é¥|ÒÀjâf¥Í· ©¥0¤2«Äo\'‡H¯e™IË’C†ùŸá‡¼HnŠÑ6MŠB¯–Ÿş(ÿ\0Æ6µ²¼R€„·õ¯á‡´HËZmXÑNÙ¨áªtë5@ÏHûáÄôNfÊÙ.1#«£\rëÓÿÙ');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foto`
--

DROP TABLE IF EXISTS `foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foto` (
  `idfoto` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` longblob,
  `album` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idfoto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto`
--

LOCK TABLES `foto` WRITE;
/*!40000 ALTER TABLE `foto` DISABLE KEYS */;
INSERT INTO `foto` VALUES (1,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777ÿÀ\0\0z\0X\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0	\r\0\0\0\0\0\0!1Aq2Qa‘\"#R¡b±Áğ%3S‚’Ñâ4Bdt“”£²³ÒáñÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0#\0\0\0\0\0\0\0\0\0\0\0!1AQa\"2BÿÚ\0\0\0?\0q4Ùp\r­zª¾!O´®PT\0ÕUñU_‚£\0êªø„Nª¯ˆG:³Šè”UdŸŸmş…Zÿ\0e7#Î+ÎmV€•™zŠÀ= Ê@ù¨ñeËª«â:ª¾!úNĞpİMÄ´‰î®ê‚&P[¹ç»ç ¡pn;àÀnª¯ˆDêªø„€¶[ {Æcdçi<¢@”í+”Éö•Ê\n€BjCq‰—(”Y’ÑG³34Ùöøİâw÷E×h˜“ù5‡˜jÆmãĞË§é>C_HAÒ¨ÏÕ&\nò-ÇQR—{êc2’Ckƒ—`­:ÌP­J”¥¨ê{Ïï´¨=ŞC{{&âÜËl‚éöÎ§-Äu¥0m9†È[edñT)ÛÅSõb½}À¹T§}âÍ‚qÜæy¹iç™¤¨„”oSâŸİ‰Ì%NË™†‚8ˆ¢b\nòÉrÂé½ón‚6¦ğäèèôd¤Ë3’ÍÌË:—Yu!m­&á@î\"7Bb¡D»†ç$·w%3o¶õ#Ë¬8!úC%g;Iå$çi<¢@d’}¥r‚L\r\'ÚW(ŞâÃm©j6	0\0‰ÚõIuLc/ ƒ™™k¶5ö´*>º~¬[0Å%¹I6ìŸlL)jnÕ1‚]eY”ôÊ´æ«Ã¶Ra™9VÌÊò›X$•\051-¾QèR²,é6ĞËMØÚ—«É8÷@]SO~ä)æ åXñ&ôÖ†S*¬ƒsë\nMî#§=Z‘–Qg:Şzßšej€A‡BRë‘£O£\"ˆğïò8úŒ‹’³\n ãYW³Ğ>\r÷X__”zq—­¥cr…ãÍXöSˆ¥ÜI­ ‹xÛX~`™ÕOájlÂÍÜ,„¬ı$œ§æ\"ªŞÇH>¢9#§9ÚO(‘&ûIå†™“í+”‹§†\Z©L“lŒ*ÜÈ°ƒ¤ûJåª<\ZÁÓ`ÛÛ²mãÂj+d„†\r§\Z…U.¶W$ê]qWŞ•\0õÖUN5&§)©@™PÊ•‘¸B»fN¶14Ô‚ÍŒËi>(Uíó>ãP[ixĞÄ“ŞG£âTÙ“®~6{­Ìu™¥%’ê™JÓ5û¢Ô–Y_GA?‘	Ì| U¡Kaj~èä.Ê­~B¦ë!T—º7Tâoee<MÀ>–ƒiÒó¾ö^}Ã0Êv\\q6Pçãã™\"’ÔFÉ¢Lwù;êQ1ñ•våĞD®gkÜç„[öI<Üİm\rhÛ3ÎÅïd›öÇ¾ò%)³•WY\nRGZÃ™6_ƒóŸ’*læ¸KÈPÓo²7N¡?Uœ~F|ßi<£™¾ÒyF\"ƒÏ3\'ÚW( í‘å*BNP_*œ.+È}q~“í+”.6ÆîUJ§‰JÕûãÀÊ¿a9/S›¡U[¨È%¢úZ)÷ˆÌa¾İğèÁUw*ÔYI÷ŠzWÒK™E†ktò„”úwşT06MTIbf’éÛQy‘Ş“ÚFçÎg,¯©`Ó~Î6iá\0.]}]m‰…æ?Hıı#HqæÂRê>r€\'óÏÕ^v…ôÊaî$Øa+QR’,	$üÎøÑ:é]ÂL\r.‡ÛÍå©$è\r´z‹ºkó³*²[MÀâ£Àf9ğ§¢«âš„ÌÅB‰îŠ	£ºı•¿†£Ò/ƒúòªªÑ:©\r«Ğ«÷Âqç32ëîvŞYQæOşÃoaJ	ªÏ#viqoÚŠRÌ Ÿå­¾ÒyD‰5½<¢C	LÊv•ÊÛh˜ÍR—d+T´M» }ÒTä´‹.LNÌ5.ÊG´ã«	Hó0ÇõizŞ%}é7ƒÒÉ!)q;ˆ[zFfúBÙùĞ_ €9&ÿ\0d\\p\na7VRJY\nèR®òEïò+­É.£3\'\"À»Ó_vìÆßTzš%ğò$%”ÓC£\'Š† Ÿ1\nâåRæ¡$‚¦ìU¨ïŠ}¢.mÊ>¥\\DÔ°^\\ª\Z)zOcáÉv¥)„hİ÷™}7öl.mìOJvµ üšP¢ ÊO‚’Eó‹m²û¯g°C6¸·àê)évd \0ñ²4Ô h™¹ó×’3dò,ósm <’âT©±ÖÇu¡‹±ç:R†î=ã+\0ƒ¡Ü¡õGÒ[§Wç¥BrûÒãGè®Ê2G”cgõF¨øŠRjqeÍ)Jpü)¹ñ‡¿$şQèÉ®ÒyF Yj”•VY¹ªlÓ3,(h¶–/Ü{„Ha(¸Ûÿ\0ÒmÂpÿ\0 ÂÂ\\Í’lUìhmÄH¤ßpœ?í˜Uèmİ÷ùÂìet,Z_ö;\"ÅGNÍ9euR¤Ş¢R-È$úˆrÎNËÉ5ÒL8Ş®CŒy›b¹Ü$ìôÅ5¦vi®‡Şß*,nn6×OèàêÕB©å\'*ónLºó…•)Ópx¸ÛA\Zs)k³ÉRENT)-Lm\nà¯ûˆ™Æ–›to¬L€[§4B”Hô´sİ•\"EùÄ¶u7…•wÈÖ”Šƒ0•ôM\"ÊqGAnqd‘\rÊ†’”Œ¨l6mÂÖ±å¤sªŞ¢Â—&€¥,dPP¹_ŸÇÊlã*…2¯51Mœ&UÇÔD´Á*E¯Ã»Kj-Õ_¤–Ï›ëÁİÛDìªñ\\”›³İLôË}ÔJAò\nõŠ\nºÔ»$…\\((^÷ññˆjOV«ÕJPëËIÈ˜\"À\0<4ˆÒÀF•«	\Z¯ØllDªß\\Mÿ\0»LHÙ°áù&±ı´òÓ6O%Ù×Úv\Z©bZt‹4®ƒ¤b`¸®™Ì‚ÙHî=ğ¿NË±@Ş$;6şsÆàü>ó‰qLÔl”V!”â|™Všy7½úÏğ÷:…³\\KMªJL­29\Z}.(‰››/ıö‡LHÀûŒ\réU9:)í€uÜ¯½£LÔƒê€›ó”HÃª-é¥|ÒÀjâf¥Í· ©¥0¤2«Äo\'‡H¯e™IË’C†ùŸá‡¼HnŠÑ6MŠB¯–Ÿş(ÿ\0Æ6µ²¼R€„·õ¯á‡´HËZmXÑNÙ¨áªtë5@ÏHûáÄôNfÊÙ.1#«£\rëÓÿÙ','AAAA');
/*!40000 ALTER TABLE `foto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `idcategoria` int(11) NOT NULL,
  PRIMARY KEY (`idproducto`),
  KEY `fk_producto_categoria1` (`idcategoria`),
  CONSTRAINT `fk_producto_categoria1` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (9,'Leche','Gloria',3,200,6),(10,'Teclado','Sonny',300,244,9),(11,'Televisor','Sonny',2000,100,9),(12,'Calculadora','Alpha',200,29,9);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_has_boleta`
--

DROP TABLE IF EXISTS `producto_has_boleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto_has_boleta` (
  `idproducto` int(11) NOT NULL,
  `idboleta` int(11) NOT NULL,
  `precio` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`idproducto`,`idboleta`),
  KEY `fk_producto_has_boleta_producto1` (`idproducto`),
  KEY `fk_producto_has_boleta_boleta1` (`idboleta`),
  CONSTRAINT `fk_producto_has_boleta_boleta1` FOREIGN KEY (`idboleta`) REFERENCES `boleta` (`idboleta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_has_boleta_producto1` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_has_boleta`
--

LOCK TABLES `producto_has_boleta` WRITE;
/*!40000 ALTER TABLE `producto_has_boleta` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto_has_boleta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-02 21:35:10
