-- phpMyAdmin SQL Dump Phú
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2015 at 05:24 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `postID` int(11) NOT NULL,
  `commentID` int(11) NOT NULL,
  `commentDesc` varchar(500) NOT NULL,
  `commentAuthor` varchar(500) NOT NULL,
  `commentTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`postID`, `commentID`, `commentDesc`, `commentAuthor`, `commentTime`) VALUES
(2, 3, 'yuppy', 'qt', '2015-08-22 12:36:50'),
(2, 4, 'nice :-)', 'qt', '2015-08-22 12:36:59'),
(2, 5, 'nice op you are great !!', 'qt', '2015-08-22 12:37:21'),
(6, 7, 'nice :P', 'qt', '2015-08-22 12:41:19'),
(6, 8, 'cuteee :P', 'qt', '2015-08-22 12:55:13'),
(6, 9, 'Very good line The college has well-established Central Learning resource centers like Central library, Central Computer Centre, Entrepreneurship Development Cell, Continuing Education Centre and Physical Education Section. The college also has a very active Training & Placement section. ', 'qt', '2015-08-22 13:05:11'),
(6, 10, 'My comment', 'qt', '2015-08-22 13:14:45'),
(6, 11, '          Really appriciable _/\\_', 'rtkasodariya', '2015-08-22 13:17:38'),
(0, 12, 'dklvn', 'qt', '2015-08-22 13:34:42'),
(6, 13, '          test comment', 'rtkasodariya', '2015-08-23 08:10:05'),
(6, 14, '          opps', 'rtkasodariya', '2015-08-23 16:30:09'),
(6, 15, '          I am witness', 'qt', '2015-08-30 13:36:24'),
(7, 16, '    Thanks', 'qt', '2015-09-02 08:00:32'),
(7, 17, '          Nice Explanation :-)', 'rtkasodariya', '2015-09-02 08:01:13'),
(2, 18, '          Very well... Good start..', 'rtkasodariya', '2015-09-02 08:05:22');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `time`) VALUES
(1, ' rtkasodariya', 'kasodariyarajan@gmail.com', 'dfvd', '2015-09-06 20:03:55'),
(2, ' spy_007', 'yashgolechha@ymail.com', 'popat', '2015-09-06 20:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `postID` int(11) NOT NULL,
  `postTitle` varchar(200) NOT NULL,
  `postDesc` varchar(10000) NOT NULL,
  `postTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `postTag` varchar(40) NOT NULL,
  `postAuthor` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postID`, `postTitle`, `postDesc`, `postTime`, `postTag`, `postAuthor`) VALUES
(2, 'op', 'op', '2015-08-12 09:51:46', 'dp', 'sai'),
(5, 'Hello', '<p>Recently I made one&nbsp;one blog expcode.wordpress.com. <img alt="enlightened" src="http://localhost/Blog/ckeditor/plugins/smiley/images/lightbulb.png" style="height:23px; width:23px" title="enlightened" /></p>\r\n\r\n<p>Follow and contribute . <img alt="blush" src="http://localhost/Blog/ckeditor/plugins/smiley/images/embarrassed_smile.png" style="height:23px; width:23px" title="blush" /></p>\r\n\r\n<p>Thanks</p>\r\n', '2015-08-21 14:24:13', 'blog', 'expcode'),
(6, 'ACM NIT Surat', '<p>Sardar Vallabhbhai National Institute Of Technology, Surat is one of the 17 Regional Engineering Colleges that were established as joint venture of the Government of India and the Government of Gujarat. It was established in June 1961 with facilities to run Bachelor&#39;s Degree Programmes in Civil, Electrical and Mechanical Engineering disciplines. It is now changed to National Institute of Technology along with other RECs.&nbsp;<br />\r\n<br />\r\nThe college has now been given the status of Deemed University.&nbsp;<br />\r\n<br />\r\nThe college has well-established Central Learning resource centers like Central library, Central Computer Centre, Entrepreneurship Development Cell, Continuing Education Centre and Physical Education Section. The college also has a very active Training &amp; Placement section.&nbsp;<br />\r\n<br />\r\nThe college has a campus of its own, spread over 100 hectares of land on the Surat-Dumas Highway. The college is progressing with the construction of the buildings of the academic sector. The college is having in all seven hostels, six for boys &amp; one for girls students, accommodating 990 students. The total of 191 units of staff quarters for different categories have been built on the campus. The college has a Canteen, a Students Store, a Dispensary, a Guest House, a Post Office, a branch of the State Bank of India and play ground for some of the major games, viz. Football, Basketball, Volleyball and Cricket.</p>\r\n', '2015-08-22 09:55:25', 'acm', 'qt'),
(7, 'GIVEN', '<p><strong>Problem Statement :&nbsp;</strong><br />\r\nGiven an array of stock prices for each day. We need to find out maximum profit that can be earned by one transaction (Buy and sell only one time).<br />\r\n<strong>Example :&nbsp;</strong><br />\r\nTake an example Stock Prices :&nbsp;<strong>100 &ndash; &nbsp;80 &ndash; 120 &ndash; 130 &ndash; 70 &nbsp;&ndash; 60 &nbsp;&ndash; &nbsp;100 &nbsp;&ndash; &nbsp;125.</strong><br />\r\nSo Buy stock at Rs.&nbsp;<strong>60</strong>&nbsp;and sell it at&nbsp;<strong>125</strong>. Maximum profit is&nbsp;<strong>65</strong>.</p>\r\n\r\n<p><strong>1. Naive Approach :&nbsp;</strong><br />\r\nNaive approach tooks time complexity O(n<sup>2</sup>). In this method buy stock at&nbsp;<strong>i</strong>&nbsp;th day and then check for all&nbsp;<strong>i</strong>&nbsp;to&nbsp;<strong>n</strong>&nbsp;day for maximum stock value.</p>\r\n\r\n<p><strong>Algorithm :</strong></p>\r\n\r\n<p>Function : FindMaximumProfit( StockPrices , N )</p>\r\n\r\n<ol>\r\n	<li>max_profit = -&prop;</li>\r\n	<li>for i = 1 to N</li>\r\n	<li>&nbsp; &nbsp; &nbsp;for j=i to N</li>\r\n	<li>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;max_profit = max( max_profit , a[ j ] &nbsp;&ndash; a[ i ] )</li>\r\n</ol>\r\n\r\n<p><strong>2. Dynamic programming Approach.</strong></p>\r\n\r\n<p style="text-align: center;"><a href="data:image/jpeg;base64,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"><img alt="Stock - Buy and Sell" src="https://expcode.files.wordpress.com/2015/08/stock-buy-and-sell1.png?w=620" /></a><br />\r\nThink about each selling possibility. We must sell between day&nbsp;<strong>1</strong>&nbsp;to day&nbsp;<strong>N</strong>. So if we are selling stock at&nbsp;<strong>i</strong>th day we must have bought it when it has lowest prize between days&nbsp;<strong>1</strong>&nbsp;to&nbsp;<strong>i</strong>&nbsp;. Let&rsquo;s think about 3rd day. So assume we are Selling our stock on 3rd day. So we must have bought it between day 1 to day 3 whenever price was lowest. Here lowest is 80 from day 1 to 3. So if we sell Stock on day 3 we can get maximim profit 40.</p>\r\n\r\n<p>This can be stated as below.<br />\r\nMaximim profit if we sell stock on ith day.<br />\r\nMax_profit = StockPrice on&nbsp;<strong>i</strong><sup>th</sup>&nbsp;day(selling price) &ndash; &nbsp;minimum price between day 1 to day i (buying price)</p>\r\n\r\n<p><strong>Algorithm :&nbsp;</strong></p>\r\n\r\n<ol>\r\n	<li>min_buying_price =&nbsp;&prop;</li>\r\n	<li>max_profit &nbsp;= &ndash;&nbsp;&prop;</li>\r\n	<li>for i= 1 to N</li>\r\n	<li>&nbsp; &nbsp; &nbsp;min_buying_price = min( min_buying_price , a[ i ] )</li>\r\n	<li>&nbsp; &nbsp; &nbsp;benifit_if_sell_today &nbsp;= &nbsp;a[ i ] &ndash; min_buying_price</li>\r\n	<li>&nbsp; &nbsp; &nbsp;max_benifit = max(benifit_if_sell_today , max_benifit &nbsp;)</li>\r\n</ol>\r\n\r\n<p><strong>Implementation :&nbsp;</strong></p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>1</p>\r\n\r\n			<p>2</p>\r\n\r\n			<p>3</p>\r\n\r\n			<p>4</p>\r\n\r\n			<p>5</p>\r\n\r\n			<p>6</p>\r\n\r\n			<p>7</p>\r\n\r\n			<p>8</p>\r\n\r\n			<p>9</p>\r\n\r\n			<p>10</p>\r\n\r\n			<p>11</p>\r\n\r\n			<p>12</p>\r\n\r\n			<p>13</p>\r\n\r\n			<p>14</p>\r\n			</td>\r\n			<td>\r\n			<p><code>int</code> <code>findMaximumProfit(</code><code>int</code> <code>a[] , </code><code>int</code> <code>n) {</code></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>int</code> <code>MIN=INT_MAX;</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>int</code> <code>benifit , max_benifit=INT_MIN;</code></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>for</code><code>(</code><code>int</code> <code>i=0;i</code></p>\r\n\r\n			<p><code><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>MIN = min(MIN , a[i]);</code></code></p>\r\n\r\n			<p><code><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>benifit=a[i] - MIN;</code></code></p>\r\n\r\n			<p><code><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>max_benifit=max(benifit , max_benifit);</code></code></p>\r\n\r\n			<p><code>&nbsp;</code></p>\r\n\r\n			<p><code><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>}</code></code></p>\r\n\r\n			<p><code>&nbsp;</code></p>\r\n\r\n			<p><code><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>return</code> <code>max_benifit;</code></code></p>\r\n\r\n			<p><code><code>}</code></code></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2015-09-06 15:08:35', 'DP', 'qt'),
(16, 'qt1', '<p>qt2</p>\r\n', '2015-09-06 13:44:27', 'qt3', 'qt');

-- --------------------------------------------------------

--
-- Table structure for table `posts_buffer`
--

CREATE TABLE IF NOT EXISTS `posts_buffer` (
  `postID` int(11) NOT NULL,
  `postTitle` varchar(100) NOT NULL,
  `postDesc` varchar(5000) NOT NULL,
  `postTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `postTag` varchar(20) NOT NULL,
  `postAuthor` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `emailid` varchar(40) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usertype` varchar(50) NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `password`, `emailid`, `createdon`, `usertype`) VALUES
(1, 'qt', 'Rajan Kasodariya', 'qt', 'qt@gmail.com', '2015-08-19 12:57:02', 'normal'),
(2, 'rtkasodariya', 'Rajan', '123', '123@gmail.com', '2015-08-12 18:00:05', 'normal'),
(5, 'expcode', 'Expert Code', 'rajan', 'expcode@gmail.com', '2015-08-21 14:01:26', 'normal'),
(6, 'admin', 'admin', 'admin', 'admin@admin.com', '2015-08-22 13:34:00', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users_buffer`
--

CREATE TABLE IF NOT EXISTS `users_buffer` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `emailid` varchar(40) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usertype` varchar(20) NOT NULL DEFAULT 'nornal'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_post`
--

CREATE TABLE IF NOT EXISTS `user_post` (
  `postAuthor` varchar(40) NOT NULL,
  `postID` int(11) NOT NULL,
  `postLikes` int(11) NOT NULL DEFAULT '0',
  `postDisLikes` int(11) NOT NULL,
  `postComments` int(11) NOT NULL DEFAULT '0',
  `postViews` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='User and Post relation Table';

--
-- Dumping data for table `user_post`
--

INSERT INTO `user_post` (`postAuthor`, `postID`, `postLikes`, `postDisLikes`, `postComments`, `postViews`) VALUES
('qt', 1, 4, 0, 0, 20),
('sai', 2, 0, 0, 0, 7),
('expcode', 5, 0, 0, 0, 48),
('qt', 6, 0, 0, 0, 127),
('qt', 7, 0, 0, 0, 10),
('qt', 16, 0, 0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD UNIQUE KEY `commentID` (`commentID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postID`),
  ADD UNIQUE KEY `postTitle` (`postTitle`);

--
-- Indexes for table `posts_buffer`
--
ALTER TABLE `posts_buffer`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_buffer`
--
ALTER TABLE `users_buffer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`emailid`);

--
-- Indexes for table `user_post`
--
ALTER TABLE `user_post`
  ADD PRIMARY KEY (`postID`),
  ADD UNIQUE KEY `postID` (`postID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `posts_buffer`
--
ALTER TABLE `posts_buffer`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users_buffer`
--
ALTER TABLE `users_buffer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
