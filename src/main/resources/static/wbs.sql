-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 04:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_id` varchar(10) NOT NULL,
  `job_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `job_desc`) VALUES
('job01', '営業部'),
('job02', '開発部'),
('job03', '人事部'),
('job04', '経理部'),
('job05', '総務部'),
('job06', '企画部'),
('job07', '広報部'),
('job08', '法務部'),
('job09', '営業部'),
('job10', '開発部');

--
-- Triggers `job`
--
DELIMITER $$
CREATE TRIGGER `job_id_auto_increment` BEFORE INSERT ON `job` FOR EACH ROW BEGIN
    DECLARE max_id INT;
    DECLARE new_id VARCHAR(10);

    SELECT COALESCE(MAX(CAST(SUBSTRING(job_id, 4) AS UNSIGNED)), 0) INTO max_id FROM job;
    SET new_id = CONCAT('job', LPAD(max_id + 1, 2, '0'));
    SET NEW.job_id = new_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `kaishain`
--

CREATE TABLE `kaishain` (
  `id` varchar(255) NOT NULL,
  `joindate` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` int(3) NOT NULL,
  `job` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kaishain`
--

INSERT INTO `kaishain` (`id`, `joindate`, `name`, `sex`, `age`, `job`, `email`) VALUES
('A123456789', '20230115', '山田太郎', '男性', 25, '営業部', 'yamada@example.com'),
('B234567890', '20200220', '佐藤花子', '女性', 30, '開発部', 'sato@example.com'),
('C345678901', '20191210', '鈴木一郎', '男性', 35, '人事部', 'suzuki@example.com'),
('D456789012', '20210505', '高橋美咲', '女性', 28, '経理部', 'takahashi@example.com'),
('E567890123', '20211111', '田中実', '未確認', 40, '総務部', 'tanaka@example.com'),
('F678901234', '20180403', '伊藤裕子', '女性', 32, '企画部', 'ito@example.com'),
('G789012345', '20190707', '渡辺健', '男性', 29, '広報部', 'watanabe@example.com'),
('H890123456', '20210901', '松本沙織', '女性', 26, '法務部', 'matsumoto@example.com'),
('I901234567', '20220125', '井上智', '男性', 33, '営業部', 'inoue@example.com'),
('J012345678', '20230317', '中村舞', '女性', 27, '開発部', 'nakamura@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `kaishain`
--
ALTER TABLE `kaishain`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
