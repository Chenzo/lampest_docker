

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `TestDB`
--
CREATE DATABASE IF NOT EXISTS `TestDB` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `TestDB`;



CREATE TABLE `Fake_Table` (
  `FT_Guid` int(11) NOT NULL,
  `Thing` varchar(60) NOT NULL,
  `Another_Thing` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `Fake_Table` (`FT_Guid`, `Thing`, `Another_Thing`) VALUES
(1, 'Just', 'Lorem ipsum dolor sit amet'),
(2, 'Some', 'sis risus molestie. Suspendisse facili'),
(3, 'Workds', 'Sed et elementum lorem, a rhoncus nisi.'),
(4, 'Go', ' ex ex consectetur mi, a maximus'),
(5, 'IN', ' Pellentesque aliquam purus varius pharetra finibus'),
(6, 'Here', 'ilisis. Nunc non imperdiet dui, ');

ALTER TABLE `Fake_Table`
  ADD PRIMARY KEY (`FT_Guid`);
COMMIT;