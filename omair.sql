-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: 06 يوليو 2023 الساعة 13:00
-- إصدار الخادم: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omair`
--

-- --------------------------------------------------------

--
-- بنية الجدول `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(7, 'test', '', 'omair_aghbar', '2023-03-08 12:55:18', 'no', 21),
(8, 'test again', 'omair_aghbar', 'omair_aghbar', '2023-03-08 12:59:43', 'no', 21),
(9, 'hi', 'omair_aghbar', 'omair_aghbar', '2023-03-08 13:06:47', 'no', 21),
(10, 'Hi all', 'omair_aghbar', 'naeem_anees', '2023-03-08 13:07:20', 'no', 2),
(11, 'I love it thank you', 'omair_aghbar', 'naeem_anees', '2023-03-08 13:08:24', 'no', 1),
(12, 'Nice job\r\n', 'omair_aghbar', 'omair_aghbar', '2023-03-08 16:38:04', 'no', 21),
(13, 'yuyu', 'omair_aghbar', 'omair_aghbar', '2023-03-08 16:38:31', 'no', 21),
(14, 'test\r\n', 'omair_aghbar', 'naeem_anees', '2023-03-08 21:41:41', 'no', 2),
(15, 'I love you', 'omair_aghbar', 'naeem_anees', '2023-03-08 21:42:02', 'no', 2),
(16, 'test', 'omair_aghbar', 'omair_aghbar', '2023-03-08 21:42:29', 'no', 20),
(17, 'take care', 'omair_aghbar', 'naeem_anees', '2023-03-08 21:43:24', 'no', 2),
(18, 'omaer', 'omair_aghbar', 'omair_aghbar', '2023-03-08 21:47:06', 'no', 21),
(19, 'omaer', 'omair_aghbar', 'omair_aghbar', '2023-03-08 21:47:30', 'no', 20),
(20, 'adnan', 'omair_aghbar', 'omair_aghbar', '2023-03-08 21:47:36', 'no', 20),
(21, 'hi', 'omair_aghbar', 'omair_aghbar', '2023-03-08 21:55:07', 'no', 22),
(22, 'thank you', 'omair_aghbar', 'omair_aghbar', '2023-03-08 21:55:17', 'no', 22),
(23, 'hi', 'omair_aghbar', 'omair_aghbar', '2023-03-08 21:55:29', 'no', 18),
(24, 'I love you', 'omair_aghbar', 'omair_aghbar', '2023-03-08 21:55:36', 'no', 18),
(25, 'tewst', 'omair_aghbar', 'omair_aghbar', '2023-03-08 21:55:45', 'no', 19),
(26, 'SARA', 'omair_aghbar', 'omair_aghbar', '2023-03-08 21:55:57', 'no', 19),
(27, 'good', 'omair_aghbar', 'omair_aghbar', '2023-03-08 21:56:22', 'no', 22),
(28, 'nice', 'omair_aghbar', 'omair_aghbar', '2023-03-08 21:56:28', 'no', 22),
(29, 'try again', 'omair_aghbar', 'omair_aghbar', '2023-03-08 21:56:50', 'no', 19),
(30, 'hhhhhhhhhhhh', 'omair_aghbar', 'omair_aghbar', '2023-03-08 21:56:58', 'no', 19),
(31, 'oh my god', 'omair_aghbar', 'omair_aghbar', '2023-03-08 21:58:04', 'no', 17),
(32, 'listen', 'omair_aghbar', 'omair_aghbar', '2023-03-08 21:58:13', 'no', 17),
(33, 'عمير جمال احمد احمد ', 'omair_aghbar', 'naeem_anees', '2023-03-09 12:30:07', 'no', 3),
(34, '', 'omair_aghbar', 'omair_aghbar', '2023-03-09 13:59:45', 'no', 22),
(35, 'Hi Omair nice to see you again', 'sara_omar', 'omair_aghbar', '2023-03-10 18:52:08', 'no', 23),
(36, 'Hi I\'m Sara', 'sara_omar', 'naeem_anees', '2023-03-10 18:53:02', 'no', 2),
(37, 'I have read it already', 'sara_omar', 'sara_omar', '2023-03-11 15:59:41', 'no', 25),
(38, 'I love to start my day with a cup of coffee ', 'sara_omar', 'sara_omar', '2023-03-12 07:01:23', 'no', 26),
(39, 'thank you', 'naeem_anees', 'naeem_anees', '2023-03-18 18:54:32', 'no', 32),
(40, 'hi', 'naeem_anees', 'naeem_anees', '2023-03-19 07:00:52', 'no', 37),
(41, 'hghfhfhfh', 'naeem_anees', 'naeem_anees', '2023-04-04 09:49:41', 'no', 38),
(42, 'تخسي\r\n', 'naeem_anees', 'naeem_anees', '2023-04-04 11:18:24', 'no', 39),
(43, 'hi', 'karoom_jamal', 'omair_aghbar', '2023-04-23 21:25:35', 'no', 23),
(44, 'I love you', 'karoom_jamal', 'sara_omar', '2023-04-23 21:32:16', 'no', 26),
(45, 'you can test at anytime', 'karoom_jamal', 'karoom_jamal', '2023-04-23 23:35:48', 'no', 43),
(46, 'hi ', 'karoom_jamal', 'karoom_jamal', '2023-04-24 21:42:20', 'no', 46),
(47, 'jj', 'sara_omar', 'sara_omar', '2023-04-25 17:02:39', 'no', 52),
(48, 'I love you Karoom', 'sara_omar', 'sara_omar', '2023-04-25 19:36:52', 'no', 65),
(49, 'Very good', 'naeem_anees', 'omair_aghbar', '2023-04-25 21:44:14', 'no', 23),
(50, 'hi', 'naeem_anees', 'naeem_anees', '2023-04-25 22:02:37', 'no', 75),
(51, 'jnjk', 'naeem_anees', 'naeem_anees', '2023-05-11 08:09:42', 'no', 102),
(52, 'try again', 'naeem_anees', 'sara_omar', '2023-06-04 19:35:43', 'no', 26),
(53, 'hi', 'naeem_anees', 'sara_omar', '2023-06-09 20:44:56', 'no', 26),
(54, 'hi', 'naeem_anees', 'sara_omar', '2023-06-09 20:45:10', 'no', 25),
(55, 'hi', 'omair_aghbar', 'naeem_anees', '2023-06-09 20:45:43', 'no', 104),
(56, 'hi sara', 'omair_aghbar', 'sara_omar', '2023-06-26 21:23:50', 'no', 105),
(57, 'yes of course ', 'naeem_anees', 'omair_aghbar', '2023-06-29 15:35:21', 'no', 111),
(58, 'thank you for this video ', 'naeem_anees', 'omair_aghbar', '2023-06-29 15:36:12', 'no', 109);

-- --------------------------------------------------------

--
-- بنية الجدول `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(8, 'lana_paul', 'naeem_anees'),
(10, 'lana_paul', 'omair_aghbar'),
(11, 'lana_paul', 'omair_aghbar'),
(12, 'aqeel_aghbar', 'naeem_anees');

-- --------------------------------------------------------

--
-- بنية الجدول `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(4, 'sara_omar', 24),
(5, 'sara_omar', 23),
(6, 'sara_omar', 2),
(7, 'sara_omar', 22),
(8, 'sara_omar', 26),
(9, 'naeem_anees', 32),
(10, 'naeem_anees', 38),
(11, 'naeem_anees', 39),
(12, 'karoom_jamal', 26),
(13, 'karoom_jamal', 24),
(14, 'karoom_jamal', 23),
(15, 'karoom_jamal', 22),
(16, 'karoom_jamal', 29),
(17, 'karoom_jamal', 25),
(18, 'karoom_jamal', 43),
(19, 'sara_omar', 43),
(20, 'sara_omar', 52),
(21, 'sara_omar', 44),
(22, 'naeem_anees', 69),
(23, 'naeem_anees', 23),
(24, 'naeem_anees', 101),
(25, 'naeem_anees', 24),
(27, 'naeem_anees', 104),
(28, 'naeem_anees', 26),
(29, 'sara_omar', 104),
(30, 'sara_omar', 103),
(31, 'naeem_anees', 25),
(32, 'omair_aghbar', 104),
(33, 'omair_aghbar', 26),
(34, 'omair_aghbar', 25),
(35, 'omair_aghbar', 24),
(36, 'omair_aghbar', 105),
(37, 'omair_aghbar', 109),
(38, 'naeem_anees', 111),
(39, 'naeem_anees', 110),
(40, 'naeem_anees', 109);

-- --------------------------------------------------------

--
-- بنية الجدول `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'sara_omar', 'naeem_anees', 'hi', '2023-04-27 21:11:52', 'yes', 'yes', 'no'),
(2, 'sara_omar', 'naeem_anees', 'I love you sara', '2023-04-27 21:15:02', 'yes', 'yes', 'no'),
(3, 'sara_omar', 'naeem_anees', 'try this one', '2023-04-27 21:15:12', 'yes', 'yes', 'no'),
(4, 'sara_omar', 'naeem_anees', 'me and you', '2023-04-27 21:15:22', 'yes', 'yes', 'no'),
(5, 'naeem_anees', 'sara_omar', 'I love you too Naeem', '2023-04-27 21:16:23', 'yes', 'yes', 'no'),
(6, 'naeem_anees', 'sara_omar', 'see you tomorrow', '2023-04-27 21:16:37', 'yes', 'yes', 'no'),
(7, 'naeem_anees', 'sara_omar', 'i will bring some books with me', '2023-04-27 21:16:53', 'yes', 'yes', 'no'),
(8, 'naeem_anees', 'sara_omar', 'ورع', '2023-04-27 23:14:21', 'yes', 'yes', 'no'),
(9, 'naeem_anees', 'sara_omar', 'عمك عمير', '2023-04-27 23:14:49', 'yes', 'yes', 'no'),
(10, 'naeem_anees', 'sara_omar', 'تعال', '2023-04-27 23:18:42', 'yes', 'yes', 'no'),
(11, 'naeem_anees', 'sara_omar', 'أوديك الحديقة\r\n\r\nيا بيبي', '2023-04-27 23:19:00', 'yes', 'yes', 'no'),
(12, 'naeem_anees', 'sara_omar', 'هههههههههههههههههههههههههههههههههههههههههههههههههههههههههههه', '2023-04-27 23:19:12', 'yes', 'yes', 'no'),
(13, 'naeem_anees', 'sara_omar', 'ok', '2023-04-27 23:25:30', 'yes', 'yes', 'no'),
(14, 'sara_omar', 'naeem_anees', 'و الله انت ورع', '2023-04-27 23:39:23', 'yes', 'yes', 'no'),
(15, 'sara_omar', 'naeem_anees', 'ترا بصفقك', '2023-04-27 23:39:36', 'yes', 'yes', 'no'),
(16, 'sara_omar', 'naeem_anees', 'هلا', '2023-04-27 23:40:00', 'yes', 'yes', 'no'),
(17, 'sara_omar', 'naeem_anees', 'انا عمك', '2023-04-27 23:40:10', 'yes', 'yes', 'no'),
(18, 'sara_omar', 'naeem_anees', 'غبي', '2023-04-27 23:40:17', 'yes', 'yes', 'no'),
(19, 'sara_omar', 'naeem_anees', 'هههههههههههههههههههههههههههههههههههههههههههههه', '2023-04-27 23:40:25', 'yes', 'yes', 'no'),
(20, 'sara_omar', 'naeem_anees', 'jjjjjjjjjkjlk;l;\';[olkojgjgfdgdsfhgf', '2023-04-27 23:47:39', 'yes', 'yes', 'no'),
(21, 'sara_omar', 'naeem_anees', '88956552', '2023-04-27 23:47:51', 'yes', 'yes', 'no'),
(22, 'sara_omar', 'naeem_anees', '5555587956487552255', '2023-04-27 23:48:03', 'yes', 'yes', 'no'),
(23, 'sara_omar', 'naeem_anees', 'you are stupid ', '2023-04-27 23:53:37', 'yes', 'yes', 'no'),
(24, 'sara_omar', 'naeem_anees', 'hi', '2023-04-28 14:06:53', 'yes', 'yes', 'no'),
(25, 'sara_omar', 'naeem_anees', 'ooooo', '2023-04-28 14:07:59', 'yes', 'yes', 'no'),
(26, 'lana_paul', 'naeem_anees', 'hghghgh', '2023-04-28 14:09:42', 'no', 'no', 'no'),
(27, 'omair_aghbar', 'naeem_anees', 'الحمد لله', '2023-04-28 15:50:36', 'yes', 'yes', 'no'),
(28, 'omair_aghbar', 'naeem_anees', 'عمير بن جمال بن احمد بن احمد بن حمود بن علي بن محمد بن عيسى الاغبري', '2023-04-28 15:51:41', 'yes', 'yes', 'no'),
(29, 'omair_aghbar', 'naeem_anees', 'test only for make sure', '2023-04-28 15:52:05', 'yes', 'yes', 'no'),
(30, 'karoom_jamal', 'naeem_anees', 'Hi bigbega', '2023-04-28 21:49:52', 'yes', 'no', 'no'),
(31, 'naeem_anees', 'karoom_jamal', 'Hi Naeem Aness', '2023-04-28 21:51:10', 'yes', 'yes', 'no'),
(32, 'naeem_anees', 'karoom_jamal', 'nice to meet you', '2023-04-28 21:51:28', 'yes', 'yes', 'no'),
(33, 'karoom_jamal', 'naeem_anees', 'Let\'s go together today ', '2023-04-28 21:52:32', 'no', 'no', 'no'),
(34, 'karoom_jamal', 'naeem_anees', 'i can find a nice place', '2023-04-28 21:52:58', 'no', 'no', 'no'),
(35, 'sara_omar', 'naeem_anees', 'hghvgv', '2023-05-11 08:10:32', 'yes', 'yes', 'no'),
(36, 'sara_omar', 'naeem_anees', 'xxx', '2023-05-15 17:55:00', 'yes', 'yes', 'no'),
(37, 'sara_omar', 'naeem_anees', 'o', '2023-05-15 18:19:50', 'yes', 'yes', 'no'),
(38, 'karoom_jamal', 'naeem_anees', 'try again', '2023-06-03 11:32:10', 'no', 'no', 'no'),
(39, 'omair_aghbar', 'naeem_anees', 'hi', '2023-06-03 11:33:16', 'yes', 'yes', 'no'),
(40, 'naeem_anees', 'omair_aghbar', 'hi', '2023-06-03 15:18:33', 'yes', 'no', 'no'),
(41, 'naeem_anees', 'omair_aghbar', 'how are you', '2023-06-03 15:18:44', 'yes', 'no', 'no'),
(42, 'naeem_anees', 'omair_aghbar', '?', '2023-06-03 15:18:50', 'yes', 'no', 'no'),
(43, 'naeem_anees', 'omair_aghbar', 'are you here', '2023-06-03 15:19:10', 'yes', 'no', 'no'),
(44, 'naeem_anees', 'omair_aghbar', 'hello', '2023-06-03 15:19:20', 'yes', 'no', 'no'),
(45, 'naeem_anees', 'omair_aghbar', '????????????', '2023-06-03 15:19:27', 'yes', 'no', 'no'),
(46, 'sara_omar', 'sara_omar', 'الارلابرلابءلالا', '2023-06-08 07:46:09', 'yes', 'yes', 'no'),
(47, 'sara_omar', 'sara_omar', 'd', '2023-06-25 13:41:48', 'yes', 'yes', 'no'),
(48, 'sara_omar', 'sara_omar', 'd', '2023-06-25 13:42:19', 'yes', 'yes', 'no'),
(49, 'lana_paul', 'omair_aghbar', 'hi Lana', '2023-06-26 21:25:10', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- بنية الجدول `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, '', 'naeem_anees', 'Naeem Anees liked your post', 'post.php?id=26', '2023-06-04 19:35:31', 'no', 'no'),
(2, 'sara_omar', 'naeem_anees', 'Naeem Anees commented on your post', 'post.php?id=26', '2023-06-04 19:35:43', 'yes', 'yes'),
(3, 'karoom_jamal', 'naeem_anees', 'Naeem Anees commented on a post you commented on', 'post.php?id=26', '2023-06-04 19:35:43', 'no', 'no'),
(4, 'naeem_anees', 'sara_omar', 'Sara Omar liked your post', 'post.php?id=104', '2023-06-09 19:42:57', 'no', 'yes'),
(5, 'naeem_anees', 'sara_omar', 'Sara Omar liked your post', 'post.php?id=103', '2023-06-09 19:43:01', 'no', 'yes'),
(6, 'sara_omar', 'naeem_anees', 'Naeem Anees liked your post', 'post.php?id=25', '2023-06-09 20:44:23', 'no', 'yes'),
(7, 'sara_omar', 'naeem_anees', 'Naeem Anees commented on your post', 'post.php?id=26', '2023-06-09 20:44:56', 'yes', 'yes'),
(8, 'karoom_jamal', 'naeem_anees', 'Naeem Anees commented on a post you commented on', 'post.php?id=26', '2023-06-09 20:44:56', 'no', 'no'),
(9, 'sara_omar', 'naeem_anees', 'Naeem Anees commented on your post', 'post.php?id=25', '2023-06-09 20:45:10', 'no', 'yes'),
(10, 'naeem_anees', 'omair_aghbar', 'Omair Aghbar commented on your post', 'post.php?id=104', '2023-06-09 20:45:43', 'no', 'no'),
(11, 'sara_omar', 'omair_aghbar', 'Omair Aghbar commented on your profile post', 'post.php?id=104', '2023-06-09 20:45:43', 'yes', 'yes'),
(12, 'naeem_anees', 'omair_aghbar', 'Omair Aghbar liked your post', 'post.php?id=104', '2023-06-09 20:45:47', 'no', 'no'),
(13, 'sara_omar', 'omair_aghbar', 'Omair Aghbar liked your post', 'post.php?id=26', '2023-06-09 20:45:52', 'yes', 'yes'),
(14, 'sara_omar', 'omair_aghbar', 'Omair Aghbar liked your post', 'post.php?id=25', '2023-06-09 20:45:55', 'no', 'yes'),
(15, 'sara_omar', 'omair_aghbar', 'Omair Aghbar liked your post', 'post.php?id=24', '2023-06-09 20:45:57', 'yes', 'yes'),
(16, 'sara_omar', 'omair_aghbar', 'Omair Aghbar liked your post', 'post.php?id=105', '2023-06-26 21:23:43', 'no', 'no'),
(17, 'sara_omar', 'omair_aghbar', 'Omair Aghbar commented on your post', 'post.php?id=105', '2023-06-26 21:23:50', 'no', 'no'),
(18, 'omair_aghbar', 'naeem_anees', 'Naeem Anees liked your post', 'post.php?id=111', '2023-06-29 15:35:04', 'no', 'no'),
(19, 'omair_aghbar', 'naeem_anees', 'Naeem Anees liked your post', 'post.php?id=110', '2023-06-29 15:35:06', 'no', 'no'),
(20, 'omair_aghbar', 'naeem_anees', 'Naeem Anees commented on your post', 'post.php?id=111', '2023-06-29 15:35:21', 'no', 'no'),
(21, 'omair_aghbar', 'naeem_anees', 'Naeem Anees liked your post', 'post.php?id=109', '2023-06-29 15:35:37', 'no', 'no'),
(22, 'omair_aghbar', 'naeem_anees', 'Naeem Anees commented on your post', 'post.php?id=109', '2023-06-29 15:36:12', 'no', 'no'),
(23, 'omair_aghbar', 'naeem_anees', 'Naeem Anees posted on your profile', 'post.php?id=117', '2023-07-05 10:28:02', 'no', 'no');

-- --------------------------------------------------------

--
-- بنية الجدول `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(7, 'مرحبا جميعا', 'omair_aghbar', 'none', '2022-12-01 12:38:53', 'no', 'no', 0, ''),
(8, 'say hi', 'naeem_anees', 'none', '2022-12-01 16:05:47', 'no', 'no', 0, ''),
(9, 'let you go\nI love you', 'naeem_anees', 'none', '2022-12-01 16:06:10', 'no', 'no', 0, ''),
(10, 'how are you baby ?', 'omair_aghbar', 'none', '2022-12-01 16:07:36', 'no', 'no', 0, ''),
(11, 'yes of course', 'omair_aghbar', 'none', '2022-12-01 16:09:41', 'no', 'no', 0, ''),
(15, 'jgnrngnnhg jgnrghrjkhkj kjgjhrjod', 'omair_aghbar', 'none', '2022-12-02 19:55:31', 'no', 'yes', 0, ''),
(22, 'Test only', 'omair_aghbar', 'none', '2023-03-08 21:51:57', 'no', 'no', 2, ''),
(24, 'Hi everybody', 'sara_omar', 'none', '2023-03-09 20:45:45', 'no', 'no', 4, ''),
(25, 'I love your code', 'sara_omar', 'none', '2023-03-11 15:59:25', 'no', 'no', 3, ''),
(26, 'good morning boys', 'sara_omar', 'none', '2023-03-12 07:00:54', 'no', 'no', 4, ''),
(72, 'say', 'naeem_anees', 'none', '2023-04-25 21:50:49', 'no', 'yes', 0, ''),
(73, 'f', 'naeem_anees', 'none', '2023-04-25 22:01:07', 'no', 'yes', 0, ''),
(74, 'try', 'naeem_anees', 'none', '2023-04-25 22:01:15', 'no', 'yes', 0, ''),
(75, 'hi sara', 'naeem_anees', 'sara_omar', '2023-04-25 22:02:21', 'no', 'yes', 0, ''),
(76, 'nothing now', 'naeem_anees', 'none', '2023-04-25 22:14:50', 'no', 'yes', 0, ''),
(77, 'one more time', 'naeem_anees', 'none', '2023-04-26 08:37:22', 'no', 'yes', 0, ''),
(78, 'Sara you are so close from me', 'naeem_anees', 'sara_omar', '2023-04-26 08:37:56', 'no', 'yes', 0, ''),
(88, '888', 'naeem_anees', 'none', '2023-04-26 09:48:37', 'no', 'yes', 0, ''),
(89, 'leeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 'naeem_anees', 'none', '2023-04-26 17:15:46', 'no', 'yes', 0, ''),
(90, 'leeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 'naeem_anees', 'none', '2023-04-26 17:15:52', 'no', 'yes', 0, ''),
(91, 'okjkjkjkjkjkjkjkjkjkjkjkjjk', 'naeem_anees', 'none', '2023-04-26 17:20:00', 'no', 'yes', 0, ''),
(92, 'okjkjkjkjkjkjkjkjkjkjkjkjjk', 'naeem_anees', 'none', '2023-04-26 17:20:04', 'no', 'yes', 0, ''),
(93, 'okjkjkjkjkjkjkjkjkjkjkjkjjk', 'naeem_anees', 'none', '2023-04-26 17:20:18', 'no', 'yes', 0, ''),
(94, 'tesrt', 'naeem_anees', 'none', '2023-04-26 17:30:47', 'no', 'yes', 0, ''),
(95, 'tesrt', 'naeem_anees', 'none', '2023-04-26 17:30:51', 'no', 'yes', 0, ''),
(96, 'test hhhhhhhhhhhhhhhhhhhhhhhhhh', 'naeem_anees', 'none', '2023-04-26 17:32:09', 'no', 'yes', 0, ''),
(97, 'بلبلبلبببيلبلبلبلللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللل', 'naeem_anees', 'none', '2023-04-26 18:18:31', 'no', 'yes', 0, ''),
(98, 'بلبلبلبببيلبلبلبلللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللللل', 'naeem_anees', 'none', '2023-04-26 18:27:31', 'no', 'yes', 0, ''),
(99, 'nice cat', 'naeem_anees', 'none', '2023-04-26 18:51:00', 'no', 'no', 0, ''),
(100, 'try again', 'naeem_anees', 'none', '2023-04-26 22:54:21', 'no', 'yes', 0, ''),
(101, 'I\'m afraid ', 'naeem_anees', 'none', '2023-04-27 16:48:40', 'no', 'no', 1, ''),
(102, 'hi', 'naeem_anees', 'lana_paul', '2023-04-28 14:10:15', 'no', 'no', 0, ''),
(103, 'please answer', 'naeem_anees', 'lana_paul', '2023-06-04 19:33:59', 'no', 'no', 1, ''),
(104, 'hi sara', 'naeem_anees', 'sara_omar', '2023-06-04 19:34:55', 'no', 'no', 3, ''),
(105, 'hi everybody', 'sara_omar', 'none', '2023-06-25 13:42:19', 'no', 'no', 1, ''),
(106, 'please accept my friendship request', 'omair_aghbar', 'lana_paul', '2023-06-26 21:24:46', 'no', 'yes', 0, ''),
(107, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/AknvSPj_68g&t=223s\'></iframe><br>', 'omair_aghbar', 'none', '2023-06-27 00:32:17', 'no', 'yes', 0, ''),
(108, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/AknvSPj_68g\'></iframe><br>', 'omair_aghbar', 'none', '2023-06-28 16:21:28', 'no', 'yes', 0, ''),
(109, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/2JYT5f2isg4\'></iframe><br>', 'omair_aghbar', 'none', '2023-06-28 16:22:33', 'no', 'no', 2, ''),
(110, 'Hello baby , I love you ', 'omair_aghbar', 'none', '2023-06-29 14:06:42', 'no', 'no', 1, ''),
(111, 'The life is journey ', 'omair_aghbar', 'none', '2023-06-29 15:33:07', 'no', 'no', 1, ''),
(112, 'hi aqeel accept my request', 'naeem_anees', 'aqeel_aghbar', '2023-06-29 15:38:13', 'no', 'no', 0, ''),
(113, 'gfghhhh', 'naeem_anees', 'none', '2023-06-29 23:46:19', 'no', 'no', 0, 'assets/images/posts/649ded9b51a54عدنان.jpg'),
(114, 'test only', 'naeem_anees', 'none', '2023-06-30 00:05:22', 'no', 'no', 0, 'assets/images/posts/649df2128dd24words.PNG'),
(115, 'hi', 'naeem_anees', 'none', '2023-07-02 09:36:40', 'no', 'no', 0, ''),
(116, 'night', 'naeem_anees', 'none', '2023-07-05 10:18:32', 'no', 'no', 0, 'assets/images/posts/64a51948267e5555.jpg'),
(117, 'hi', 'naeem_anees', 'omair_aghbar', '2023-07-05 10:28:02', 'no', 'no', 0, 'mk');

-- --------------------------------------------------------

--
-- بنية الجدول `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Hello', 1),
('Baby', 1),
('Love', 1),
('Life', 1),
('Journey', 1),
('Gfghhhh', 1),
('Test', 1),
('Hi', 2),
('Night', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(2, 'Lana', 'Paul', 'lana_paul', 'Adnanag@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-11-15', 'assets/images/profile_pics/defaults/head_sun_flower.png', 0, 0, 'no', ','),
(3, 'Omair', 'Aghbar', 'omair_aghbar', 'Omaer@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2022-11-16', 'assets/images/profile_pics/defaults/head_sun_flower.png', 19, 9, 'no', ',naeem_anees,sara_omar,'),
(4, 'Aqeel', 'Aghbar', 'aqeel_aghbar', 'Aqeel@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-11-16', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(5, 'Sara', 'Ahmed', 'sara_ahmed', 'Sara@hotmail.com', '25f9e794323b453885f5181f1b624d0b', '2022-11-16', 'assets/images/profile_pics/defaults/head_sun_flower.png', 0, 0, 'no', ','),
(6, 'Naeem', 'Anees', 'naeem_anees', 'Naeem@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-11-16', 'assets/images/profile_pics/naeem_aneesd5efb9e176fc69b4aee95af648b1ae8fn.jpeg', 47, 10, 'no', ',omair_aghbar,sara_omar,karoom_jamal,'),
(7, 'Sara', 'Omar', 'sara_omar', 'Sara@gmail.com', '55d7de14485ad7bd02bd6e48510726fd', '2023-03-09', 'assets/images/profile_pics/sara_omar389aa1f48575e6da3de1e8880e9bfcdan.jpeg', 19, 14, 'no', ',naeem_anees,karoom_jamal,karoom_jamal,omair_aghbar,'),
(8, 'Karoom', 'Jamal', 'karoom_jamal', 'Karoom@gmail.com', '55d7de14485ad7bd02bd6e48510726fd', '2023-04-23', 'assets/images/profile_pics/defaults/head_deep_blue.png', 6, 3, 'no', ',omair_aghbar,sara_omar,sara_omar,naeem_anees,'),
(9, 'Otba', 'Aghbar', 'otba_aghbar', 'Otba@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-06-26', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
