-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2018 at 02:08 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `staffcoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `staffcoc`
--

CREATE TABLE `staffcoc` (
  `ID` varchar(20) NOT NULL,
  `staffName` varchar(200) NOT NULL,
  `article` varchar(500) NOT NULL,
  `articleType` varchar(50) NOT NULL,
  `pupdate` varchar(15) NOT NULL,
  `cite` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staffcoc`
--

INSERT INTO `staffcoc` (`ID`, `staffName`, `article`, `articleType`, `pupdate`, `cite`) VALUES
('', 'phatcharee thepnimit', '', '', '', 0),
('0031624986', 'rattana wetprasit', 'Temporal reasoning with qualitative and quantitative information about points and durations', 'Conference Proceeding', '1998-01-01', 15),
('0033739028', 'rattana wetprasit', 'Representation and reasoning with multi-point events', 'Journal', '2000-01-01', 4),
('0035338875', 'rattana wetprasit', 'From binary temporal relations to non-binary ones and back', 'Journal', '2001-05-01', 2),
('0036082974', 'rattana wetprasit', 'Temporal granularity and indeterminacy in reasoning about actions and change: An approach based on the Event Calculus', 'Journal', '2002-12-01', 7),
('0036723619', 'rattana wetprasit', 'On point-duration networks for temporal reasoning', 'Journal', '2002-09-01', 10),
('0037619023', 'rattana wetprasit', 'Mining asynchronous periodic patterns in time series data', 'Journal', '2003-05-01', 83),
('0343969480', 'rattana wetprasit', 'Qualitative and quantitative temporal reasoning with points and durations', 'Conference Proceeding', '1998-01-01', 5),
('14344279688', 'rattana wetprasit', 'Reasoning on Interval and Point-based Disjunctive Metric Constraints in Temporal Contexts', 'Journal', '2000-01-01', 21),
('77956794220', 'rattana wetprasit', 'Chapter 20 Time in qualitative simulation', 'Book Series', '2005-12-01', 1),
('84876820364', 'kanjana thongglin', 'Controlled syntax for thai software requirements specification', 'Conference Proceeding', '2012-12-01', 2),
('84879854117', 'komsan kanjanasit', 'Fano resonance in a metamaterial consisting of two identical arrays of square metallic patch elements separated by a dielectric spacer', 'Journal', '2013-06-24', 5),
('84880688425', 'rattana wetprasit', 'A new framework for reasoning about points, intervals and durations', 'Conference Proceeding', '1999-12-01', 30),
('84884910738', 'rattana wetprasit', 'Computational complexity of linear constraints over the integers', 'Journal', '2013-01-01', 12),
('84893359193', 'rattana wetprasit', 'Some observations on durations, scheduling and Allenâ€™s algebra', 'Book Series', '2000-01-01', 6),
('84893398800', 'rattana wetprasit', 'Timelines with temporal uncertainty', 'Conference Proceeding', '2013-12-01', 17),
('84898629621', 'kanjana thongglin', 'Thai software requirements specification pattern', 'Conference Proceeding', '2013-01-01', 3),
('84911901925', 'nattapong tongtep', 'Content-based readability assessment: A study using a syllabic alphabetic language (thai)', 'Book Series', '2014-01-01', 1),
('84916883521', 'sinchai kamolphiwong', 'QoS aware for peer selection on P2P streaming services', 'Journal', '2014-01-01', 4),
('84929302569', 'aziz nanthaamornphong', 'A controlled experiment: Do Visitor patterns improve design simplicity?', 'Conference Proceeding', '2014-01-01', 0),
('84935855168', 'aziz nanthaamornphong', 'Extracting UML Class Diagrams from Object-Oriented Fortran: ForUML', 'Journal', '2015-01-01', 3),
('84944699548', 'aziz nanthaamornphong', 'Test-Driven Development in scientific software: a survey', 'Journal', '2017-06-01', 1),
('84947249789', 'aziz nanthaamornphong', 'Evaluation of the visitor pattern to promote software design simplicity', 'Journal', '2015-01-01', 0),
('84953229753', 'sinchai kamolphiwong', 'Ontology based framework for interactive self-assessment of e-health applications', 'Journal', '2016-01-01', 0),
('84957715065', 'rattana wetprasit', 'INDU: An interval &amp; duration network', 'Book Series', '1999-01-01', 48),
('84960969208', 'nattapong tongtep', 'The monitoring management system for tangible cultural heritage surveillance', 'Conference Proceeding', '2015-11-20', 0),
('84966508453', 'nattapong tongtep', 'Human personality toward digital gameplay analytics for edutainment-based instructional design', 'Conference Proceeding', '2016-03-23', 1),
('84966546494', 'aziz nanthaamornphong', 'Bytecode-based class dependency extraction tool: Bytecode-CDET', 'Conference Proceeding', '2015-01-01', 0),
('84966661179', 'rattana wetprasit', 'Factors of influence in software process improvement: An ISO/IEC 29110 for very-small entities', 'Conference Proceeding', '2015-01-01', 4),
('84968750638', 'aziz nanthaamornphong', 'A Multi-Site Joint Replication of a Design Patterns Experiment Using Moderator Variables to Generalize across Contexts', 'Journal', '2016-04-01', 1),
('85008385957', 'sinchai kamolphiwong', 'Host-based and network-based distributed mobility management for NEMO', 'Journal', '2017-01-01', 0),
('85014995253', 'komsan kanjanasit', 'A high performance micromachined CPW fed aperture coupled compact patch antenna using a double-tuned impedance matching method', 'Conference Proceeding', '2017-01-18', 1),
('85015393512', 'aziz nanthaamornphong', 'A case study: Test-driven development in a microscopy image-processing project', 'Conference Proceeding', '2017-02-01', 3),
('85016957494', 'aziz nanthaamornphong', 'A case study: Adoption of agile in Thailand', 'Conference Proceeding', '2017-03-06', 1),
('85019450485', 'komsan kanjanasit', 'Tri-mode electric ring resonator and adjustable UWB triple band-notched antenna', 'Conference Proceeding', '2017-04-24', 1),
('85021147331', 'korawit prutsachainimmit', 'LIMA: A modeling language for enhancing mobile application interoperability', 'Book', '2014-01-14', 0),
('85022040231', 'nattapong tongtep', 'Pattern-sensitive loanword estimation for thai text clustering', 'Journal', '2017-01-01', 0),
('85026775675', 'aziz nanthaamornphong', 'WIP: Generating Sequence Diagrams for Modern Fortran', 'Conference Proceeding', '2017-06-29', 0),
('85029308498', 'komsan kanjanasit', 'Ultrawideband (UWB) Planar Antenna with Single-, Dual-, and Triple-Band Notched Characteristic Based on Electric Ring Resonator', 'Journal', '2017-01-01', 18),
('85037870084', 'aziz nanthaamornphong', 'A model-based method for modeling and verifying event-based aspect-oriented applications', 'Book Series', '2018-01-01', 0),
('85041720742', 'aziz nanthaamornphong', 'Squirrel: A code snippet repository', 'Journal', '2017-01-01', 0),
('85041735340', 'aziz nanthaamornphong', 'The Study of Code Reviews based on Software Maintainability in Open Source Projects', 'Journal', '2017-01-01', 0),
('85041751556', 'aziz nanthaamornphong', 'Modern Fortran Transformation Rules for UML Sequence Diagrams', 'Journal', '2017-01-01', 0),
('85042071313', 'kitsiri chochiang', 'L2D: A Modified Algorithm based on Edit Distance for Searching Thai-English Transliterated Words', 'Conference Proceeding', '2017-12-05', 0),
('85046293913', 'komsan kanjanasit', 'A broadband resonant cavity antenna using a metamaterial based on double-side identical arrays', 'Conference Proceeding', '2018-01-29', 0),
('85047019617', 'winai nadee,korawit prutsachainimmit', 'Towards data extraction of dynamic content from JavaScript Web applications', 'Conference Proceeding', '2018-04-19', 0),
('85047256366', 'winai nadee', 'A dual aspect model: Modeling systems alignment', 'Conference Proceeding', '2017-11-07', 0),
('85053052285', 'aziz nanthaamornphong', 'Test-driven development in hpc science: A case study', 'Journal', '2018-09-01', 0),
('85053442668', 'sinchai kamolphiwong', 'The Design of SDN Based Detection for Distributed Denial of Service (DDoS) Attack', 'Conference Proceeding', '2018-08-21', 0),
('85055179896', 'aziz nanthaamornphong', 'Empirical evaluation of code smells in open source projects: Preliminary results', 'Conference Proceeding', '2016-09-04', 0),
('85057607068', 'rattana wetprasit', 'Temporal relation algebra for audiovisual content analysis', 'Journal', '2018-01-01', 0),
('9144253952', 'rattana wetprasit', 'Models of representation of temporal relations in intelligent decision support systems', 'Journal', '2003-09-01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `useradmin`
--

CREATE TABLE `useradmin` (
  `usernameAdmin` varchar(20) NOT NULL,
  `passAdmin` varchar(20) NOT NULL,
  `rights` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useradmin`
--

INSERT INTO `useradmin` (`usernameAdmin`, `passAdmin`, `rights`) VALUES
('admin', '123456', 'admin'),
('dan', '123456', 'admin'),
('nan', '123456', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `staffcoc`
--
ALTER TABLE `staffcoc`
  ADD UNIQUE KEY `ID` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
