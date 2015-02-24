﻿# MySQL-Front 5.1  (Build 3.18)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: bdwebdiresa02
# ------------------------------------------------------
# Server version 5.5.8-log

USE `bdwebdiresa02`;

#
# Source for table tb_cen_anexo
#

DROP TABLE IF EXISTS `tb_cen_anexo`;
CREATE TABLE `tb_cen_anexo` (
  `cod_ce` int(11) NOT NULL AUTO_INCREMENT,
  `cod_ubi` int(8) NOT NULL,
  `nom_este` varchar(77) NOT NULL,
  `micro_red` varchar(100) NOT NULL,
  `med_jefe` varchar(100) NOT NULL,
  `dir_cent` varchar(120) NOT NULL,
  `tel_cent` varchar(20) NOT NULL,
  `cel_cent` varchar(20) NOT NULL DEFAULT '0',
  `rmp_cent` varchar(20) NOT NULL DEFAULT '0',
  `hr_cent` varchar(2) NOT NULL,
  `latitud` varchar(255) DEFAULT NULL,
  `longitud` varchar(255) DEFAULT NULL,
  `nom_red` varchar(200) NOT NULL,
  PRIMARY KEY (`cod_ce`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

#
# Dumping data for table tb_cen_anexo
#
LOCK TABLES `tb_cen_anexo` WRITE;
/*!40000 ALTER TABLE `tb_cen_anexo` DISABLE KEYS */;

INSERT INTO `tb_cen_anexo` VALUES (1,70101206,'C.S. MANUEL BONILLA (Base de Microred)','MICRORED BONILLA','DR. FELIPE CASTILLO YATACO','AV. ALMIRANTE MIGUEL GRAU N 1015','429-5459','996549916','#947332','12','-12.062130','-77.138056','BONILLA');
INSERT INTO `tb_cen_anexo` VALUES (2,70101201,'C.S. ALBERTO BARTON','MICRORED BONILLA','DRA. MARTHA CALDERON','CALLE MANUEL RAYGADA N 515','465-6242','996549968','#947333','12','-12.053827','-77.138831','BONILLA');
INSERT INTO `tb_cen_anexo` VALUES (3,70101205,'C.S. SAN JUAN BOSCO','MICRORED BONILLA','DRA. DORIS MARIBEL  CHUNGA RUIZ','CONTRALMIRANTE MORA CDRA. 5 (CALLE NAUTA 122) - CALLAO','453-6686','996549991','#947336','6','-12.048411','-77.133173','BONILLA');
INSERT INTO `tb_cen_anexo` VALUES (4,70101209,'C.S. PUERTO NUEVO','MICRORED BONILLA','DR. LUIS DIAZ','LOCAL COMUNAL AA.HH. PUERTO NUEVO S/N - CALLAO','420-1471','996549980','#947334','12','-12.046188','-77.136657','BONILLA');
INSERT INTO `tb_cen_anexo` VALUES (5,70105201,'C.S. LA PUNTA','MICRORED BONILLA','DRA. DANITZA MANCHEGO LLERENA','AV. GRAU N 1002 -LA PUNTA','465-0158','996549985','#947335','12','-12.068510','-77.158006','BONILLA');
INSERT INTO `tb_cen_anexo` VALUES (6,70101203,'C.S. SANTA FE (Base de Microred)','MICRORED SANTA FE','DR. RONALD ESPIRITU AYALA MENDIVIL','AV. ALFREDO PALACIOS CDRA. 5 - CALLAO','453-6677','998710495','#947338','12','-12.05405','-77.123349','BONILLA');
INSERT INTO `tb_cen_anexo` VALUES (7,70101202,'C.S. CALLAO','MICRORED SANTA FE','DANITZA PATRICIA MANCHECO LLERENA','CALLE CANCHONES N 294 - URB TARAPACA','451-8819','998710554','#947339','12','-12.051997','-77.102689','BONILLA');
INSERT INTO `tb_cen_anexo` VALUES (8,70101204,'C.S. JOSE BOTERIN','MICRORED SANTA F','DR.EDUARDO AMADO ESKOVER','PARQUE N3 AAHH JOSE BOTERIN','429-3028','998710531','#947340','12','-12.053128','-77.119961','BONILLA');
INSERT INTO `tb_cen_anexo` VALUES (9,70101212,'C.S. JOSE OLAYA (Base de Microred)','MICRORED JOSE OLAYA','DRA. LILI LAU CHUNG','JR. JUNIN PP.JJ. JOSE OLAYA - CALLAO','452-1165','998710630','#947341','12','-12.043153','-77.104595','BONILLA');
INSERT INTO `tb_cen_anexo` VALUES (10,70101219,'C.S. MIGUEL GRAU','MICRORED JOSE OLAYA','DRA. JANET SANCHEZ','ALT. CDRA.10 AV.TUPAC AMARU - PP.JJ. MIGUEL GRAU - CALLAO','562-3230','998710641','#947342','6','-12.045995','-77.104287','BONILLA');
INSERT INTO `tb_cen_anexo` VALUES (11,70101218,'C.S. SANTA ROSA','MICRORED JOSE OLAYA','DRA. NADIA LIMACHE JUAREZ','AV. T. AMARU GDIA.CHALACA S/N MINICOMPL. STA.ROSA - CALLAO','453-7822','998710729','#947343','12','-12.045732','-77.110984','BONILLA');
INSERT INTO `tb_cen_anexo` VALUES (12,70101214,'C.S. GAMBETA ALTA (Base de Microred)','MICRORED GAMBETTA ALTA','DRA. ROMMY RANGEL  RAFFO','AV. ALAMEDA S/N PP.JJ. GAMBETTA ALTA - CALLAO','420-0286','998711487','#947344','24','-12.042332','-77.120345','BONILLA');
INSERT INTO `tb_cen_anexo` VALUES (13,70101215,'C.S. RAMON CASTILLA','MICRORED GAMBETTA ALTA','DRA. DIANA GONZALEZ PACHECO','JR. CUZCO S/N PP.JJ. RAMON CASTILLA - CALLAO','465-6195','998711650','#947345','6','-12.040893','-77.122451','BONILLA');
INSERT INTO `tb_cen_anexo` VALUES (14,70101216,'C.S. GAMBETTA BAJA','MICRORED GAMBETTA ALTA','DRA. SILVIA MERINO DIAZ','AV. JOSE GALVEZ Y SANTA ROSA - CALLAO','453-7817','998711764','#947346','12','-12.041637','-77.115604','BONILLA');
INSERT INTO `tb_cen_anexo` VALUES (15,70101213,'C.S. ACAPULCO (Base de Microred)','MICRORED ACAPULCO','DR. FREDY VERA INGA ','AV.JOSE GALVEZ S/N CMTE.8 - PP.JJ. ACAPULCO - CALLAO','429-0059','998712554','#947347','24','-12.022181','-77.136884','BONILLA');
INSERT INTO `tb_cen_anexo` VALUES (16,70101217,'C.S. JUAN PABLO II','MICRORED ACAPULCO','DR. PAUL CARDENAS GARCIA','AA.HH.JUAN PABLO II (ALT.AV.GAMBETTA KM 2.5) - CALLAO','453-4213','998712561','#947348','12','-12.026392','-77.129155','BONILLA');
INSERT INTO `tb_cen_anexo` VALUES (18,70101221,'CENTRO DE DESARROLLO JUVENIL DEL CALLAO','MICRORED ACAPULCO','LIC. PAOLA MILENA ALVITES SANCHEZ','AV. RAMIRO PRIALE S/N - AA.HH. SARITA COLONIA - CALLAO','453-8688','998713446','#947350','','-12.023081','-77.134113','BONILLA');
INSERT INTO `tb_cen_anexo` VALUES (19,70102101,'HOSP. NAC. DANIEL ALCIDES CARRION','','Maria Elena Aguilar del Aguila','AV. GUARDIA CHALACA N','429-6068','','','24','-12.062865','-77.123777','HOSPITAL');
INSERT INTO `tb_cen_anexo` VALUES (20,70103101,'HOSPITAL SAN JOSE','','Dra.Jenie Dextre Ubaldo','AV. ELMER FAUCETT CDRA. 9 S/N - C.DE LA LEGUA','464-6867','','','24','-12.042683','-77.098685','HOSPITAL');
INSERT INTO `tb_cen_anexo` VALUES (21,70101231,'C.S. FAUCETT (Base de Microred)','MICRORED FAUCETT','DRA. ETELVINA PALACIOS PINTADO','CALLE 3 S/N - URB. FAUCETT - CALLAO','577-1321','998714094','#947354','12','-11.996084','-77.120885','BEPECA');
INSERT INTO `tb_cen_anexo` VALUES (22,70101232,'C.S. 200 MILLAS','MICRORED FAUCETT','DR. LUIS SALINAS PEREZ','MZ L LOTE 3-4 I ETAP. URB.200 MILLAS (KM.5.5 AV.GAMBETTA) - CALLAO','577-1351','998713703','#947352','6','-11.995242','-77.124787','BEPECA');
INSERT INTO `tb_cen_anexo` VALUES (23,70101242,'C.S. PALMERAS DE OQUENDO','MICRORED FAUCETT','DR. EDWIN RENE SULCA QUISPE','Calle Marlen Mz Lte 5 y 6 - Urb. Las Palmeras (al Km9 Nestor Gambetta) - CALLAO','','998715084','#947357','6','-11.973083','-77.120813','BEPECA');
INSERT INTO `tb_cen_anexo` VALUES (24,70101226,'C.S. SESQUICENTENARIO (Base de Microred)','MICRORED SESQUICENTENARIO','DRA. ROSE MARIE PAGAN YABAR','ALT.CALLE 7 Y 14 - URB.SESQUICENTENARIO - CALLAO','574-2790','998713935','#947353','12','-12.00963','-77.096596','BEPECA');
INSERT INTO `tb_cen_anexo` VALUES (25,70101228,'C.S. PREVI','MICRORED SESQUICENTENARIO','DRA. MYRIAM VASQUEZ ORE','CALLE CENTRAL S/N - CALLAO','574-6145','998715051','#947356','12','-12.016663','-77.090683','BEPECA');
INSERT INTO `tb_cen_anexo` VALUES (26,70101234,'C.S. BOCANEGRA','MICRORED SESQUICENTENARIO','DRA. JANET RAMIREZ WATANABE','AA.HH. BOCANEGRA - PLAZA CIVICA - CALLAO','484-3241','998714134','#947355','12','-12.024301','-77.096304','BEPECA');
INSERT INTO `tb_cen_anexo` VALUES (27,70101235,'C.S. EL ALAMO','MICRORED SESQUICENTENARIO','DR. GUILLERMO CHAGUA CUADROS','MZ. S/N URB. EL ALAMO - CALLAO','574-8276','998715220','#947358','12','-12.002012','-77.107186','BEPECA');
INSERT INTO `tb_cen_anexo` VALUES (28,70101229,'C.S. AEROPUERTO (Base de Microred)','MICRORED AEROPUERTO','DRA. ZULMA ANYA CHACON','JR. SALAVERRY S/N - AA.HH. AEROPUERTO - CALLAO','572-2724','998715285','#947359','6','-12.033443','-77.09897','BEPECA');
INSERT INTO `tb_cen_anexo` VALUES (29,70101230,'C.S. PLAYA RIMAC','MICRORED AEROPUERTO','DRA. ZONIA ROSA MENENDEZ CASTILLO','CALLE BOLOGNESI Y JOSE SANTOS CHOCANO S/N - CALLAO','572-3712','998715289','#947360','6','-12.037915','-77.096579','BEPECA');
INSERT INTO `tb_cen_anexo` VALUES (30,70101313,'P.S. POLIGONO IV','MICRORED AEROPUERTO','DRA.JIANINA ROMAN GUTIERREZ','AA.HH. BOCANEGRA - SECTOR V - CALLAO','574-8993','996207958','#947361','6','-12.025192','-77.101053','BEPECA');
INSERT INTO `tb_cen_anexo` VALUES (31,70102201,'C.S. BELLAVISTA (Base de Microred)','MICRORED BELLAVISTA','Dr. HJALMAR DE LA CRUZ CHIPANA','MZ. F-5 ZONA 2 - CIUDAD DEL PESCADOR - BELLAVISTA','452-0167 769-8333','996207960','#947362','12','-12.061772','-77.106853','BEPECA');
INSERT INTO `tb_cen_anexo` VALUES (32,70104202,'C.S. ALTA MAR','MICRORED BELLAVISTA','DR. JOSE VITOR VALDIVIA','AV. DOS DE MAYO N 640','420-5994','996499631','#947363','12','-12.069639','-77.117861','BEPECA');
INSERT INTO `tb_cen_anexo` VALUES (33,70104201,'C.S. LA PERLA','MICRORED BELLAVISTA','DRA. CECILIA DE LOURDES FRESIA CALVO VIL','ALFONSO UGARTE N 1150','453-7459','996499708','#947364','12','-12.068634','-77.129469','BEPECA');
INSERT INTO `tb_cen_anexo` VALUES (34,70103201,'C.S. CARMEN DE LA LEGUA','MICRORED BELLAVISTA','DR. MARTIN ENRIQUEZ ROBLES','AV. MANCO CAPAC CDRA. 8 - C.DE LA LEGUA','451-8719','996499727','#947366','6','-12.039954','-77.090036','BEPECA');
INSERT INTO `tb_cen_anexo` VALUES (35,70103202,'C.S. VILLA SR. DE LOS MILAGROS','MICRORED BELLAVISTA','DR. JUAN DURANTE COLLAZOS','P.J.VILLA SR.DE MILAGR.(ALT.CDRA.60 AV.ARGENTINA) - C.DE LA LEGUA','452-2272','996499726','#947365','12','-12.04184','-77.085604','BEPECA');
INSERT INTO `tb_cen_anexo` VALUES (36,70106101,'HOSPITAL DE VENTANILLA','','Dr. David Gonsales Saenz','AV. PEDRO BELTRAN ALT. CUADRA 3 S/N - URB. SATELITE - VENTANILLA','553-5700','996499511','#949565','24','-11.872331','-77.125705','HOSPITAL');
INSERT INTO `tb_cen_anexo` VALUES (37,70106215,'C.S. MATERNO INFANTIL PACHACUTEC PERU - KOREA (Base de Microred)','MICRORED PACHACUTEC','DR. GERMAN ARAGONEZ ALMONACID','MZ. X LT. 1 - AAHH HIROSHIMA - CIUDAD PACHACUTEC - VENTANILLA','-','996499790','#947369','24','-11.832774','-77.141758','VENTANILLA');
INSERT INTO `tb_cen_anexo` VALUES (38,70106213,'C.S. 03 DE FEBRERO','MICRORED PACHACUTEC','DR. JHON JERRY SANDOVAL CRUZADO','MZ. V SECTOR B PROLONG. AV. 225 S/N - CIUDADELA PACHACUTEC - VENTANILLA','','996499820','#947370','12','-11.829584','-77.159053','VENTANILLA');
INSERT INTO `tb_cen_anexo` VALUES (39,70106211,'C.S. BAHIA BLANCA','MICRORED PACHACUTEC','DR. OSCAR VICTOR SILVA DOMINGUEZ','MZ P1 LT 1 - SECTOR E - CIUDADELA PACHACUTEC - VENTANILLA','','996512914','#947371','12','-11.83532','-77.158578','VENTANILLA');
INSERT INTO `tb_cen_anexo` VALUES (40,70106214,'C.S. CIUDAD PACHACUTEC','MICRORED PACHACUTEC','DR. ROBERTO CARLOS LINARES PIZARRO','MZ. G1 LT. 2 - COOP. LA UNION - CIUDADELA PACHACUTEC - VENTANILLA','996719259','998713468','#947372','6','-11.845231','-77.150772','VENTANILLA');
INSERT INTO `tb_cen_anexo` VALUES (41,70106210,'C.S. SANTA ROSA DE PACHACUTEC','MICRORED PACHACUTEC','DRA. MARIBEL CRUZ LOPEZ','MZ. O LT. 1 - AA.HH. SANTA ROSA DE PACHACUTEC - VENTANILLA','','998715202','#947378','12','-11.847148','-77.127536','VENTANILLA');
INSERT INTO `tb_cen_anexo` VALUES (42,70106207,'C.S. ANGAMOS','MICRORED ANGAMOS','DR. JUAN CARLOS MARIN DE LA CRUZ','AV. HUAURA S/N - AA.HH. MI PERU - VENTANILLA','553-0884','996549863','#947373','12','-11.892673','-77.127677','VENTANILLA');
INSERT INTO `tb_cen_anexo` VALUES (43,70106209,'C.S. HIJOS DEL ALMIRANTE GRAU','MICRORED ANGAMOS','DR. CARLOS CESAR MILLAN BAZALAR','MZ. 7 AA.HH. HIJOS DEL ALMIRANTE MIGUEL GRAU - VENTANILLA','532-6570','998714460','#947374','12','-11.885606','-77.131957','VENTANILLA');
INSERT INTO `tb_cen_anexo` VALUES (44,70106301,'P.S. DEFENSORES DE LA PATRIA','MICRORED ANGAMOS','DR. JUAN ROMANI RODRIGUEZ','AA.HH. DEFENSORES DE LA PATRIA S/N - VENTANILLA','','998714721','#947375','6','-11.876396','-77.137907','VENTANILLA');
INSERT INTO `tb_cen_anexo` VALUES (45,70106202,'C.S. VENTANILLA ALTA','MICRORED ANGAMOS','DR. LUIS MIGUEL MANSILLA HERRERA','AV. CENTRAL S/N (ALT. LOCAL COMUNAL) AA.HH. V. ALTA - VENTANILLA','553-4475','','-','12','-11.87229','-77.110026','VENTANILLA');
INSERT INTO `tb_cen_anexo` VALUES (46,70106203,'C.S. VILLA LOS REYES (Base de Microred)','MICRORED VILLA LOS REYES','DR. RAFAEL EMILIANO SULCA QUISPE','MZ. N-1 SC. ADELANTE (KM. 37.5 PAN. NOR) AA.HH. V.DE LOS REYES - VENTANILLA','550-3707','998714931','#947377','12','-11.828602','-77.122615','VENTANILLA');
INSERT INTO `tb_cen_anexo` VALUES (47,70106208,'C.S. LUIS FELIPE DE LAS CASAS ','MICRORED VILLA LOS REYES','DRA. MABETHA POEMAPE VALLEJOS','AA.HH. LUIS FELIPE DE LAS CASAS KM. 39 PANAM. NORTE - VENTANILLA','550-3432','998714792','#947376','12','-11.824311','-77.131839','VENTANILLA');
INSERT INTO `tb_cen_anexo` VALUES (48,70106209,'C.S. MI PERU ','MICRORED VILLA LOS REYES','DR. MIGUEL ANGEL SOTA CLEMENTE','MZ.G6 LOTE 1 AV.HUAURA AG MI PERU','553-5463','998713474','#947380','12','-11.855263','-77.122952','VENTANILLA');
INSERT INTO `tb_cen_anexo` VALUES (49,70101227,'C.S. MARQUEZ (Base de Microred)','MICRORED MARQUEZ','DR. DARIO NARCISO LUNA  DEL CARPIO ','AV. LOS ALAMOS S/N - MARQUEZ - CALLAO','577-6151','998040688','#947382','24','-11.942668','-77.134082','VENTANILLA');
INSERT INTO `tb_cen_anexo` VALUES (50,70106205,'C.S. VENTANILLA BAJA','MICRORED MARQUEZ','DRA. FLOR DE MAR','PARQUE COMERCIAL AA.HH. V.R. HAYA DE LA TORRE - VENTANILLA','577-7067','','-','6','-11.936755','-77.132415','VENTANILLA');
INSERT INTO `tb_cen_anexo` VALUES (51,70106206,'C.S. VENTANILLA ESTE','MICRORED MARQUEZ','DR. HENRY JOEL RODRIGUEZ RODRIGUEZ','PRIMERA ETAPA AA.HH. PARQUE PORCINO - VENTANILLA','577-7396','998040766','#947384','6','-11.942448','-77.117623','VENTANILLA');
INSERT INTO `tb_cen_anexo` VALUES (52,0,'DIRECCIÓN DE RED DE SALUD: BONILLA-LA PUNTA','','Sra Camela Tereza Donayre Muñante','Jr Vigil 535 - Callao','465-5631','996549905','#947331','','-12.063170','-77.133326','RED');
INSERT INTO `tb_cen_anexo` VALUES (53,0,'DIRECCIÓN DE RED DE SALUD BEPECA','-','Dr. Marco Adrianzen Costa','Jr Vigil 535 - Callao','452-8092','998713537','#947351','','-12.063170','-77.133326','RED');
INSERT INTO `tb_cen_anexo` VALUES (54,0,'DIRECCIÓN DE RED DE SALUD VENTANILLA','','Dra Zulma Araya Chacon','Mz B Lt 30 3er Sector izquierdo Urb Antonio Moreno Caseres','553-9653','996499781','#947368','','-11.889014','-77.116547','RED');
INSERT INTO `tb_cen_anexo` VALUES (55,0,'SANIDAD MARITIMA','','Dr. Rigoberto Robles Camarena','Jr Miller 175 Callao','429-1089','','','24','-12.060842','-77.144683','SANIDADES INTERNACIONALES');
INSERT INTO `tb_cen_anexo` VALUES (56,0,'SANIDAD AEREA','','Gladys Berocal Calixtro','Aeropuerto Internacional Jorge Chavez','575-1745','999965449','#949559','','-12.021850','-77.108514','SANIDADES INTERNACIONALES');
/*!40000 ALTER TABLE `tb_cen_anexo` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;