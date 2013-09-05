--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `abbreviation`) VALUES
(1, 'English', 'en'),
(2, 'Français', 'fr'),
(3, 'Deutsch', 'de'),
(4, 'Español', 'es'),
(5, 'Italiano', 'it'),
(6, 'Български', 'bg');

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'guest'),
(2, 'member'),
(3, 'admin');

--
-- Dumping data for table `resource`
--

INSERT INTO `resource` (`id`, `name`) VALUES
(1, 'all'),
(2, 'Public Resource'),
(3, 'Private Resource'),
(4, 'Admin Resource');
