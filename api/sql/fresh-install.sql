-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 09, 2012 at 04:17 PM
-- Server version: 5.1.54
-- PHP Version: 5.3.7-ZS5.5.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `vkn`
--

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE IF NOT EXISTS `contents` (
  `contentId` enum('profile','work','skill') DEFAULT NULL,
  `value` text NOT NULL,
  `dateInserted` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`contentId`, `value`, `dateInserted`, `dateUpdated`) VALUES
('profile', '<h3>Hunter College (CUNY) - New York, NY</h3>\n<p class="date">Spring 2006 &ndash; Spring 2011</p>\n<p>Bachelors of Science in Computer Science, Minor in Mathematics</p>\n<h3>Manhattan Community College (CUNY) - New York, NY</h3>\n<p class="date">Fall 2003 &ndash; Fall 2005</p>\n<p>Associates of Science in Computer Science, Minor in Mathematics</p>\n<h3>Sullivan County Community College (SUNY) - Loch Sheldrake, NY</h3>\n<p class="date">Fall 2002 &ndash; Fall 2003</p>\n<p>Associates of Science in Engineering Science, Minor in Mathematics</p>', '0000-00-00 00:00:00', '2012-02-09 13:28:13'),
('work', '<h3><a href="http://www.globalworks.com" target="_blank">GlobalWorks Group LLC.</a>, New York, NY</h3>\n<p class="date">Back-End Software Engineer, 07/11 - Present, (Full-time)</p>\n<p>&bull; Enterprise Web Application Development in LAMP Stack<br />&bull; Fully customized Module/Extension Development using Magento Enterprise Edition for High Traffic web sites,<br />&bull; Zend Framework application development for enterprise-ready companies.<br />&bull; Microsoft C# .NET 3.5 &amp; 4.0 Development with SQL Server 2008 R2</p>\n<h3><a href="http://www.mybuilding.org" target="_blank">MyBuilding.org</a>, New York, NY</h3>\n<p class="date">Web Developer, 01/10 - 01/11, (Full-time)</p>\n<p>&bull; Contributed to MyBuilding v1.0 to standardize the overall software development process and engine <br /> &bull; Also provided performance tuning towards the admin/back-end development for allowance of high-traffic <br /> &bull; Code written has technical documentation and is scalable and maintainable code <br /> &bull; Worked alongside senior programmer to develop MyBuilding v2.0 which is currently in use by numerous building management companies, runs on Apache server, powered by Zend Framework, PHP 5.0 and jQuery</p>\n<h3>ForeScene Creative Solutions, New York, NY</h3>\n<p class="date">Web Developer, 06/08 - 12/09, (Full-time)</p>\n<p>&bull; Served as Senior Developer involved with all company projects <br /> &bull; Enhanced scope of responsibility with implementation of increasingly complex, high-traffic sites<br /> &bull; Provided support to associate developers for completion of time-sensitive deadlines<br /> &bull; Implemented direction for coordination of web design and programming solutions</p>\n<h3><a href="http://www.avatarnewyork.com" target="_blank">Avatar New York</a>, New York York, NY</h3>\n<p class="date">Web Developer, 04/07 - 05/08, (Full-time)</p>\n<p>&bull; Wrote, updated and maintained code as advised by client or Senior Developer <br />&bull; Operated in an individual and small team capacity (2 people) to deliver on time and error-free coding <br />&bull; Involved in design development and maintenance as a part of the web development team <br /> &bull; Responsible for communications with clients regarding internal and external projects</p>\n<h3><a href="http://www.liquidcomma.com" target="_blank">Liquid Comma Design</a>, New York, NY</h3>\n<p class="date">Web Developer, 01/07 - 04/07, (Full-time)</p>\n<p>&bull; Performed coding in HTML, CSS, XHTML and JavaScript for all client pages from PSD (Photoshop) files <br /> &bull; Worked individually on Company''s Internal Client Management Software <br /> &bull; Worked closely with designers to overcome design issues</p>\n<h3>RichDJ Web Services, New York, NY</h3>\n<p class="date">Associate Web Developer, 03/06 - 12/06, (Intern to Full-time)</p>\n<p>&bull; Advanced from intern to full time associate building sites among a team of developers <br />&bull; Social networking sites with My Space like features + ecommerce system <br />&bull; In house custom developed application powered by LAMP stack</p>', '0000-00-00 00:00:00', '2012-02-09 13:28:45'),
('skill', '<h3>LAMP development - (5+ years experience)</h3>\n<p>&bull; Expert knowledge of the full LAMP stack, OOP, and MVC design pattern <br />&bull; Version and source controlling using Subversion and CVS <br />&bull; JavaScript libraries implementations such as jQuery, Scriptalicious and YUI <br />&bull; Code writing on Emacs and/or Vi environment without Zend Studio or any text editors <br /> &bull; Strong experience in bug trackers JIRA and Mantis <br />&bull; Familiar Thorough knowledge of PHP Content Management Systems (eZPublish CMS and Drupal) <br />&bull; Proficient coding skills; Zend PHP Framework, Smarty Template Engine, Magento eCommerce customization <br />&bull; Strong knowledge in Web Services API&rsquo;s (Facebook, Twitter, StubHub, Vivid Seats etc.) <br />&bull; Solid understanding in Linux environment</p>\n<p>My GitHub repo: <a href="http://github.com/vknyvz" target="_blank">http://github.com/vknyvz</a> (full source code of this web site can be downloaded from there)</p>\n<h3>XHTML and Web 2.0 Proficiency &ndash;</h3>\n<p>&bull; Full comprehension of web browsers'' characteristics (IE9, IE8, IE7, IE6, Firefox3, Safari4, etc.) <br />&bull; Excellent knowledge level of Cascading Style Sheets</p>\n<h3>Operating Systems Expertise &ndash;</h3>\n<p>&bull; Command Line Linux (Specifically in Fedora Core and Ubuntu distributions) <br />&bull; Windows Server (200x) and Windows (9x, XP, Vista, 7)</p>\n<h3>Troubleshooting for Software and Hardware &ndash;</h3>\n<p>&bull; Reliability with solving any hardware or software issues in any Windows or Linux/Unix environment</p>', '0000-00-00 00:00:00', '2012-02-09 13:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `referrer` varchar(200) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '',
  `dateInserted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `priority` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(200) NOT NULL DEFAULT '',
  `userAgent` varchar(200) NOT NULL DEFAULT '',
  `info` mediumtext NOT NULL,
  `userId` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `referrer`, `message`, `dateInserted`, `priority`, `url`, `userAgent`, `info`, `userId`) VALUES
(1, 'http://www.vkn.com/admin/auth/login', 'ADMIN_LOGIN_REQUEST', '2012-02-07 17:17:35', 6, 'www.vkn.com/admin/auth/login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:10.0) Gecko/20100101 Firefox/10.0', 'Array\n(\n    [email] => vkn@vknyvz.com\n    [password] => 1\n    [remember] => 0\n)\n', 1),
(2, 'http://www.vkn.com/admin/auth/login', 'ADMIN_LOGIN_REQUEST', '2012-02-08 12:59:15', 6, 'www.vkn.com/admin/auth/login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:10.0) Gecko/20100101 Firefox/10.0', 'Array\n(\n    [email] => vkn@vknyvz.com\n    [password] => 1\n    [remember] => 0\n)\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `log_activity`
--

CREATE TABLE IF NOT EXISTS `log_activity` (
  `activityId` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userId` mediumint(9) NOT NULL,
  `module` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL,
  `permission` enum('PUBLIC','PRIVATE') NOT NULL DEFAULT 'PRIVATE',
  PRIMARY KEY (`activityId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `log_activity`
--

INSERT INTO `log_activity` (`activityId`, `userId`, `module`, `action`, `description`, `date`, `permission`) VALUES
(1, 1, 'auth', 'login', 'Logged in to Admin Panel', '2012-02-07 17:17:35', 'PRIVATE'),
(2, 1, 'auth', 'login', 'Logged in to Admin Panel', '2012-02-08 12:59:15', 'PRIVATE');

-- --------------------------------------------------------

--
-- Table structure for table `log_logins`
--

CREATE TABLE IF NOT EXISTS `log_logins` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userId` mediumint(8) DEFAULT NULL,
  `userType` enum('ADMIN','STANDARD','LIMITED') NOT NULL,
  `ip` varchar(20) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `log_logins`
--

INSERT INTO `log_logins` (`id`, `userId`, `userType`, `ip`, `dateInserted`) VALUES
(1, 1, 'ADMIN', '127.0.0.1', '2012-02-07 17:02:35'),
(2, 1, 'ADMIN', '127.0.0.1', '2012-02-08 12:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE IF NOT EXISTS `portfolio` (
  `portfolioId` int(11) NOT NULL AUTO_INCREMENT,
  `portfolioName` varchar(150) NOT NULL,
  `portfolioWWW` varchar(150) NOT NULL,
  `portfolioImage` varchar(25) NOT NULL,
  `order` tinyint(4) NOT NULL,
  `portfolioDescription` text NOT NULL,
  PRIMARY KEY (`portfolioId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`portfolioId`, `portfolioName`, `portfolioWWW`, `portfolioImage`, `order`, `portfolioDescription`) VALUES
(1, 'MyBuilding v1.0', '', 'mybuilding1.png', 1, '<br><br>\r\nMyBuilding is a propertiery application for residential properties.\r\n<br>\r\nMyBuilding.org is an online service for residential properties that offers a suite of tools to streamline traditional property management activities \r\nthrough a simple and modern online based service.<br>\r\n<br>\r\n<b>Built using Custom Scripting</b>'),
(2, 'MyBuilding v2.0', '', 'mybuilding2.png', 2, '<br><br>\r\nMyBuilding is a propertiery application for residential properties.\r\n<br>\r\nMyBuilding.org is an online service for residential properties that offers a suite of tools to streamline traditional property management activities \r\nthrough a simple and modern online based service.<br>\r\n<br>\r\n<b>Built using Zend Framework</b>'),
(3, 'Privco', 'www.privco.com', 'privco.png', 3, '<br><br>\r\nPrivco<br>\r\nThe Private Company Financial Data Authority <br>\r\n<br>\r\n<b>Built using Zend Framework</b>'),
(4, 'Eat Italian ', 'www.eatitalian.com', 'ea.png', 4, '<br><br>\r\nEat Italian<br>\r\nThe Online Community For Italian Food Lovers! <br>\r\n<br>\r\n<b>Built using partially in Zend Framework and rest in Drupal</b>'),
(6, 'Rony Tennenbaum Online Store', 'www.hudsongroveandco.com', 'ronystore.png', 18, '<br><br>\r\nRony Tennenbaum Online Store<br>\r\n <br>\r\n<br>\r\n<b>Built using Magento</b>'),
(7, '4 Stroke Jeans', 'www.4strokejeans.com', '4stroke.png', 17, '<br><br>\r\n4 Stroke Jeans Store<br>\r\n <br>\r\n<br>\r\n<b>Built using Magento</b>'),
(8, 'Elegant Gift Gallery ', 'www.elegantgiftgallery.net', 'elegantfig.png', 16, '<br><br>\r\nElegant Gift Gallery <br>\r\n <br>\r\n<br>\r\n<b>Built using Magento</b>'),
(9, 'Happy Turn Jewelry Store ', 'www.happyturnofny.com', 'happyturn.png', 15, '<br><br>\r\nHappy Turn Jewelry Store <br>\r\n <br>\r\n<br>\r\n<b>Built using Magento</b>'),
(10, '1200 Dreams ', 'www.1200dreams.com', '1200.png', 20, '<br><br>\r\n1200 Dreams <br>\r\n <br>\r\n<br>\r\n<b>Built using Social Engine</b>'),
(11, 'Books Fix ', 'www.booksfix.com', 'booksfix.png', 19, '<br><br>\r\nBooksfix <br>\r\n <br>\r\n<br>\r\n<b>Built using Social Engine</b>'),
(12, 'American Payroll Association', 'www.americanpayroll.org', 'apa.png', 10, '<br><br>\r\nAmerican Payroll Association<br>\r\nPayroll Education, Payroll Training, Certification and Payroll Compliance News. <br>\r\n<br>\r\n<b>Built using AvatarVantage</b> (Site Supra System)\r\n'),
(13, 'Sales Conx Inc ', 'www.salesconx.com', 'salesconx.png', 11, '<br><br>\r\nSales Conx Inc.<br>\r\nSalesconx leverages its network of sales experts to deliver rapid and relevant results. <br>\r\n<br>\r\n<b>Built using Custom Scripting</b>'),
(14, 'Vision Point Traning Solutions  ', 'www.visionpoint.com', 'vp.png', 13, '<br><br>\r\nVisionPoint Training Solutions<br>\r\n<br>\r\n<br>\r\n<b>Built using Custom Scripting</b>'),
(15, 'ForeScene Creative Solutions ', 'www.foresceneweb.com', 'fscs.png', 5, '<br><br>\r\nForeScene Creative Solutions, Inc.<br>\r\nWeb design agency <br>\r\n<br>\r\n<b>Built using Wordpress</b>'),
(16, 'Rony Tennenbaum ', 'www.ronytennenbaum.com', 'rony.png', 12, '<br><br>\r\nRony Tennenbaum <br>\r\n <br>\r\n<br>\r\n<b>Built using Wordpress</b>'),
(17, 'Apricot and Ivy', 'www.apricotandivy.com', 'apircot.png', 6, '<br><br>\r\nApricot and Ivy<br>\r\nEco Friendly Toys, Green Toys and Safe Toys for Toddlers and Children <br>\r\nOnline children toy store \r\n<br><br>\r\n<b>Built using Drupal</b>'),
(18, 'Twisted Throttle, LLC.', 'www.twistedthrottle.com ', 'tt.png', 9, '<br><br>\r\nTwisted Throttle, LLC.<br>\r\nSport and Adventure Touring Equipment Store \r\n<br><br>\r\n<b>Built using EZ-Publish</b>'),
(19, 'Bullseye Tattoos ', 'www.bullseyetattoos.com', 'tattoo.png', 14, ''),
(20, 'New York Water Taxi ', 'www.nywatertaxi.com', 'ny.png', 8, '<br><br>\r\nNew York Water Taxi<br>\r\n<br>\r\n<b>Built using AvatarVantage</b> (Site Supra System)\r\n'),
(21, 'Van Wagner Communications LLC.', 'www.vanwagner.com', 'van.png', 7, '<br><br>\r\nVan Wagner Outdoor Advertising<br>\r\nLargest outdoor advertising company in the US <br>\r\n<br>\r\n<b>Built using AvatarVantage</b> (Site Supra System)\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `sessionId` char(32) NOT NULL DEFAULT '',
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`sessionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sessionId`, `modified`, `lifetime`, `data`) VALUES
('ug627k6dege0pm28elf22liml0', 1328655566, 1209600, 'CsrfError|a:1:{s:7:"message";s:65:"Form gÃ¼venli bir ÅŸekilde gÃ¶nderilmedi, lÃ¼tfen yeniden deneyin";}Zend_Auth|a:1:{s:7:"storage";a:16:{s:6:"userId";s:1:"1";s:5:"email";s:14:"vkn@vknyvz.com";s:9:"firstName";s:6:"Volkan";s:8:"lastName";s:5:"Yavuz";s:11:"companyName";s:6:"Google";s:14:"mailingAddress";s:14:"220 5th avenue";s:5:"phone";s:10:"6463717023";s:4:"city";s:8:"New York";s:5:"state";s:2:"NY";s:3:"zip";s:5:"10031";s:8:"password";s:32:"c4ca4238a0b923820dcc509a6f75849b";s:6:"active";s:1:"Y";s:12:"dateInserted";s:19:"0000-00-00 00:00:00";s:11:"dateUpdated";s:19:"2011-09-24 14:17:17";s:9:"lastLogin";s:19:"2011-09-24 14:17:17";s:4:"type";s:5:"ADMIN";}}CsrfProtect|a:1:{s:3:"key";s:40:"60003d2dbfde37f1b147c48c64eb5ef2816804e7";}__ZF|a:1:{s:11:"CsrfProtect";a:1:{s:3:"ENT";i:1328655626;}}'),
('4n87vcmr2b27ms3r8a2a73rl95', 1328820629, 1209600, 'CsrfError|a:1:{s:7:"message";N;}Zend_Auth|a:1:{s:7:"storage";a:16:{s:6:"userId";s:1:"1";s:5:"email";s:14:"vkn@vknyvz.com";s:9:"firstName";s:6:"Volkan";s:8:"lastName";s:5:"Yavuz";s:11:"companyName";s:6:"Google";s:14:"mailingAddress";s:14:"220 5th avenue";s:5:"phone";s:10:"6463717023";s:4:"city";s:8:"New York";s:5:"state";s:2:"NY";s:3:"zip";s:5:"10031";s:8:"password";s:32:"c4ca4238a0b923820dcc509a6f75849b";s:6:"active";s:1:"Y";s:12:"dateInserted";s:19:"0000-00-00 00:00:00";s:11:"dateUpdated";s:19:"2012-02-07 17:17:35";s:9:"lastLogin";s:19:"2012-02-07 17:17:35";s:4:"type";s:5:"ADMIN";}}CsrfProtect|a:1:{s:3:"key";s:40:"847785f6be9a581e09f485f7bee34f0e15c2858f";}__ZF|a:1:{s:11:"CsrfProtect";a:1:{s:3:"ENT";i:1328820689;}}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userId` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `companyName` varchar(25) NOT NULL,
  `mailingAddress` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `zip` mediumint(5) DEFAULT NULL,
  `password` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `active` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `dateInserted` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `lastLogin` datetime NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `email`, `firstName`, `lastName`, `companyName`, `mailingAddress`, `phone`, `city`, `state`, `zip`, `password`, `active`, `dateInserted`, `dateUpdated`, `lastLogin`) VALUES
(1, 'vkn@vknyvz.com', 'Volkan', 'Yavuz', 'Google', '220 5th avenue', '6463717023', 'New York', 'NY', 10031, 'c4ca4238a0b923820dcc509a6f75849b', 'Y', '0000-00-00 00:00:00', '2012-02-08 12:59:15', '2012-02-08 12:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `users_admins`
--

CREATE TABLE IF NOT EXISTS `users_admins` (
  `userId` mediumint(8) unsigned NOT NULL,
  `level` enum('ADMIN','STANDARD','LIMITED') NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_admins`
--

INSERT INTO `users_admins` (`userId`, `level`) VALUES
(1, 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `users_tokens`
--

CREATE TABLE IF NOT EXISTS `users_tokens` (
  `tokenId` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userId` mediumint(8) unsigned NOT NULL,
  `token` varchar(50) NOT NULL,
  `dateInserted` datetime NOT NULL,
  PRIMARY KEY (`tokenId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `users_tokens`
--

