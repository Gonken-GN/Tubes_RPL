/*
 Navicat Premium Data Transfer

 Source Server         : mykoneksi
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : db_tubes_rpl

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 23/05/2022 14:34:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for table_resep
-- ----------------------------
DROP TABLE IF EXISTS `table_resep`;
CREATE TABLE `table_resep`  (
  `ID_Resep` bigint NOT NULL AUTO_INCREMENT,
  `Nama_Resep` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Link_Resep` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Jenis_Menu_Resep` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Menu_Resep` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Daerah_Menu_Resep` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_Resep`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of table_resep
-- ----------------------------
INSERT INTO `table_resep` VALUES (1, 'Rendang', 'https://www.google.com/search?q=resep+rendang+padang&oq=resep+rendang&aqs=chrome.1.69i57j0i131i433i512l3j0i512l6.4374j0j15&sourceid=chrome&ie=UTF-8', 'Makanan', 'Makan Siang', 'Sumatera');
INSERT INTO `table_resep` VALUES (2, 'Pecel Lele', 'https://www.kompas.com/food/read/2021/03/21/191700675/resep-pecel-lele-lamongan-lengkap-dengan-sambalnya', 'Makanan', 'Makan Siang', 'Jawa');
INSERT INTO `table_resep` VALUES (3, 'Coto Makassar', 'https://www.idntimes.com/food/recipe/reza-iqbal/resep-membuat-coto-makassar', 'Makanan', 'Makan Siang', 'Sulawesi');
INSERT INTO `table_resep` VALUES (4, 'Ikan Kuah Kuning', 'https://id.tastemade.com/videos/ikan-kuah-kuning-khas-papua/#:~:text=Ikan%20kuah%20kuning%20adalah%20salah,pedas%20nikmat%20dan%20sangat%20segar.', 'Makanan', 'Makan Siang', 'Papua');
INSERT INTO `table_resep` VALUES (5, 'Pengkang', 'https://www.fimela.com/food/read/4865754/resep-pengkang-khas-pontianak', 'Makanan', 'Sarapan', 'Kalimantan');
INSERT INTO `table_resep` VALUES (6, 'Bandrek', 'https://resepkoki.id/resep/resep-bandrek/', 'Minuman', '', 'Jawa');
INSERT INTO `table_resep` VALUES (7, 'Liang Teh Medan isi Cincau', 'https://minumankekinian.web.app/179-langkah-mudah-untuk-membuat-liang-teh-medan-isi-cincau-anti-gagal/', 'Minuman', NULL, 'Kalimantan');
INSERT INTO `table_resep` VALUES (8, 'ES Matoa Kuning Kecut Legi', 'https://cookpad.com/id/resep/248546-es-matoa-kuning-kecut-legi', 'Minuman', NULL, 'Papua');
INSERT INTO `table_resep` VALUES (9, 'Aia Kawa', 'https://www.saribundo.biz/cara-penyajian-resep-aia-kawa-khas-minangkabau.html', 'Minuman', NULL, 'Sumatera');
INSERT INTO `table_resep` VALUES (10, 'Es Pisang Ijo', 'https://food.detik.com/kue/d-5903418/resep-es-pisang-ijo-khas-makassar-yang-legit-lembut', 'Minuman', NULL, 'Sulawesi');
INSERT INTO `table_resep` VALUES (11, 'Rendang', 'https://www.google.com/search?q=resep+rendang+padang&oq=resep+rendang&aqs=chrome.1.69i57j0i131i433i512l3j0i512l6.4374j0j15&sourceid=chrome&ie=UTF-8', 'Makanan', 'Makan Siang', 'Sumatera');
INSERT INTO `table_resep` VALUES (12, 'Pecel Lele', 'https://www.kompas.com/food/read/2021/03/21/191700675/resep-pecel-lele-lamongan-lengkap-dengan-sambalnya', 'Makanan', 'Makan Siang', 'Jawa');
INSERT INTO `table_resep` VALUES (13, 'Coto Makassar', 'https://www.idntimes.com/food/recipe/reza-iqbal/resep-membuat-coto-makassar', 'Makanan', 'Makan Siang', 'Sulawesi');
INSERT INTO `table_resep` VALUES (14, 'Ikan Kuah Kuning', 'https://id.tastemade.com/videos/ikan-kuah-kuning-khas-papua/#:~:text=Ikan%20kuah%20kuning%20adalah%20salah,pedas%20nikmat%20dan%20sangat%20segar.', 'Makanan', 'Makan Siang', 'Papua');
INSERT INTO `table_resep` VALUES (15, 'Pengkang', 'https://www.fimela.com/food/read/4865754/resep-pengkang-khas-pontianak', 'Makanan', 'Sarapan', 'Kalimantan');
INSERT INTO `table_resep` VALUES (16, 'Bandrek', 'https://resepkoki.id/resep/resep-bandrek/', 'Minuman', '', 'Jawa');
INSERT INTO `table_resep` VALUES (17, 'Liang Teh Medan isi Cincau', 'https://minumankekinian.web.app/179-langkah-mudah-untuk-membuat-liang-teh-medan-isi-cincau-anti-gagal/', 'Minuman', NULL, 'Kalimantan');
INSERT INTO `table_resep` VALUES (18, 'ES Matoa Kuning Kecut Legi', 'https://cookpad.com/id/resep/248546-es-matoa-kuning-kecut-legi', 'Minuman', NULL, 'Papua');
INSERT INTO `table_resep` VALUES (19, 'Aia Kawa', 'https://www.saribundo.biz/cara-penyajian-resep-aia-kawa-khas-minangkabau.html', 'Minuman', NULL, 'Sumatera');
INSERT INTO `table_resep` VALUES (20, 'Es Pisang Ijo', 'https://food.detik.com/kue/d-5903418/resep-es-pisang-ijo-khas-makassar-yang-legit-lembut', 'Minuman', NULL, 'Sulawesi');
INSERT INTO `table_resep` VALUES (21, 'Empal Gentong', 'https://cookpad.com/id/resep/15702111-empal-gentong?ref=search&search_term=Empal%20Gentong', 'Makanan', 'Makan Siang', 'Jawa');
INSERT INTO `table_resep` VALUES (22, 'Rawon', 'https://cookpad.com/id/resep/16181342-rawon-daging-sapi?ref=search&search_term=rawon%20daging', 'Makanan', 'Makan Malam', 'Jawa');
INSERT INTO `table_resep` VALUES (23, 'Karedok', 'https://cookpad.com/id/resep/14370509-karedok-bumbu-kacang?ref=search&search_term=karedok%20bumbu%20kacang', 'Makanan', 'Sarapan', 'Jawa');
INSERT INTO `table_resep` VALUES (24, 'Gudeg', 'https://cookpad.com/id/resep/15796848-resep-gudeg-jogja-by-hsn?ref=search&search_term=Gudeg%20Jogja', 'Makanan', 'Sarapan', 'Jawa');
INSERT INTO `table_resep` VALUES (25, 'Rujak Cingur', 'https://cookpad.com/id/resep/15321524-rujak-cingur-khas-surabaya?ref=search&search_term=Rujak%20Cingur', 'Makanan', 'Makan Siang', 'Jawa');
INSERT INTO `table_resep` VALUES (26, 'Pempek', 'https://id.theasianparent.com/cara-membuat-pempek', 'Makanan', 'Makan Siang', 'Sumatera');
INSERT INTO `table_resep` VALUES (27, 'Ayam Pop', 'https://cookpad.com/id/resep/15944565-ayam-pop-renyah-dan-gurih?ref=search&search_term=Ayam%20Pop?find_method=search&ref=recipe&via=registration_app_download_intercept', 'Makanan', 'Makan Siang', 'Sumatera');
INSERT INTO `table_resep` VALUES (28, 'Sate Padang', 'https://doyanresep.com/resep-sate-padang/', 'Makanan', 'Makan Malam', 'Sumatera');
INSERT INTO `table_resep` VALUES (29, 'Kalumpe', 'https://www.yummy.co.id/blog/resep-komunitas/kalumpe-2', 'Makanan', 'Sarapan', 'Kalimantan');
INSERT INTO `table_resep` VALUES (30, 'Sop Konro', 'https://www.yummy.co.id/blog/resep-komunitas/sop-konro-11', 'Makanan', 'Sarapan', 'Sulawesi');
INSERT INTO `table_resep` VALUES (31, 'Es Pisang Ijo', 'https://food.detik.com/kue/d-5903418/resep-es-pisang-ijo-khas-makassar-yang-legit-lembut', 'Minuman', NULL, 'Sulawesi');
INSERT INTO `table_resep` VALUES (32, 'Empal Gentong', 'https://cookpad.com/id/resep/15702111-empal-gentong?ref=search&search_term=Empal%20Gentong', 'Makanan', 'Makan Siang', 'Jawa');
INSERT INTO `table_resep` VALUES (33, 'Rawon', 'https://cookpad.com/id/resep/16181342-rawon-daging-sapi?ref=search&search_term=rawon%20daging', 'Makanan', 'Makan Malam', 'Jawa');
INSERT INTO `table_resep` VALUES (34, 'Karedok', 'https://cookpad.com/id/resep/14370509-karedok-bumbu-kacang?ref=search&search_term=karedok%20bumbu%20kacang', 'Makanan', 'Sarapan', 'Jawa');
INSERT INTO `table_resep` VALUES (35, 'Gudeg', 'https://cookpad.com/id/resep/15796848-resep-gudeg-jogja-by-hsn?ref=search&search_term=Gudeg%20Jogja', 'Makanan', 'Sarapan', 'Jawa');
INSERT INTO `table_resep` VALUES (36, 'Rujak Cingur', 'https://cookpad.com/id/resep/15321524-rujak-cingur-khas-surabaya?ref=search&search_term=Rujak%20Cingur', 'Makanan', 'Makan Siang', 'Jawa');
INSERT INTO `table_resep` VALUES (37, 'Pempek', 'https://id.theasianparent.com/cara-membuat-pempek', 'Makanan', 'Makan Siang', 'Sumatera');
INSERT INTO `table_resep` VALUES (38, 'Ayam Pop', 'https://cookpad.com/id/resep/15944565-ayam-pop-renyah-dan-gurih?ref=search&search_term=Ayam%20Pop?find_method=search&ref=recipe&via=registration_app_download_intercept', 'Makanan', 'Makan Siang', 'Sumatera');
INSERT INTO `table_resep` VALUES (39, 'Sate Padang', 'https://doyanresep.com/resep-sate-padang/', 'Makanan', 'Makan Malam', 'Sumatera');
INSERT INTO `table_resep` VALUES (40, 'Kalumpe', 'https://www.yummy.co.id/blog/resep-komunitas/kalumpe-2', 'Makanan', 'Sarapan', 'Kalimantan');
INSERT INTO `table_resep` VALUES (41, 'Sop Konro', 'https://www.yummy.co.id/blog/resep-komunitas/sop-konro-11', 'Makanan', 'Sarapan', 'Sulawesi');

SET FOREIGN_KEY_CHECKS = 1;
