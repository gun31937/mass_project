-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2017 at 03:32 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maltech`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `timestamp` int(20) NOT NULL,
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `user_agent`, `last_activity`, `user_data`, `data`) VALUES
('dnlvp1sqrdnf6b4l0s49vcb471sd44ne', '::1', 1496727677, '', 0, '', '__ci_last_regenerate|i:1496727383;'),
('rd9s6rj9gmc21pkm03mbgfos94vao1ok', '::1', 1496728070, '', 0, '', '__ci_last_regenerate|i:1496727868;admin|s:1:"1";'),
('o4t1nhu7hjgoom44tgp0e7emu1v31aiv', '::1', 1496728729, '', 0, '', '__ci_last_regenerate|i:1496728406;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('2hm1rfuvul45qsptb58pf9j55r0o84nj', '::1', 1496729002, '', 0, '', '__ci_last_regenerate|i:1496728733;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('kdqnfcplandumca7qeb4k9j2g4rot90c', '::1', 1496729593, '', 0, '', '__ci_last_regenerate|i:1496729593;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('4rmvpavdjigoa6fputjuhp40vmt6isiu', '::1', 1496730931, '', 0, '', '__ci_last_regenerate|i:1496730723;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('thj3i8ucbd200lvu2tquii0l8blfv4lb', '::1', 1496731209, '', 0, '', '__ci_last_regenerate|i:1496731032;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('0vgt53jeuokauec8qiqd8e1ijdqi6n3g', '::1', 1496731564, '', 0, '', '__ci_last_regenerate|i:1496731564;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('dqktdaaquahl7smdj8m1p4ij1brp41lr', '::1', 1496731874, '', 0, '', '__ci_last_regenerate|i:1496731874;'),
('trtcmt7csok0nqo66p8o80hb9d0tempr', '::1', 1496732091, '', 0, '', '__ci_last_regenerate|i:1496731939;'),
('mn3il4mhmkktf9tsk2n560neuhmgecsu', '::1', 1496732512, '', 0, '', '__ci_last_regenerate|i:1496732317;'),
('uld7dnldc8l1atpv7vsh73t9031j8he8', '::1', 1496732636, '', 0, '', '__ci_last_regenerate|i:1496732636;'),
('vkhj0u57ucten2ujrgmfd7alonlrtbt3', '::1', 1496732979, '', 0, '', '__ci_last_regenerate|i:1496732979;'),
('ajuaeee49sfd5vik1ge9lqkvmvhk57ra', '::1', 1496733540, '', 0, '', '__ci_last_regenerate|i:1496733540;'),
('ouclj1sic5b36hflasshg2rhc0n4tref', '::1', 1496733971, '', 0, '', '__ci_last_regenerate|i:1496733896;'),
('t6q4s3nq651gjfjmpirokosef8g80fa6', '::1', 1496734127, '', 0, '', '__ci_last_regenerate|i:1496734034;'),
('avf3kfkq5ugv45tfibbj0bh87cgrl9ue', '::1', 1496734189, '', 0, '', '__ci_last_regenerate|i:1496734176;'),
('4hl15d6bak5c18vcocjhilts532r4f4u', '::1', 1496734225, '', 0, '', '__ci_last_regenerate|i:1496734225;'),
('8no09fbsepi27n3dpsv2ss3lo25f1vd0', '::1', 1496736223, '', 0, '', '__ci_last_regenerate|i:1496736005;'),
('kav485jeijg6ne5vttd3e6smmcjh8cii', '::1', 1496736737, '', 0, '', '__ci_last_regenerate|i:1496736438;'),
('3a3pav8upg5t6tf2cgma8esvrfajnnob', '::1', 1496737015, '', 0, '', '__ci_last_regenerate|i:1496736788;'),
('9scbif1ckfrcqludfpl209dethsohqep', '::1', 1496737398, '', 0, '', '__ci_last_regenerate|i:1496737101;'),
('cvscn7u9s50pqrb2ab9oopklb4u70gbk', '::1', 1496737550, '', 0, '', '__ci_last_regenerate|i:1496737477;'),
('3vphui9tnmrv7vdcrn2r515s5ha7lk93', '::1', 1496738053, '', 0, '', '__ci_last_regenerate|i:1496737807;'),
('m4jq3f1ueolk6g75c6anct2mc3as92b9', '::1', 1496738476, '', 0, '', '__ci_last_regenerate|i:1496738267;'),
('tmp7qcrrnpigqc5no3v7bbl34oh1aei9', '::1', 1496738844, '', 0, '', '__ci_last_regenerate|i:1496738613;'),
('gr22lgm0dsb263avh9tks3u5e9iinjdv', '::1', 1496739218, '', 0, '', '__ci_last_regenerate|i:1496738925;'),
('4br6u47bvffe4tv5djeb9k7i5bn8o9ps', '::1', 1496739267, '', 0, '', '__ci_last_regenerate|i:1496739239;'),
('1sqqsl8i153hp5l1f3hqrp4kk5p6no3p', '::1', 1496739641, '', 0, '', '__ci_last_regenerate|i:1496739345;'),
('meambf4nihg4abhuq59d5d6rp7ktl0ih', '::1', 1496739838, '', 0, '', '__ci_last_regenerate|i:1496739740;'),
('p2s7c0qrbmm7asgpi993srpt10k0kro1', '::1', 1496740048, '', 0, '', '__ci_last_regenerate|i:1496739936;'),
('72es90qj84uqpgpu35ul23ehhnnt0u2c', '::1', 1496740406, '', 0, '', '__ci_last_regenerate|i:1496740406;'),
('npgr0q9s44becdqo3s8d1vr7tdssjmr8', '::1', 1496741142, '', 0, '', '__ci_last_regenerate|i:1496741142;'),
('3csudm1bavvvh9rc3p76dra7gqdqbv54', '::1', 1496742552, '', 0, '', '__ci_last_regenerate|i:1496742399;admin|s:1:"1";'),
('qr7pkvkidlu3dpl4ls8pa1cgfou31pd6', '::1', 1496916819, '', 0, '', '__ci_last_regenerate|i:1496916807;admin|s:1:"1";'),
('n1bm6e7fv0r17fjh18u3imqkemqoapqc', '::1', 1496917444, '', 0, '', '__ci_last_regenerate|i:1496917442;admin|s:1:"1";'),
('fhteddgtbul5vq61jccafq4m74get0k8', '::1', 1497079874, '', 0, '', '__ci_last_regenerate|i:1497079707;'),
('pj2o0kj9mr99b5aeqdagom7sm3ppe5rb', '::1', 1497080436, '', 0, '', '__ci_last_regenerate|i:1497080162;'),
('juopqsc9mfj3iqkjns7jkg5qo8qt5ijp', '::1', 1497080858, '', 0, '', '__ci_last_regenerate|i:1497080621;'),
('9hjk3rbj232nc3pe49f9v5s3gn41jl42', '::1', 1497081474, '', 0, '', '__ci_last_regenerate|i:1497081328;'),
('9bfdi356ghmjera2cmch4ur160pugmns', '::1', 1497082004, '', 0, '', '__ci_last_regenerate|i:1497081748;'),
('2d1nj3bjsr9th2h0rk32bc9mg6a25ffn', '::1', 1497082239, '', 0, '', '__ci_last_regenerate|i:1497082015;'),
('3hp4iuagorhahaf5l6ivlris4t17tkvs', '::1', 1497084978, '', 0, '', '__ci_last_regenerate|i:1497084765;'),
('k0ugf0rv0ij4pe7f7206gkosl1rm70e4', '::1', 1497085691, '', 0, '', '__ci_last_regenerate|i:1497085690;'),
('ocfa6uj2jc10vb5n2370958jrst2nh80', '::1', 1497086284, '', 0, '', '__ci_last_regenerate|i:1497086193;'),
('tskqtar2fjav0o1n1m750ftpmvkmcfdg', '::1', 1497087091, '', 0, '', '__ci_last_regenerate|i:1497086805;admin|s:1:"1";'),
('h0gc73800s0aa3t330mg5l3jq7ssvvdl', '::1', 1497087241, '', 0, '', '__ci_last_regenerate|i:1497087111;admin|s:1:"1";'),
('s16tgk7ti1lpj32nss8uq7od92qdhct1', '::1', 1497087262, '', 0, '', '__ci_last_regenerate|i:1497087262;'),
('6cg4b0cndd6hom6g42pkr0ut90mimam1', '::1', 1497087876, '', 0, '', '__ci_last_regenerate|i:1497087620;admin|s:1:"1";'),
('d91i6ho8hcu86rtg9lebf969sidgen3a', '::1', 1497088243, '', 0, '', '__ci_last_regenerate|i:1497088072;admin|s:1:"1";'),
('rnk94lig59vv9m0pkrmmi6bb3fucp7c5', '::1', 1497088609, '', 0, '', '__ci_last_regenerate|i:1497088508;admin|s:1:"1";'),
('c00f8h62a1aeliutvr6nfr50oltrm23d', '::1', 1497103268, '', 0, '', '__ci_last_regenerate|i:1497103268;'),
('nefdj5t10tjskdjsiqmdcb1o03v4cs96', '::1', 1497103715, '', 0, '', '__ci_last_regenerate|i:1497103712;admin|s:1:"1";'),
('gqr82i65mlme9bjlvniki9qqrq61l0no', '::1', 1497112522, '', 0, '', '__ci_last_regenerate|i:1497112227;admin|s:1:"1";'),
('frsbqbp9t87cvkbdf5efmqhp0qnuus12', '::1', 1497112559, '', 0, '', '__ci_last_regenerate|i:1497112559;admin|s:1:"1";'),
('66jepdvgrmr80elvn4eh4kbanlm4mrod', '::1', 1497689378, '', 0, '', '__ci_last_regenerate|i:1497689294;'),
('9n7ql8aqkpvp0f8dmf7kaduj7k3m73dh', '::1', 1497690281, '', 0, '', '__ci_last_regenerate|i:1497690281;'),
('p9ifeh4at4fhr4reak81o9shd15ui3jp', '::1', 1498564317, '', 0, '', '__ci_last_regenerate|i:1498564288;admin|s:1:"1";'),
('75dm93fee5q56dvamp9j29cg9m758jmm', '::1', 1498565941, '', 0, '', '__ci_last_regenerate|i:1498565932;admin|s:1:"1";'),
('h3ud8t4otb5t3su7936i6rqlsghudj22', '::1', 1498566636, '', 0, '', '__ci_last_regenerate|i:1498566404;admin|s:1:"1";'),
('e6pmj7jinuke0hfdhariq5askfcgojri', '::1', 1498567067, '', 0, '', '__ci_last_regenerate|i:1498566763;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('ok2j0ahk41aqqrl4tu0epre4cqlm7cj3', '::1', 1498567377, '', 0, '', '__ci_last_regenerate|i:1498567067;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('0dlesrkf59m481dao44p8ulhprvi7q2u', '::1', 1498567672, '', 0, '', '__ci_last_regenerate|i:1498567377;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('m8oitdprm2ourflm1immmj8h3jc04trv', '::1', 1498567980, '', 0, '', '__ci_last_regenerate|i:1498567681;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('gds7cac24ilpol3fg4hf269dds6spsn1', '::1', 1498568150, '', 0, '', '__ci_last_regenerate|i:1498567982;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('bgc5hdh0b3478qag5c1fuaje1doopks1', '::1', 1498569238, '', 0, '', '__ci_last_regenerate|i:1498568950;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('t762plvbv81rag3a1mm1daie5edgkblj', '::1', 1498569592, '', 0, '', '__ci_last_regenerate|i:1498569369;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('kd790no9dnmqhm4g62ps46phf793ea29', '::1', 1498570102, '', 0, '', '__ci_last_regenerate|i:1498569818;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('ilb3hb40hmgetiho07veme4hci0muthd', '::1', 1498570203, '', 0, '', '__ci_last_regenerate|i:1498570142;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('7bllmfjgt48guparlehrqhaahp94o4s5', '::1', 1498570919, '', 0, '', '__ci_last_regenerate|i:1498570643;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('s76fggpjv30a3m1dsnd6aed931892dpu', '::1', 1498571131, '', 0, '', '__ci_last_regenerate|i:1498570976;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('e1utfmd34ecudskm3usp45kdd0jgnabl', '::1', 1498571429, '', 0, '', '__ci_last_regenerate|i:1498571354;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('b8l5dlr2ah442k8j2dbvnu2q6mg1bet9', '::1', 1498572099, '', 0, '', '__ci_last_regenerate|i:1498571849;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('mretj4tq6eke1d778063oudl4k7dpmo8', '::1', 1498572425, '', 0, '', '__ci_last_regenerate|i:1498572153;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('g005b8orvojku5rd18ip5ipuv5jldtop', '::1', 1498572597, '', 0, '', '__ci_last_regenerate|i:1498572461;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('71sc21f7hkov73n961nngpeb8qjfc3s7', '::1', 1498573070, '', 0, '', '__ci_last_regenerate|i:1498572785;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('earc83ru94emaoiuiijnjn931dr3459q', '::1', 1498573378, '', 0, '', '__ci_last_regenerate|i:1498573095;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('k8khfc8d9qlj4pkjhr8gohnr6kjf40i8', '::1', 1498573826, '', 0, '', '__ci_last_regenerate|i:1498573623;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('frs37hphdksjf3vgata3r8jdol7q11n6', '::1', 1498574694, '', 0, '', '__ci_last_regenerate|i:1498574386;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('s4vkc2bqvl6ut7gtv3g50oig5gkbbist', '::1', 1498574986, '', 0, '', '__ci_last_regenerate|i:1498574694;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('dpuoknk2a66k16gh7tdmng8kju7c78mj', '::1', 1498575182, '', 0, '', '__ci_last_regenerate|i:1498575002;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('b20r185g9p67aijtkp2lmf3dr747ggov', '::1', 1498575665, '', 0, '', '__ci_last_regenerate|i:1498575484;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('7mj1dv5quqqsbaj3smnk6vie1puih9v8', '::1', 1498576928, '', 0, '', '__ci_last_regenerate|i:1498576788;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('vo7kt6m1ivq3j35s22p7r0h071kdmf67', '::1', 1498577437, '', 0, '', '__ci_last_regenerate|i:1498577192;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('21o4jjlnhos5bai527hlub0980kou3l2', '::1', 1498580501, '', 0, '', '__ci_last_regenerate|i:1498580501;admin|s:1:"1";upload_path|s:19:"assets/uploads/post";'),
('47e93e17orlgt3rpa2h090k670brlq56', '::1', 1498909893, '', 0, '', '__ci_last_regenerate|i:1498909870;'),
('d4j1dqe8fdrjvut62het5ceb78lm61fh', '::1', 1498910464, '', 0, '', '__ci_last_regenerate|i:1498910464;'),
('mtcls449fgb4j7sp8v6c8uk15odqtqtm', '::1', 1498913910, '', 0, '', '__ci_last_regenerate|i:1498913910;'),
('hf5obel23f72gqg9pqvov8kgslbt0ucg', '::1', 1498914479, '', 0, '', '__ci_last_regenerate|i:1498914248;'),
('ddt8uj9mjl5bg5pof9itl6n826t0tdgs', '::1', 1498914722, '', 0, '', '__ci_last_regenerate|i:1498914585;'),
('rhclf6n9d6qqjuk13uvg29b86k712lel', '::1', 1498915228, '', 0, '', '__ci_last_regenerate|i:1498914942;'),
('b3ibo6tno5vvco5m9u2udflo90ooah4q', '::1', 1498915481, '', 0, '', '__ci_last_regenerate|i:1498915246;'),
('lu71c916ak2d7sfkhpcuhvnemooopi3q', '::1', 1498915800, '', 0, '', '__ci_last_regenerate|i:1498915558;admin|s:1:"1";');

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `line_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `username`, `email`, `password`, `role`, `line_id`, `last_login`) VALUES
(1, 'admin', 'admin@website.com', '$2y$10$nlczVynP/K6LBtSa4/WShe8cB0YLUpVrcnzZJqIt1iMT/U4C6GAy2', 'admin', 'gun31937', '2017-07-01 20:28:21'),
(2, 'gun31937', 'kasididwaiyakul@gmail.com', '$2y$10$Bl77rra383u/ZrQPHzM.RO.j5SJscR9KEQ2HDm7PlHLEwDIZdIkLK', 'super_admin', 'gun31937', '2017-03-18 01:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `tb_banner`
--

CREATE TABLE `tb_banner` (
  `banner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_href` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_banner`
--

INSERT INTO `tb_banner` (`banner_id`, `type`, `link_href`, `img`, `priority`) VALUES
(1, 'footer_banner', '', '7ca73-banner-yamaha.png', 0),
(2, 'footer_banner', '', '6f819-banner-honda.png', 1),
(3, 'footer_banner', '', 'e197a-banner-susuki.png', 2),
(4, 'footer_banner', '', '9fb86-banner-vespa.png', 3),
(7, 'slideshow', '', 'd519f-slide1.jpg', 4),
(8, 'slideshow', '', '1de9b-slide2.jpg', 5),
(9, 'slideshow', '', 'c9c57-slide3.jpg', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tb_config`
--

CREATE TABLE `tb_config` (
  `config_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_config`
--

INSERT INTO `tb_config` (`config_id`, `name`, `value`, `priority`) VALUES
(1, 'site_lang', 'th', 0),
(2, 'seo_mode', 'off', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact_message`
--

CREATE TABLE `tb_contact_message` (
  `contact_message_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_post`
--

CREATE TABLE `tb_post` (
  `post_id` int(11) NOT NULL,
  `post_cate_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `cover_img` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `priority` int(11) NOT NULL,
  `slug_th` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `name_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdetail_th` text COLLATE utf8_unicode_ci NOT NULL,
  `detail_th` text COLLATE utf8_unicode_ci NOT NULL,
  `title_th` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `des_th` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `kw_th` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_post`
--

INSERT INTO `tb_post` (`post_id`, `post_cate_id`, `type`, `img`, `cover_img`, `date`, `priority`, `slug_th`, `name_th`, `sdetail_th`, `detail_th`, `title_th`, `des_th`, `kw_th`) VALUES
(1, 0, 'pages', '', '', '0000-00-00', 0, '', 'page1', '', '', '', '', ''),
(2, 1, 'news', '', '', '2017-03-24', 1, '', '', '', '', '', '', ''),
(14, 1, 'news', '', '', '2017-03-26', 9, '1', '1', '', '', '', '', ''),
(15, 2, 'news', '', '', '2017-03-27', 10, '', '', '', '', '', '', ''),
(16, 2, 'news', '', '', '2017-03-27', 11, '', '', '', '', '', '', ''),
(17, 0, 'pages', '', '', '0000-00-00', 0, '', 'page2', '', '', '', '', ''),
(18, 0, 'pages', '', '', '0000-00-00', 0, '', 'page3', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_post_cate`
--

CREATE TABLE `tb_post_cate` (
  `post_cate_id` int(11) NOT NULL,
  `type` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `cover_img` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `slug_th` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `name_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdetail_th` text COLLATE utf8_unicode_ci NOT NULL,
  `detail_th` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_post_cate`
--

INSERT INTO `tb_post_cate` (`post_cate_id`, `type`, `img`, `cover_img`, `priority`, `slug_th`, `name_th`, `sdetail_th`, `detail_th`) VALUES
(1, 'news', '', '', 0, 'ประเภทข่าวสาร1', 'ประเภทข่าวสาร1', '', ''),
(2, 'news', '', '', 1, 'ประเภทข่าวสาร2', 'ประเภทข่าวสาร2', '', ''),
(3, 'object', '', '', 3, '', '', '', ''),
(4, 'object', '', '', 2, '', '', '', ''),
(5, 'object', '', '', 4, '', '', '', ''),
(6, 'object', '', '', 5, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_post_img`
--

CREATE TABLE `tb_post_img` (
  `post_img_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `product_cate_id` int(11) NOT NULL,
  `product_part_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug_th` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `name_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdetail_th` text COLLATE utf8_unicode_ci NOT NULL,
  `detail_th` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `product_cate_id`, `product_part_id`, `type`, `code`, `slug_th`, `name_th`, `sdetail_th`, `detail_th`, `img`, `cover_img`, `status`, `priority`) VALUES
(10, 3, 0, 'machine', 'E001', '001', '001', '', '', '', '', '', 0),
(12, 3, 0, 'machine', 'E002', '002', '002', '', '', '', '', '', 1),
(13, 3, 0, 'machine', 'E003', '003', '003', '', '', '', '', '', 2),
(18, 0, 1, 'spare_part', 'sp001', 'อะไหล่01', 'อะไหล่01', '', '', '', '', 'use', 3),
(19, 0, 1, 'spare_part', 'sp02', 'อะไหล่02', 'อะไหล่02', '', '', '', '', 'use', 4),
(20, 0, 4, 'spare_part', 'sp02-01-01', 'อะไหล่ของพาท02', 'อะไหล่ของพาท02', '', '', '', '', 'use', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_cate`
--

CREATE TABLE `tb_product_cate` (
  `product_cate_id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `slug_th` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `name_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_product_cate`
--

INSERT INTO `tb_product_cate` (`product_cate_id`, `img`, `priority`, `slug_th`, `name_th`) VALUES
(1, '', 0, 'เครื่องจักรประเภทที่1', 'เครื่องจักรประเภทที่1'),
(2, '', 1, 'เครื่องจักรประเภทที่2', 'เครื่องจักรประเภทที่2'),
(3, '', 2, 'เครื่องจักรประเภทที่3', 'เครื่องจักรประเภทที่3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_part`
--

CREATE TABLE `tb_product_part` (
  `product_part_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name_th` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug_th` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_product_part`
--

INSERT INTO `tb_product_part` (`product_part_id`, `product_id`, `name_th`, `slug_th`, `img`, `priority`) VALUES
(1, 10, 'Part01', 'Part01', '', 0),
(2, 10, 'Part02', 'Part02', '', 1),
(3, 10, 'Part03', 'Part03', '', 2),
(4, 12, 'part02-01', 'part02-01', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_setting`
--

CREATE TABLE `tb_setting` (
  `setting_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_setting`
--

INSERT INTO `tb_setting` (`setting_id`, `type`, `slug`, `name`, `value`, `priority`) VALUES
(1, 'varchar', 'tw_url', 'Twitter', 'https://twitter.com/?lang=th', 7),
(2, 'varchar', 'fb_url', 'Facebook', 'https://www.facebook.com/siamwebsitedevelopment/', 6),
(8, 'varchar', 'title_th', 'Title en', 'Site title en', 0),
(9, 'varchar', 'des_th', 'Description en', 'Site Description  en', 1),
(10, 'varchar', 'kw_th', 'Keyword en', 'Site Keyword en', 2),
(12, 'varchar', 'site_email', 'Site email', 'youremail@sitename.com', 3),
(17, 'varchar', 'gplus_url', 'Google+', 'https://plus.google.com/?hl=th', 8),
(19, 'varchar', 'youtube_channel', 'Youtube channel', 'https://www.youtube.com/channel/UC2VBosNuCGhFEPLIBPZTnPA', 10),
(20, 'varchar', 'home_vdo', 'Homepage VDO', 'https://www.youtube.com/watch?v=CPEBN2dVNUY', 11),
(22, 'varchar', 'map_la', 'Map Latitude', '13.7514458', 12),
(23, 'varchar', 'map_lo', 'Map Longitude', '100.5728344', 13),
(24, 'varchar', 'line_url', 'Line', '', 9),
(25, 'varchar', 'site_phone', 'Telephone', '0826212127', 4),
(26, 'varchar', 'site_fax', 'Fax', '053110729', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tools`
--

CREATE TABLE `tb_tools` (
  `tools_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_tools`
--

INSERT INTO `tb_tools` (`tools_id`, `name`, `status`, `priority`) VALUES
(1, 'Jquery', 'use', 0),
(2, 'Bxslider', 'use', 4),
(3, 'Fancybox', 'not_use', 5),
(4, 'Boostrap', 'use', 1),
(5, 'jquery-form-validator', 'use', 3),
(6, 'Font-awesome', 'use', 2),
(7, 'PgwSlideshow', 'not_use', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tools_detail`
--

CREATE TABLE `tb_tools_detail` (
  `tools_detail_id` int(11) NOT NULL,
  `tools_id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_tools_detail`
--

INSERT INTO `tb_tools_detail` (`tools_detail_id`, `tools_id`, `type`, `path`, `file_name`, `position`, `status`, `priority`) VALUES
(1, 1, 'js', 'node_modules/jquery/dist', 'jquery.min.js', 'header', 'use', 0),
(2, 4, 'js', 'node_modules/bootstrap/dist/js', 'bootstrap.min.js', 'footer', 'use', 2),
(3, 4, 'css', 'node_modules/bootstrap/dist/css', 'bootstrap.min.css', 'header', 'use', 3),
(4, 4, 'js', 'node_modules/tether/dist/js', 'tether.min.js', 'footer', 'use', 1),
(5, 2, 'js', 'node_modules/bxslider/dist', 'jquery.bxslider.min.js', 'footer', 'use', 4),
(6, 2, 'css', 'node_modules/bxslider/dist', 'jquery.bxslider.min.css', 'header', 'use', 5),
(7, 6, 'css', 'node_modules/font-awesome/css', 'font-awesome.min.css', 'header', 'use', 6),
(8, 7, 'js', 'node_modules/pgwslideshow', 'pgwslideshow.min.js', 'footer', 'use', 9),
(9, 7, 'css', 'node_modules/pgwslideshow', 'pgwslideshow_light.min.css', 'header', 'use', 8),
(10, 7, 'css', 'node_modules/pgwslideshow', 'pgwslideshow.min.css', 'header', 'use', 7),
(11, 5, 'js', 'node_modules/jquery-form-validator/form-validator', 'jquery.form-validator.min.js', 'header', 'use', 10),
(12, 5, 'css', 'node_modules/jquery-form-validator/form-validator', 'theme-default.min.css', 'header', 'use', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tb_banner`
--
ALTER TABLE `tb_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `tb_config`
--
ALTER TABLE `tb_config`
  ADD PRIMARY KEY (`config_id`);

--
-- Indexes for table `tb_contact_message`
--
ALTER TABLE `tb_contact_message`
  ADD PRIMARY KEY (`contact_message_id`);

--
-- Indexes for table `tb_post`
--
ALTER TABLE `tb_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tb_post_cate`
--
ALTER TABLE `tb_post_cate`
  ADD PRIMARY KEY (`post_cate_id`);

--
-- Indexes for table `tb_post_img`
--
ALTER TABLE `tb_post_img`
  ADD PRIMARY KEY (`post_img_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tb_product_cate`
--
ALTER TABLE `tb_product_cate`
  ADD PRIMARY KEY (`product_cate_id`);

--
-- Indexes for table `tb_product_part`
--
ALTER TABLE `tb_product_part`
  ADD PRIMARY KEY (`product_part_id`);

--
-- Indexes for table `tb_setting`
--
ALTER TABLE `tb_setting`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `tb_tools`
--
ALTER TABLE `tb_tools`
  ADD PRIMARY KEY (`tools_id`);

--
-- Indexes for table `tb_tools_detail`
--
ALTER TABLE `tb_tools_detail`
  ADD PRIMARY KEY (`tools_detail_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_banner`
--
ALTER TABLE `tb_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_config`
--
ALTER TABLE `tb_config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_contact_message`
--
ALTER TABLE `tb_contact_message`
  MODIFY `contact_message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_post`
--
ALTER TABLE `tb_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tb_post_cate`
--
ALTER TABLE `tb_post_cate`
  MODIFY `post_cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_post_img`
--
ALTER TABLE `tb_post_img`
  MODIFY `post_img_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tb_product_cate`
--
ALTER TABLE `tb_product_cate`
  MODIFY `product_cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_product_part`
--
ALTER TABLE `tb_product_part`
  MODIFY `product_part_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_setting`
--
ALTER TABLE `tb_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tb_tools`
--
ALTER TABLE `tb_tools`
  MODIFY `tools_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_tools_detail`
--
ALTER TABLE `tb_tools_detail`
  MODIFY `tools_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
