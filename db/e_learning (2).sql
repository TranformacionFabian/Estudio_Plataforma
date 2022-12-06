-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2019 a las 03:55:38
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `e_learning`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activity_log`
--

CREATE TABLE IF NOT EXISTS `activity_log` (
  `activity_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  PRIMARY KEY (`activity_log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(1, 'jkev', '2013-11-18 15:25:33', 'Add Subject RIZAL'),
(2, 'jkev', '2013-11-18 15:27:08', 'Edit Subject RIZAL'),
(3, '', '2013-11-18 15:30:46', 'Edit Subject IS 221'),
(4, '', '2013-11-18 15:31:12', 'Edit Subject IS 222'),
(5, '', '2013-11-18 15:31:24', 'Edit Subject IS 223'),
(6, '', '2013-11-18 15:31:34', 'Edit Subject IS 224'),
(7, '', '2013-11-18 15:31:54', 'Edit Subject IS 227'),
(8, '', '2013-11-18 15:32:37', 'Add Subject IS 411B'),
(9, '', '2013-11-18 15:34:54', 'Edit User jkev'),
(10, 'jkev', '2014-01-17 13:26:18', 'Add User admin'),
(11, 'admin', '2019-04-22 09:46:36', 'Agregar Periodo 2019-2020'),
(12, 'admin', '2019-10-14 23:19:48', 'Agregar Curso MAT'),
(13, 'admin', '2019-10-14 23:20:37', 'Agregar Curso HISTO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

--
-- Volcado de datos para la tabla `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(81, 32, 'john', 'A'),
(82, 32, 'smith', 'B'),
(83, 32, 'kevin', 'C'),
(84, 32, 'lorayna', 'D'),
(85, 34, 'Peso', 'A'),
(86, 34, 'PHP Hypertext', 'B'),
(87, 34, 'PHP Hypertext Preprosesor', 'C'),
(88, 34, 'Philippines', 'D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assignment`
--

CREATE TABLE IF NOT EXISTS `assignment` (
  `assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`assignment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(2, 'uploads/6843_File_Doc3.docx', '2013-10-11 01:24:32', 'fasfasf', 13, 36, 'Assignment number 1'),
(3, 'uploads/3617_File_login.mdb', '2013-10-28 19:35:28', 'q', 9, 80, 'q'),
(4, 'admin/uploads/7146_File_normalization.ppt', '2013-10-30 18:48:15', 'fsaf', 9, 95, 'fsaf'),
(5, 'admin/uploads/7784_File_ABSTRACT.docx', '2013-10-30 18:48:33', 'fsaf', 9, 95, 'dsaf'),
(6, 'admin/uploads/4536_File_ABSTRACT.docx', '2013-10-30 18:53:32', 'file', 9, 95, 'abstract'),
(10, 'admin/uploads/2209_File_598378_543547629007198_436971088_n.jpg', '2013-11-01 13:13:18', 'fsafasf', 9, 95, 'Assignment#2'),
(11, 'admin/uploads/1511_File_bootstrap.css', '2013-11-01 13:18:25', 'sdsa', 9, 95, 'css'),
(12, 'admin/uploads/4309_File_new  2.txt', '2013-11-17 23:21:46', 'test', 12, 145, 'test'),
(13, 'admin/uploads/5901_File_IS 112-Personal Productivity Using IS.doc', '2013-11-18 16:59:35', 'q', 12, 145, 'q'),
(15, 'admin/uploads/7077_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 10:38:45', 'afs', 18, 159, 'dasf'),
(16, 'admin/uploads/8470_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 10:39:19', 'test', 18, 160, 'assign1'),
(17, 'admin/uploads/2840_File_IMG_0698.jpg', '2013-11-25 15:53:20', 'q', 12, 161, 'q'),
(19, '', '2013-12-07 20:11:39', 'kevin test', 12, 162, ''),
(20, '', '2013-12-07 20:26:43', 'dasddsd', 12, 145, ''),
(21, '', '2013-12-07 20:26:43', 'dasddsd', 12, 162, ''),
(22, '', '2013-12-07 20:27:18', 'dasffsafsaf', 12, 162, ''),
(23, '', '2013-12-07 20:33:11', 'test', 12, 162, ''),
(24, 'admin/uploads/7053_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:39:05', 'kevin', 12, 0, 'kevin'),
(25, 'admin/uploads/2417_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:41:10', 'kevin', 12, 0, 'kevin'),
(26, 'admin/uploads/8095_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:43:25', 'kevin', 12, 0, 'kevin'),
(27, 'admin/uploads/4089_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:47:48', 'fasfafaf', 12, 0, 'fasf'),
(28, 'admin/uploads/2948_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:48:59', 'dasdasd', 12, 0, 'dasd'),
(29, 'admin/uploads/5971_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:50:47', 'dasdasd', 12, 0, 'dsad'),
(30, 'admin/uploads/6926_File_Resume.docx', '2014-02-13 11:27:59', 'q', 12, 167, 'q');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(24, 'Aula 101'),
(25, 'Aula 102'),
(26, 'Aula 103');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `class_quiz`
--

CREATE TABLE IF NOT EXISTS `class_quiz` (
  `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  PRIMARY KEY (`class_quiz_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(13, 167, 3600, 3),
(14, 167, 3600, 3),
(15, 167, 1800, 3),
(16, 185, 900, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `class_subject_overview`
--

CREATE TABLE IF NOT EXISTS `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL,
  PRIMARY KEY (`class_subject_overview_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(1, 167, '<p>Chapter&nbsp; 1</p>\r\n\r\n<p>Cha</p>\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\r\n<span style="font-size:16px"><strong>Misión</strong></span><span style="font-size:large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="font-family:sans-serif,arial,verdana,trebuchet ms">&nbsp; &nbsp;</span><span style="font-family:sans-serif,arial,verdana,trebuchet ms; font-size:18px">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></pre>\r\n\r\n<p><span style="color:rgb(33, 33, 33); font-family:arial,sans-serif; font-size:16px; white-space:pre-wrap">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“Brindar formación profesional humanista, científica y tecnológica a los estudiantes universitarios con calidad y responsabilidad social”.</span></p>\r\n'),
(2, 'Vision', '<pre>\r\n<span style="font-size:large"><strong>Visión</strong></span></pre>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:large">&nbsp;&nbsp;</span><span style="color:rgb(33, 33, 33); font-family:arial,sans-serif; font-size:16px">"Los peruanos acceden a una educación que les permite desarrollar su potencial desde la primera infancia y convertirse en ciudadanos que valoran su cultura, conocen sus derechos y responsabilidades, desarrollan sus talentos y participan de manera innovadora, competitiva y comprometida en las dinámicas sociales, contribuyendo al desarrollo de sus comunidades y del país en su conjunto"</span></p>\r\n\r\n\r\n<p>&nbsp;</p>\r\n'),
(3, 'History', '<pre><span style="font-size: large;">HISTORIA &nbsp;</span> </pre>\r\n<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Por Decreto Ley No. 18942, del 26 de agosto de 1971, fue creada la Universidad Nacional de Tacna, como una imperiosa necesidad de esta heroica tierra de Caplina buscando formar profesionales para la explotación de los recursos naturales y su eventual transformación, así como para la promoción social y económica de la región sur del país\r\n\r\nNuestra Alma Mater inicio sus actividades académicas el 13 de mayo de 1972 con una Sesión Solemne de Apertura del Año Académco en el Salón de Sesiones del ex-Palacio Municipal, con la presencia de distinguidas personalidades civiles, militares, eclesiásticas, en la que destacamos a quien luego fuera nuestro patrono, el Dr. Jorge Basadre Grohmann. El histórico Local Central, ubicado entre la Av. Bolognesi y la calle Pinto, cobijo a los primeros ingresantes y pasarían 27 años para que el 07 de noviembre de 1998 se transfiera definitivamente y a título gratuito este local a la Universidad.\r\n\r\nA partir del segundo semestre académico, a principios de octubre de 1972, la Universidad empezó a implementar su plana docente estable. Los nuevos profesores, desde 1973 empezaron a a asumir responsabilidades de gobierno en sus diversos niveles. El 20 de noviembre de 1979, el Consejo Nacional de la Universidad Peruana -CONUP- expidió la Resolución No. 8161-79-CONUP reconociendo en forma definitiva a la Universidad Nacional de Tacna y ordenando la constitución de sus Organos de Gobierno.\r\n\r\nEl primer gobierno estuvo a cargo de la Comisión Organizadora y de Gobierno, conformado por seis profesores representantes de las Universidades patrocinadoras: Universidad Mayor de San Marcos, Universidad Nacional de Ingeniería, Universidad Nacional Agraria La Molina. La Comisión Organizadora y de Gobierno tuvo un Presidente y dos Vice Presidentes. Los otros miembros desempeñaron los cargos de Directores Universitarios.\r\n\r\nEl 11 de julio de 1980, se expidió la Resolución No. 3058-80-UNTAC denominando a la institución como: "UNIVERSIDAD NACIONAL DE TACNA JORGE BASADRE GROHMANN" en reconocimiento al Dr. Jorge Basadre Grohmann por sus virtudes personales, a su consagración total a la causa del Perú, a su prolífica labor como historiador de la República, Escritor, Ensayista y como Hijo Ilustre de Tacna. Cuando se promulga la ley Universitaria No. 23733, el 09 de diciembre de 1983 por el Presidente de la República Arq. Fernando Belaúnde Terry, oficialmente tomó la denominación de: UNIVERSIDAD NACIONAL JORGE BASADRE GROHMANN.\r\n\r\nDesde 1985 y al amparo de la ley Universitaria No. 23733 y luego de pasar por una primera etapa con Comisiones Organizadoreas y Gobierno y por una segunda etapa de Rectores Interinos, la Universidad Nacional Jorge Basadre Grohmann inició su tercera etapa de elección de sus Autoridades y Organos de Gobierno en forma democrática y en Asambleas Universitarias.\r\n\r\nAcorde a los postulados de su creación y en función de la modernidad que comenzó a darse en la Universidad Peruana, la Universidad Nacional Jorge Basadre Grohmann tiene establecida como misión: Formar profesionales, investigadores y post-graduados creativos, competentes y de excelencia, comprometidos en la solución de los problemas de la comunidad. Genera y desarrolla conocimientos científicos, tecnológicos y humanísticos, útiles para elaborar alternativas y soluciones integrales, que permitan engrandecer la cultura, promover la justicia, la equidad social y la igualdad de oportunidades en nuestro país.\r\n\r\nLa sociedad Peruana espera de la Universidad, la formación de profesionales e investigadores con el nivel científico-humanístico y con capacidad crítica. Espera también sea capaz de entender la ciencia y generar la tecnología a fin de resolver los problemas de condición y de desarrollo de nuestro país. Ello lo hemos asumido con mas entereza en la última década del siglo y hoy en los umbrales de un nuevo milenio buscamos la modernidad y la acreditación universitaria para constituirnos en una de las mejores universidades de nuestro país.</p>\r\n'),
(4, 'Footer', '<p style="text-align:center">Platea21 Sistema E-Learning&nbsp;</p>\r\n\r\n<p style="text-align:center">Derechos Reservados &reg;2019</p>\r\n'),
(5, 'Upcoming Events', '<pre>\r\nPROXIMOS EVENTOS</pre>\r\n\r\n<p><strong>&gt;</strong>&nbsp;INICIO DE CLASES 11 DE MAYO</p>\r\n\r\n<p><strong>&gt;</strong>&nbsp;EXAMENES Platea21 OTO&Ntilde;O</p>\r\n\r\n<p><strong>&gt;</strong>&nbsp;CICLO II -III (INVIERNO, VERANO)</p>\r\n\r\n<p><strong>&gt;</strong> ENROLLMENT</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(6, 'Title', '<p><span style="font-family:trebuchet ms,geneva">Platea21&nbsp;</span>Sistema Virtual E-Learning 2019</p>\r\n'),
(7, 'News', '<pre>\r\n<font size="3"><strong><em>Noticias Recientes</em></strong></font></pre>\r\n'),
(8, 'Announcements', '<pre>\r\n<span style="font-size:medium"><em><strong>Avisos</strong></em></span></pre>\r\n\r\n<p>Primer Examen Platea21 Oto&ntilde;o 2020: Domingo 23 de Junio, 2019</p>\r\n\r\n<p>Segundo Examen Platea21 Oto&ntilde;o 2020: Domingo 11&nbsp;de Agosto, 2019</p>\r\n\r\n<p>Centro de Estudios PreUniversitario</p>\r\n\r\n<p>Platea21</p>\r\n'),
(10, 'Calendar', '<pre style="text-align:center">\r\n<span style="font-size:medium"><strong>&nbsp;CALENDARIO Platea21 OTO&Ntilde;O 2020 - I</strong></span></pre>\r\n\r\n<table align="center" cellpadding="0" cellspacing="0" style="line-height:1.6em; margin-left:auto; margin-right:auto">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Inscripciones&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Del 15 de Abril al 08 de Mayo&nbsp;&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Inicio de Clases</p>\r\n			</td>\r\n			<td>\r\n			<p>S&aacute;bado 11&nbsp;de Mayo 2019</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Primer Examen</p>\r\n			</td>\r\n			<td>\r\n			<p>Domingo, 23 de Junio 2019</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Segundo Examen</p>\r\n			</td>\r\n			<td>\r\n			<p>Domingo, 11 de Agosto 2019</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Termino de Ciclo</p>\r\n			</td>\r\n			<td>\r\n			<p>Domingo, 11 de Agosto 2019</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(11, 'Directories', '<div class="jsn-article-content" style="text-align: left;">\r\n<pre>\r\n<span style="font-size:medium"><em><strong>DIRECTORIO</strong></em></span></pre>\r\n\r\n<ul>\r\n	<li>Central Telefonica UNJBG &nbsp;(052) 583000</li>\r\n	<li>Direccion de Admisi&oacute;n - (052) 583000 Anexo 2350</li>\r\n	<li>Centro de Estudios Pre Universitarios - (052) 583000 Anexo 2352</li>\r\n</ul>\r\n</div>\r\n'),
(12, 'president', ''),
(13, 'motto', '<p><strong><span style="color:#FFF0F5"><span style="font-family:arial,helvetica,sans-serif">CENTRO DE ESTUDIOS PRE UNIVERSITARIO - Platea21 :</span></span></strong></p>\r\n\r\n<p><strong><span style="color:#FFF0F5"><span style="font-family:arial,helvetica,sans-serif">Te prepar&aacute;mos para el &eacute;xtio</span></span></strong></p>\r\n\r\n<p><strong><span style="color:#FFF0F5"><span style="font-family:arial,helvetica,sans-serif">Elige lo Mejor</span></span></strong></p>\r\n'),
(14, 'Campuses', '<pre>\r\n<span style="font-size:16px"><strong>Campus</strong></span></pre>\r\n\r\n<ul>\r\n	<li>SEDE LOS GRANADOS</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(15, 'Long Test', 113, '12/05/2013', '12/06/2013'),
(17, 'sdasf', 147, '11/16/2013', '11/16/2013');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=138 ;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(133, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:31:38', 'sas', 14, 177, 'sss', ''),
(132, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:29:53', 'sas', 14, 178, 'sss', ''),
(131, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:28:09', 'sas', 14, 12, 'sss', ''),
(129, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:12:38', 'sas', 0, 12, 'sss', ''),
(130, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:26:11', 'sas', 0, 12, 'sss', ''),
(128, 'admin/uploads/7614_File_1476273_644977475552481_2029187901_n.jpg', '2014-02-13 13:31:18', 'qwwqw', 12, 185, 'kevi', 'Ruby Mae Morante'),
(127, 'admin/uploads/1085_File_Resume.docx', '2014-02-13 12:53:09', 'q', 12, 183, 'q', 'Ruby Mae Morante'),
(126, 'admin/uploads/7895_File_PERU REPORT.pptx', '2014-02-13 12:35:42', 'chapter 1', 12, 182, 'chapter 1', 'Ruby Mae Morante'),
(125, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:10:56', 'test', 12, 181, 'test', 'Ruby Mae Morante'),
(123, 'admin/uploads/4801_File_painting-02.jpg', '2013-12-11 12:02:46', 'jdkasjfd', 12, 163, 'Test', 'Ruby Mae Morante'),
(122, 'admin/uploads/3985_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:00:22', 'dasdasd', 12, 145, 'dasd', 'Ruby Mae Morante'),
(121, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:59:46', 'asdad', 12, 162, 'kevin', 'Ruby Mae Morante'),
(120, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:59:46', 'asdad', 12, 145, 'kevin', 'Ruby Mae Morante'),
(119, 'admin/uploads/3166_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:58:44', 'kevin', 12, 145, 'kevin', 'Ruby Mae Morante'),
(118, 'admin/uploads/4849_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 23:59:20', 'q', 0, 162, 'qq', 'StephanieVillanueva'),
(117, 'admin/uploads/9467_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 10:42:37', 'test', 0, 162, 'report group 1', 'MarrianneTumala'),
(116, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 162, 'w', 'Ruby Mae Morante'),
(115, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 145, 'w', 'Ruby Mae Morante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Volcado de datos para la tabla `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(2, 11, 'fasf', '2013-11-13 13:15:47', 42, 'Aladin Cabrera', 'john kevin lorayna', ''),
(4, 71, 'bcjhbcjksdbckldj', '2013-11-25 15:59:13', 71, 'Noli Mendoza', 'Noli Mendoza', 'read'),
(17, 12, 'tst', '2013-12-01 23:38:40', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna', ''),
(19, 12, 'fasfaf', '2013-12-01 23:56:17', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna', ''),
(27, 93, 'fa', '2013-12-02 00:01:54', 12, 'John Kevin  Lorayna', 'Ruby Mae  Morante', ''),
(28, 136, 'Submit your classcard', '2014-02-13 13:35:21', 12, 'Jorgielyn Serfino', 'Ruby Mae  Morante', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message_sent`
--

CREATE TABLE IF NOT EXISTS `message_sent` (
  `message_sent_id` int(11) NOT NULL AUTO_INCREMENT,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL,
  PRIMARY KEY (`message_sent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(1, 42, 'sad', '2013-11-12 22:50:05', 42, 'john kevin lorayna', 'john kevin lorayna'),
(2, 11, 'fasf', '2013-11-13 13:15:47', 42, 'Aladin Cabrera', 'john kevin lorayna'),
(3, 12, 'bjhkcbkjsdnckldvls', '2013-11-25 15:58:55', 71, 'Ruby Mae  Morante', 'Noli Mendoza'),
(4, 71, 'bcjhbcjksdbckldj', '2013-11-25 15:59:13', 71, 'Noli Mendoza', 'Noli Mendoza'),
(5, 12, 'test', '2013-11-30 20:54:05', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(11, 12, 'tst', '2013-12-01 23:38:40', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(12, 12, 'fasfasf', '2013-12-01 23:49:13', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(13, 136, 'Submit your classcard', '2014-02-13 13:35:21', 12, 'Jorgielyn Serfino', 'Ruby Mae  Morante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(2, 0, 'Añadir nombre de archivo de materiales descargables <b>sss</b>', '2014-01-17 14:35:32', 'downloadable_student.php'),
(3, 167, 'Añadir anuncios', '2014-01-17 14:36:32', 'announcements_student.php'),
(4, 0, 'Add Downloadable Materials file name <b>test</b>', '2014-02-13 11:10:56', 'downloadable_student.php'),
(5, 167, 'Add Assignment file name <b>q</b>', '2014-02-13 11:27:59', 'assignment_student.php'),
(6, 0, 'Add Downloadable Materials file name <b>chapter 1</b>', '2014-02-13 12:35:42', 'downloadable_student.php'),
(7, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-13 12:53:09', 'downloadable_student.php'),
(8, 0, 'Add Downloadable Materials file name <b>kevi</b>', '2014-02-13 13:31:18', 'downloadable_student.php'),
(9, 185, 'Agregar exámenes de practica', '2014-02-13 13:33:27', 'student_quiz_list.php'),
(10, 167, 'Agregar anuncios', '2014-02-13 13:45:59', 'announcements_student.php'),
(11, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:43:38', 'downloadable_student.php'),
(12, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:18', 'downloadable_student.php'),
(13, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:49', 'downloadable_student.php'),
(14, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:52:30', 'downloadable_student.php'),
(15, 186, 'Agregar anuncios', '2016-11-01 10:43:15', 'announcements_student.php'),
(16, 187, 'Add Annoucements', '2019-10-14 23:21:53', 'announcements_student.php'),
(17, 187, 'Add Annoucements', '2019-10-14 23:23:42', 'announcements_student.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification_read`
--

CREATE TABLE IF NOT EXISTS `notification_read` (
  `notification_read_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL,
  PRIMARY KEY (`notification_read_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification_read_teacher`
--

CREATE TABLE IF NOT EXISTS `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL,
  PRIMARY KEY (`notification_read_teacher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(1, 12, 'yes', 14),
(2, 12, 'yes', 13),
(3, 12, 'yes', 12),
(4, 12, 'yes', 11),
(5, 12, 'yes', 10),
(6, 12, 'yes', 9),
(7, 12, 'yes', 8),
(8, 12, 'yes', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question_type`
--

CREATE TABLE IF NOT EXISTS `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL,
  PRIMARY KEY (`question_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(3, 'Sample Test', 'Test', '2013-12-03 23:01:56', 12),
(4, 'Chapter 1', 'topics', '2013-12-13 01:51:02', 14),
(5, 'test3', '123', '2014-01-16 04:12:07', 12),
(6, 'Examen 01', 'Examen 01 TIC', '2016-10-26 17:31:41', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quiz_question`
--

CREATE TABLE IF NOT EXISTS `quiz_question` (
  `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`quiz_question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Volcado de datos para la tabla `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(33, 5, '<p>q</p>\r\n', 2, 0, '2014-01-17 04:15:03', 'False'),
(34, 3, '<p>Php Stands for ?</p>\r\n', 1, 0, '2014-01-17 12:25:17', 'C'),
(35, 3, '<p>Echo is a Php code that display the output.</p>\r\n', 2, 0, '2014-01-17 12:26:18', 'True');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `school_year`
--

CREATE TABLE IF NOT EXISTS `school_year` (
  `school_year_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_year` varchar(100) NOT NULL,
  PRIMARY KEY (`school_year_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(4, '2019-2020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=219 ;

--
-- Volcado de datos para la tabla `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(93, 'John Kevin ', 'Lorayna', 24, '111', 'teph', 'uploads/3094_384893504898082_1563225657_n.jpg', 'Registered');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student_assignment`
--

CREATE TABLE IF NOT EXISTS `student_assignment` (
  `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL,
  PRIMARY KEY (`student_assignment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Volcado de datos para la tabla `student_assignment`
--

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
(21, 13, 'admin/uploads/1414_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 11:59:28', 'fasfasfasfsfsafasf', 'safas', 93, ''),
(22, 13, 'admin/uploads/5554_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:07:46', 'fasfaf', 'fdasf', 93, ''),
(23, 13, 'admin/uploads/3202_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:08:21', 'fasf', 'fasf', 93, ''),
(24, 13, 'admin/uploads/6535_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:09:19', 'fasf', 'saff', 93, ''),
(25, 12, 'admin/uploads/8974_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:24:38', 'fgs', 'gs', 93, ''),
(26, 13, 'admin/uploads/9035_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:51:44', 'q', 'q', 93, ''),
(27, 13, 'admin/uploads/4503_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:52:44', 'fasfaf', 'fasf', 93, ''),
(28, 13, 'admin/uploads/7827_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:54:20', 'ffsafsfafsaf', 'fsa', 93, ''),
(29, 13, 'admin/uploads/6680_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 13:02:49', 'jkl', 'jkl', 93, ''),
(30, 14, 'admin/uploads/1457_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 13:06:56', 'fasf', 'saf', 93, ''),
(31, 16, 'admin/uploads/7151_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 10:39:52', 'test', 'my_assginment', 93, ''),
(32, 17, 'admin/uploads/1918_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 15:54:19', 'q', 'q', 71, '95'),
(33, 31, 'admin/uploads/7519_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:58:58', 'dad', 'das', 75, ''),
(34, 20, 'admin/uploads/2416_File_about.php', '2014-01-14 08:51:53', 'Asssd', 'Assignment1', 136, ''),
(35, 20, 'admin/uploads/5560_File_Chrysanthemum.jpg', '2014-01-14 08:52:22', 'sder', 'sfew', 136, '98');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student_backpack`
--

CREATE TABLE IF NOT EXISTS `student_backpack` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `student_backpack`
--

INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(1, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:11:50', 'test', 210, 'test');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student_class_quiz`
--

CREATE TABLE IF NOT EXISTS `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL,
  PRIMARY KEY (`student_class_quiz_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(1, 15, 107, '3600', '0 out of 2'),
(2, 16, 136, '3600', '0 out of 0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Volcado de datos para la tabla `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(42, 'MAT', 'Matematicas', '', '', 2, '', '1st'),
(43, 'HISTO', 'Historia', '', '<p>Historia</p>\r\n', 2, '', '2nd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(5, '1002', 'red', 'Cristine', 'Redoblo', 4, 'uploads/redoblo.JPG', '', '', 'Activated'),
(12, '1000', 'morante', 'Ruby Mae ', 'Morante', 4, 'uploads/MORANTE.jpg', '<p style="text-align: justify;">Dan Grossman has taught programming languages at the University of Washington since 2003. During his 10 years as a faculty member, his department&rsquo;s undergraduate students have elected him &ldquo;teacher of the year&rdquo; twice and awarded him second place once. His research, resulting in over 50 peer-reviewed publications, has covered the theory, design, and implementation of programming languages, as well as connections to computer architecture and softwar', '', 'Activated'),
(15, 'profesor', 'profesor', 'Platea', '21', 4, 'uploads/avatar.png', '', '', 'Activated');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher_backpack`
--

CREATE TABLE IF NOT EXISTS `teacher_backpack` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher_class`
--

CREATE TABLE IF NOT EXISTS `teacher_class` (
  `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=188 ;

--
-- Volcado de datos para la tabla `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(97, 9, 7, 15, 'admin/uploads/thumbnails.jpg', '2012-2013'),
(135, 0, 22, 29, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(151, 5, 7, 14, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(152, 5, 8, 14, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(153, 5, 13, 36, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(157, 18, 15, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(158, 18, 16, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(159, 18, 12, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(160, 18, 7, 29, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(165, 134, 15, 23, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(167, 12, 13, 35, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(168, 12, 14, 35, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(170, 12, 16, 24, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(172, 18, 13, 39, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(173, 18, 14, 39, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(174, 13, 12, 16, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(175, 13, 13, 16, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(176, 13, 14, 16, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(177, 14, 12, 32, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(178, 14, 13, 32, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(179, 14, 14, 32, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(180, 19, 13, 22, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(181, 12, 20, 24, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(183, 12, 18, 24, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(184, 12, 17, 25, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(185, 12, 7, 22, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(186, 15, 22, 22, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(187, 15, 24, 42, 'admin/uploads/thumbnails.jpg', '2019-2020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher_class_announcements`
--

CREATE TABLE IF NOT EXISTS `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`teacher_class_announcements_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Volcado de datos para la tabla `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(2, '<p><strong>Project Deadline</strong></p>\r\n\r\n<p>In December 1st week&nbsp; system must fully functioning.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', '9', 87, '2013-10-30 13:21:13'),
(21, '<p>fsaf</p>\r\n', '9', 87, '2013-10-30 14:33:21'),
(31, '<p>Hi im kevin i edit this</p>\r\n', '9', 87, '2013-10-30 15:41:56'),
(33, '<p>hello teph</p>\r\n', '9', 95, '2013-10-30 17:44:28'),
(34, '<p>hello guys</p>\r\n', '9', 95, '2013-11-02 10:51:39'),
(35, '<p>dsdasd</p>\r\n', '12', 147, '2013-11-16 13:59:33'),
(36, '<p>BSIS 1A: Submit assignment on November 20, 2013 before 5pm.</p>\r\n', '12', 154, '2013-11-18 15:29:34'),
(37, '<p>aaaaa<br />\r\n&nbsp;</p>\r\n', '12', 167, '2014-01-17 14:36:32'),
(38, '<p>wala klase<img alt="sad" src="http://localhost/lms/admin/vendors/ckeditor/plugins/smiley/images/sad_smile.gif" style="height:20px; width:20px" title="sad" /></p>\r\n', '12', 167, '2014-02-13 13:45:59'),
(39, '<p>probando avisos de clase</p>\r\n', '15', 186, '2016-11-01 10:43:15'),
(40, '								<iframe width="560" height="315" src="https://www.youtube.com/embed/GnMHcg5gtvQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>								', '15', 187, '2019-10-14 23:21:53'),
(41, '<iframe width="560" height="315" src="https://www.youtube.com/embed/MybaTnzu9AA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', '15', 187, '2019-10-14 23:23:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher_class_student`
--

CREATE TABLE IF NOT EXISTS `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`teacher_class_student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=381 ;

--
-- Volcado de datos para la tabla `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(373, 185, 93, 12),
(380, 187, 93, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher_notification`
--

CREATE TABLE IF NOT EXISTS `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  PRIMARY KEY (`teacher_notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `teacher_notification`
--

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(15, 160, 'Submit Assignment file name <b>my_assginment</b>', '2013-11-25 10:39:52', 'view_submit_assignment.php', 93, 16),
(17, 161, 'Submit Assignment file name <b>q</b>', '2013-11-25 15:54:19', 'view_submit_assignment.php', 71, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher_shared`
--

CREATE TABLE IF NOT EXISTS `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_shared_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 12, 14, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 09:55:32', 'sas', 'sss');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(13, 'teph', 'teph', 'Stephanie', 'villanueva'),
(14, 'jkev', 'jkev', 'john kevin', 'lorayna'),
(15, 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `user_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Volcado de datos para la tabla `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(1, 'admin', '2013-11-01 11:57:33', '2013-11-18 10:33:54', 10),
(2, 'admin', '2013-11-05 09:52:09', '2013-11-18 10:33:54', 10),
(3, 'admin', '2013-11-08 10:41:09', '2013-11-18 10:33:54', 10),
(4, 'admin', '2013-11-12 22:53:05', '2013-11-18 10:33:54', 10),
(5, 'admin', '2013-11-13 07:07:04', '2013-11-18 10:33:54', 10),
(6, 'admin', '2013-11-13 13:07:58', '2013-11-18 10:33:54', 10),
(7, 'admin', '2013-11-13 13:30:45', '2013-11-18 10:33:54', 10),
(8, 'admin', '2013-11-13 15:25:20', '2013-11-18 10:33:54', 10),
(9, 'admin', '2013-11-13 15:46:28', '2013-11-18 10:33:54', 10),
(10, 'admin', '2013-11-13 16:04:10', '2013-11-18 10:33:54', 10),
(11, 'admin', '2013-11-13 17:31:37', '2013-11-18 10:33:54', 10),
(12, 'admin', '2013-11-13 22:47:45', '2013-11-18 10:33:54', 10),
(13, 'admin', '2013-11-14 10:27:06', '2013-11-18 10:33:54', 10),
(14, 'admin', '2013-11-14 10:27:55', '2013-11-18 10:33:54', 10),
(15, 'admin', '2013-11-14 10:38:08', '2013-11-18 10:33:54', 10),
(16, 'admin', '2013-11-14 10:38:09', '2013-11-18 10:33:54', 10),
(17, 'admin', '2013-11-14 10:41:06', '2013-11-18 10:33:54', 10),
(18, 'admin', '2013-11-14 11:44:08', '2013-11-18 10:33:54', 10),
(19, 'admin', '2013-11-14 21:53:56', '2013-11-18 10:33:54', 10),
(20, 'admin', '2013-11-14 22:03:53', '2013-11-18 10:33:54', 10),
(21, 'admin', '2013-11-16 13:40:56', '2013-11-18 10:33:54', 10),
(22, 'admin', '2013-11-18 10:22:07', '2013-11-18 10:33:54', 10),
(23, 'jkev', '2013-11-18 10:33:59', '2016-10-11 13:08:54', 14),
(24, 'jkev', '2013-11-18 15:20:45', '2016-10-11 13:08:54', 14),
(25, 'jkev', '2013-11-18 15:42:04', '2016-10-11 13:08:54', 14),
(26, 'jkev', '2013-11-18 16:30:14', '2016-10-11 13:08:54', 14),
(27, 'jkev', '2013-11-18 16:36:44', '2016-10-11 13:08:54', 14),
(28, 'jkev', '2013-11-18 17:39:55', '2016-10-11 13:08:54', 14),
(29, 'jkev', '2013-11-18 20:06:49', '2016-10-11 13:08:54', 14),
(30, 'jkev', '2013-11-23 08:04:27', '2016-10-11 13:08:54', 14),
(31, 'teph', '2013-11-23 12:02:27', '2013-11-30 21:33:02', 13),
(32, 'teph', '2013-11-24 08:55:55', '2013-11-30 21:33:02', 13),
(33, 'jkev', '2013-11-25 10:32:16', '2016-10-11 13:08:54', 14),
(34, 'jkev', '2013-11-25 14:33:05', '2016-10-11 13:08:54', 14),
(35, 'jkev', '2013-11-25 15:02:47', '2016-10-11 13:08:54', 14),
(36, 'jkev', '2013-11-25 21:08:19', '2016-10-11 13:08:54', 14),
(37, 'jkev', '2013-11-25 23:49:58', '2016-10-11 13:08:54', 14),
(38, 'jkev', '2013-11-26 00:32:22', '2016-10-11 13:08:54', 14),
(39, 'jkev', '2013-11-26 10:39:52', '2016-10-11 13:08:54', 14),
(40, 'jkev', '2013-11-26 21:48:05', '2016-10-11 13:08:54', 14),
(41, 'jkev', '2013-11-28 23:00:00', '2016-10-11 13:08:54', 14),
(42, 'jkev', '2013-11-28 23:00:06', '2016-10-11 13:08:54', 14),
(43, 'jkev', '2013-11-30 21:28:54', '2016-10-11 13:08:54', 14),
(44, 'teph', '2013-11-30 21:32:54', '2013-11-30 21:33:02', 13),
(45, 'jkev', '2013-12-04 12:45:09', '2016-10-11 13:08:54', 14),
(46, 'teph', '2013-12-04 14:02:19', '', 13),
(47, 'jkev', '2013-12-11 11:56:15', '2016-10-11 13:08:54', 14),
(48, 'jkev', '2013-12-11 12:04:44', '2016-10-11 13:08:54', 14),
(49, 'jkev', '2013-12-12 09:44:34', '2016-10-11 13:08:54', 14),
(50, 'jkev', '2013-12-13 01:48:23', '2016-10-11 13:08:54', 14),
(51, 'jkev', '2013-12-27 09:13:20', '2016-10-11 13:08:54', 14),
(52, 'jkev', '2013-12-27 10:18:38', '2016-10-11 13:08:54', 14),
(53, 'jkev', '2013-12-27 10:35:43', '2016-10-11 13:08:54', 14),
(54, 'jkev', '2013-12-27 11:08:54', '2016-10-11 13:08:54', 14),
(55, 'jkev', '2013-12-27 11:20:25', '2016-10-11 13:08:54', 14),
(56, 'jkev', '2013-12-27 11:41:58', '2016-10-11 13:08:54', 14),
(57, 'jkev', '2013-12-27 11:43:10', '2016-10-11 13:08:54', 14),
(58, 'jkev', '2013-12-27 14:54:57', '2016-10-11 13:08:54', 14),
(59, 'jkev', '2014-01-12 20:08:26', '2016-10-11 13:08:54', 14),
(60, 'jkev', '2014-01-13 15:24:07', '2016-10-11 13:08:54', 14),
(61, 'jkev', '2014-01-13 18:46:08', '2016-10-11 13:08:54', 14),
(62, 'jkev', '2014-01-15 20:40:15', '2016-10-11 13:08:54', 14),
(63, 'jkev', '2014-01-16 14:42:02', '2016-10-11 13:08:54', 14),
(64, 'jkev', '2014-01-17 09:16:17', '2016-10-11 13:08:54', 14),
(65, 'jkev', '2014-01-17 13:25:51', '2016-10-11 13:08:54', 14),
(66, 'admin', '2014-01-17 14:41:30', '2019-04-22 09:48:47', 15),
(67, 'admin', '2014-01-17 15:56:32', '2019-04-22 09:48:47', 15),
(68, 'admin', '2014-01-26 17:45:31', '2019-04-22 09:48:47', 15),
(69, 'admin', '2014-02-13 10:45:17', '2019-04-22 09:48:47', 15),
(70, 'admin', '2014-02-13 11:05:27', '2019-04-22 09:48:47', 15),
(71, 'jkev', '2014-02-13 11:16:48', '2016-10-11 13:08:54', 14),
(72, 'admin', '2014-02-13 11:55:36', '2019-04-22 09:48:47', 15),
(73, 'admin', '2014-02-13 12:32:38', '2019-04-22 09:48:47', 15),
(74, 'admin', '2014-02-13 12:52:05', '2019-04-22 09:48:47', 15),
(75, 'admin', '2014-02-13 13:04:35', '2019-04-22 09:48:47', 15),
(76, 'jkev', '2014-02-13 14:35:27', '2016-10-11 13:08:54', 14),
(77, 'admin', '2014-02-20 09:40:39', '2019-04-22 09:48:47', 15),
(78, 'admin', '2014-02-20 09:42:21', '2019-04-22 09:48:47', 15),
(79, 'admin', '2014-02-27 22:40:15', '2019-04-22 09:48:47', 15),
(80, 'admin', '2014-02-28 13:12:52', '2019-04-22 09:48:47', 15),
(81, 'admin', '2014-04-02 17:27:47', '2019-04-22 09:48:47', 15),
(82, 'admin', '2014-04-03 15:29:38', '2019-04-22 09:48:47', 15),
(83, 'admin', '2014-06-15 12:31:51', '2019-04-22 09:48:47', 15),
(84, 'admin', '2016-10-11 12:18:53', '2019-04-22 09:48:47', 15),
(85, 'jkev', '2016-10-11 13:08:31', '2016-10-11 13:08:54', 14),
(86, 'admin', '2016-10-11 13:19:30', '2019-04-22 09:48:47', 15),
(87, 'admin', '2016-10-26 15:15:51', '2019-04-22 09:48:47', 15),
(88, 'admin', '2016-10-26 17:46:16', '2019-04-22 09:48:47', 15),
(89, 'admin', '2016-10-26 17:55:41', '2019-04-22 09:48:47', 15),
(90, 'admin', '2016-10-26 17:57:22', '2019-04-22 09:48:47', 15),
(91, 'admin', '2016-10-26 17:59:37', '2019-04-22 09:48:47', 15),
(92, 'admin', '2016-11-01 10:57:35', '2019-04-22 09:48:47', 15),
(93, 'admin', '2016-11-01 10:59:23', '2019-04-22 09:48:47', 15),
(94, 'admin', '2016-11-01 12:34:38', '2019-04-22 09:48:47', 15),
(95, 'admin', '2016-11-01 12:54:24', '2019-04-22 09:48:47', 15),
(96, 'admin', '2016-11-01 13:44:52', '2019-04-22 09:48:47', 15),
(97, 'admin', '2019-04-17 12:18:10', '2019-04-22 09:48:47', 15),
(98, 'admin', '2019-04-22 09:27:19', '2019-04-22 09:48:47', 15),
(99, 'admin', '2019-10-14 23:15:45', '', 15);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
