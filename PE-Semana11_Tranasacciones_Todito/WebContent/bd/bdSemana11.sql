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
INSERT INTO `categoria` VALUES (6,'Bebibles'),(7,'Comestibles'),(8,'Electrodométicos'),(9,'Informática');
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
INSERT INTO `cliente` VALUES (1,'Luis','Perez','luis@gmail.com','2015-05-07','����\0JFIF\0\0\0\0\0\0��\0�\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777��\0\0}\0S\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\06\0	\0\0\0\0\0\0!1A\"QaqB�#2Rbr����$C����\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0!1\"2A��\0\0\0?\0��t+��<��j�Ο�E�5��\\p�~ :�\0�Ӧ��+}�8�=�yc�V�jwZ���u+�+�c�nhIi�M�[F�b�ou$g��4���gOܸI,�?�X0$������ȭ����[\rM�]E8�6H���ѥjwZM�wV�4n�9�m���u-�Ey�<8��C�cE���ꊰÌP��\\p��e�cFy*(,���5L����.�h�r�]H\"\\��2�ՇPu4��d�@H��#�B�l��T�y� wy{��T�������\Z���8�8�,��H�$f�j���yA��O ѕH�/׵�a�\0�(�c2��qN4MBm\'Q�������E_��l�5N�e�ԃ��\\cZ����7ƒ�oZe�z��p�G2�UK�[z�h2[H�ky���R�]3FL��\nU�����T��:d?�{�a�ȭS5��g�V�t묪�s2�=�#��h��f�3�]�3WM9K*��;U#Oc��ʞ�����g�����\\�,��&��g�N��)T��%y�����뾠������1��ޔ��\Z��-w1��x�U\'�_�8�\Z6��V�{������Ku{5\"����5�=h]=�s�\r�/o���$r�j��}�[.�b���7�#�`+I���%��P�B���+:��2io�P���+D����a?O#�$E8bG�A�i��2��1�q���znKF�a�ϚN�Ҫ3�⧭b���~>�:ʦS\"�L���A�q����	.�p=� vaU�y���dUN[��5�^E`2q������T!I��\0	�T����c�eFG\'>jj8��E�ښ_��\n^�Z�˫ۨf�4ʣ��毋P\Z�<3���P��U�ާ��:\"~zU^B��BF�⹖(牢�5�6ea�k��1D	��C�m��l�lm�R�����?��P�b��+M�h��n�J��D]~�sX���)>y9-iOy��kt��\0<�5?cycks��y�T�[�LЀ	�R����FW�*�\\�zM��G*���@��������es\'�;��^� �)����i��x8df�8��uT��(�����p\r�1\0���\0g� \n�1\0~Ճn#�Z�V�q��\Z]�,2^O�J̒/x���B�q-��xq�NC�*[\'�Uŷ����$ʒ3���$ǂ�}A�\0�<��Qj�R6Ѫ��;tܧ���Eӯ#���x�U�i�j����o��X�$s�ȓ��Ex��I5J �P�Pñ�C\'�(�L �u�\0{�1z�j����򝣝��\nwp��1=��eV�r�\0�v��WC��v�rH�U�X�\0����ܟ�y��\0PϤ���\\T�2�\n}suRZ�s\Z��Dđ��?tҬ���~����RV[��B��e�\nZ4x����W��[1�Rw�K�ҷ�S�R��M�+	�Wܦ6{\n��M/���\"1��>�v�Z�E��Q\ZJ��G����Pxǚ�S�C�B�!�ÜP��\n榻�;���\Z���!�я0ȭsn�p���G�\0qDb*�	uf�Xw�Ӵ�\0v��	����i��\"c�OU�m].\"�7R?�cZf��U+6۔�݄���R7P�Tm��Sv04��r���6��[f@\'�Sܔq�:x\'nj#�2�rji��� o�#s7���A/��~\\�џ��A��A��q8�kׅ/V�5\r.���6��r���t�XC���_\'�����o�O将U��#��3m�nU\\:�b�,�$d��\nB%�j3�q���'),(3,'Sonia','Perez','sonia@gmail.com','2015-05-13','����\0JFIF\0\0\0\0\0\0��\0�\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777��\0\0{\0]\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0=\0	\0\0\0\0\0!1AQq\"a���#2BR����b3Crs���$%��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0!1��\0\0\0?\0�iR�@\n�*�\r~�B�]6���S�?�=�\0Z�b����bI��%�Y�H����A��*k��C=�2��<k�<��}���J���h,�M��n9(�2��/v*Ǣ�Y����bS�kc����@\Z}*�a}k�Z�Ք�����d=�\"�*T�R�_��f \02I�@;E�[�Zd��q���#��ʱ\rsT���[�BV�y>��:(�w����z�J��9X<1�����T�g�<�HQ���P5/#��R_�KC��m�w?��ԙa�C�<�F��svD�\nH=)\\�}\Z0r��g/}��{ɉ�i��@I�C��\Z�j]��5���j���F� *�ÕqdR	bqv+�׽��/n��홸8�_��B�ڥ���Ca\'yo*�O\"\"�A�\\�Iݕ��}����`iw�b���<#���#���+�BѾҥJ�QUc���Z�2CݷtH�c���=f�����^+l����>�c��ZY�C�\\��b,rg<\0�BL�8��Q�5�9��&�r�FS��_��4R�\'qn����!\\O�K�^�g��B8ߎ[sV��V�ꨣ��oa�̒=�:U�T\n��T2;4Aj��*A�^�d����5q�\"�jq�	�E�,���d�b�S�_br9����X�We�\Z�\rl]F��]�=lv��zv�[2�[&�\0QN���>�?X��=껭�m!��$K��=mo�����L�b�?�:��P�.s��fT9���~@Vî^g�w@ᢉ��\0����{�şPT�D	>����yR+�q��=I681�X�\0Q�h�yxXrv��9T�B��l3��1$��o�z:j	����*�t��va�{���Ą]r��FUv��r�+�_�pE������ʮ�����7�`�>�r<��g�i~��(�-�95%$[F���E��]��+��C_֞2b��͘�N��a�䈀8`{+��{��7U�[t�ǀ����Y�h��5\0�CA �����!đpU� ��^�kDZ~\'��#�M�sێ�8R��[���&��Ђ����?�O��k���6f��;E�[�ی��iXt���M��bvs��<zu��U��A��ƥ<�q@z`Y.�3I30��yVx�������M\'<[�=�`�#�*řpFz���쵑S��O���ú��C�����$���cҧ뛾��X�+�=qˇ�\"�i\'N����������Y�]���f�6�\0fH�8�k(}�v�T�:�k�p�[��2�B	5U� h�rOS��z��j���G����\\}:b���W��\'y�@Ϻ��̲3�d�TĽ2�.��}�On�t[I������%ŵ�h�̉�Z��y��N��o�h�3H�����#P�(xI,���T�n�v~�*ѩΏ/nn>_�	�@�wn��+>$�y*�	=����������ӵ)j[J�m����z��8��;�K�^3�9�L�1}�zt5W�L��oΟJ�pϴg5�^�%!�S�T�����8�I� 1�K����,v�x����Z�c+)��V���\0V�A��x\",�\Z�㊳j�iB�\0*��Ulc�g�#��hV���.��E�ZFF�\\>:\nc\n��;mq�\n�����If9$��RL0�Jң��`r���-���L03�>\"���������Ļ{����q��{�&�m�X��:Gv`і8��A�v��<^�)a\n�9~�\n����Fl��I��A��g΢(=�\\��kB�r��s�bǐ`�Q����Eb����S\"��4�ά9�1\\:�&�f���ϵh�jsĤ�3�O0:��L���*PrуSe��\0T���<���#�3I+bx�GuivǏ�(� ��v�I�N)�5�x�+��i�&Aq���]�\\�`P5�N��1�M$�c�t�u��y`�r<Ez��.�2B�2W𷏕5���&G;�O\0zg4�,9䏝3`�y1�B	��0��J�q�C�y�.æq��>�������X���1J��N�M\\�{�W$�f����<�q\0MwU�ljy���|���yRvm���>�\n�_<iɎ���H��֏z�\\x�i[��쯙*Ͷ���\\�R��H�I ��M��\\:��'),(4,'Juana','Del Arco','juana@gmail.com','2015-05-14','����\0JFIF\0\0\0\0\0\0��\0�\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777��\0\0z\0X\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0	\r\0\0\0\0\0\0!1Aq2Qa��\"#R�b���%3S����4Bdt����������\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0#\0\0\0\0\0\0\0\0\0\0\0!1AQa\"2B��\0\0\0?\0q4�p�\r�z��!O��PT\0�U��U_��\0���N���G:���Ud��m��Z�\0e7#�+�mV���z��=��@���e˪��:��!�N�p�MĴ��ꍂ&P[������pn;��n���D�����[ {�cd�i<�@��+�����\n�B�jCq��(�Y��G�34������w�E�h���5��j�m��˧�>C_HAҨ��&\n�-�QR�{�c2�Ck��`�:�P��J����{��=�C{{&���l���Χ-�u�0m9��[ed�T)��S�b�}��T�}�͂q��y�i������oS����%N˙��8��b\n��r���n�6������d��3����:�Yu!m�&�@�\"7Bb�D���$�w%3o��#��8!�C%�g;I�$�i<�@d�}�r�L\r\'�W(���m�j6	0\0���IuLc/ ���k��5��*>�~�[0�%�I6�l�L)jn�1�]eY��ʴ�öRa�9V���X$�\051-�Q�R�,�6��M�����8�@]SO~��)� �X��&�ֆS*��s�\nM�#�=Z��Qg:�zߚej��A��BR���O�\"����8�����\n��YW���>\r�X__�zq���cr���X��S���I� �x�X~`��O�jl���,���$���\"���H>�9#�9�O(�&�I�����+����\Z�L�l�*�Ȱ���J���<\Z��`�۲m��j+d��\r�\Z�U.�W$�]qWޕ\0��UN5&�)�@�Pʕ��B�fN�14Ԃ͌�i>(U��>��P[ix�ē�G��Tٓ�~6{��u��%���J�5����Y_GA?�	�|�U�Kaj~��.ʭ~B��!T��7T�oee<M�>��i���^}�0�v\\q6P����\"��FɢLw�;�Q1�v���D�gk��[�I<��m\rh�3���d�����%)��WY\nRGZÙ6�_��*l�K�P�o�7N�?U�~F|�i<����yF\"��3\'�W(���*BNP_*�.+�}q~��+�.6��UJ��J�����ʿa9/S��U[��%��Z)���a�����Uw*�YI��zW�K�E�k�t��w��T06MTIbf���Qy�ޓ�F��g�,��`�~�6i�\0.]}]m���?H��#Hq��R�>�r�\'�Ϗ�^v���a�$�a+QR�,	$����:�]�L\r.��͝�$�\r��z��k�*�[M���f9����⚄��B���	��������/����:�\r�Ы��q�32��v�YQ�O��oaJ	��#viqoڊR� �孎��yD�5�<�C	L�v���h��R�d+T�M�� }��T䴋.LN�5.�G��	H�0���iz�%}�7���!)q;�[zFf�B���_��9&�\0d\\p\na7VRJY\n�R��E��+��.�3\'\"���_v���Tz�%��$%��C�\'����1\n��R�$���U�}�.m�>�\\D԰^\\�\Z)zOc��v��)�h���}7�l.m�OJv� ��P��ʞO��E��m���g�C6�����)�vd \0�4Ԡh�����3d�,�sm�<��T�����u����:R��=�+\0��ܡ�G�[�W�Br���G��2G�cg�F���Rjqe�)Jp�)��$�Q�ɮ�yF Yj��VY��l�3,(h��/�{��Ha(�۝�\0�m�p�\0���\\�͒lU�hm�H��p�?�U�m�����et,Z_�;\"�GN�9euR�ޢR-�$��r�N��5�L8�ޮC�y�b��$���5��vi����*,nn6�O����B���\'*�nL��)�px��A\Z��s�)k��RENT)-Lm\n����Ɩ��to�L�[�4�B�H��sݕ\"E�Ķu7��w�֔���0��M\"�qGAnqd�\rʆ����l6m�ֱ�s�ޢ&��,dPP�_���l�*�2�51M�&U��D��*E�ûKj-�_��ϛ����D��\\����L��}�JA�\n��\n�Ի$�\\((^���jOV���JP��I��\"�\0<4���F���	\Z��llD��\\M�\0�LHٰ��&�����6O%���v\Z�bZt�4���b`���̂�H�=�N˱@�$;6�s���>�qL�l�V!���|�V�y7�����:��\\KM�JL�29\Z}.(���/���LH���\r�U9:)�uܯ��Lԃ�ꀛ�Hê-�|��j�f�ͷ ��0�2��o\'�H�e�I˒C���ᇼHn��6M�B����(�\0�6���R������ᇴH�ZmX�Nٞ��t�5@�H����Nf��.1#��\r����');
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
INSERT INTO `foto` VALUES (1,'����\0JFIF\0\0\0\0\0\0��\0�\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777��\0\0z\0X\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0	\r\0\0\0\0\0\0!1Aq2Qa��\"#R�b���%3S����4Bdt����������\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0#\0\0\0\0\0\0\0\0\0\0\0!1AQa\"2B��\0\0\0?\0q4�p�\r�z��!O��PT\0�U��U_��\0���N���G:���Ud��m��Z�\0e7#�+�mV���z��=��@���e˪��:��!�N�p�MĴ��ꍂ&P[������pn;��n���D�����[ {�cd�i<�@��+�����\n�B�jCq��(�Y��G�34������w�E�h���5��j�m��˧�>C_HAҨ��&\n�-�QR�{�c2�Ck��`�:�P��J����{��=�C{{&���l���Χ-�u�0m9��[ed�T)��S�b�}��T�}�͂q��y�i������oS����%N˙��8��b\n��r���n�6������d��3����:�Yu!m�&�@�\"7Bb�D���$�w%3o��#��8!�C%�g;I�$�i<�@d�}�r�L\r\'�W(���m�j6	0\0���IuLc/ ���k��5��*>�~�[0�%�I6�l�L)jn�1�]eY��ʴ�öRa�9V���X$�\051-�Q�R�,�6��M�����8�@]SO~��)� �X��&�ֆS*��s�\nM�#�=Z��Qg:�zߚej��A��BR���O�\"����8�����\n��YW���>\r�X__�zq���cr���X��S���I� �x�X~`��O�jl���,���$���\"���H>�9#�9�O(�&�I�����+����\Z�L�l�*�Ȱ���J���<\Z��`�۲m��j+d��\r�\Z�U.�W$�]qWޕ\0��UN5&�)�@�Pʕ��B�fN�14Ԃ͌�i>(U��>��P[ix�ē�G��Tٓ�~6{��u��%���J�5����Y_GA?�	�|�U�Kaj~��.ʭ~B��!T��7T�oee<M�>��i���^}�0�v\\q6P����\"��FɢLw�;�Q1�v���D�gk��[�I<��m\rh�3���d�����%)��WY\nRGZÙ6�_��*l�K�P�o�7N�?U�~F|�i<����yF\"��3\'�W(���*BNP_*�.+�}q~��+�.6��UJ��J�����ʿa9/S��U[��%��Z)���a�����Uw*�YI��zW�K�E�k�t��w��T06MTIbf���Qy�ޓ�F��g�,��`�~�6i�\0.]}]m���?H��#Hq��R�>�r�\'�Ϗ�^v���a�$�a+QR�,	$����:�]�L\r.��͝�$�\r��z��k�*�[M���f9����⚄��B���	��������/����:�\r�Ы��q�32��v�YQ�O��oaJ	��#viqoڊR� �孎��yD�5�<�C	L�v���h��R�d+T�M�� }��T䴋.LN�5.�G��	H�0���iz�%}�7���!)q;�[zFf�B���_��9&�\0d\\p\na7VRJY\n�R��E��+��.�3\'\"���_v���Tz�%��$%��C�\'����1\n��R�$���U�}�.m�>�\\D԰^\\�\Z)zOc��v��)�h���}7�l.m�OJv� ��P��ʞO��E��m���g�C6�����)�vd \0�4Ԡh�����3d�,�sm�<��T�����u����:R��=�+\0��ܡ�G�[�W�Br���G��2G�cg�F���Rjqe�)Jp�)��$�Q�ɮ�yF Yj��VY��l�3,(h��/�{��Ha(�۝�\0�m�p�\0���\\�͒lU�hm�H��p�?�U�m�����et,Z_�;\"�GN�9euR�ޢR-�$��r�N��5�L8�ޮC�y�b��$���5��vi����*,nn6�O����B���\'*�nL��)�px��A\Z��s�)k��RENT)-Lm\n����Ɩ��to�L�[�4�B�H��sݕ\"E�Ķu7��w�֔���0��M\"�qGAnqd�\rʆ����l6m�ֱ�s�ޢ&��,dPP�_���l�*�2�51M�&U��D��*E�ûKj-�_��ϛ����D��\\����L��}�JA�\n��\n�Ի$�\\((^���jOV���JP��I��\"�\0<4���F���	\Z��llD��\\M�\0�LHٰ��&�����6O%���v\Z�bZt�4���b`���̂�H�=�N˱@�$;6�s���>�qL�l�V!���|�V�y7�����:��\\KM�JL�29\Z}.(���/���LH���\r�U9:)�uܯ��Lԃ�ꀛ�Hê-�|��j�f�ͷ ��0�2��o\'�H�e�I˒C���ᇼHn��6M�B����(�\0�6���R������ᇴH�ZmX�Nٞ��t�5@�H����Nf��.1#��\r����','AAAA');
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
