-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-08-02 12:04:42
-- 服务器版本： 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci`
--

-- --------------------------------------------------------

--
-- 表的结构 `ci_auth_group`
--

CREATE TABLE `ci_auth_group` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` char(100) NOT NULL DEFAULT '' COMMENT '角色名称（用户组中文名称）',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` text NOT NULL,
  `add_time` datetime NOT NULL COMMENT '添加时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `remark` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ci_auth_group`
--

INSERT INTO `ci_auth_group` (`id`, `title`, `status`, `rules`, `add_time`, `update_time`, `remark`) VALUES
(1, '超级管理员', 1, '1,109,140,175,173,174,176,154,170,171,172,166,167,168,169,155,163,164,165,156,157,158,159,33,105,43,108,116,103,117,110,118,35,45,119,120,161,28,2,44,115,111,29', '2017-02-10 14:40:53', '2017-06-05 18:41:08', ''),
(2, '管理员', 1, '1,109,140,154,155,156,157,158,159,33,105,103,35,28,2,44,115,111,29', '2017-02-10 15:13:33', '2017-05-15 16:27:39', '');

-- --------------------------------------------------------

--
-- 表的结构 `ci_auth_group_access`
--

CREATE TABLE `ci_auth_group_access` (
  `uid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ci_auth_group_access`
--

INSERT INTO `ci_auth_group_access` (`uid`, `group_id`) VALUES
(1, 1),
(27, 35),
(28, 35),
(29, 35),
(30, 35),
(31, 35),
(33, 35),
(34, 35),
(35, 35),
(36, 35),
(37, 35),
(39, 35),
(42, 35),
(43, 35),
(44, 35),
(47, 35),
(50, 35),
(51, 35),
(52, 35),
(53, 35),
(54, 35),
(55, 35),
(56, 35),
(57, 35),
(58, 35),
(59, 35),
(60, 35),
(61, 35),
(62, 35),
(63, 35),
(64, 35),
(65, 35),
(66, 35),
(67, 35),
(68, 35),
(69, 35),
(70, 35),
(71, 35),
(72, 35),
(74, 35),
(75, 35),
(76, 35),
(77, 35),
(78, 35),
(79, 35),
(80, 35),
(81, 35),
(83, 35),
(84, 35),
(85, 35),
(86, 35),
(87, 35),
(88, 35),
(89, 35),
(90, 35),
(91, 35),
(92, 35),
(93, 35),
(94, 35),
(95, 35),
(96, 35),
(97, 35),
(98, 35),
(99, 35),
(100, 35),
(101, 35),
(102, 35),
(103, 35),
(104, 35),
(105, 35),
(106, 35),
(107, 35),
(108, 35),
(109, 35),
(110, 35),
(111, 35),
(112, 35),
(113, 35),
(114, 35),
(115, 35),
(116, 35),
(117, 35),
(118, 35),
(119, 35),
(120, 35),
(121, 35),
(122, 35),
(123, 35),
(124, 35),
(125, 35),
(126, 35),
(127, 35),
(128, 35),
(129, 35),
(130, 35),
(131, 35),
(132, 35),
(133, 35),
(134, 35),
(135, 35),
(136, 35),
(137, 35),
(138, 35),
(139, 35),
(140, 35),
(141, 35),
(142, 35),
(143, 35),
(144, 35),
(146, 35),
(147, 35),
(148, 35),
(149, 35),
(150, 35),
(151, 35),
(152, 35),
(153, 35),
(154, 35),
(155, 35),
(156, 35),
(157, 35),
(158, 35),
(159, 35),
(160, 35),
(161, 35),
(162, 35),
(163, 35),
(164, 35),
(165, 35),
(166, 35),
(167, 35),
(168, 35),
(169, 35),
(170, 35),
(171, 35),
(172, 35),
(173, 35),
(174, 35),
(175, 35),
(176, 35),
(177, 35),
(178, 35),
(179, 35),
(180, 35),
(181, 35),
(182, 1),
(182, 35),
(184, 35),
(185, 35),
(187, 35),
(188, 35),
(190, 35),
(192, 35),
(194, 35),
(195, 35),
(196, 35),
(197, 2);

-- --------------------------------------------------------

--
-- 表的结构 `ci_auth_rule`
--

CREATE TABLE `ci_auth_rule` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL,
  `name` char(100) NOT NULL DEFAULT '' COMMENT '规则名（Controller/method）',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '权限名',
  `icon` varchar(255) NOT NULL COMMENT '图标',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1-正常 0-禁用',
  `is_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示 1-是 0-否',
  `condition` char(100) NOT NULL DEFAULT '',
  `o` int(11) NOT NULL COMMENT '排序',
  `is_menu` int(11) NOT NULL DEFAULT '1' COMMENT '是否菜单 1-是 0-否'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ci_auth_rule`
--

INSERT INTO `ci_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `type`, `status`, `is_show`, `condition`, `o`, `is_menu`) VALUES
(1, 0, '', '首页', 'fa fa-home', 1, 1, 1, '', 0, 1),
(2, 28, 'Menu/index', '菜单管理', 'fa fa-circle-o', 1, 1, 1, '', 1, 1),
(119, 35, 'User/edit', '编辑用户', '', 1, 1, 1, '', 2, 0),
(33, 0, '', '权限管理', 'fa fa-lock', 1, 1, 1, '', 5, 1),
(29, 28, 'Database/index', '数据库备份', 'fa fa-circle-o', 1, 1, 0, '', 2, 1),
(28, 0, '', '系统设置', 'fa  fa-cog', 1, 1, 1, '', 6, 1),
(105, 33, 'Role/index', '角色管理', 'fa fa-circle-o', 1, 1, 1, '', 1, 1),
(35, 33, 'User/index', '用户管理', 'fa fa-circle-o', 1, 1, 1, '', 3, 1),
(103, 33, 'Rule/index', '规则管理', 'fa fa-circle-o', 1, 1, 1, '', 2, 1),
(110, 103, 'Rule/edit', '编辑规则', '', 1, 1, 1, '', 2, 0),
(115, 2, 'Menu/edit', '编辑菜单', '', 1, 1, 1, '', 2, 0),
(108, 105, 'Role/edit', '编辑角色', '', 1, 1, 1, '', 2, 0),
(43, 105, 'Role/add', '添加角色', '', 1, 1, 1, '', 1, 0),
(44, 2, 'Menu/add', '添加菜单', '', 1, 1, 1, '', 1, 0),
(45, 35, 'User/add', '添加用户', '', 1, 1, 1, '', 1, 0),
(118, 103, 'Rule/del', '删除规则', '', 1, 1, 1, '', 3, 0),
(117, 103, 'Rule/add', '添加规则', '', 1, 1, 1, '', 1, 0),
(109, 1, 'Home/index', '首页统计', 'fa fa-circle-o', 1, 1, 1, '', 1, 1),
(111, 2, 'Menu/del', '删除菜单', '', 1, 1, 1, '', 3, 0),
(116, 105, 'Role/del', '删除角色', '', 1, 1, 1, '', 3, 0),
(120, 35, 'User/del', '删除用户', '', 1, 1, 1, '', 3, 0),
(140, 1, 'Log/index', '日志内容', 'fa fa-circle-o', 1, 1, 1, '', 2, 1),
(161, 35, 'User/status', '修改状态', '', 1, 1, 1, '', 4, 0),
(175, 1, 'Setting/index', '修改密码', 'fa fa-circle-o', 1, 1, 1, '', 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ci_department`
--

CREATE TABLE `ci_department` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(255) NOT NULL COMMENT '部门名称',
  `remark` text NOT NULL COMMENT '备注',
  `deptno` int(11) NOT NULL COMMENT '部门编号'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='部门表';

--
-- 转存表中的数据 `ci_department`
--

INSERT INTO `ci_department` (`id`, `dept_name`, `remark`, `deptno`) VALUES
(1, '管理团队', '', 0),
(2, '事业部', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ci_group`
--

CREATE TABLE `ci_group` (
  `id` int(11) NOT NULL,
  `title` char(100) NOT NULL COMMENT '组名',
  `assess_num` int(11) NOT NULL COMMENT '评价 互评数',
  `remark` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='跨部门分组表';

--
-- 转存表中的数据 `ci_group`
--

INSERT INTO `ci_group` (`id`, `title`, `assess_num`, `remark`) VALUES
(1, '一组', 8, ''),
(2, '二组', 8, ''),
(3, '三组', 8, ''),
(4, '四组', 8, ''),
(5, '五组', 8, ''),
(17, '六组', 8, '');

-- --------------------------------------------------------

--
-- 表的结构 `ci_log`
--

CREATE TABLE `ci_log` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `log` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ci_user`
--

CREATE TABLE `ci_user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `gid` int(11) NOT NULL DEFAULT '0' COMMENT '分组id',
  `department_id` int(11) NOT NULL COMMENT '部门id',
  `position` varchar(250) NOT NULL COMMENT '职位',
  `entry_date` date NOT NULL COMMENT '入职日期',
  `phone` varchar(30) NOT NULL DEFAULT '' COMMENT '联系电话',
  `email` varchar(30) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `login_time` datetime DEFAULT NULL COMMENT '最近登陆时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态：0-启用，1-禁用',
  `identifier` varchar(32) NOT NULL,
  `token` varchar(32) NOT NULL,
  `timeout` int(11) NOT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除 0-否 1-是'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员';

--
-- 转存表中的数据 `ci_user`
--

INSERT INTO `ci_user` (`id`, `username`, `name`, `password`, `gid`, `department_id`, `position`, `entry_date`, `phone`, `email`, `create_time`, `login_time`, `status`, `identifier`, `token`, `timeout`, `is_delete`) VALUES
(1, 'admin', 'admin', '87d6011ac290001e3037197c5bede68b', 0, 0, '', '2016-04-07', '', '', '2016-09-20 17:37:09', '2017-08-02 18:02:17', 0, 'e739586bcd724dd8653214562df81972', '503222609544b325e66c47ae54082fdf', 1502272937, 0),
(197, 'test', 'test', '87d6011ac290001e3037197c5bede68b', 0, 0, '', '0000-00-00', '', '', '2017-08-02 17:18:34', '2017-08-02 17:19:14', 0, '414063df9742172d7fa5fee808cf0c63', 'bda350372a2deae60edc52ae9fafc608', 1502270354, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_auth_group`
--
ALTER TABLE `ci_auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_auth_group_access`
--
ALTER TABLE `ci_auth_group_access`
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `ci_auth_rule`
--
ALTER TABLE `ci_auth_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_department`
--
ALTER TABLE `ci_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_group`
--
ALTER TABLE `ci_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_log`
--
ALTER TABLE `ci_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_user`
--
ALTER TABLE `ci_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `ci_auth_group`
--
ALTER TABLE `ci_auth_group`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- 使用表AUTO_INCREMENT `ci_auth_rule`
--
ALTER TABLE `ci_auth_rule`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;
--
-- 使用表AUTO_INCREMENT `ci_department`
--
ALTER TABLE `ci_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- 使用表AUTO_INCREMENT `ci_group`
--
ALTER TABLE `ci_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `ci_log`
--
ALTER TABLE `ci_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ci_user`
--
ALTER TABLE `ci_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
