-- --------------------------------------------------------
-- ホスト:                          127.0.0.1
-- サーバーのバージョン:                   10.1.38-MariaDB - mariadb.org binary distribution
-- サーバー OS:                      Win64
-- HeidiSQL バージョン:               10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

--  テーブル hit_u_bad.result_league の構造をダンプしています
CREATE TABLE IF NOT EXISTS `result_league` (
  `league_id` int(6) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `season` tinyint(1) unsigned NOT NULL,
  `group` tinyint(1) unsigned DEFAULT NULL,
  `rank` tinyint(1) unsigned DEFAULT NULL,
  `up_flg` tinyint(1) unsigned DEFAULT NULL,
  `down_flg` tinyint(1) unsigned DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`league_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- テーブル hit_u_bad.result_league: ~56 rows (約) のデータをダンプしています
DELETE FROM `result_league`;
/*!40000 ALTER TABLE `result_league` DISABLE KEYS */;
INSERT INTO `result_league` (`league_id`, `title`, `year`, `season`, `group`, `rank`, `up_flg`, `down_flg`, `remarks`) VALUES
	(200611, '200601', '2006', 1, 4, 3, 0, 0, ''),
	(200612, '200601', '2006', 1, 4, 6, 0, 1, ''),
	(200621, '200602', '2006', 2, 4, 5, 0, 0, ''),
	(200622, '200602', '2006', 2, 5, 2, 0, 0, ''),
	(200711, '200701', '2007', 1, 4, 6, 0, 1, ''),
	(200712, '200701', '2007', 1, 5, 5, 0, 0, ''),
	(200721, '200702', '2007', 2, 5, 5, 0, 0, ''),
	(200722, '200702', '2007', 2, 5, 5, 0, 0, ''),
	(200811, '200801', '2008', 1, 5, 3, 0, 0, ''),
	(200812, '200801', '2008', 1, 5, 6, 0, 1, ''),
	(200821, '200802', '2008', 2, 5, 3, 0, 0, ''),
	(200822, '200802', '2008', 2, 6, 2, 0, 0, ''),
	(200911, '200901', '2009', 1, 5, 3, 0, 0, ''),
	(200912, '200901', '2009', 1, 6, 1, 1, 0, ''),
	(200921, '200902', '2009', 2, 5, 4, 0, 0, ''),
	(200922, '200902', '2009', 2, 5, 3, 0, 0, ''),
	(201011, '201001', '2010', 1, 5, 4, 0, 0, ''),
	(201012, '201001', '2010', 1, 5, 4, 0, 0, ''),
	(201021, '201002', '2010', 2, 5, 4, 0, 0, ''),
	(201022, '201002', '2010', 2, 5, 2, 0, 0, ''),
	(201111, '201101', '2011', 1, 0, 0, 0, 0, '中止'),
	(201112, '201101', '2011', 1, 0, 0, 0, 0, '中止'),
	(201121, '201102', '2011', 2, 5, 3, 0, 0, ''),
	(201122, '201102', '2011', 2, 5, 2, 0, 0, ''),
	(201211, '201201', '2012', 1, 5, 2, 0, 0, ''),
	(201212, '201201', '2012', 1, 5, 1, 0, 0, ''),
	(201221, '201202', '2012', 2, 5, 2, 0, 0, ''),
	(201222, '201202', '2012', 2, 5, 1, 1, 0, ''),
	(201311, '201301', '2013', 1, 5, 2, 0, 0, ''),
	(201312, '201301', '2013', 1, 4, 1, 0, 0, ''),
	(201321, '201302', '2013', 2, 5, 3, 0, 0, ''),
	(201322, '201302', '2013', 2, 4, 3, 0, 0, ''),
	(201411, '201401', '2014', 1, 5, 4, 0, 0, ''),
	(201412, '201401', '2014', 1, 4, 3, 0, 0, ''),
	(201421, '201402', '2014', 2, 5, 2, 0, 0, ''),
	(201422, '201402', '2014', 2, 4, 2, 0, 0, ''),
	(201511, '201501', '2015', 1, 5, 2, 0, 0, ''),
	(201512, '201501', '2015', 1, 4, 4, 0, 0, ''),
	(201521, '201502', '2015', 2, 5, 4, 0, 0, ''),
	(201522, '201502', '2015', 2, 4, 6, 0, 0, ''),
	(201611, '201601', '2016', 1, 5, 4, 0, 0, ''),
	(201612, '201601', '2016', 1, 4, 6, 0, 1, ''),
	(201621, '201602', '2016', 2, 5, 2, 0, 0, ''),
	(201622, '201602', '2016', 2, 5, 4, 0, 0, ''),
	(201711, '201701', '2017', 1, 5, 2, 0, 0, ''),
	(201712, '201701', '2017', 1, 5, 5, 0, 0, ''),
	(201721, '201702', '2017', 2, 5, 1, 0, 0, ''),
	(201722, '201702', '2017', 2, 5, 5, 0, 0, ''),
	(201811, '201801', '2018', 1, 5, 2, 0, 0, ''),
	(201812, '201801', '2018', 1, 5, 3, 0, 0, ''),
	(201821, '201802', '2018', 2, 5, 1, 1, 0, ''),
	(201822, '201802', '2018', 2, 5, 5, 0, 0, ''),
	(201911, '2019 年度 春リーグ 男子', '2019', 1, 4, 5, 0, 0, ''),
	(201912, '2019 年度 春リーグ 女子', '2019', 1, 5, 5, 0, 0, ''),
	(201921, '201902', '2019', 2, 4, 4, 0, 0, ''),
	(201922, '201902', '2019', 2, 5, 4, 0, 0, '');
/*!40000 ALTER TABLE `result_league` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;