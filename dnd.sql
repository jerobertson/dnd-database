-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 19, 2019 at 07:33 PM
-- Server version: 10.0.37-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jerobert_jerobertson_co_uk_dnd`
--

-- --------------------------------------------------------

--
-- Table structure for table `ability`
--

CREATE TABLE `ability` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `ability`
--

INSERT INTO `ability` (`name`, `description`) VALUES
('Charisma', 'Measures: Confidence, eloquence, leadership.\r\n\r\nImportant for: Bard, Sorcerer, Warlock.'),
('Constitution', 'Measures: Health, stamina, vital force.\r\n\r\nImportant for: Everyone.'),
('Dexterity', 'Measures: Physical agility, reflexes, balance, poise.\r\n\r\nImportant for: Monk, Ranger, Rogue.'),
('Intelligence', 'Measures: Mental acuity, information recall, analytical skill.\r\n\r\nImportant for: Wizard.'),
('Strength', 'Measures: Natural athleticism, bodily power.\r\n\r\nImportant for: Barbarian, Fighter, Paladin.'),
('Wisdom', 'Measures: Awareness, intuition, insight.\r\n\r\nImportant for: Cleric, Druid.');

-- --------------------------------------------------------

--
-- Table structure for table `alignment`
--

CREATE TABLE `alignment` (
  `id` int(11) NOT NULL,
  `name_x` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `name_y` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `alignment`
--

INSERT INTO `alignment` (`id`, `name_x`, `name_y`) VALUES
(1, 'Lawful', 'Good'),
(2, 'Neutral', 'Good'),
(3, 'Chaotic', 'Good'),
(4, 'Lawful', 'Neutral'),
(5, 'True', 'Neutral'),
(6, 'Chaotic', 'Neutral'),
(7, 'Lawful', 'Evil'),
(8, 'Neutral', 'Evil'),
(9, 'Chaotic', 'Evil');

-- --------------------------------------------------------

--
-- Table structure for table `alignment_type`
--

CREATE TABLE `alignment_type` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `alignment_type`
--

INSERT INTO `alignment_type` (`name`) VALUES
('Chaotic'),
('Evil'),
('Good'),
('Lawful'),
('Neutral'),
('True');

-- --------------------------------------------------------

--
-- Table structure for table `armour`
--

CREATE TABLE `armour` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `armour_type` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `class` int(11) NOT NULL,
  `dex_bonus` tinyint(1) NOT NULL,
  `dex_bonus_max` int(11) DEFAULT NULL,
  `str_req` int(11) DEFAULT NULL,
  `stealth_disadvantage` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `armour`
--

INSERT INTO `armour` (`name`, `armour_type`, `class`, `dex_bonus`, `dex_bonus_max`, `str_req`, `stealth_disadvantage`) VALUES
('Breastplate', 'Medium', 14, 1, 2, NULL, 0),
('Chain Mail', 'Heavy', 16, 0, NULL, 13, 1),
('Chain Shirt', 'Medium', 13, 1, 2, NULL, 0),
('Half Plate', 'Medium', 15, 1, 2, NULL, 1),
('Hide', 'Medium', 12, 1, 2, NULL, 0),
('Leather', 'Light', 11, 1, NULL, NULL, 0),
('Padded', 'Light', 11, 1, NULL, NULL, 1),
('Plate', 'Heavy', 18, 0, NULL, 15, 1),
('Ring Mail', 'Heavy', 14, 0, NULL, NULL, 1),
('Scale Mail', 'Medium', 14, 1, 2, NULL, 1),
('Shield', 'Shields', 2, 0, NULL, NULL, 0),
('Splint', 'Heavy', 17, 0, NULL, 15, 1),
('Studded Leather', 'Light', 12, 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `armour_type`
--

CREATE TABLE `armour_type` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `don` int(11) NOT NULL,
  `doff` int(11) NOT NULL,
  `disaction` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `armour_type`
--

INSERT INTO `armour_type` (`name`, `don`, `doff`, `disaction`) VALUES
('Heavy', 10, 5, 0),
('Light', 1, 1, 0),
('Medium', 5, 1, 0),
('Shields', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8_unicode_520_ci,
  `development_tips` text COLLATE utf8_unicode_520_ci,
  `suggested_characteristics` text COLLATE utf8_unicode_520_ci,
  `coins` int(11) NOT NULL,
  `skills_limit` int(11) DEFAULT NULL,
  `languages_limit` int(11) DEFAULT NULL,
  `personality_trait_limit` int(11) DEFAULT NULL,
  `ideal_limit` int(11) DEFAULT NULL,
  `bond_limit` int(11) DEFAULT NULL,
  `flaw_limit` int(11) DEFAULT NULL,
  `specialty_name` varchar(63) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `specialty_description` text COLLATE utf8_unicode_520_ci,
  `specialty_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`name`, `description`, `development_tips`, `suggested_characteristics`, `coins`, `skills_limit`, `languages_limit`, `personality_trait_limit`, `ideal_limit`, `bond_limit`, `flaw_limit`, `specialty_name`, `specialty_description`, `specialty_limit`) VALUES
('Acolyte', 'You have spent your life in the service of a temple to a specific god or pantheon of gods. You act as an intermediary between the realm of the holy and the mortal world, performing sacred rites and offering sacrifices in order to conduct worshippers into the presence of the divine. You are not necessarily a cleric - performing sacred rites is not the same thing as channelling divine power.', 'Choose a god, a pantheon of gods, or some other quasi-divine being and work with your DM to detail the nature of your religious service. Were you a lesser functionary in a temple, raised from childhood to assist the priests in the sacred rites? Or were you a high priest who suddenly experienced a call to serve your god in a different way? Perhaps you were the leader of a small cult outside of any established temple structure, or even an occult group that served a fiendish master that you now deny.', 'Acolytes are shaped by their experience in temples or other religious communities. Their study of the history and tenets of their faith and their relationships to temples, shrines, or hierarchies affect their mannerisms and ideals. Their flaws might be some hidden hypocrisy or heretical idea, or an ideal or bond taken to an extreme.', 1500, 2, 2, 2, 1, 1, 1, NULL, NULL, NULL),
('Charlatan', 'You have always had a way with people. You know what makes them tick, you can tease out their hearts\' desires after a few minutes of conversation, and with a few leading questions you can read them like they were children\'s books. It\'s a useful talent, and one that you\'re perfectly willing to use for your advantage.\r\n\r\nYou know what people want and you deliver, or rather, you promise to deliver. Common sense should steer people away from things that sound too good to be true, but common sense seems to be in short supply when you\'re around. The bottle of pink-coloured liquid will surely cure that unseemly rash, this ointment - nothing more than a bit of fat with a sprinkle of silver dust - can restore youth and vifor, and there\'s a bridge in the city that just happens to be for sale. These marvels sound implausible, but you make them sound like the real deal.', NULL, 'Charlatans are colourful characters who conceal their true selves behind the masks they construct. They reflect what people want to see, what they want to believe, and how they see the world. But their true selves are sometimes plagued by an uneasy conscience, an old enemy, or deep-seated trust issues.', 1500, 2, NULL, 2, 1, 1, 1, 'Favourite Schemes', 'Every charlatan has an angle he or she users in preference to other schemes.', 1),
('Criminal', 'You are an experienced criminal with a history of breaking the law. You have spent a lot of time among other criminals and still have contacts within the criminal underworld. You\'re far closer than most people to the world of murder, theft, and violence that pervades the underbelly of civilisation, and you have survived up to this point by flouting the rules and regulations of society.', NULL, 'Criminals might seem like villains on the surface - and many of them are villainous to the core - but some have an abundance of endearing, if not redeeming, characteristics. There might be honour among thieves, but criminals rarely show any respect for law or authority.', 1500, 2, NULL, 2, 1, 1, 1, 'Criminal Speciality', 'There are many kinds of criminals, and within a thieves\' guild or similar criminal organisation, individual members have particular specialties. Even criminals who operate outside of such organisations have strong preferences for certain kinds of crimes over others.', 1),
('Criminal: Spy', 'Although your capabilities are not much different from those of a burglar or smuggler, you learned and practised them in a very different context: as an espionage agent. You might have been an officially sanctioned agent of the crown, or perhaps you sold the secrets you uncovered to the highest bidder.', NULL, 'Criminals might seem like villains on the surface - and many of them are villainous to the core - but some have an abundance of endearing, if not redeeming, characteristics. There might be honour among thieves, but criminals rarely show any respect for law or authority.', 1500, 2, NULL, 2, 1, 1, 1, 'Criminal Speciality', 'There are many kinds of criminals, and within a thieves\' guild or similar criminal organisation, individual members have particular specialties. Even criminals who operate outside of such organisations have strong preferences for certain kinds of crimes over others.', 1),
('Entertainer', 'You thrive in front of an audience. You know how to entrance them, entertain them, and even inspire them. Your poetics can stir the hearts of those who hear you, awakening grief or joy, laughter or anger. Your music raises their spirits or captures their sorrow. Your dance steps captivate, your humour cuts to the quick. Whatever techniques you use, your art is your life.', NULL, 'Successful entertainers have to be able to capture and hold an audience\'s attention, so they tend to have flamboyant or forceful personalities. They\'re inclined toward the romantic and often cling to high-minded ideals about the practice of art and the appreciation of beauty.', 1500, 2, NULL, 2, 1, 1, 1, 'Entertainer Routines', 'A good entertainer is versatile, spicing up every performance with a variety of different routines. Choose one to three routines.', 3),
('Entertainer: Gladiator', 'A gladiator is as much an entertainer as any minstrel or circus performer, trained to make the arts of combat into a spectacle the crowd can enjoy. This kind of flashy combat is your entertainer routine, though you might also have some skills as a tumbler or actor. Using your By Popular Demand feature, you can find a place to perform in any place that features combat for entertainment - perhaps a gladiatorial arena or secret pit fighting club.', NULL, 'Successful entertainers have to be able to capture and hold an audience\'s attention, so they tend to have flamboyant or forceful personalities. They\'re inclined toward the romantic and often cling to high-minded ideals about the practice of art and the appreciation of beauty.', 1500, 2, NULL, 2, 1, 1, 1, 'Entertainer Routines', 'A good entertainer is versatile, spicing up every performance with a variety of different routines. Choose one to three routines.', 2),
('Folk Hero', 'You come from a humble social rank, but you are destined for so much more. Already the people of your home village regard you as their champion, and you destiny calls you to stand against the tyrants and monsters that threaten the common folk everywhere.', NULL, 'A folk hero is one of the common people, for better or for worse. Most folk heroes look on their humble origins as a virtue, not a shortcoming, and their home communities remain very important to them.', 1000, 2, NULL, 2, 1, 1, 1, 'Defining Event', 'You previously pursued a simple profession among the peasantry - perhaps as a farmer, miner, servant, shepherd, woodcutter, or gravedigger - but something happened that set you on a different path and marked you for greater things.', 1),
('Guild Artisan', 'You are a member of an artisan\'s guild, skilled in a particular field and closely associated with other artisans. You are a well-established part of the mercantile world, freed by talent and wealth from the constraints of a feudal social order. You learned your skills as an apprentice to a master artisan, under the sponsorship of your guild, until you became a master in your own right.', NULL, 'Guild artisans are among the most ordinary people in the world - until they set down their tools and take up and adventuring career. They understand the value of hard work and the importance of community, but they\'re vulnerable to sins of greed and covetousness.', 1500, 2, 1, 2, 1, 1, 1, 'Guild Business', 'Guilds are generally found in cities large enough to support several artisans practicing the same trade. However, your guild might instead be a loose network of artisans who each work in a different village within a larger realm. Work with you DM to determine the nature of your guild.', 1),
('Guild Merchant', 'Instead of an artisans\' guild, you belong to a guild of traders, caravan masters, or shopkeepers. You don\'t craft items your self but earn a living by buying and selling the works of others (or the raw materials artisans need to practice their craft). Your guild might be a large merchant consortium (or family) with interests across the region. Perhaps you transported goods from one place to another, by ship, wagon, or caravan, or bought them from travelling traders and sold them in your own little shop. In some ways, the travelling merchant\'s life lends itself to adventure far more than the life of an artisan.', NULL, 'Guild artisans are among the most ordinary people in the world - until they set down their tools and take up and adventuring career. They understand the value of hard work and the importance of community, but they\'re vulnerable to sins of greed and covetousness.', 1500, 2, 2, 2, 1, 1, 1, 'Guild Business', 'Guilds are generally found in cities large enough to support several artisans practicing the same trade. However, your guild might instead be a loose network of artisans who each work in a different village within a larger realm. Work with you DM to determine the nature of your guild.', 1),
('Hermit', 'You lived in seclusion - either in a sheltered community such as a monastery, or entirely alone - for a formative part of you life. In your time apart from the clamour of society, you found quiet, solitude, and perhaps some of the answers you were looking for.', NULL, 'Some hermits are well suited to a life of seclusion, whereas others chafe against it and long for company. Whether they embrace solitude or long to escape it, the solitary life shapes their attitudes and ideals. A few are driven slightly mad by their years apart from society.', 500, 2, 1, 2, 1, 1, 1, 'Life of Seclusion', 'What was the reason of your isolation, and what changed to allow you to end your solitude?', 1),
('Noble', 'You understand wealth, power, and privilege. You carry a noble title, and your family owns land, collects taxes, and wields significant political influence. You might be a pampered aristocrat unfamiliar with work or discomfort, a former merchant just elevated to nobility, or a disinherited scoundrel with a disproportionate sense of entitlement. Alternatively, you could be an honest, hard-working landowner who cares deeply about the people who live and work on your land, keenly aware of your responsibility to them.\r\n\r\nWork with your DM to come up with an appropriate title and determine how much authority that title carries. A noble title doesn\'t stand on its own - it\'s connected to an entire family, and whatever title you hold, you will pass it down to your own children. Not only do you need to determine your noble title, but you should also work with the DM to describe your family and their influence on you.', 'If your family old and established, or was you title only recently bestowed? How much influence do they wield, and over what area? What kind of reputation does your family have among the other aristocrats of the region? How do the common people regard them?\r\n\r\nWhat\'s your position in the family? Are you the heir to the head of the family? Have you already inherited the title? How do you feel about that responsibility? Are you so far down the line of inheritance that no-one cares what you do, as long as you don\'t embarrass the family? How does the head of your family feel about yoru adventuring career? Are you in your family\'s good graces, or shunned by the rest of your family?\r\n\r\nDoes your family have a coat of arms? An insignia you might wear on a signet ring? Particular colours you wear all the time? An animal you regard as a symbol of your line or even a spiritual member of the family?\r\n\r\nThese details help establish your family and your title as features of the world of the campaign.', 'Nobles are born and raised to a very different lifestyle than most people ever experience, and their personalities reflect that upbringing. A noble title comes with a plethora of bonds - responsibilities to family, to other nobles (including the sovereign), to the people entrusted to the family\'s care, or even to the title itself. This responsibility is often a good way to undermine a noble.', 2500, 2, 1, 2, 1, 1, 1, NULL, NULL, NULL),
('Noble: Knight', 'A knighthood is among the lowest noble titles in most societies, but it can be a path to a higher status. You have three retainers, one of which serves as your squire, aiding you in exchange for training on his or her own path to knighthood. Your other two retainers might include a groom to care for your horse and a servant who polishes your armour (and even helps you put it on).', NULL, 'Nobles are born and raised to a very different lifestyle than most people ever experience, and their personalities reflect that upbringing. A noble title comes with a plethora of bonds - responsibilities to family, to other nobles (including the sovereign), to the people entrusted to the family\'s care, or even to the title itself. This responsibility is often a good way to undermine a noble.', 2500, 2, 1, 2, 1, 1, 1, NULL, NULL, NULL),
('Outlander', 'You grew up in the wilds, far from civilisation and the comforts of town and technology. You\'ve witnessed the migration of herds larger than forests, survived weather more extreme than any city-dweller could comprehend, and enjoyed the solitude of being the only thinking creature for miles in any direction. The wilds are in your blood, whether you were a nomad, an explorer, a recluse, a hunter-gather or even a marauder. Even in places where you don\'t know the specific features of the terrain, you know the ways of the wild.', NULL, 'Often considered rude and uncouth among civilised folk, outlanders have little respect for the niceties of life in the cities. The ties of tribe, clan, family, and the natural world of which they are a part are the most important bonds to most outlanders.', 1000, 2, 1, 2, 1, 1, 1, 'Origin', 'You\'ve been to strange places and seen things that others cannot begin to fathom. Consider some of the distant lands you have visited, and how they impacted you. This is your occupation during your time in the wild.', 1),
('Sage', 'You spent years learning the lore of the multiverse. You scoured manuscripts, studied scrolls, and listened to the greatest experts on the subjects that interest you. Your efforts have made you a master in your fields of study.', NULL, 'Sages are defined by their extensive studies, and their characteristics reflect this life of study. Devoted to scholarly pursuits, a sage values knowledge highly - sometimes in its own right, sometimes as a means toward other ideals.', 1000, 2, 2, 2, 1, 1, 1, 'Specialty', 'This is the nature of your scholarly training.', 1),
('Sailor', 'You sailed on a seagoing vessel for years. In that time, you faced down mighty storms, monsters of the deep, and those who wanted to sink your craft to the bottomless depths. Your first love is the distance line of the horizon, but the time has come to try your hand at something new.', 'Discuss the nature of the ship you previously sailed with your DM. Was it a merchant ship, a naval vessel, a ship of discovery, or a pirate ship? How famous (or infamous) is it? Is it widely travelled? Is it still sailing, or is it missing and presumed lost with all hands?\r\n\r\nWhat were your duties on board - boatswain, captain, navigator, cook, or some other position? Who were the captain and first mate? Did you leave your ship on good terms with your fellows, or on the run?', 'Sailors can be a rough lot, but the responsibilities of life on a ship make them generally reliable as well. Life aboard a ship shapes their outlook and forms their most important attachments.', 1000, 2, NULL, 2, 1, 1, 1, NULL, NULL, NULL),
('Sailor: Pirate', 'You spent your youth under the sway of a dread pirate, a ruthless cutthroat who taught you how to survive in a world of sharks and savages. You\'ve indulged in larceny on the high seas and sent more than one deserving soul to a briny grave. Fear and bloodshed are no strangers to you, and you\'ve garnered a somewhat unsavoury reputation in many a port-town.', 'Discuss the nature of the ship you previously sailed with your DM. Was it a merchant ship, a naval vessel, a ship of discovery, or a pirate ship? How famous (or infamous) is it? Is it widely travelled? Is it still sailing, or is it missing and presumed lost with all hands?\r\n\r\nWhat were your duties on board - boatswain, captain, navigator, cook, or some other position? Who were the captain and first mate? Did you leave your ship on good terms with your fellows, or on the run?', 'Sailors can be a rough lot, but the responsibilities of life on a ship make them generally reliable as well. Life aboard a ship shapes their outlook and forms their most important attachments.', 1000, 2, NULL, 2, 1, 1, 1, NULL, NULL, NULL),
('Soldier', 'War has been your life for as long as you care to remember. You trained as a youth, studied the use of weapons and armour, learned basic survival techniques, including how to stay alive on the battlefield. You might have been part of a standing national army or a mercenary company, or perhaps a member of a local militia who rose to prominence during a recent war.', 'When you choose this background, work with your DM to determine which military organisation you were a part of, how far through its ranks you progressed, and what kind of experiences you had during your military career. Was it a standing army, a town guard, or a village militia? It might have been a noble\'s or merchant\'s private army, or a mercenary company.', 'The horrors of war combined with the rigid discipline of military service leave their mark on all soldiers, shaping their ideals, creating strong bonds, and often leaving them scarred and vulnerable to fear, shame, and hatred.', 1000, 2, NULL, 2, 1, 1, 1, 'Specialty', 'During your time as a soldier, you had a specific role to play in your unit or army.', 1),
('Urchin', 'You grew up on the streets alone, orphaned, and poor. You had no-one to watch over you or to provide for you, so you learned to provide for yourself. You fought fiercely over food and kept a constant watch out for other desperate souls who might steal from you. You slept on rooftops and in alleyways, exposed to the elements, and endured sickness without the advantage of mdicine or a place to recuperate. You\'ve survived despite all odds, and did so through cunning, strength, speed, or some combination of each.', 'You begin your adventuring career with enough money to live modestly but securely for at least ten days. How did you come by that money? What allowed you to break free of your desperate circumstances and embark on a better life?', 'Urchins are shaped by lives of desperate poverty, for good and for ill. They tend to be driven either by a commitment to the people with whom they shared life on the street or by a burning desire to find a better life - and maybe get some payback on all the rich people who treated them badly.', 1000, 2, NULL, 2, 1, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `background_bonds`
--

CREATE TABLE `background_bonds` (
  `background` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `bond` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `background_bonds`
--

INSERT INTO `background_bonds` (`background`, `bond`) VALUES
('Acolyte', 1),
('Acolyte', 2),
('Acolyte', 3),
('Acolyte', 4),
('Acolyte', 5),
('Acolyte', 6),
('Charlatan', 7),
('Charlatan', 8),
('Charlatan', 9),
('Charlatan', 10),
('Charlatan', 11),
('Charlatan', 12),
('Criminal', 13),
('Criminal', 14),
('Criminal', 15),
('Criminal', 16),
('Criminal', 17),
('Criminal', 18),
('Criminal: Spy', 13),
('Criminal: Spy', 14),
('Criminal: Spy', 15),
('Criminal: Spy', 16),
('Criminal: Spy', 17),
('Criminal: Spy', 18),
('Entertainer', 19),
('Entertainer', 20),
('Entertainer', 21),
('Entertainer', 22),
('Entertainer', 23),
('Entertainer', 24),
('Entertainer: Gladiator', 19),
('Entertainer: Gladiator', 20),
('Entertainer: Gladiator', 21),
('Entertainer: Gladiator', 22),
('Entertainer: Gladiator', 23),
('Entertainer: Gladiator', 24),
('Folk Hero', 25),
('Folk Hero', 26),
('Folk Hero', 27),
('Folk Hero', 28),
('Folk Hero', 29),
('Folk Hero', 30),
('Guild Artisan', 31),
('Guild Artisan', 32),
('Guild Artisan', 33),
('Guild Artisan', 34),
('Guild Artisan', 35),
('Guild Artisan', 36),
('Guild Merchant', 31),
('Guild Merchant', 32),
('Guild Merchant', 33),
('Guild Merchant', 34),
('Guild Merchant', 35),
('Guild Merchant', 36),
('Hermit', 37),
('Hermit', 38),
('Hermit', 39),
('Hermit', 40),
('Hermit', 41),
('Hermit', 42),
('Noble', 43),
('Noble', 44),
('Noble', 45),
('Noble', 46),
('Noble', 47),
('Noble', 48),
('Noble: Knight', 43),
('Noble: Knight', 44),
('Noble: Knight', 45),
('Noble: Knight', 46),
('Noble: Knight', 47),
('Noble: Knight', 48),
('Outlander', 49),
('Outlander', 50),
('Outlander', 51),
('Outlander', 52),
('Outlander', 53),
('Outlander', 54),
('Sage', 55),
('Sage', 56),
('Sage', 57),
('Sage', 58),
('Sage', 59),
('Sage', 60),
('Sailor', 61),
('Sailor', 62),
('Sailor', 63),
('Sailor', 64),
('Sailor', 65),
('Sailor', 66),
('Sailor: Pirate', 61),
('Sailor: Pirate', 62),
('Sailor: Pirate', 63),
('Sailor: Pirate', 64),
('Sailor: Pirate', 65),
('Sailor: Pirate', 66),
('Soldier', 67),
('Soldier', 68),
('Soldier', 69),
('Soldier', 70),
('Soldier', 71),
('Soldier', 72),
('Urchin', 73),
('Urchin', 74),
('Urchin', 75),
('Urchin', 76),
('Urchin', 77),
('Urchin', 78);

-- --------------------------------------------------------

--
-- Table structure for table `background_features`
--

CREATE TABLE `background_features` (
  `background` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `feature` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `background_features`
--

INSERT INTO `background_features` (`background`, `feature`) VALUES
('Acolyte', 'Shelter of the Faithful'),
('Charlatan', 'False Identity'),
('Criminal', 'Criminal Contact'),
('Criminal: Spy', 'Criminal Contact'),
('Entertainer', 'By Popular Demand'),
('Folk Hero', 'Rustic Hospitality'),
('Guild Artisan', 'Guild Membership'),
('Guild Merchant', 'Guild Membership'),
('Hermit', 'Discovery'),
('Noble', 'Position of Privilege'),
('Noble', 'Retainers'),
('Noble: Knight', 'Retainers'),
('Outlander', 'Wanderer'),
('Sage', 'Researcher'),
('Sailor', 'Bad Reputation'),
('Sailor', 'Ship\'s Passage'),
('Sailor: Pirate', 'Bad Reputation'),
('Soldier', 'Military Rank'),
('Urchin', 'City Secrets');

-- --------------------------------------------------------

--
-- Table structure for table `background_flaws`
--

CREATE TABLE `background_flaws` (
  `background` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `flaw` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `background_flaws`
--

INSERT INTO `background_flaws` (`background`, `flaw`) VALUES
('Acolyte', 1),
('Acolyte', 2),
('Acolyte', 3),
('Acolyte', 4),
('Acolyte', 5),
('Acolyte', 6),
('Charlatan', 7),
('Charlatan', 8),
('Charlatan', 9),
('Charlatan', 10),
('Charlatan', 11),
('Charlatan', 12),
('Criminal', 13),
('Criminal', 14),
('Criminal', 15),
('Criminal', 16),
('Criminal', 17),
('Criminal', 18),
('Criminal: Spy', 13),
('Criminal: Spy', 14),
('Criminal: Spy', 15),
('Criminal: Spy', 16),
('Criminal: Spy', 17),
('Criminal: Spy', 18),
('Entertainer', 19),
('Entertainer', 20),
('Entertainer', 21),
('Entertainer', 22),
('Entertainer', 23),
('Entertainer', 24),
('Entertainer: Gladiator', 19),
('Entertainer: Gladiator', 20),
('Entertainer: Gladiator', 21),
('Entertainer: Gladiator', 22),
('Entertainer: Gladiator', 23),
('Entertainer: Gladiator', 24),
('Folk Hero', 25),
('Folk Hero', 26),
('Folk Hero', 27),
('Folk Hero', 28),
('Folk Hero', 29),
('Folk Hero', 30),
('Guild Artisan', 31),
('Guild Artisan', 32),
('Guild Artisan', 33),
('Guild Artisan', 34),
('Guild Artisan', 35),
('Guild Artisan', 36),
('Guild Merchant', 31),
('Guild Merchant', 32),
('Guild Merchant', 33),
('Guild Merchant', 34),
('Guild Merchant', 35),
('Guild Merchant', 36),
('Hermit', 37),
('Hermit', 38),
('Hermit', 39),
('Hermit', 40),
('Hermit', 41),
('Hermit', 42),
('Noble', 43),
('Noble', 44),
('Noble', 45),
('Noble', 46),
('Noble', 47),
('Noble', 48),
('Noble: Knight', 43),
('Noble: Knight', 44),
('Noble: Knight', 45),
('Noble: Knight', 46),
('Noble: Knight', 47),
('Noble: Knight', 48),
('Outlander', 49),
('Outlander', 50),
('Outlander', 51),
('Outlander', 52),
('Outlander', 53),
('Outlander', 54),
('Sage', 55),
('Sage', 56),
('Sage', 57),
('Sage', 58),
('Sage', 59),
('Sage', 60),
('Sailor', 61),
('Sailor', 62),
('Sailor', 63),
('Sailor', 64),
('Sailor', 65),
('Sailor', 66),
('Sailor: Pirate', 61),
('Sailor: Pirate', 62),
('Sailor: Pirate', 63),
('Sailor: Pirate', 64),
('Sailor: Pirate', 65),
('Sailor: Pirate', 66),
('Soldier', 67),
('Soldier', 68),
('Soldier', 69),
('Soldier', 70),
('Soldier', 71),
('Soldier', 72),
('Urchin', 73),
('Urchin', 74),
('Urchin', 75),
('Urchin', 76),
('Urchin', 77),
('Urchin', 78);

-- --------------------------------------------------------

--
-- Table structure for table `background_ideals`
--

CREATE TABLE `background_ideals` (
  `background` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `ideal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `background_ideals`
--

INSERT INTO `background_ideals` (`background`, `ideal`) VALUES
('Acolyte', 1),
('Acolyte', 2),
('Acolyte', 3),
('Acolyte', 4),
('Acolyte', 5),
('Acolyte', 6),
('Charlatan', 7),
('Charlatan', 8),
('Charlatan', 9),
('Charlatan', 10),
('Charlatan', 11),
('Charlatan', 12),
('Criminal', 13),
('Criminal', 14),
('Criminal', 15),
('Criminal', 16),
('Criminal', 17),
('Criminal', 18),
('Criminal: Spy', 13),
('Criminal: Spy', 14),
('Criminal: Spy', 15),
('Criminal: Spy', 16),
('Criminal: Spy', 17),
('Criminal: Spy', 18),
('Entertainer', 19),
('Entertainer', 20),
('Entertainer', 21),
('Entertainer', 22),
('Entertainer', 23),
('Entertainer', 24),
('Entertainer: Gladiator', 19),
('Entertainer: Gladiator', 20),
('Entertainer: Gladiator', 21),
('Entertainer: Gladiator', 22),
('Entertainer: Gladiator', 23),
('Entertainer: Gladiator', 24),
('Folk Hero', 25),
('Folk Hero', 26),
('Folk Hero', 27),
('Folk Hero', 28),
('Folk Hero', 29),
('Folk Hero', 30),
('Guild Artisan', 31),
('Guild Artisan', 32),
('Guild Artisan', 33),
('Guild Artisan', 34),
('Guild Artisan', 35),
('Guild Artisan', 36),
('Guild Merchant', 31),
('Guild Merchant', 32),
('Guild Merchant', 33),
('Guild Merchant', 34),
('Guild Merchant', 35),
('Guild Merchant', 36),
('Hermit', 37),
('Hermit', 38),
('Hermit', 39),
('Hermit', 40),
('Hermit', 41),
('Hermit', 42),
('Noble', 43),
('Noble', 44),
('Noble', 45),
('Noble', 46),
('Noble', 47),
('Noble', 48),
('Noble: Knight', 43),
('Noble: Knight', 44),
('Noble: Knight', 45),
('Noble: Knight', 46),
('Noble: Knight', 47),
('Noble: Knight', 48),
('Outlander', 49),
('Outlander', 50),
('Outlander', 51),
('Outlander', 52),
('Outlander', 53),
('Outlander', 54),
('Sage', 55),
('Sage', 56),
('Sage', 57),
('Sage', 58),
('Sage', 59),
('Sage', 60),
('Sailor', 61),
('Sailor', 62),
('Sailor', 63),
('Sailor', 64),
('Sailor', 65),
('Sailor', 66),
('Sailor: Pirate', 61),
('Sailor: Pirate', 62),
('Sailor: Pirate', 63),
('Sailor: Pirate', 64),
('Sailor: Pirate', 65),
('Sailor: Pirate', 66),
('Soldier', 67),
('Soldier', 68),
('Soldier', 69),
('Soldier', 70),
('Soldier', 71),
('Soldier', 72),
('Urchin', 73),
('Urchin', 74),
('Urchin', 75),
('Urchin', 76),
('Urchin', 77),
('Urchin', 78);

-- --------------------------------------------------------

--
-- Table structure for table `background_item_groups`
--

CREATE TABLE `background_item_groups` (
  `background` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `item_group` int(11) NOT NULL,
  `item_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `background_item_groups`
--

INSERT INTO `background_item_groups` (`background`, `item_group`, `item_limit`) VALUES
('Acolyte', 13, NULL),
('Acolyte', 14, 1),
('Charlatan', 15, NULL),
('Charlatan', 16, 1),
('Criminal', 17, NULL),
('Criminal: Spy', 17, NULL),
('Entertainer', 18, NULL),
('Entertainer', 19, 1),
('Entertainer', 20, 1),
('Entertainer: Gladiator', 18, NULL),
('Entertainer: Gladiator', 20, 1),
('Folk Hero', 21, NULL),
('Folk Hero', 22, NULL),
('Guild Artisan', 22, 1),
('Guild Artisan', 23, NULL),
('Guild Merchant', 24, NULL),
('Hermit', 25, NULL),
('Noble', 26, NULL),
('Noble: Knight', 26, NULL),
('Outlander', 27, NULL),
('Sage', 28, NULL),
('Sailor', 20, 1),
('Sailor', 29, NULL),
('Sailor: Pirate', 20, 1),
('Sailor: Pirate', 29, NULL),
('Soldier', 30, NULL),
('Soldier', 31, NULL),
('Soldier', 32, NULL),
('Urchin', 33, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `background_languages`
--

CREATE TABLE `background_languages` (
  `background` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `language` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `background_languages`
--

INSERT INTO `background_languages` (`background`, `language`) VALUES
('Acolyte', 'Common'),
('Acolyte', 'Dwarvish'),
('Acolyte', 'Elvish'),
('Acolyte', 'Giant'),
('Acolyte', 'Gnomish'),
('Acolyte', 'Goblin'),
('Acolyte', 'Halfling'),
('Acolyte', 'Orc'),
('Guild Artisan', 'Common'),
('Guild Artisan', 'Dwarvish'),
('Guild Artisan', 'Elvish'),
('Guild Artisan', 'Giant'),
('Guild Artisan', 'Gnomish'),
('Guild Artisan', 'Goblin'),
('Guild Artisan', 'Halfling'),
('Guild Artisan', 'Orc'),
('Guild Merchant', 'Common'),
('Guild Merchant', 'Dwarvish'),
('Guild Merchant', 'Elvish'),
('Guild Merchant', 'Giant'),
('Guild Merchant', 'Gnomish'),
('Guild Merchant', 'Goblin'),
('Guild Merchant', 'Halfling'),
('Guild Merchant', 'Orc'),
('Hermit', 'Common'),
('Hermit', 'Dwarvish'),
('Hermit', 'Elvish'),
('Hermit', 'Giant'),
('Hermit', 'Gnomish'),
('Hermit', 'Goblin'),
('Hermit', 'Halfling'),
('Hermit', 'Orc'),
('Noble', 'Common'),
('Noble', 'Dwarvish'),
('Noble', 'Elvish'),
('Noble', 'Giant'),
('Noble', 'Gnomish'),
('Noble', 'Goblin'),
('Noble', 'Halfling'),
('Noble', 'Orc'),
('Noble: Knight', 'Common'),
('Noble: Knight', 'Dwarvish'),
('Noble: Knight', 'Elvish'),
('Noble: Knight', 'Giant'),
('Noble: Knight', 'Gnomish'),
('Noble: Knight', 'Goblin'),
('Noble: Knight', 'Halfling'),
('Noble: Knight', 'Orc'),
('Outlander', 'Common'),
('Outlander', 'Dwarvish'),
('Outlander', 'Elvish'),
('Outlander', 'Giant'),
('Outlander', 'Gnomish'),
('Outlander', 'Goblin'),
('Outlander', 'Halfling'),
('Outlander', 'Orc'),
('Sage', 'Common'),
('Sage', 'Dwarvish'),
('Sage', 'Elvish'),
('Sage', 'Giant'),
('Sage', 'Gnomish'),
('Sage', 'Goblin'),
('Sage', 'Halfling'),
('Sage', 'Orc');

-- --------------------------------------------------------

--
-- Table structure for table `background_personality_traits`
--

CREATE TABLE `background_personality_traits` (
  `background` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `personality_trait` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `background_personality_traits`
--

INSERT INTO `background_personality_traits` (`background`, `personality_trait`) VALUES
('Acolyte', 1),
('Acolyte', 2),
('Acolyte', 3),
('Acolyte', 4),
('Acolyte', 5),
('Acolyte', 6),
('Acolyte', 7),
('Acolyte', 8),
('Charlatan', 9),
('Charlatan', 10),
('Charlatan', 11),
('Charlatan', 12),
('Charlatan', 13),
('Charlatan', 14),
('Charlatan', 15),
('Charlatan', 16),
('Criminal', 17),
('Criminal', 18),
('Criminal', 19),
('Criminal', 20),
('Criminal', 21),
('Criminal', 22),
('Criminal', 23),
('Criminal', 24),
('Criminal: Spy', 17),
('Criminal: Spy', 18),
('Criminal: Spy', 19),
('Criminal: Spy', 20),
('Criminal: Spy', 21),
('Criminal: Spy', 22),
('Criminal: Spy', 23),
('Criminal: Spy', 24),
('Entertainer', 25),
('Entertainer', 26),
('Entertainer', 27),
('Entertainer', 28),
('Entertainer', 29),
('Entertainer', 30),
('Entertainer', 31),
('Entertainer', 32),
('Entertainer: Gladiator', 25),
('Entertainer: Gladiator', 26),
('Entertainer: Gladiator', 27),
('Entertainer: Gladiator', 28),
('Entertainer: Gladiator', 29),
('Entertainer: Gladiator', 30),
('Entertainer: Gladiator', 31),
('Entertainer: Gladiator', 32),
('Folk Hero', 33),
('Folk Hero', 34),
('Folk Hero', 35),
('Folk Hero', 36),
('Folk Hero', 37),
('Folk Hero', 38),
('Folk Hero', 39),
('Folk Hero', 40),
('Guild Artisan', 41),
('Guild Artisan', 42),
('Guild Artisan', 43),
('Guild Artisan', 44),
('Guild Artisan', 45),
('Guild Artisan', 46),
('Guild Artisan', 47),
('Guild Artisan', 48),
('Guild Merchant', 41),
('Guild Merchant', 42),
('Guild Merchant', 43),
('Guild Merchant', 44),
('Guild Merchant', 45),
('Guild Merchant', 46),
('Guild Merchant', 47),
('Guild Merchant', 48),
('Hermit', 49),
('Hermit', 50),
('Hermit', 51),
('Hermit', 52),
('Hermit', 53),
('Hermit', 54),
('Hermit', 55),
('Hermit', 56),
('Noble', 57),
('Noble', 58),
('Noble', 59),
('Noble', 60),
('Noble', 61),
('Noble', 62),
('Noble', 63),
('Noble', 64),
('Noble: Knight', 57),
('Noble: Knight', 58),
('Noble: Knight', 59),
('Noble: Knight', 60),
('Noble: Knight', 61),
('Noble: Knight', 62),
('Noble: Knight', 63),
('Noble: Knight', 64),
('Outlander', 65),
('Outlander', 66),
('Outlander', 67),
('Outlander', 68),
('Outlander', 69),
('Outlander', 70),
('Outlander', 71),
('Outlander', 72),
('Sage', 73),
('Sage', 74),
('Sage', 75),
('Sage', 76),
('Sage', 77),
('Sage', 78),
('Sage', 79),
('Sage', 80),
('Sailor', 81),
('Sailor', 82),
('Sailor', 83),
('Sailor', 84),
('Sailor', 85),
('Sailor', 86),
('Sailor', 87),
('Sailor', 88),
('Sailor: Pirate', 81),
('Sailor: Pirate', 82),
('Sailor: Pirate', 83),
('Sailor: Pirate', 84),
('Sailor: Pirate', 85),
('Sailor: Pirate', 86),
('Sailor: Pirate', 87),
('Sailor: Pirate', 88),
('Soldier', 89),
('Soldier', 90),
('Soldier', 91),
('Soldier', 92),
('Soldier', 93),
('Soldier', 94),
('Soldier', 95),
('Soldier', 96),
('Urchin', 97),
('Urchin', 98),
('Urchin', 99),
('Urchin', 100),
('Urchin', 101),
('Urchin', 102),
('Urchin', 103),
('Urchin', 104);

-- --------------------------------------------------------

--
-- Table structure for table `background_skills`
--

CREATE TABLE `background_skills` (
  `background` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `skill` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `background_skills`
--

INSERT INTO `background_skills` (`background`, `skill`) VALUES
('Acolyte', 'Insight'),
('Acolyte', 'Religion'),
('Charlatan', 'Deception'),
('Charlatan', 'Sleight of Hand'),
('Criminal', 'Deception'),
('Criminal', 'Stealth'),
('Criminal: Spy', 'Deception'),
('Criminal: Spy', 'Stealth'),
('Entertainer', 'Acrobatics'),
('Entertainer', 'Performance'),
('Entertainer: Gladiator', 'Acrobatics'),
('Entertainer: Gladiator', 'Performance'),
('Folk Hero', 'Animal Handling'),
('Folk Hero', 'Survival'),
('Guild Artisan', 'Insight'),
('Guild Artisan', 'Persuasion'),
('Guild Merchant', 'Insight'),
('Guild Merchant', 'Persuasion'),
('Hermit', 'Medicine'),
('Hermit', 'Religion'),
('Noble', 'History'),
('Noble', 'Perception'),
('Noble: Knight', 'History'),
('Noble: Knight', 'Persuasion'),
('Outlander', 'Acrobatics'),
('Outlander', 'Survival'),
('Sage', 'Arcana'),
('Sage', 'History'),
('Sailor', 'Athletics'),
('Sailor', 'Perception'),
('Sailor: Pirate', 'Athletics'),
('Sailor: Pirate', 'Perception'),
('Soldier', 'Athletics'),
('Soldier', 'Intimidation'),
('Urchin', 'Sleight of Hand'),
('Urchin', 'Stealth');

-- --------------------------------------------------------

--
-- Table structure for table `background_specialties`
--

CREATE TABLE `background_specialties` (
  `background` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `specialty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `background_specialties`
--

INSERT INTO `background_specialties` (`background`, `specialty`) VALUES
('Charlatan', 1),
('Charlatan', 2),
('Charlatan', 3),
('Charlatan', 4),
('Charlatan', 5),
('Charlatan', 6),
('Criminal', 7),
('Criminal', 8),
('Criminal', 9),
('Criminal', 10),
('Criminal', 11),
('Criminal', 12),
('Criminal', 13),
('Criminal', 14),
('Criminal: Spy', 7),
('Criminal: Spy', 8),
('Criminal: Spy', 9),
('Criminal: Spy', 10),
('Criminal: Spy', 11),
('Criminal: Spy', 12),
('Criminal: Spy', 13),
('Criminal: Spy', 14),
('Entertainer', 15),
('Entertainer', 16),
('Entertainer', 17),
('Entertainer', 18),
('Entertainer', 19),
('Entertainer', 20),
('Entertainer', 21),
('Entertainer', 22),
('Entertainer', 23),
('Entertainer', 24),
('Entertainer: Gladiator', 15),
('Entertainer: Gladiator', 16),
('Entertainer: Gladiator', 17),
('Entertainer: Gladiator', 18),
('Entertainer: Gladiator', 19),
('Entertainer: Gladiator', 20),
('Entertainer: Gladiator', 21),
('Entertainer: Gladiator', 22),
('Entertainer: Gladiator', 23),
('Entertainer: Gladiator', 24),
('Folk Hero', 25),
('Folk Hero', 26),
('Folk Hero', 27),
('Folk Hero', 28),
('Folk Hero', 29),
('Folk Hero', 30),
('Folk Hero', 31),
('Folk Hero', 32),
('Folk Hero', 33),
('Folk Hero', 34),
('Guild Artisan', 35),
('Guild Artisan', 36),
('Guild Artisan', 37),
('Guild Artisan', 38),
('Guild Artisan', 39),
('Guild Artisan', 40),
('Guild Artisan', 41),
('Guild Artisan', 42),
('Guild Artisan', 43),
('Guild Artisan', 44),
('Guild Artisan', 45),
('Guild Artisan', 46),
('Guild Artisan', 47),
('Guild Artisan', 48),
('Guild Artisan', 49),
('Guild Artisan', 50),
('Guild Artisan', 51),
('Guild Artisan', 52),
('Guild Artisan', 53),
('Guild Artisan', 54),
('Guild Merchant', 35),
('Guild Merchant', 36),
('Guild Merchant', 37),
('Guild Merchant', 38),
('Guild Merchant', 39),
('Guild Merchant', 40),
('Guild Merchant', 41),
('Guild Merchant', 42),
('Guild Merchant', 43),
('Guild Merchant', 44),
('Guild Merchant', 45),
('Guild Merchant', 46),
('Guild Merchant', 47),
('Guild Merchant', 48),
('Guild Merchant', 49),
('Guild Merchant', 50),
('Guild Merchant', 51),
('Guild Merchant', 52),
('Guild Merchant', 53),
('Guild Merchant', 54),
('Hermit', 55),
('Hermit', 56),
('Hermit', 57),
('Hermit', 58),
('Hermit', 59),
('Hermit', 60),
('Hermit', 61),
('Hermit', 62),
('Outlander', 63),
('Outlander', 64),
('Outlander', 65),
('Outlander', 66),
('Outlander', 67),
('Outlander', 68),
('Outlander', 69),
('Outlander', 70),
('Outlander', 71),
('Outlander', 72),
('Sage', 73),
('Sage', 74),
('Sage', 75),
('Sage', 76),
('Sage', 77),
('Sage', 78),
('Sage', 79),
('Sage', 80),
('Soldier', 81),
('Soldier', 82),
('Soldier', 83),
('Soldier', 84),
('Soldier', 85),
('Soldier', 86),
('Soldier', 87),
('Soldier', 88);

-- --------------------------------------------------------

--
-- Table structure for table `background_tools`
--

CREATE TABLE `background_tools` (
  `background` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `tool` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `background_tools`
--

INSERT INTO `background_tools` (`background`, `tool`) VALUES
('Charlatan', 'Disguise Kit'),
('Charlatan', 'Forgery Kit'),
('Criminal', 'Thief\'s Tools'),
('Entertainer', 'Disguise Kit'),
('Guild Merchant', 'Navigator\'s Tools'),
('Hermit', 'Herbalism Kit'),
('Sailor', 'Navigator\'s Tools'),
('Urchin', 'Disguise Kit'),
('Urchin', 'Thief\'s Tools');

-- --------------------------------------------------------

--
-- Table structure for table `background_tool_types`
--

CREATE TABLE `background_tool_types` (
  `background` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `tool_type` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `tool_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `background_tool_types`
--

INSERT INTO `background_tool_types` (`background`, `tool_type`, `tool_limit`) VALUES
('Criminal', 'Gaming Set', 1),
('Criminal: Spy', 'Gaming Set', 1),
('Entertainer', 'Musical Instrument', 1),
('Guild Artisan', 'Artisan\'s Tools', 1),
('Noble', 'Gaming Set', 1),
('Noble: Knight', 'Gaming Set', 1),
('Outlander', 'Musical Instrument', 1),
('Sailor', 'Vehicle (Water)', NULL),
('Sailor: Pirate', 'Vehicle (Water)', NULL),
('Soldier', 'Gaming Set', 1),
('Soldier', 'Vehicle (Land)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bond`
--

CREATE TABLE `bond` (
  `id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `bond`
--

INSERT INTO `bond` (`id`, `description`) VALUES
(1, 'I would die to recover an ancient relic of my faith that was lost long ago.'),
(2, 'I will someday get revenge on the corrupt temple hierarchy who branded me a heretic.'),
(3, 'I owe my life to the priest who took me in when my parents died.'),
(4, 'Everything I do is for the common people.'),
(5, 'I will do anything to protect the temple where I served.'),
(6, 'I seek to preserve a sacred text that my enemies consider heretical and seek to destroy.'),
(7, 'I fleeced the wrong person and must work to ensure that this individual never crosses paths with me or those I care about.'),
(8, 'I owe everything to my mentor - a horrible person who\'s probably rotting in jail somewhere.'),
(9, 'Somewhere out there, I have a child who doesn\'t know me. I\'m making the world better for him or her.'),
(10, 'I come from a noble family, and one day I\'ll reclaim my lands and title from those who stole them from me.'),
(11, 'A powerful person killed someone I love. Some day soon, I\'ll have my revenge.'),
(12, 'I swindled and ruined a person who didn\'t deserve it. I seek to atone for my misdeeds but might never be able to forgive myself.'),
(13, 'I\'m trying to pay off an old debt I owe a generous benefactor.'),
(14, 'My ill-gotten gains go to support my family.'),
(15, 'Something important was taken from me, and I aim to steal it back.'),
(16, 'I will become the greatest thief that ever lived.'),
(17, 'I\'m guilty of a terrible crime. I hope I can redeem myself for it.'),
(18, 'Someone I loved died because of one mistake I made. That will never happen again.'),
(19, 'My instrument is my most treasured possession, and it reminds me of someone I love.'),
(20, 'Someone stole my previous instrument, and someday I\'ll get it back.'),
(21, 'I want to be famous, whatever it takes.'),
(22, 'I idolise a hero of the old tales and measure my deeds against that person\'s.'),
(23, 'I will do anything to prove myself superior to my hated rival.'),
(24, 'I would do anything for the other members of my old troupe.'),
(25, 'I have a family, but I have no idea where they are. One day, I hope to see them again.'),
(26, 'I worked the land, I love the land, and I will protect the land.'),
(27, 'A proud noble once gave me a horrible beating, and I will take my revenge on any bully I encounter.'),
(28, 'My tools are symbols of my past life, and I carry them so that I will never forget my roots.'),
(29, 'I protect those who cannot protect themselves.'),
(30, 'I wish my childhood sweetheart had come with me to pursue my destiny.'),
(31, 'The workshop where I learned my trade is the most important place in the world to me.'),
(32, 'I created a great work for someone, and then found them unworthy to receive it. I\'m still looking for someone worthy.'),
(33, 'I owe my guild a great debt for forging me into the person I am today.'),
(34, 'I pursue wealth to secure someone\'s love.'),
(35, 'One day I will return to my guild and prove that I am the greatest artisan of them all.'),
(36, 'I will get revenge on the evil forces that destroyed my place of business and ruined my livelihood.'),
(37, 'Nothing is more important the the other members of my hermitage, order, or association.'),
(38, 'I entered seclusion to hide from the ones who might still be hunting me. I must someday confront them.'),
(39, 'I\'m still seeking the enlightenment I pursued in my seclusion, and it still eludes me.'),
(40, 'I entered seclusion because I loved someone I could not have.'),
(41, 'Should my discovery come to light, it could bring ruin to the world.'),
(42, 'My isolation gave me great insight into a great evil that only I can destroy.'),
(43, 'I will face any challenge to win the approval of my family.'),
(44, 'My house\'s alliance with another noble family must be sustained at all costs.'),
(45, 'Nothing is more important than the other members of my family.'),
(46, 'I am in love with the heir of a family that my family despises.'),
(47, 'My loyalty to my sovereign is unwavering.'),
(48, 'The common folk must see me as a hero of the people.'),
(49, 'My family, clan, or tribe, is the most important thing in my life, even when they are far from me.'),
(50, 'An injury to the unspoiled wilderness of my home is an injury to me.'),
(51, 'I will bring terrible wrath down on the evildoers who destroyed my homeland.'),
(52, 'I am the last of my tribe, and it is up to me to ensure their names enter legend.'),
(53, 'I suffer awful visions of a coming disaster and will do anything to prevent it.'),
(54, 'It is my duty to provide children to sustain my tribe.'),
(55, 'It is my duty to protect my students.'),
(56, 'I have an ancient text that holds terrible secrets that must not fall into the wrong hands.'),
(57, 'I work to preserve a library, university, scriptorium, or monastery.'),
(58, 'My life\'s work is a series of tomes related to a specific field of lore.'),
(59, 'I\'ve been searching my whole life for the answer to a certain question.'),
(60, 'I sold my soul for knowledge. I hope to do great deeds and win it back.'),
(61, 'I\'m loyal to my captain first, everything else second.'),
(62, 'The ship is most important - crewmates and captains come and go.'),
(63, 'I\'ll always remember my first ship.'),
(64, 'In a harbour town, I have a paramour whose eyes nearly stole me from the sea.'),
(65, 'I was cheated out of my fair share of the profits, and I want to get my due.'),
(66, 'Ruthless pirates murdered my captain and crewmates, plundered our ship, and left me to die. Vengeance will be mine.'),
(67, 'I would still lay down my life for the people I served with.'),
(68, 'Someone saved my life on the battlefield. To this day, I will never leave a friend behind.'),
(69, 'My honour is my life.'),
(70, 'I\'ll never forget the crushing defeat my company suffered or the enemies who dealt it.'),
(71, 'Those who right beside me are those worth dying for.'),
(72, 'I fight for those who cannot fight for themselves.'),
(73, 'My town or city is my home, and I\'ll fight to defend it.'),
(74, 'I sponsor an orphanage to keep others from enduring what I was forced to endure.'),
(75, 'I owe my survival to another urchin who taught me to live on the streets.'),
(76, 'I owe a debt I can never repay to the person who took pity on me.'),
(77, 'I escaped my life of poverty by robbing an important person, and I\'m wanted for it.'),
(78, 'No one else should have to endure the hardships I\'ve been through.');

-- --------------------------------------------------------

--
-- Table structure for table `character`
--

CREATE TABLE `character` (
  `id` int(11) NOT NULL,
  `owner` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `name` varchar(63) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `race` varchar(63) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `class` varchar(63) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `background` varchar(63) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `alignment` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `coins` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_base_abilities`
--

CREATE TABLE `character_base_abilities` (
  `character` int(11) NOT NULL,
  `ability` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_bonds`
--

CREATE TABLE `character_bonds` (
  `character` int(11) NOT NULL,
  `bond` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_flaws`
--

CREATE TABLE `character_flaws` (
  `character` int(11) NOT NULL,
  `flaw` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_ideals`
--

CREATE TABLE `character_ideals` (
  `character` int(11) NOT NULL,
  `ideal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_item_groups`
--

CREATE TABLE `character_item_groups` (
  `character` int(11) NOT NULL,
  `item_group` int(11) NOT NULL,
  `item_group_source` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_item_group_source`
--

CREATE TABLE `character_item_group_source` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_languages`
--

CREATE TABLE `character_languages` (
  `character` int(11) NOT NULL,
  `language` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `language_source` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_language_source`
--

CREATE TABLE `character_language_source` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_personality_traits`
--

CREATE TABLE `character_personality_traits` (
  `character` int(11) NOT NULL,
  `personality_trait` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_saving_throws`
--

CREATE TABLE `character_saving_throws` (
  `character` int(11) NOT NULL,
  `ability` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `saving_throw_source` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_saving_throw_source`
--

CREATE TABLE `character_saving_throw_source` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_skill_proficiencies`
--

CREATE TABLE `character_skill_proficiencies` (
  `character` int(11) NOT NULL,
  `skill` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `skill_proficiency_source` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_skill_proficiency_source`
--

CREATE TABLE `character_skill_proficiency_source` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_specialties`
--

CREATE TABLE `character_specialties` (
  `character` int(11) NOT NULL,
  `specialty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_tool_proficiencies`
--

CREATE TABLE `character_tool_proficiencies` (
  `character` int(11) NOT NULL,
  `tool` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `tool_proficiency_source` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character_tool_proficiency_source`
--

CREATE TABLE `character_tool_proficiency_source` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `hit_die` int(11) NOT NULL,
  `tools_limit` int(11) NOT NULL,
  `tools_multiclass_limit` int(11) NOT NULL,
  `skills_limit` int(11) NOT NULL,
  `skills_multiclass_limit` int(11) NOT NULL,
  `wealth_roll` int(11) NOT NULL,
  `wealth_multiplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`name`, `hit_die`, `tools_limit`, `tools_multiclass_limit`, `skills_limit`, `skills_multiclass_limit`, `wealth_roll`, `wealth_multiplier`) VALUES
('Barbarian', 5, 0, 0, 2, 0, 7, 10),
('Bard', 3, 3, 1, 3, 1, 25, 10),
('Cleric', 3, 0, 0, 2, 0, 25, 10),
('Druid', 3, 1, 0, 2, 0, 7, 10),
('Fighter', 4, 0, 0, 2, 0, 25, 10),
('Monk', 3, 1, 0, 2, 0, 25, 1),
('Paladin', 4, 0, 0, 2, 0, 25, 10),
('Ranger', 4, 0, 0, 3, 1, 25, 10),
('Rogue', 3, 1, 1, 4, 1, 19, 10),
('Sorcerer', 2, 0, 0, 2, 0, 13, 10),
('Warlock', 3, 0, 0, 2, 0, 19, 10),
('Wizard', 2, 0, 0, 2, 0, 19, 10);

-- --------------------------------------------------------

--
-- Table structure for table `class_armour_proficiencies`
--

CREATE TABLE `class_armour_proficiencies` (
  `class` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `armour` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `multiclassed_valid` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_armour_type_proficiencies`
--

CREATE TABLE `class_armour_type_proficiencies` (
  `class` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `armour_type` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `multiclassed_valid` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `class_armour_type_proficiencies`
--

INSERT INTO `class_armour_type_proficiencies` (`class`, `armour_type`, `multiclassed_valid`) VALUES
('Barbarian', 'Light', 0),
('Barbarian', 'Medium', 0),
('Barbarian', 'Shields', 1),
('Bard', 'Light', 1),
('Cleric', 'Light', 1),
('Cleric', 'Medium', 1),
('Cleric', 'Shields', 1),
('Druid', 'Light', 1),
('Druid', 'Medium', 1),
('Druid', 'Shields', 1),
('Fighter', 'Heavy', 0),
('Fighter', 'Light', 1),
('Fighter', 'Medium', 1),
('Fighter', 'Shields', 1),
('Paladin', 'Heavy', 0),
('Paladin', 'Light', 1),
('Paladin', 'Medium', 1),
('Paladin', 'Shields', 1),
('Ranger', 'Light', 1),
('Ranger', 'Medium', 1),
('Ranger', 'Shields', 1),
('Rogue', 'Light', 1),
('Warlock', 'Light', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_features`
--

CREATE TABLE `class_features` (
  `class` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `feature` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `level_requirement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `class_features`
--

INSERT INTO `class_features` (`class`, `feature`, `level_requirement`) VALUES
('Barbarian', 'Ability Score Improvement', 4),
('Barbarian', 'Ability Score Improvement', 8),
('Barbarian', 'Ability Score Improvement', 12),
('Barbarian', 'Ability Score Improvement', 16),
('Barbarian', 'Ability Score Improvement', 19),
('Barbarian', 'Brutal Critical', 9),
('Barbarian', 'Danger Sense', 2),
('Barbarian', 'Extra Attack', 5),
('Barbarian', 'Fast Movement', 5),
('Barbarian', 'Feral Instinct', 7),
('Barbarian', 'Indomitable Might', 18),
('Barbarian', 'Persistent Rage', 15),
('Barbarian', 'Primal Champion', 20),
('Barbarian', 'Primal Path', 3),
('Barbarian', 'Rage', 1),
('Barbarian', 'Reckless Attack', 2),
('Barbarian', 'Relentless Rage', 11),
('Barbarian', 'Unarmoured Defence', 1),
('Bard', 'Ability Score Improvement', 4),
('Bard', 'Ability Score Improvement', 8),
('Bard', 'Ability Score Improvement', 12),
('Bard', 'Ability Score Improvement', 16),
('Bard', 'Ability Score Improvement', 19),
('Bard', 'Bard College', 3),
('Bard', 'Bard\'s Expertise', 3),
('Bard', 'Bardic Inspiration', 1),
('Bard', 'Countercharm', 6),
('Bard', 'Font of Inspiration', 5),
('Bard', 'Jack of All Trades', 2),
('Bard', 'Magical Secrets', 10),
('Bard', 'Song of Rest', 2),
('Bard', 'Superior Inspiration', 20),
('Cleric', 'Ability Score Improvement', 4),
('Cleric', 'Ability Score Improvement', 8),
('Cleric', 'Ability Score Improvement', 12),
('Cleric', 'Ability Score Improvement', 16),
('Cleric', 'Ability Score Improvement', 19),
('Cleric', 'Channel Divinity', 2),
('Cleric', 'Channel Divinity: Turn Undead', 2),
('Cleric', 'Destroy Undead', 5),
('Cleric', 'Divine Domain', 1),
('Cleric', 'Divine Intervention', 10),
('Druid', 'Ability Score Improvement', 4),
('Druid', 'Ability Score Improvement', 8),
('Druid', 'Ability Score Improvement', 12),
('Druid', 'Ability Score Improvement', 16),
('Druid', 'Ability Score Improvement', 19),
('Druid', 'Archdruid', 20),
('Druid', 'Beast Spells', 18),
('Druid', 'Druid Circle', 2),
('Druid', 'Druid\'s Timeless Body', 18),
('Druid', 'Druidic', 1),
('Druid', 'Wild Shape', 2),
('Fighter', 'Ability Score Improvement', 4),
('Fighter', 'Ability Score Improvement', 8),
('Fighter', 'Ability Score Improvement', 12),
('Fighter', 'Ability Score Improvement', 14),
('Fighter', 'Ability Score Improvement', 16),
('Fighter', 'Ability Score Improvement', 19),
('Fighter', 'Action Surge', 2),
('Fighter', 'Extra Attack', 5),
('Fighter', 'Fighting Style', 1),
('Fighter', 'Indomitable', 9),
('Fighter', 'Martial Archetype', 3),
('Fighter', 'Second Wind', 1),
('Monk', 'Ability Score Improvement', 4),
('Monk', 'Ability Score Improvement', 8),
('Monk', 'Ability Score Improvement', 12),
('Monk', 'Ability Score Improvement', 16),
('Monk', 'Ability Score Improvement', 19),
('Monk', 'Deflect Missiles', 3),
('Monk', 'Diamond Soul', 14),
('Monk', 'Empty Body', 18),
('Monk', 'Evasion', 7),
('Monk', 'Extra Attack', 5),
('Monk', 'Flurry Of Blows', 2),
('Monk', 'Ki', 2),
('Monk', 'Ki-Empowered Strikes', 6),
('Monk', 'Martial Arts', 1),
('Monk', 'Monastic Tradition', 3),
('Monk', 'Monk\'s Timeless Body', 15),
('Monk', 'Patient Defence', 2),
('Monk', 'Perfect Self', 20),
('Monk', 'Purity of Body', 10),
('Monk', 'Slow Fall', 4),
('Monk', 'Step of the Wind', 2),
('Monk', 'Stillness of Mind', 7),
('Monk', 'Stunning Strike', 5),
('Monk', 'Tongue of the Sun and Moon', 13),
('Monk', 'Unarmoured Defence', 1),
('Monk', 'Unarmoured Movement', 2),
('Paladin', 'Ability Score Improvement', 4),
('Paladin', 'Ability Score Improvement', 8),
('Paladin', 'Ability Score Improvement', 12),
('Paladin', 'Ability Score Improvement', 16),
('Paladin', 'Ability Score Improvement', 19),
('Paladin', 'Aura of Courage', 10),
('Paladin', 'Aura of Protection', 6),
('Paladin', 'Cleansing Touch', 14),
('Paladin', 'Divine Health', 3),
('Paladin', 'Divine Sense', 1),
('Paladin', 'Divine Smite', 2),
('Paladin', 'Extra Attack', 5),
('Paladin', 'Fighting Style', 2),
('Paladin', 'Improved Divine Smite', 11),
('Paladin', 'Lay on Hands', 1),
('Paladin', 'Sacred Oath', 3),
('Ranger', 'Ability Score Improvement', 4),
('Ranger', 'Ability Score Improvement', 8),
('Ranger', 'Ability Score Improvement', 10),
('Ranger', 'Ability Score Improvement', 12),
('Ranger', 'Ability Score Improvement', 16),
('Ranger', 'Ability Score Improvement', 19),
('Ranger', 'Extra Attack', 5),
('Ranger', 'Favoured Enemy', 1),
('Ranger', 'Feral Senses', 18),
('Ranger', 'Fighting Style', 2),
('Ranger', 'Foe Slayer', 20),
('Ranger', 'Hide in Plain Sight', 10),
('Ranger', 'Land\'s Stride', 8),
('Ranger', 'Natural Explorer', 1),
('Ranger', 'Primeval Awareness', 3),
('Ranger', 'Ranger Archetype', 3),
('Ranger', 'Vanish', 14),
('Rogue', 'Ability Score Improvement', 4),
('Rogue', 'Ability Score Improvement', 8),
('Rogue', 'Ability Score Improvement', 12),
('Rogue', 'Ability Score Improvement', 16),
('Rogue', 'Ability Score Improvement', 19),
('Rogue', 'Blindsense', 14),
('Rogue', 'Cunning Action', 2),
('Rogue', 'Elusive', 18),
('Rogue', 'Evasion', 7),
('Rogue', 'Reliable Talent', 11),
('Rogue', 'Rogue\'s Expertise', 1),
('Rogue', 'Roguish Archetype', 3),
('Rogue', 'Slippery Mind', 15),
('Rogue', 'Sneak Attack', 1),
('Rogue', 'Stroke of Luck', 20),
('Rogue', 'Thieves\' Cant', 1),
('Rogue', 'Uncanny Dodge', 5),
('Sorcerer', 'Ability Score Improvement', 4),
('Sorcerer', 'Ability Score Improvement', 8),
('Sorcerer', 'Ability Score Improvement', 12),
('Sorcerer', 'Ability Score Improvement', 16),
('Sorcerer', 'Ability Score Improvement', 19),
('Sorcerer', 'Font of Magic', 2),
('Sorcerer', 'Metamagic', 3),
('Sorcerer', 'Sorcerous Origin', 1),
('Sorcerer', 'Sorcerous Restoration', 20),
('Warlock', 'Ability Score Improvement', 4),
('Warlock', 'Ability Score Improvement', 8),
('Warlock', 'Ability Score Improvement', 12),
('Warlock', 'Ability Score Improvement', 16),
('Warlock', 'Ability Score Improvement', 19),
('Warlock', 'Eldritch Invocations', 2),
('Warlock', 'Eldritch Master', 20),
('Warlock', 'Mystic Arcanum', 11),
('Warlock', 'Otherworldly Patron', 1),
('Warlock', 'Pact Boon', 3),
('Wizard', 'Ability Score Improvement', 4),
('Wizard', 'Ability Score Improvement', 8),
('Wizard', 'Ability Score Improvement', 12),
('Wizard', 'Ability Score Improvement', 16),
('Wizard', 'Ability Score Improvement', 19),
('Wizard', 'Arcane Recovery', 1),
('Wizard', 'Arcane Recovery', 2),
('Wizard', 'Signature Spells', 20),
('Wizard', 'Spell Mastery', 18);

-- --------------------------------------------------------

--
-- Table structure for table `class_item_sets`
--

CREATE TABLE `class_item_sets` (
  `class` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `item_set` int(11) NOT NULL,
  `group_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `class_item_sets`
--

INSERT INTO `class_item_sets` (`class`, `item_set`, `group_limit`) VALUES
('Barbarian', 1, 1),
('Barbarian', 2, 1),
('Barbarian', 3, NULL),
('Bard', 4, 1),
('Bard', 5, 1),
('Bard', 6, 1),
('Bard', 7, NULL),
('Cleric', 8, 1),
('Cleric', 9, 1),
('Cleric', 10, 1),
('Cleric', 11, 1),
('Cleric', 12, NULL),
('Druid', 13, 1),
('Druid', 14, 1),
('Druid', 15, NULL),
('Fighter', 16, 1),
('Fighter', 17, 1),
('Fighter', 18, 1),
('Fighter', 19, 1),
('Fighter', 20, 1),
('Monk', 19, 1),
('Monk', 21, NULL),
('Monk', 36, 1),
('Paladin', 22, 1),
('Paladin', 23, 1),
('Paladin', 24, 1),
('Paladin', 25, NULL),
('Ranger', 26, 1),
('Ranger', 27, 1),
('Ranger', 28, 1),
('Ranger', 29, NULL),
('Rogue', 30, 1),
('Rogue', 31, 1),
('Rogue', 32, 1),
('Rogue', 33, NULL),
('Sorcerer', 34, 1),
('Sorcerer', 35, 1),
('Sorcerer', 37, NULL),
('Warlock', 38, 1),
('Warlock', 40, 1),
('Warlock', 41, NULL),
('Warlock', 43, 1),
('Wizard', 42, 1),
('Wizard', 43, 1),
('Wizard', 44, 1),
('Wizard', 45, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_saving_throws`
--

CREATE TABLE `class_saving_throws` (
  `class` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `ability` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `class_saving_throws`
--

INSERT INTO `class_saving_throws` (`class`, `ability`) VALUES
('Barbarian', 'Constitution'),
('Barbarian', 'Strength'),
('Bard', 'Charisma'),
('Bard', 'Dexterity'),
('Cleric', 'Charisma'),
('Cleric', 'Wisdom'),
('Druid', 'Intelligence'),
('Druid', 'Wisdom'),
('Fighter', 'Constitution'),
('Fighter', 'Strength'),
('Monk', 'Dexterity'),
('Monk', 'Strength'),
('Paladin', 'Charisma'),
('Paladin', 'Wisdom'),
('Ranger', 'Dexterity'),
('Ranger', 'Strength'),
('Rogue', 'Dexterity'),
('Rogue', 'Intelligence'),
('Sorcerer', 'Charisma'),
('Sorcerer', 'Constitution'),
('Warlock', 'Charisma'),
('Warlock', 'Wisdom'),
('Wizard', 'Intelligence'),
('Wizard', 'Wisdom');

-- --------------------------------------------------------

--
-- Table structure for table `class_skill_proficiencies`
--

CREATE TABLE `class_skill_proficiencies` (
  `class` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `skill` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `class_skill_proficiencies`
--

INSERT INTO `class_skill_proficiencies` (`class`, `skill`) VALUES
('Barbarian', 'Animal Handling'),
('Barbarian', 'Athletics'),
('Barbarian', 'Intimidation'),
('Barbarian', 'Nature'),
('Barbarian', 'Perception'),
('Barbarian', 'Survival'),
('Bard', 'Acrobatics'),
('Bard', 'Animal Handling'),
('Bard', 'Arcana'),
('Bard', 'Athletics'),
('Bard', 'Deception'),
('Bard', 'History'),
('Bard', 'Insight'),
('Bard', 'Intimidation'),
('Bard', 'Investigation'),
('Bard', 'Medicine'),
('Bard', 'Nature'),
('Bard', 'Perception'),
('Bard', 'Performance'),
('Bard', 'Persuasion'),
('Bard', 'Religion'),
('Bard', 'Sleight of Hand'),
('Bard', 'Stealth'),
('Bard', 'Survival'),
('Cleric', 'History'),
('Cleric', 'Insight'),
('Cleric', 'Medicine'),
('Cleric', 'Perception'),
('Cleric', 'Religion'),
('Druid', 'Animal Handling'),
('Druid', 'Arcana'),
('Druid', 'Insight'),
('Druid', 'Medicine'),
('Druid', 'Nature'),
('Druid', 'Perception'),
('Druid', 'Religion'),
('Druid', 'Survival'),
('Fighter', 'Acrobatics'),
('Fighter', 'Animal Handling'),
('Fighter', 'Athletics'),
('Fighter', 'History'),
('Fighter', 'Insight'),
('Fighter', 'Intimidation'),
('Fighter', 'Perception'),
('Fighter', 'Survival'),
('Monk', 'Acrobatics'),
('Monk', 'Athletics'),
('Monk', 'History'),
('Monk', 'Insight'),
('Monk', 'Religion'),
('Monk', 'Stealth'),
('Paladin', 'Athletics'),
('Paladin', 'Insight'),
('Paladin', 'Intimidation'),
('Paladin', 'Medicine'),
('Paladin', 'Persuasion'),
('Paladin', 'Religion'),
('Ranger', 'Animal Handling'),
('Ranger', 'Athletics'),
('Ranger', 'Insight'),
('Ranger', 'Investigation'),
('Ranger', 'Nature'),
('Ranger', 'Perception'),
('Ranger', 'Stealth'),
('Ranger', 'Survival'),
('Rogue', 'Acrobatics'),
('Rogue', 'Athletics'),
('Rogue', 'Deception'),
('Rogue', 'Insight'),
('Rogue', 'Intimidation'),
('Rogue', 'Investigation'),
('Rogue', 'Perception'),
('Rogue', 'Performance'),
('Rogue', 'Persuasion'),
('Rogue', 'Sleight of Hand'),
('Rogue', 'Stealth'),
('Sorcerer', 'Arcana'),
('Sorcerer', 'Deception'),
('Sorcerer', 'Insight'),
('Sorcerer', 'Intimidation'),
('Sorcerer', 'Persuasion'),
('Sorcerer', 'Religion'),
('Warlock', 'Arcana'),
('Warlock', 'Deception'),
('Warlock', 'History'),
('Warlock', 'Intimidation'),
('Warlock', 'Investigation'),
('Warlock', 'Nature'),
('Warlock', 'Religion'),
('Wizard', 'Arcana'),
('Wizard', 'History'),
('Wizard', 'Insight'),
('Wizard', 'Investigation'),
('Wizard', 'Medicine'),
('Wizard', 'Religion');

-- --------------------------------------------------------

--
-- Table structure for table `class_tool_proficiencies`
--

CREATE TABLE `class_tool_proficiencies` (
  `class` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `tool` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `multiclassed_valid` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `class_tool_proficiencies`
--

INSERT INTO `class_tool_proficiencies` (`class`, `tool`, `multiclassed_valid`) VALUES
('Bard', 'Bagpipes', 1),
('Bard', 'Drum', 1),
('Bard', 'Dulcimer', 1),
('Bard', 'Flute', 1),
('Bard', 'Horn', 1),
('Bard', 'Lute', 1),
('Bard', 'Lyre', 1),
('Bard', 'Pan Flute', 1),
('Bard', 'Shawm', 1),
('Bard', 'Viol', 1),
('Druid', 'Herbalism Kit', 1),
('Monk', 'Alchemist\'s Supplies', 1),
('Monk', 'Bagpipes', 1),
('Monk', 'Brewer\'s Supplies', 1),
('Monk', 'Calligrapher\'s Supplies', 1),
('Monk', 'Carpenter\'s Tools', 1),
('Monk', 'Cartographer\'s Tools', 1),
('Monk', 'Cobbler\'s Tools', 1),
('Monk', 'Cook\'s Utensils', 1),
('Monk', 'Drum', 1),
('Monk', 'Dulcimer', 1),
('Monk', 'Flute', 1),
('Monk', 'Glassblower\'s Tools', 1),
('Monk', 'Horn', 1),
('Monk', 'Jeweller\'s Tools', 1),
('Monk', 'Leatherworker\'s Tools', 1),
('Monk', 'Lute', 1),
('Monk', 'Lyre', 1),
('Monk', 'Mason\'s Tools', 1),
('Monk', 'Painter\'s Supplies', 1),
('Monk', 'Pan Flute', 1),
('Monk', 'Potter\'s Tools', 1),
('Monk', 'Shawm', 1),
('Monk', 'Smith\'s Tools', 1),
('Monk', 'Tinker\'s Tools', 1),
('Monk', 'Viol', 1),
('Monk', 'Weaver\'s Tools', 1),
('Monk', 'Woodcarver\'s Tools', 1),
('Rogue', 'Thief\'s Tools', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_weapon_proficiencies`
--

CREATE TABLE `class_weapon_proficiencies` (
  `class` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `weapon` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `multiclassed_valid` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `class_weapon_proficiencies`
--

INSERT INTO `class_weapon_proficiencies` (`class`, `weapon`, `multiclassed_valid`) VALUES
('Bard', 'Crossbow (Hand)', 0),
('Bard', 'Longsword', 0),
('Bard', 'Rapier', 0),
('Bard', 'Shortsword', 0),
('Druid', 'Club', 0),
('Druid', 'Dagger', 0),
('Druid', 'Dart', 0),
('Druid', 'Javelin', 0),
('Druid', 'Mace', 0),
('Druid', 'Quarterstaff', 0),
('Druid', 'Scimitar', 0),
('Druid', 'Sling', 0),
('Druid', 'Spear', 0),
('Monk', 'Shortsword', 1),
('Rogue', 'Crossbow (Hand)', 0),
('Rogue', 'Longsword', 0),
('Rogue', 'Rapier', 0),
('Rogue', 'Shortsword', 0),
('Sorcerer', 'Crossbow (Light)', 0),
('Sorcerer', 'Dagger', 0),
('Sorcerer', 'Dart', 0),
('Sorcerer', 'Quarterstaff', 0),
('Sorcerer', 'Sling', 0),
('Wizard', 'Crossbow (Light)', 0),
('Wizard', 'Dagger', 0),
('Wizard', 'Dart', 0),
('Wizard', 'Quarterstaff', 0),
('Wizard', 'Sling', 0);

-- --------------------------------------------------------

--
-- Table structure for table `class_weapon_type_proficiencies`
--

CREATE TABLE `class_weapon_type_proficiencies` (
  `class` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `weapon_type` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `multiclassed_valid` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `class_weapon_type_proficiencies`
--

INSERT INTO `class_weapon_type_proficiencies` (`class`, `weapon_type`, `multiclassed_valid`) VALUES
('Barbarian', 'Martial Melee', 1),
('Barbarian', 'Martial Ranged', 1),
('Barbarian', 'Simple Melee', 1),
('Barbarian', 'Simple Ranged', 1),
('Bard', 'Simple Melee', 0),
('Bard', 'Simple Ranged', 1),
('Cleric', 'Simple Melee', 1),
('Fighter', 'Martial Melee', 1),
('Fighter', 'Martial Ranged', 1),
('Fighter', 'Simple Melee', 1),
('Fighter', 'Simple Ranged', 1),
('Monk', 'Simple Melee', 1),
('Monk', 'Simple Ranged', 1),
('Paladin', 'Martial Melee', 1),
('Paladin', 'Martial Ranged', 1),
('Paladin', 'Simple Melee', 1),
('Paladin', 'Simple Ranged', 1),
('Ranger', 'Martial Melee', 1),
('Ranger', 'Martial Ranged', 1),
('Ranger', 'Simple Melee', 1),
('Ranger', 'Simple Ranged', 1),
('Rogue', 'Simple Melee', 0),
('Rogue', 'Simple Ranged', 0),
('Warlock', 'Simple Melee', 1),
('Warlock', 'Simple Ranged', 1);

-- --------------------------------------------------------

--
-- Table structure for table `damage_type`
--

CREATE TABLE `damage_type` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `damage_type`
--

INSERT INTO `damage_type` (`name`, `description`) VALUES
('Acid', 'The corrosive spray of a black dragon’s breath and the dissolving enzymes secreted by a black pudding deal acid damage.'),
('Bludgeoning', 'Blunt force attacks — hammers, falling, constriction, and the like — deal bludgeoning damage.'),
('Cold', 'The infernal chill radiating from an ice devil’s spear and the frigid blast of a white dragon’s breath deal cold damage.'),
('Fire', 'Red dragons breathe fire, and many spells conjure flames to deal fire damage.'),
('Force', 'Force is pure magical energy focused into a damaging form. Most effects that deal force damage are spells, including magic missile and spiritual weapon.'),
('Lightning', 'A lightning bolt spell and a blue dragon’s breath deal lightning damage.'),
('Necrotic', 'Necrotic damage, dealt by certain undead and a spell such as chill touch, withers matter and even the soul.'),
('Piercing', 'Puncturing and impaling attacks, including spears and monsters’ bites, deal piercing damage.'),
('Poison', 'Venomous stings and the toxic gas of a green dragon’s breath deal poison damage.'),
('Psychic', 'Mental abilities such as a mind flayer’s psionic blast deal psychic damage.'),
('Radiant', 'Radiant damage, dealt by a cleric’s flame strike spell or an angel’s smiting weapon, sears the flesh like fire and overloads the spirit with power.'),
('Slashing', 'Swords, axes, and monsters’ claws deal slashing damage.'),
('Thunder', 'A concussive burst of sound, such as the effect of the Thunderwave spell, deals thunder damage.');

-- --------------------------------------------------------

--
-- Table structure for table `dice_roll`
--

CREATE TABLE `dice_roll` (
  `id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `dice_roll`
--

INSERT INTO `dice_roll` (`id`, `count`, `size`) VALUES
(1, 1, 4),
(2, 1, 6),
(3, 1, 8),
(4, 1, 10),
(5, 1, 12),
(6, 1, 20),
(7, 2, 4),
(8, 2, 6),
(9, 2, 8),
(10, 2, 10),
(11, 2, 12),
(12, 2, 20),
(13, 3, 4),
(14, 3, 6),
(15, 3, 8),
(16, 3, 10),
(17, 3, 12),
(18, 3, 20),
(19, 4, 4),
(20, 4, 6),
(21, 4, 8),
(22, 4, 10),
(23, 4, 12),
(24, 4, 20),
(25, 5, 4),
(26, 5, 6),
(27, 5, 8),
(28, 5, 10),
(29, 5, 12),
(30, 5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

CREATE TABLE `feature` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `feature`
--

INSERT INTO `feature` (`name`, `description`) VALUES
('Ability Score Improvement', 'You can increase one ability score of your choice by 2, or you can increase two ability scores of your choice by 1. You can\'t increase an ability score above 20 using this feature.'),
('Abjuration Savant', 'The gold and time you must spend to copy an abjuration spell into your spellbook is halved.'),
('Acolyte of Nature', 'You learn on druid cantrip of your choice. You also gain proficiency in one of the following skills of your choice: Animal Handling, Nature, or Survival.'),
('Action Surge', 'Starting at 2nd level, you can push yourself beyond your normal limits for a moment. On your turn, you can take one additional action on top of your regular action and a possible bonus action.\r\n\r\nOnce you use this feature, you must finish a short or long rest before you can use it again. Starting at 17th level, you can use it twice before a rest, but only one on the same turn.'),
('Additional Fighting Style', 'You can choose a second option from the Fighting Style class feature.'),
('Additional Magical Secrets', 'You learn two spells of your choice from any class. A spell you choose must be of a level you can cast, or a cantrip. Those chosen spells count as bard spells for you but don\'t count against the number of Known Spells.'),
('Alter Memories', 'You gain the ability to make a creature unaware of your magical influence on it. When you cast an enchantment spell to charm one or more creatures, you can alter one creature\'s understanding so that it remains unaware of being charmed.\r\n\r\nAdditionally, once before the spell expires, you can use your action to try make the chosen creature forget some of the time it spent charmed. The creature must succeed on an Intelligence saving throw against your wizard spell save DC or lose a number of hours of its memories equal to 1 + your Charisma modifier (minimum 1). You can make the creature forget less time, and the amount of time can\'t exceed the duration of your enchantment spell.'),
('Arcane Charge', 'You gain the ability to teleport up to 30 feet to an unoccupied space you can see when you use your Action Surge. You can teleport before or after the additional action.'),
('Arcane Recovery', 'You have learned to regain some of your magical energy by studying your spellbook. Once per day when you finish a short rest, you can choose expended spell slots to recover. The spell slots can have a combined level that is equal to or less than half your wizard level (rounded up), and none of the slots can be 6th level or higher.\r\n\r\nFor example, if you\'re a 4th-level wizard, you can recover up to two levels worth of spell slots. You can recover either a 2nd-level spell slot or two 1st-level spell slots.'),
('Arcane Tradition', 'You choose an arcane tradition, shaping your practice of magic through one of eight schools: Abjuration, Conjuration, Divination, Enchantment, Evocation, Illusion, Necromancy, or Transmutation.'),
('Arcane Ward', 'You can weave magic around yourself for protection. When you cast an abjuration spell of 1st level or higher, you can simultaneously use a strand of the spell\'s magic to create a magical warn on yourself that lasts until you finish a long rest. The ward has hit points equal to twice your wizard level + your Intelligence modifier. Whenever you take damage, the ward takes the damage instead. If this damage reduces the ward to 0 hit points, you take any remaining damage. \r\n\r\nWhile the ward has 0 hit points, it can\'t absorb damage, but its magic remains. Whenever you cast an abjuration spell of 1st level or higher, the ward regains a number of hit points equal to twice the level of the spell.\r\n\r\nOnce you create the ward, you can\'t create it again until you finish a long rest.'),
('Archdruid', 'You can use your Wild Shape an unlimited number of times.'),
('Archfey\'s Expanded Spell List', 'The Archfey lets you choose from an expanded list of spells when you learn a warlock spell.'),
('Aspect of the Beast', 'You gain a magical benefit based on the totem animal of your choice. You can choose the same animal you selected previously or a different one.\r\n\r\nBear: You gain the might of a bear. Your carrying capacity (including maximum load and maximum lift) is doubled, and you have advantage on Strength checks made to push, pull, life, or break objects.\r\n\r\nEagle: You gain the eyesight of an eagle. You can see up to 1 mile away with no difficulty, able to discern even fine details as though looking at something no more than 100 feet away from you. Additionally, dim light doesn\'t impose disadvantage on your Wisdom (Perception) checks.\r\n\r\nWolf: You gain the hunting sensibilities of a wolf. You can track other creatures while travelling at a fast pace, and you can move stealthily while travelling at a normal pace.'),
('Assassin\'s Bonus Proficiencies', 'You gain proficiency with the Disguise Kit and the Poisoner\'s Kit.'),
('Assassinate', 'You are at your deadliest when you get the drop on your enemies. You have advantage on attack rolls against any creature that hasn\'t taken a turn in the combat yet. In addition, any hit you score against a creature that is surprised is a critical hit.'),
('Aura of Courage', 'You and friendly creatures withing 10 feet of you can\'t be frightened while you are conscious.'),
('Aura of Devotion', 'You are friendly creatures within 10 feet of you can\'t be charmed while you are conscious.\r\n\r\nAt 18th level, the range of this aura increases to 30 feet.'),
('Aura of Protection', 'Whenever you or a friendly creature within 10 feet of you must make a saving throw, the creature gains a bonus to the saving throw equal to your Charisma modifier (with a minimum bonus of +1). You must be conscious to grant this bonus.\r\n\r\nAt 18th level, the range of the aura increases to 30 feet.'),
('Aura of Warding', 'Ancient magic lies so heavily upon you that it forms an eldritch ward. You and friendly creatures within 10 feet of you have resistance to damage from spells.\r\n\r\nAt 18th level, the range of this aura increases to 30 feet.'),
('Avatar of Battle', 'You gain resistance to bludgeoning, piercing, and slashing damage from nonmagical weapons.'),
('Avenging Angel', 'You can assume the form of an angelic avenger. Using your action, you undergo a transformation. For 1 hour, you gain the following benefits:\r\n\r\nWings sprout from your back and grant you a flying speed of 60 feet.\r\n\r\nYou emanate an aura of menace in a 30-foot radius. The first time any enemy creature enters the aura or starts its turn there during a battle, the creature must succeed on a Wisdom saving throw or become frightened of you for 1 minute or until it takes any damage. Attack rolls against the frightened creature have advantage.\r\n\r\nOnce you use this feature, you can\'t use it again until you finish a long rest. '),
('Awakened Mind', 'Your alien knowledge gives you the ability to touch the minds of other creatures. You can communicate telepathically with any creature you can see within 30 feet of you. You don\'t need to share a language with the creature for it to understand your telepathic utterances, but the creature must be able to understand at least one language.'),
('Bad Reputation', 'No matter where you go, people are afraid of you due to your reputation. When you are in a civilised settlement, you can get away with minor criminal offences, such as refusing to pay for good at a tavern, or breaking down doors at a local shop, since most people will not report your activity to the authorities.'),
('Bard College', 'You delve into the advanced techniques of a bard college of your choice: the College of Lore or the College of Valour.'),
('Bard\'s Expertise', 'Choose two of your skill proficiencies. Your proficiency bonus is doubled for any ability check you make that uses either of the chosen proficiencies.\r\n\r\nUnlocking this feature a second time allows you to choose another two skill proficiencies to gain this benefit.'),
('Bardic Inspiration', 'You can inspire others through stirring words or music. To do so, you use a bonus action on your turn to choose one creature other than yourself within 60 feet of you who can hear you. That creature gains one Bardic Inspiration die, a d6.\r\n\r\nOnce within the next 10 minutes, the creature can roll the die and add the number rolled to one ability check, attack roll, or saving throw it makes. The creature can wait until after it rolls the d20 before deciding to use the Bardic Inspiration die, but must decide before the DM says whether the roll succeeds or fails. Once the Bardic Inspiration die is rolled, it is lost. A creature can have only one Bardic Inspiration die at a time.\r\n\r\nYou can use this feature a number of timess equal to your Charisma modifier (a minimum of once). You regain any expended uses when you finish a long rest.\r\n\r\nYour Bardic Inspiration die changes when you reach certain levels in this class. The die becomes a d8 at 5th level, a d10 at 10th level, and a d12 at 15th level.'),
('Battle Magic', 'You have mastered the art of weaving spellcasting and weapon use into a single harmonious act. When you use your action to cast a bard spell, you can make one weapon attack as a bonus action.'),
('Beast Spells', 'You can cast many of your druid spells in any shape you assume using Wild Shape. You can perform the somatic and verbal components of a druid spell while in a beast shape, but you aren\'t able to provide material components.'),
('Beguiling Defences', 'Your patron teaches you how to turn the mind-affecting magic of your enemies against them. You are immune to being charmed, and when another creature attempts to charm you, you can use your reaction to attempt to turn the charm back on that creature. The creature must succeed on a Wisdom saving throw against your warlock spell save DC or be charmed by you for 1 minute or until the creature takes any damage.'),
('Bend Luck', 'You have the ability to twist fate using your wild magic. When another creature you can see makes an attack roll, an ability check, or a saving throw, you can use your reaction and spend 2 sorcery points to roll 1d4 and apply the number rolled as a bonus or penalty (your choice) to the creature\'s roll. You can do so after the creature rolls but before any effects of the roll occur.'),
('Benign Transposition', 'You can use your action to teleport up to 30 feet to an unoccupied space that you can see. Alternatively, you can choose a space within range that is occupied by a Small or Medium creature. If that creature is willing, you both teleport, swapping places.\r\n\r\nOnce you use this feature, you can\'t use it again until you finish a long rest or you cast a conjuration spell of 1st level or higher.'),
('Bestial Fury', 'Your beast companion can make two attacks when you command it to use the Attack action.'),
('Blessed Healer', 'The healing spells you cast on others heal you as well. When you cast a spell of 1st level or higher that restores hit points to a creature other than you, you regain hit points equal to 2 + the spell\'s level.'),
('Blessing of the Trickster', 'You can use your action to touch a willing creature other than yourself to give it advantage of Dexterity (Stealth) checks. This blessing lasts for 1 hour or until you use this feature again. '),
('Blessings of Knowledge', 'You learn two languages of yoru choice. You also become proficient in your choice of two of the following skills: Arcana, History, Nature, or Religion.\r\n\r\nYour proficiency bonus is doubled for any ability check you make that uses either of those skills.'),
('Blindsense', 'If you are able to hear, you are aware of the location of any hidden or invisible creature within 10 feet of you.'),
('Brutal Critical', 'You can roll one additional weapon damage die when determining the extra damage for a critical hit with a melee attack.\r\n\r\nThis increases to two additional dice at 13th level, and three additional dice at 17th level.'),
('By Popular Demand', 'You can always find a place to perform, usually in an inn or tavern but possibly with a circus, at a theatre, or even in a noble\'s court. At such a place, you receive free lodging and food of a modest or comfortable standard (depending on the quality of the establishment), as long as you perform each night. In addition, your performance makes you something of a local figure.'),
('Channel Divinity', 'You gain the ability to channel divine energy directly from your feity, using that energy to fuel magical effects. You start with two such effects: Turn Undead and an effect determined by your domain. Some domains grant you additional effects as you advance in levels, as noted in the domain description.\r\n\r\nWhen you use your Channel Divinity, you choose which effect to create, You must then finish a short or long rest to use your Channel Divinity again.\r\n\r\nSome Channel Divinity effects require saving throws. When you use such an effect from this class, the DC equals your cleric spell save DC.\r\n\r\nBeginning at 6th level, you can use your Channel Divinity twice between rests, and beginning at 18th level, you can use it three times between rests. When you finish a short or long rest, you regain your expended uses.'),
('Channel Divinity: Abjure Enemy', 'As an action, you present your holy symbol and speak a prayer of denunciation, using your Channel Divinity. Choose one creature within 60 feet of you that you can see. That creature must make a Wisdom saving throw, unless it is immune to being frightened. Fiends and undead have disadvantage on this saving throw.\r\n\r\nOn a failed save, the creature is frightened for 1 minute or until it takes any damage. While frightened, the creature\'s speed is 0, and it can\'t benefit from any bonus to its speed.\r\n\r\nOn a successful save, the creature\'s speed is halved for 1 minute or until the creature takes any damage.'),
('Channel Divinity: Charm Animals and Plants', 'You can use your Channel Divinity to charm animals and plants.\r\n\r\nAs an action, you present your holy symbol and invoke the name of your deity. Each beast or plant creature that can see you within 30 feet of you must make a Wisdom saving throw. If the creature fails its saving throw, it is charmed by you for 1 minute or until it takes damage. While it is charmed by you, it is friendly to you and other creatures you designate.'),
('Channel Divinity: Cloak of Shadows', 'You can use your Channel Divinity to vanish.\r\n\r\nAs an action, you become invisible until the end of your next turn. You become visible if you attack or cast a spell.'),
('Channel Divinity: Destructive Wrath', 'You can use your Channel Divinity to wield the power of the storm with unchecked ferocity.\r\n\r\nWhen you roll lightning or thunder damage, you can use your Channel Divinity to deal maximum damage, instead of rolling.'),
('Channel Divinity: Guided Strike', 'You can use your Channel Divinity to strike with supernatural accuracy. When you make an attack roll, you can use your Channel Divinity to gain a +10 bonus to the roll. You make this choice after you see the roll, but before the DM says whether the attack hits or misses.'),
('Channel Divinity: Invoke Duplicity', 'You can use your Channel Divinity to create an illusory duplicate of yourself.\r\n\r\nAs an action, you create a perfect illusion of yourself that lasts for 1 minute, or until you lose your concentration (as if you were concentrating on a spell). The illusion appears in an unoccupied space that you can see within 30 feet of you. As a bonus action on your turn, you can move the illusion up to 30 feet to a space you can see, but it must remain within 120 feet of you.\r\n\r\nFor the duration, you can cast spells as though you were in the illusion\'s space, but you must use your own senses. Additionally, when both you and your illusion are within 5 feet of a creature than can see the illusion, you have advantage on attack rolls against the creature, given how distracting the illusion is to the target.'),
('Channel Divinity: Knowledge of the Ages', 'You can use your Channel Divinity to tap into a divine well of knowledge. As an action, you choose one skill or tool. For 10 minutes, you have proficiency with the chosen skill or tool.'),
('Channel Divinity: Nature\'s Wrath', 'You can use your Channel Divinity to invoke primeval forces to ensnare a foe. As an action, you can cause spectral vines to spring up and reach for a creature within 10 feet of you that you can see. The create must succeed on a Strength or Dexterity saving throw (its choice) or be restrained. While restrained by the vines, the creature repeats the saving throw at the end of each of its turns. On a success, it frees itself and the vines vanish.'),
('Channel Divinity: Preserve Life', 'You can use your Channel Divinity to heal the badly injured.\r\n\r\nAs an action, you present your holy symbol and evoke healing energy that can restore a number of hit points equal to five times your cleric level. Choose any creatures within 30 feet of you, and divide those hit points among them. This feature can restore a creature to no more than half of its hit point maximum. You can\'t use this feature on an undead or a construct.'),
('Channel Divinity: Radiance of the Dawn', 'You can use your Channel Divinity to harness sunlight, banishing darkness and dealing radiant damage to your foes.\r\n\r\nAs an action, you present your holy symbol, and any magical darkness within 30 feet of you is dispelled. Additionally, each hostile creature within 30 feet of you must make a Constitution saving throw. A creature takes radiant damage equal to 2d10 + your cleric level on a failed saving throw, and half as much damage on a successful one. A creature that has total cover from you is not affected.'),
('Channel Divinity: Read Thoughts', 'You can use your Channel Divinity to read a creature\'s thoughts. You can then use your access to the creature\'s mind to command it.\r\n\r\nAs an action, choose one creature that you can see within 60 feet of you. That creature must make a Wisdom saving throw. If the creature succeeds on the saving throw, you can\'t use this feature on it again until you finish a long rest.\r\n\r\nIf the creature fails its save, you can read its surface thoughts (those foremost in its mind, reflecting its current emotions and what it is actively thinking about) when it is within 60 feet of you. This effect lasts for 1 minute.\r\n\r\nDuring that time, you can use your action to end this effect and cast the Suggestion spell on the creature without expending a spell slot. The target automatically fails its saving throw against the spell.'),
('Channel Divinity: Sacred Weapon', 'As an action, you can imbue one weapon that you are holding with positive energy, using your Channel Divinity. For 1 minute, you add your Charisma modifier to attack rolls made with that weapon (with a minimum bonus of +1). The weapon also emits bright light in a 20-foot radius and dim light 20 feet beyond that., If the weapon is not already magical, it becomes magical for the duration.\r\n\r\nYou can end this effect on your turn as part of any other action. If you are no longer holding or carrying this weapon, or if you fall unconscious, this effect ends.'),
('Channel Divinity: Turn the Faithless', 'You can use your Channel Divinity to utter ancient words that are painful for fey and fiends to hear. As an action, you present your holy symbol, and each fey or fiend within 30 feet of you that can hear you must make a Wisdom saving throw. On a failed save, the creature is turned for 1 minute or until it takes damage.\r\n\r\nA turned creature must spend its turns trying to move as far away from you as it can, and it can\'t willingly move to a space within 30 feet of you. It also can\'t take reactions. For its action, it can use only the Dash action or try to escape from an effect that prevents it from moving. If there\'s nowhere to move, the creature can use the Dodge action.\r\n\r\nIf the creature\'s true form is concealed by an illusion, shapeshifting, or other effect, that form is revealed while it is turned.'),
('Channel Divinity: Turn the Unholy', 'As an action, you present you holy sumbol and speak a prayer censuring fiends and undead, using your Channel Divinity. Each fiend or undead that can see or hear you within 30 feet of you must make a Wisdom saving throw. If the creature fails its saving throw, it is turned for 1 minute or until it takes damage.\r\n\r\nA turned creature must spend its turns trying to move as far away from you as it can, and it can\'t willingly move to a space within 30 feet of you. It also can\'t take reactions. For its action, it can use only the Dash action or try to escape from an effect that prevents it from moving. If there\'s nowhere to move, the creature can use the Dodge action.'),
('Channel Divinity: Turn Undead', 'As an action, you present your holy symbol and speak a prayer censuring the undead. Each undead that can see or hear you within 30 feet of you must make a Wisdom saving throw. If the creature fails its saving throw, it is turned for 1 minute or until it takes any damage.\r\n\r\nA turned creature must spend its turns trying to move as far away from you as it can, and it can\'t willingly move to a space within 30 feet of you. It also can\'t take reaction. For its action, it can use only the Dash action or try to escape from an effect that prevents it from moving. If there\'s nowhere to move, the creature can use the Dodge action.'),
('Channel Divinity: Vow of Enmity', 'As a bonus action, you can utter a vow of enmity against a creature you can see within 10 feet of you, using your Channel Divinity. You gain advantage on attack rolls against the creature for 1 minute or until it drops to 0 hit points or falls unconscious.'),
('Channel Divinity: War God\'s Blessing', 'When a creature within 30 feet of you makes an attack roll, you can use your reaction to grant that creature a +10 bonus to the roll, using your Channel Divinity. You make this choice after you see the roll, but before the DM says whether the attack hits or misses.'),
('Circle Forms', 'The rites of your circle grant you the ability to transform into more dangerous animal forms. You can use your Wild Shape to transform into a beast with a challenge rating as high as 1.\r\n\r\nStarting at 6th level, you can transform into a beast with a challenge rating as high as your druid level divided by 3, rounded down.'),
('Circle of the Land Bonus Cantrip', 'You learn one additional druid cantrip of your choice.'),
('Circle Spells', 'Your mystical connection to the land infuses you with the ability to cast certain spells. At 3rd, 5th, 7th, and 9th level you gain access to circle spells connected to the land where you became a druid. Choose that land you came from: arctic, coast, desert, forest, grassland, mountain, or swamp/\r\n\r\nOnce you gain access to a circle spell, you always have it prepared, and it doesn’t count against the number of spells you can prepare each day. If you gain access to a spell that doesn’t appear on the druid spell list, the spell is nonetheless a druid spell for you.'),
('City Secrets', 'You know the secret patterns and flow to cities and can find passages through the urban sprawl that others would miss. When you are not in combat, you (and companions you lead) can travel between any two locations in the city twice as fast as your speed would normally allow.'),
('Cleansing Touch', 'You can use your action to end one spell on yourself or on one willing creature that you touch.\r\n\r\nYou can use this feature a number of times equal to your Charisma modifier (a minimum of once). You regain expended uses when you finish a long rest.'),
('Cloak of Shadows', 'You have learned to become one with the shadows. When you are in an area of dim light or darkness, you can use your action to become invisible. You remain invisible until you make an attack, cast a spell, or are in an area of bright light.'),
('College of Lore Bonus Proficiencies', 'You gain proficiency with three skills of your choice.'),
('College of Valour Bonus Proficiencies', 'You gain proficiency with medium armour, shields, and martial weapons.'),
('Combat Inspiration', 'You learn to inspire others in battle. A creature that has a Bardic Inspiration die from you can roll that die and add the number rolled to a weapon damage roll it just made. Alternatively, when an attack roll is made against the creature, it can use its reaction to roll the Bardic Inspiration die and add the number rolled to its AC against that attack, after seeing the roll but before knowing whether it hits or misses.'),
('Combat Superiority', 'You learn manoeuvres that are fueled by special dice called superiority dice.\r\n\r\nManoeuvres: You learn three manoeuvres of your choice. You can use only one manoeuvre per attack.\r\n\r\nYou learn two additional manoeuvres of your choice at 7th, 10th, and 15th level. Each time you learn new manoeuvres, you can also replace one manoeuvre you know with a different one.\r\n\r\nSuperiority Dice: You have four superiority dice, which are d8s. A superiority die is expended when you use it. You regain all of your expended superiority dice when you finish a short or long rest.\r\n\r\nYou gain another superiority die at 7th level and one more at 15th level.\r\n\r\nSaving Throws: Some of your manoeuvres require your target to make a saving throw to resist the manoeuvre\'s effects. The saving throw DC is calculated as 8 + your proficiency bonus + your Strength or Dexterity modifier (your choice).'),
('Combat Wild Shape', 'You gain the ability to use Wild Shape on your turn as a bonus action, rather than as an action.\r\n\r\nAdditionally, while you are transformed by Wild Shape, you can use a bonus action to expend on spell slot to regain 1d8 hit points per level of the spell slot expended.'),
('Command Undead', 'You use magic to bring undead under your control, even those created by other wizards. As an action, you can choose one undead that you can see within 60 feet of you. That create must make a Charisma saving throw against your wizard save DC. If it succeeds, you can\'t use this feature on it again. If it fails, it becomes friendly to you and obeys your commands until you use this feature again.\r\n\r\nIntelligent undead are harder to control in this way. If the target has an Intelligence of 8 or higher, it has advantage on the saving throw. If it if fails the saving throw and has an Intelligence of 12 or higher, it can repeat the saving throw at the end of every hour until it succeeds and breaks free.'),
('Conjuration Savant', 'The gold and time you must spend to copy a conjuration spell into your spellbook is halved.'),
('Controlled Chaos', 'You gain a modicum of control over the surges of your wild magic. Whenever you roll on the Wild Magic Surge table, you can roll twice and use either number.'),
('Converting Spell Slots', 'As a bonus action on your turn, you can expend one spell slot and gain a number of sorcery points equal to the slot\'s level.'),
('Corona of Light', 'You can use your action to activate an aura of sunlight that lasts for 1 minute or until you dismiss it using another action. You emit bright light in a 60-foot radius and dim light 30 feet beyond that. Your enemies in the bright light have disadvantage on saving throws against any spell that deals fire or radiant damage.'),
('Countercharm', 'You gain the ability to use musical notes or words of power to disrupt mind-influencing effects. As an action, you can start a performance that lasts until the end of your next turn. During that time, you and any friendly creatures within 30 feet of you have advantage on saving throws against being frightened or charmed. A creature must be able to hear you to gain this benefit. The performance ends early if you are incapacitated or silenced or if you voluntarily end it (no action required). '),
('Create Thrall', 'You gain the ability to infect a humanoid\'s mind with alien magic of your patron. You can use your action to touch an incapacitated humanoid. That creature is then charmed by you until a remove curse spell is cast on it, the charmed condition is removed from it, or you use this feature again.\r\n\r\nYou can communicate telepathically with the charmed creature as long as the two of you are on the same plane of existence.'),
('Creating Spell Slots', 'You can transform unexpended sorcery points into one spell slot as a bonus action on your turn. You can create spell slots no higher in level than 5th. It costs the following amount of sorcery points to make a spell slot:\r\n\r\n1st: 2 points.\r\n2nd: 3 points.\r\n3rd: 5 points.\r\n4th: 6 points.\r\n5th: 7 points.'),
('Criminal Contact', 'You have a reliable and trustworthy contact who acts as your liaison to a network of other criminals. You know how to get messages to and from your contact, even over great distances; specifically, you know the local messengers, corrupt caravan masters, and seedy sailors who can deliver messages for you.'),
('Cunning Action', 'Your quick thinking and agility allow you to move and act quickly. You can take a bonus action on each of your turns in combat. This action can be used only to take the Dash, Disengage, or Hide action.'),
('Cutting Words', 'You learn how to use your wit to distract, confuse, and otherwise sap the confidence and competence of others. When a creature that you can see within 60 feet of you makes an attack roll, an ability check, or a damage roll, you can use your reaction to expend one of your uses of Bardic Inspiration, rolling a Bardic Inspiration die and subtracting the number rolled from the creature\'s roll. You can choose to use this feature after the creature makes its roll, but before the DM determines whether the attack roll or ability check succeeds or fails, or before the creature deals its damage. The creature is immune if it can\'t hear you of if it\'s immune to being charmed.'),
('Dampen Elements', 'When you ore a creature within 30 feet of you takes acid, cold, fire, lightning, or thunder damage, you can use your reaction to grant resistance to the creature against that instance of the damage.'),
('Danger Sense', 'You gain an uncanny sense of when things nearby aren\'t as they should be, giving you an edge when you dodge away from danger.\r\n\r\nYou have advantage on Dexterity saving throws against effect that you can see, such as traps and spells.\r\n\r\nTo gain this benefit, you can\'t be blinded, deafened, or incapacitated.'),
('Dark Delirium', 'You can plunge a creature into an illusory realm. As an action, choose a creature that you can see within 60 feet of you. It must make a Wisdom saving throw against your warlock spell save DC. On a failed save, it is charmed or frightened by you (your choice) for 1 minute or until your concentration is broken (as if you are concentrating on a spell). This effect ends early if the creature takes any damage.\r\n\r\nUntil this illusion ends, the creature this is is lost in a misty realm, the appearance of which you choose. The creature can see and hear only itself, you, and the illusion.\r\n\r\nYou must finish a short or long rest before you can use this feature again.'),
('Dark One\'s Blessing', 'When you reduce a hostile creature to 0 hit points, you gain temporary hit points equal to your Charisma modifier + your warlock level (minimum of 1).'),
('Dark One\'s Own Luck', 'Starting at 6th level, you can call on your patron to alter fate in your favour. When you make an ability check or a saving throw, you can use this feature to add a d10 to your roll. You can do so after seeing the initial roll but before any of the roll\'s effects occur.\r\n\r\nOnce you use this feature, you can\'t use it again until you finish a short or long rest.'),
('Death Strike', 'You become a master of instant death. When you attack and hit a creature that is surprised, it must make a Constitution saving throw (DC 8 + your Dexterity modifier + your proficiency bonus). On a failed save, double the damage of your attack against the creature.'),
('Defensive Tactics', 'You gain one of the Defensive Tactics features of your choice.'),
('Defensive Tactics: Escape the Horde', 'Opportunity attacks against you are made with disadvantage.'),
('Defensive Tactics: Multiattack Defense', 'When a creature hits you with an attack, you gain a +4 bonus to AC against all subsequent attacks made by that creature for the rest of the turn.'),
('Defensive Tactics: Steel Will', 'You have advantage on saving throws against being frightened.'),
('Deflect Missiles', 'You can use your reaction to deflect or catch the missile when you are hit by a ranged weapon attack. When you do so, the damage you take from the atack is reduced by 1d10 + your Dexterity modifier + your monk level.\r\n\r\nIf you reduce the damage to 0, you can catch the missile if it is small enough for you to hold in one hand and you have at least one hand free. If you catch a missile in this way, you can spend 1 ki point to make a ranged attack with the weapon or piece of ammunition you just caught, as part of the same reaction. You make this attack with proficiency, regardless of your weapon proficiencies, and the missile counts as a monk weapon for the attack.'),
('Destroy Undead', 'When an undead fails its saving throw against your Turn Undead feature, the creature is instantly destroyed if its challenge rating is at or below a certain threshold:\r\n\r\n5th Level: CR of 1/2 or lower.\r\n8th Level: CR of 1 or lower.\r\n11th Level: CR of 2 or lower.\r\n14th Level: CR of 3 or lower.\r\n17th Level: CR of 4 or lower.'),
('Diamond Soul', 'Your mastery of ki grants you proficiency in all saving throws.\r\n\r\nAdditionally, whenever you make a saving throw and fail, you can spend 1 ki point to reroll it and take the second result.'),
('Disciple of Life', 'Your healing spells are more effective. Whenever you use a spell of 1st level or higher to restore hit points to a creature, the creature regains additional hit points equal to 2 + the spell\'s level.'),
('Disciple of the Elements', 'You learn magical disciplines that harness the power of the four elements. A discipline requires you to spend ki points each time you use it.\r\n\r\nYou know the Elemental Attunement discipline and one other elemental discipline of your choice. You learn one additional elemental discipline of your  choice at 6th, 11th, and 17th level.\r\n\r\nWhenever you learn a new elemental discipline, you can also replace on elemental discipline that you already know with a different discipline.\r\n\r\nSome elemental disciplines allow you to cast spells. To cast one of these spells, you use its casting time and other rules, but you don\'t need to provide material components for it.\r\n\r\nOnce you reach 5th level in this class, you can spend additional ki points to increase the level of an elemental discipline spell that you cast, provided that the spell has an enhanced effect at a higher level, as Burning Hands does. The spell\'s level increases by 1 for each additional ki point you spend. For example, if you area 5th level monk and use Sweeping Cinder Strike to cast Burning Hands, you can spend 3 ki points to cast it as a 2nd-level spell (the discipline\'s base cost of 2 ki points plus 1).\r\n\r\nThe maximum number of ki points you can spend to cast a spell in this way (including its base ki point cost and any additional ki points you spent to increase its level) is determined by your monk level.'),
('Discovery', 'The quiet seclusion of your extended hermitage gave you access to a unique and powerful discovery. The exact nature of this revelation depends on the nature of your seclusion. It might be a great truth about the cosmos, the deities, the powerful beings of the outer planes ,or the forces of nature. It could be a site that no-one else has ever seen. You might have uncovered a fact that has long been forgotten, or unearthed some relic of the past that could rewrite history. It might be information that would be damaging to the people who consigned you to exile, and hence the reason for your return to society.\r\n\r\nWork with your DM to determine the details of your discovery and its impact on the campaign.'),
('Divination Savant', 'Beginning when you select this school at 2nd level, the gold and time you must spend to copy a divination spell into your spellbook is halved.'),
('Divine Domain', 'Choose one domain related to your deity: Knowledge, Life, Light, Nature, Tempest, Trickery, or War. Your choice grants you domain spells and other features when you choose it. It also grants you additional ways to use Channel Divinity and other benefits.\r\n\r\nEach domain has a list of spells - its domain spells - that are unlocked at certain levels. Once you gain a domain spell, you always have it prepared, and it doesn\'t count against the number of spells you can prepare each day.\r\n\r\nIf you have a domain spell that doesn\'t appear on the cleric spell list, the spell is nonetheless a cleric spell for you.'),
('Divine Health', 'The divine magic flowing through you makes you immune to disease.'),
('Divine Intervention', 'You can call on your deity to intervene on your behalf when your need is great.\r\n\r\nImporing your deity\'s aid required you to use your action. Describe the assistance you seek, and roll percentile dice. If you roll a number equal to or lower than your cleric level, your deity intervenes. The DM chooses the nature of the intervention; the effect of any cleric spell or cleric domain spell would be appropriate.\r\n\r\nIf your deity intervenes, you can\'t use this feature again for 7 days. Otherwise, you can use it again after you finish a long rest.\r\n\r\nAt 20th level, your call for intervention succeeds automatically, no roll required.'),
('Divine Sense', 'The presence of strong evil registers on your senses like a noxious odour, and powerful good rings like heavenly music in your ears. As an action, you can open your awareness to detect such forces. Until the end of your next turn, you know the location of any celestial, fiend, or undead within 60 feet of you that is not behind total  cover. You know the type (celestial, fiend, or undead) of any being whose presence you sense, but not its identity. Within the same radius, you also detect the presence of any place or object that has been consecrated or desecrated, as with the Hallow spell.\r\n\r\nYou can use this feature a number of times equal to 1 + your Charisma modifier. When you finish a long rest, you regain all expended uses.'),
('Divine Smite', 'When you hit a creature with a melee weapon attack, you can expend one paladin spell slot to deal radiant damage to the target, in addition to the weapon\'s damage. The extra damage is 2d8 for a 1st-level spell slot, plus 1d8 for each spell level higher than 1st, to a maximum of 5d8. The damage increases by 1d8 if the target is an undead or a fiend.'),
('Divine Strike', 'You gain the ability to infuse your weapon strikes with divine energy. Once on each of your turns when you hit a creature with a weapon attack, you can cause the attack to deal an extra 1d8 radiant damage to the target. When you reach 14th level, the extra damage increases to 2d8.'),
('Draconic Presence', 'You can channel the dread presence of your dragon ancestor, causing those around you to become awestruck or frightened. As an action, you can spend 5 sorcery points to draw on this power and exude an aura of awe or fear (your choice) to a distance of 60 feet. For 1 minute or until you lose your concentration (as if you were casting a concentration spell), each hostile creature that starts its turn in this aura must succeed on a Wisdom saving throw or be charmed (if you chose awe) or frightened (if you chose fear) until the aura ends. A creature that succeeds on this saving throw is immune to your aura for 24 hours.'),
('Draconic Resilience', 'As magic flows through your body, it causes physical traits of your dragon ancestors to emerge. At 1st level, your hit point maximum increases by 1 and increases by 1 against whenever you gain a level in this class.\r\n\r\nAdditionally, parts of your skin are covered by a thin sheen of dragon-like scales. When you aren\'t wearing armour, your AC equals 13 + your Dexterity modifier.'),
('Dragon Ancestor', 'You choose one type of dragon as your ancestor. The damage type associated with each dragon is used by features you gain later.\r\n\r\nYou can speak, read, and write Draconic. Additionally, whenever you make a Charisma check when interaction with dragons, your proficiency bonus is double if it applies to the check.'),
('Dragon Wings', 'At 14th level, you gain the ability to sprout a pair of dragon wings from your back, gaining a flying speed equal to your current speed. You can create these wings as a bonus action on your turn. They last until you dismiss them as a bonus action on your turn.\r\n\r\nYou can\'t manifest your wings while wearing armour unless the armour is made to accommodate them, and clothing not made to accommodate your wings might be destroyed when you manifest them.'),
('Druid Circle', 'You choose to identify with a circle of druids: the Circle of the Land or the Circle of the Moon.'),
('Druid\'s Timeless Body', 'The primary magic that you wield causes you to age more slowly. For every 10 years that pass, your body ages only 1 year.'),
('Druidic', 'You know Druidic, the secret language of druids. You can speak the language and use it to leave hidden messages. You and others who know this language automatically spot such a message. Others spot the message\'s presence with a successful DC 15 Wisdom (Perception) check but can\'t decipher it without magic.'),
('Durable Summons', 'Any creature that you summon or create with a conjuration spell has 30 temporary hit points.'),
('Elder Champion', 'At 20th level, you can assume the form of an ancient force of nature, taking on an appearance you choose. For example, your skin might turn green or take on a bark-like texture, your hair might become leafy or moss-like, or you might sprout antlers or a lion-like mane.\r\n\r\nUsing your action, you undergo a transformation. For 1 minute, you gain the following benefits:\r\n\r\nAt the start of each of your turns, you regain 10 hit points.\r\n\r\nWhenever you cast a paladin spell that has a casting time of 1 action, you can cast it using a bonus action instead.\r\n\r\nEnemy creatures within 10 feet of you have disadvantage on saving throws against your paladin spells and Channel Divinity options.\r\n\r\nOnce you use this feature, you can\'t use it again until you finish a long rest.'),
('Eldritch Invocations', 'In your study of occult lore, you have unearthed eldritch invocations, fragments of forbidden knowledge that imbue you with an abiding magical ability.\r\n\r\nYou gain two eldritch invocations of your choice. When you gain certain warlock levels, you gain additional invocations of your choice.\r\n\r\nAdditionally, when you gain a level in this class, you can choose one of the invocations you know and replace it with another invocation that you could learn at that level.'),
('Eldritch Master', 'You can draw on your inner reserve of mystical power while entreating your patron to regain expended spell slots. You can spend 1 minute entreating your patron for aid to regain all your expended spell slots from your Pact Magic feature. Once you regain spell slots with this feature, you must finish a long rest before you can do so again.'),
('Eldritch Strike', 'You learn how to make your weapon strikes undercut a creature\'s resistance to your spells. When you hit a creature with a weapon attack, that creature has disadvantage on the next saving throw it makes against a spell you cast before the end of your next turn.'),
('Elemental Affinity', 'When you cast a spell that deals damage of the type associated with your draconic ancestry, add your Charisma modifier to that damage. At the same time, you can spend 1 sorcery point to gain resistance to that damage type for 1 hour.'),
('Elemental Discipline: Breath of Winter', 'You can spend 6 ki points to cast Cone of Cold.'),
('Elemental Discipline: Clench of the North Wind', 'You can spend 3 ki points to cast Hold Person.'),
('Elemental Discipline: Elemental Attunement', 'You can use your action to briefly control elemental forces nearby, causing one of the following effects of your choice:\r\n\r\nCreate a harmless, instantaneous sensory effect related to air, earth, fire, or water, such as a shower of sparks, a puff of wind, a spray of light mist, or a gentle rumbling of stone.\r\n\r\nInstantaneously light or snuff out a candle, a torch, or a small campfire.\r\n\r\nChill or warm up to 1 pound of nonliving material for up to 1 hour.\r\n\r\nCause earth, fire, water, or mist that can fit within a 1-foot cube to shape itself into a crude form you designate for 1 minute.'),
('Elemental Discipline: Eternal Mountain Defence', 'You can spend 5 ki points to cast Stoneskin, targeting yourself.'),
('Elemental Discipline: Fangs of the Fire Snake', 'When you use the Attack action on your turn, you can spend 1 ki point to cause tendrils of flame to stretch out from your fists and feet. Your reach with your unarmed strikes increases by 10 feet for that action, as well as the rest of the turn. A hit with such an attack deals fire damage instead of bludgeoning damage, and if you spend 1 ki point when the attack hits, it also deals an extra 1d10 fire damage.'),
('Elemental Discipline: Fist of Unbroken Air', 'You can create a blast of compressed air that strikes like a mighty fist. As an action, you spend 2 ki points and choose a creature within 30 feet of you. That creature must make a Strength saving throw. On a failed save, the creature takes 3d10 bludgeoning damage, plus an extra 1d10 bludgeoning damage for each additional ki point you spend, and you you can push the creature up to 20 geet away from you and knock it prone. One a successful save, the creature takes half as much damage, and you don\'t push it or knock it prone.'),
('Elemental Discipline: Flames of the Phoenix', 'You can spend 4 ki points to cast Fireball.'),
('Elemental Discipline: Gone of the SUmmit', 'You can spend 3 ki points to cast Shatter'),
('Elemental Discipline: Mist Stance', 'You can spend 4 ki points to cast Gaseous Form, targeting yourself.'),
('Elemental Discipline: Ride the Wind', 'You can spend 4 ki points to cast Fly, targeting yourself.'),
('Elemental Discipline: River of Hungry Flame', 'You can spend 5 ki points to cast Wall of Fire.'),
('Elemental Discipline: Rush of the Gale Spirits', 'You can spend 2 ki points to cast Gust of Wind.'),
('Elemental Discipline: Shape the Flowing River', 'As an action, you can spend 1 ki point to choose an area of ice or water no larger than 30 feet on a side within 120 feet of you. You can change water to ice within the area and vice versa, and you can reshape ice in the area in any manner you choose. You can raise or lower the ice\'s elevation, create or fill in a trench, erect or flatten a wall, or form a pillar. The extent of any such changes can\'t exceed half the area\'s largest dimension. For example, if you affect a 30-foot square, you can create a pillar up to 15 feet, dig a trench up to 15 feet deep, and so on. You can\'t shape the ice to trap or injure a creature in the area.'),
('Elemental Discipline: Wave of Rolling Earth', 'You can spend 6 ki points to cast Wall of Stone.'),
('Elemental Wild Shape', 'You can expend tow uses of Wild Shape at the same time to transform into an air elemental, an earth elemental, a fire elemental, or a water elemental.'),
('Elusive', 'You are so evasive that attackers rarely gain the upper hand against you. No attack roll has advantage against you while you aren\'t incapacitated.'),
('Empowered Evocation', 'You can add your Intelligence modifier to the damage roll of any wizard evocation spell you cast.'),
('Empty Body', 'You can use your action to spend 4 ki points to become invisible for 1 minute. During that time, you also have resistance to all damage but force damage.\r\n\r\nAdditionally, you can spend 8 ki points to cast the Astral Projection spell, without needing material components. When you do so, you can\'t take any other creatures with you.'),
('Enchantment Savant', 'The gold and time you must spend to copy an enchantment spell into your spellbook is halved.'),
('Entropic Ward', 'You learn to magically ward yourself against attack and to turn an enemy\'s failed strike into good luck for yourself. When a creature makes an attack roll against you, you can use your reaction to impose disadvantage on that roll. If the attack misses you, your next attack roll against the creature has advantage if you make it before the end of your next turn.\r\n\r\nOnce you use this feature, you can\'t use it again until you finish a short or long rest.'),
('Evasion', 'Your instinctive agility lets you dodge out of the way of certain area effects, such as a blue dragon\'s lightning breath or a fireball spell. When you are subjected to an effect that allows you to make a Dexterity saving throw to take only half damage, you instead take no damage if you succeed on the saving throw, and only half damage if you fail.'),
('Evocation Savant', 'The gold and time you must spend to copy an evocation spell into your spellbook is halved.'),
('Exceptional Training', 'On any of your turns when your beast companion doesn\'t attack, you can use a bonus action to command the beast to take the Dash, Disengage, Dodge or Help action on its turn.'),
('Expert Divination', 'Casting divination spells comes so easily to you that it expends only a fraction of your spellcasting efforts. When you cast a divination spell of 2nd level of higher using a spell slot, you regain one expended spell slot. The slot you regain must be of a level lower than the spell you cast and can\'t be higher than 5th level.'),
('Extra Attack', 'You can attack twice, instead of once, whenever you take the Attack action on your turn.');
INSERT INTO `feature` (`name`, `description`) VALUES
('False Identity', 'You have created a second identity that includes documentation, established acquaintances, and disguises that allow you to assume that persona. Additionally, you can forge documents including official papers and personal letters, as long as you have seen an example of the kind of document or the handwriting you are trying to copy.'),
('Fast Hands', 'You can use the bonus action granted by your Cunning Action to make a Dexterity (Sleight of Hand) check, use your Thief\'s Tools to disarm a trap or open a lock, or take the Use an Object action.'),
('Fast Movement', 'Your speed increases by 10 feet while you aren\'t wearing heavy armour.'),
('Favoured Enemy', 'You have significant experience studying, tracking, hunting, and even talking to a certain type of enemy.\r\n\r\nChoose a type of favoured enemy: aberrations, beasts, celestials, constructs, dragons, elementals, fey, fiends, giants, monstrosities, oozes, plants of undead. Alternatively, you can select two raced of humanoid (such as gnolls and orcs) as favoured enemies.\r\n\r\nYou have advantage on Wisdom (Survival) checks to track your favoured enemies, as well as on Intelligence checks to recall information about them.\r\n\r\nWhen you gain this feature, you also learn one language of your choice that is spoken by your favoured enemies, if they speak one at all.\r\n\r\nYou choose one additional favoured enemy, as well as an associated language, at 6th and 14th level. As you gain levels, your choices should reflect the types of monsters you have encountered on your adventures.'),
('Feral Instinct', 'Your instincts are so honed that you have advantage on initiative rolls.\r\n\r\nAdditionally, if you are surprised at the beginning of combat and aren\'t incapacitated, you can act normally on your first turn, but only if you enter your rage before doing anything else on that turn.'),
('Feral Senses', 'You gain preternatural senses that help you fight creatures you can\'t see. When you attack creature you can\'t see, your inability to see it doesn\'t impose disadvantage on your attack rolls against it.\r\n\r\nYou are also aware of the location of any invisible creature within 30 feet of you, provided that the creature isn\'t hidden from you and you aren\'t blinded or deafened.'),
('Fey Presence', 'Your patron bestows upon you the ability to project the beguiling and fearsome presence of the fey. As an action, you can cause each creature in a 10-foot cube originating from you to make a Wisdom saving throw against your warlock spell save DC. The creatures that fail their saving throws are all charmed or frightened by you (your choice) until the end of your next turn.\r\n\r\nOnce you use this feature, you can\'t use it again until you finish a short or long rest.'),
('Fiend\'s Expanded Spell List', 'The Fiend lets you choose from an expanded list of spells when you learn a warlock spell.'),
('Fiendish Resilience', 'You can choose one damage type when you finish a short or long rest. You gain resistance to that damage type until you choose a different one with this feature. Damage from magical weapons or silver weapons ignores this resistance.'),
('Fighting Style', 'You adopt a particular style of fighting as your speciality. You can\'t take a Fighting Style option more than once, even if you later get to choose again.'),
('Fighting Style: Archery', 'You gain a +2 bonus to attack rolls you make with ranged weapons.'),
('Fighting Style: Defence', 'While you are wearing armour, you gain a +1 bonus to AC.'),
('Fighting Style: Duelling', 'When you are wielding a melee weapon in one hand and no other weapons, you gain a +2 bonus to damage rolls with that weapon.'),
('Fighting Style: Great Weapon Fighting', 'When you roll a 1 or 2 on a damage die for an attack you make with a melee weapon that you are wielding with two hands, you can reroll the die and must use the new roll, even if the new roll is a 1 or a 2. The weapon must have the two-handed or versatile property for you to gain this benefit.'),
('Fighting Style: Protection', 'When a creature you can see attacks a target other than you that is within 5 feet of you, you can use your reaction to impose disadvantage on the attack roll. You must be wielding a shield.'),
('Fighting Style: Two-Weapon Fighting', 'When you engage in two-weapon fighting, you can add your ability modifier to the damage of the second attack.'),
('Flurry of Blows', 'Immediately after you take the Attack action on your turn, you can spend 1 ki point to make two unarmed strikes as a bonus action.'),
('Focused Conjuration', 'While you are concentrating on a conjuration spell, your concentration can\'t be broken as a result of taking damage.'),
('Foe Slayer', 'You become an unparalleled hunter of your enemies. Once on each of your turns, you can add your Wisdom modifier to the attack roll or the damage roll of an attack you make against one of your favoured enemies. You can choose to use this feature before or after the roll, but before any effects of the roll are applied.'),
('Font of Inspiration', 'You regain all of your expended uses of Bardic Inspiration when you finish a short or long rest.'),
('Font of Magic', 'You tap into a deep wellspring of magic within yourself. This wellspring is represented by sorcery points, which allow you to create a variety of magical effects.\r\n\r\nYou have 2 sorcery points, and you gain more as you reach higher levels. You can never have more sorcery points than your level allows. You regain all spent sorcery points when you finish a long cast.\r\n\r\nYou can use your sorcery points to gain additional spell slots, or sacrifice spell slots to gain additional sorcery points. You learn other ways to use your sorcery points as you reach higher level.'),
('Frenzy', 'You can go into a frenzy when you rage. If you do so, for the duration of your rage you can make a single melee weapon attack as a bonus action on each of your turns after this one.\r\n\r\nWhen your rage ends, you suffer one level of exhaustion.'),
('Great Old One\'s Expanded Spell List', 'The Great Old One lets you choose from an expanded list of spells when you learn a warlock spell.'),
('Greater Portent', 'The visions in your dreams intensify and paint a more accurate picture in your mind of what is to come. You roll three d20s for your Portent feature, rather than two.'),
('Grim Harvest', 'You gain the ability to reap life energy from creatures you kill with your spells. Once per turn when you kill one or more creatures with a spell of 1st level or higher, you regain hit points equal to twice the spell\'s level, or three times its level if the spell belongs to the School of Necromancy. You don\'t gain this benefit for killing constructs or undead.'),
('Guild Membership', 'As an established and respected member of a guild, you can rely on certain benefits that membership provides. Your fellow guild members will provide you with lodging and food if necessary, and pay for your funeral if needed. In some cities and towns, a guildhall offers a central place to meet other members of your profession, which can be a good place to meet potential patrons, allies, or hirelings.\r\n\r\nGuilds often wield tremendous political power. If you are accused of a crime, your guild will support you if a good case can be made for your innocence or the crime is justifiable. You can also gain access to powerful ploticial figures through the guild, if you are a member in good standing. Such connections might require the donation of money or magic items to the guild\'s coffers.\r\n\r\nYou must pay dues of 5 gp per month to the guild. If you miss payments, you must make up back dues to remain in the guild\'s good graces.'),
('Hide in Plain Sight', 'You can spend 1 minute creating camouflage for yourself. You must have access to fresh mud, dirt, plants, soot, and other naturally occurring materials with which to create your camouflage.\r\n\r\nOnce you are camouflaged in this way, you can try to hide by pressing yourself up against a solid surface, such as a tree or wall, that is at least as tall and wide as you are. You gain a +10 bonus to Dexterity (Stealth) checks as long as you remain there without moving or taking actions. Once you move or take an action or a reaction, you must camouflage yourself again to gain this benefit.'),
('Holy Nimbus', 'As an action, you can emanate an aura of sunlight. For 1 minute, bright light shines from you in a 30-foot radius. and dim light shines 30 feet beyond that.\r\n\r\nWhenever an enemy creature starts its turn in the bright light, the creature takes 10 radiant damage.\r\n\r\nIn addition, for the duration, you have advantage on saving throws against spells cast by fiends or undead.\r\n\r\nOnce you use this feature, you can\'t use it again until you finish a long rest.'),
('Hunter\'s Pray: Colossus Splayer', 'Your tenacity can wear down the most potent foes. When you hit a creature with a weapon attack, the creature takes an extra 1d8 damage if it\'s below it\'s hit point maximum. You can deal this extra damage only once per turn.'),
('Hunter\'s Pray: Giant Killer', 'When a large or larger creature within 5 feet of you hits or misses you with an attack, you can use your reaction to attack that creature immediately after its attack, provided that you can see the creature.'),
('Hunter\'s Pray: Horde Breaker', 'Once on each of your turns when you make a weapon attack, you can make another attack with the same weapon against a different creature that is within 5 feet of the original target and within range of your weapon.'),
('Hunter\'s Prey', 'You gain one of the Hunter\'s Prey features of your choice.'),
('Hurl Through Hell', 'When you hit a creature with an attack, you can use this feature to instantly transport the target through the lower planes. The creature disappears and hurtles through a nightmare landscape.\r\n\r\nAt the end of your next turn, the target returns to the space ir previously occupied, or the nearest unoccupied space. If the target is not a fiend, it takes 10d10 psychic damage as it reels from its horrific experience.\r\n\r\nOnce you use this feature, you can\'t use it again until you finish a long rest.'),
('Hypnotic Gaze', 'Your soft words and enchanting gaze can magically enthral another creature. As an action, choose one creature that you can see within 5 feet of you. If the target can see or hear you, it must succeed on a Wisdom saving throw against your wizard spell save DC or be charmed by you until the end of your next turn. The charmed creature\'s speed drops to 0, and the creature is incapacitated and visibly dazed.\r\n\r\nOn subsequent turns, you can use your action to maintain this effect, extending its duration until the end of your next turn. However, the effect ends if you move more than 5 feet away from the creature, if the creature can neither see nor hear you, or if the creature takes damage.\r\n\r\nOnce the effect ends, or if the creature succeeds on its initial saving throw against this effect, you can\'t use this feature on that creature again until you finish a long rest.'),
('Illusion Savant', 'The gold and time you must spend to copy an illusion spell into your spellbook is halved.'),
('Illusory Reality', 'You have learned the secret of weaving shadow magic into your illusions to give them a semi-reality. When you cast an illusion spell of 1st level or higher, you can choose one inanimate, nonmagical object that is part of the illusion and make that object real. You can do this on your turn as a bonus action while the spell is going. The object remains real for 1 minute. For example, you can create an illusion of a bridge over a chasm and then make it real long enough for your allies to cross.\r\n\r\nThe object can\'t deal damage or otherwise directly harm anyone.'),
('Illusory Self', 'You can create an illusory duplicate of yourself as an instant, almost instinctual reaction to danger. When a creature makes an attack roll against you, you can use your reaction to interpose the illusory duplicate between the attacker and yourself. The attack automatically misses you, then the illusion dissipates.\r\n\r\nOnce you use this feature, you can\'t use it again until you finish a short or long rest.'),
('Imposter', 'You gain the ability to unerringly mimic another person\'s speech, writing, and behaviour. You must spend at least three hours studying these three components of the person\'s behaviour, listening to speech, examining handwriting, and observing mannerisms.\r\n\r\nYour ruse is indiscernible to the casual observer. If a wary creature suspects something is amiss, you have advantage on any Charisma (Deception) check you make to avoid detection.'),
('Improved Abjuration', 'When you cast an abjuration spell that requires you to make an ability check as a part of casting that spell (as in Counterspell and Dispel Magic), you add your proficiency bonus to that ability check.'),
('Improved Combat Superiority', 'Your superiority dice turn into d10s. At 18th level, they turn into d12s.'),
('Improved Critical', 'Your weapon attacks score a critical hit on a roll of 19 or 20.'),
('Improved Divine Smite', 'You are so suffused with righteous might that all melee weapon strikes carry divine power with them. Whenever you hit a creature with a melee weapon, the creature takes an extra 1d8 radiant damage. If you also use your Divine Smite with an attack, you add this damage to the extra damage of your Divine Smite.'),
('Improved Duplicity', 'You can create up to four duplicates of yourself, instead of one, when you use Invoke Duplicity. As a bonus action on your turn, you can move any number of them up to 30 feet, to a maximum range of 120 feet.'),
('Improved Flare', 'You can also use your Warding Flare feature when a creature that you can see within 30 feet of you attacks a creature other than you.'),
('Improved Minor Illusion', 'You learn the Minor Illusion cantrip. If you already know this cantrip, you learn a different wizard cantrip of your choice. The cantrip doesn\'t count against your number of cantrips known.\r\n\r\nWhen you cast Minor Illusion, you can create both a sound and an image with a single casting of the spell.'),
('Improved War Magic', 'When you use your action to cast a spell, you can make one weapon attack as a bonus action.'),
('Indomitable', 'You can reroll a saving throw that you fail. If you do so, you must use the new roll, and you can\'t use this feature again until you finish a long rest.\r\n\r\nYou can use this feature twice between long rests starting at 13th level and three times between long rests starting at 17th level.'),
('Indomitable Might', 'If your total for a Strength check is less than your Strength score, you can use that score in place of the total.'),
('Infiltration Expertise', 'You can unfailingly create false identities for yourself. You must spend seven days and 25 gp to establish the history, profession, and affiliations for an identity. You can\'t establish an identity that belongs to someone else. For example, you might acquire appropriate clothing, letters of introduction, and official-looking certifications to establish yourself as a member of a trading house from a remote city so you can insinuate yourself into the company of other wealthy merchants.\r\n\r\nThereafter, if you adopt the new identity as a disguise, other creatures believe you to be that person until given an obvious reason not to.'),
('Instinctive Charm', 'When a creature you can see within 30 feet of you makes an attack roll against you, you can use your reaction to divert the attack, provided that another creature is within the attack\'s range. The attacker must make a Wisdom saving throw against your wizard spell save DC. On a failed save, the attacker must target the creature that is closest to it, not including you or itself. If multiple creatures are closest, the attacker chooses which one to target. On a successful save, you can\'t use this feature on the attacker again until you finish a long rest.\r\n\r\nYou must choose to use this feature before knowing whether the attack hits or misses. Creatures that can\'t be charmed are immune to this effect.'),
('Intimidating Presence', 'You can use your action to frightened someone with your menacing presence. When you do so, choose one creature that you can see within 30 feet of you. If the creature can see or hear you, it must succeed on a Wisdom saving throw (DC equal to 8 + your proficiency bonus + your Charisma modifier) or be frightened of you until the end of your next turn. On subsequent turns, you can use your action to extend the duration of this effect on the frightened create until the end of your next turn. This effect ends if the creature ends its turn out of line of sight or more than 60 feet away from you.\r\n\r\nIf the creature succeeds on its saving throw, you can\'t use this feature on that creature again for 24 hours.'),
('Inured to Undeath', 'You have resistance to necrotic damage, and your hit point maximum can\'t be reduced. You have spent so much time dealing with undead and the forces that animate them that you have become inured to some of their worst effects.'),
('Jack of All Trades', 'You can add half your proficiency bonus, rounded down, to any ability check you make that doesn\'t already include your proficiency bonus.'),
('Ki', 'Your training allows you to harness the mystic energy of ki. Your access to this energy is represented by a number of ki points. Your monk level determines the number of points you have.\r\n\r\nYou can spend these points to fuel various ki features. You start knowing three such features: Flurry of Blows, Patient Defence, and Step of the Wind. You learn more ki features as you gain levels in this class.\r\n\r\nWhen you spend a ki point, it is unavailable until you finish a short or long rest, at the end of which you draw all of your expended ki back into yourself. You must spend at least 30 minutes of the rest meditating to regain your ki points.\r\n\r\nSome of your ki features require your target to make a saving throw to resist the feature\'s effects. The saving throw FC is calculated as 8 + your proficiency bonus + your Wisdom modifier.'),
('Ki-Empowered Strikes', 'Your unarmed strikes count as magical for the purpose of overcoming resistance and immunity to nonmagical attacks and damage.'),
('Know Your Enemy', 'If you spend at least 1 minute or interacting with another creature outside combat, you can learn certain information about its capabilities compared to your own. The DM tells you if the creature is your equal, superior, or inferior in regard to two of the following characteristics of your choice:\r\n\r\nStrength score.\r\nDexterity score.\r\nConstitution score.\r\nArmour Class.\r\nCurrent hit points.\r\nTotal class levels (if any).\r\nFighter class levels (if any).'),
('Land\'s Stride', 'Moving through nonmagical difficult terrain costs you no extra movement. You can also pass through nonmagical plants without being slowed by them and without taking damage from them if they have thorns, spines, or a similar hazard.\r\n\r\nIn addition, you have advantage on saving throws against plants that are magically created or manipulated to impede movement, such those created by the Entangle spell.'),
('Lay on Hands', 'Your blessed touch can heal wounds. You have a pool of healing power that replenishes when you take a long rest. With that pool, you can restore a total number of hit points equal to your paladin level x 5.\r\n\r\nAs an action, you can touch a creature and draw power from the pool to restore a number of hit point to that creature, up to the maximum amount remaining in your pool.\r\n\r\nAlternatively, you can expend 5 hit points from your pool of healing to cure the target of one disease or neutralise one poison affecting it. You can cure multiple diseases and neutralise multiple poisons with a single use of Lay on Hands, expending hit point separately for each one.\r\n\r\nThis feature has no effect on undead and constructs.'),
('Life Domain Bonus Proficiency', 'You gain proficiency with heavy armour.'),
('Light Domain Bonus Cantrip', 'You gain the Light cantrip if you don\'t already know it.'),
('Mage Hand Legerdemain', 'When you cast Mage Hand, you can make the spectral hand invisible, and you can perform the following additional tasks with it:\r\n\r\nYou can stow one object the hand is holding in a container worn or carried by another creature.\r\n\r\nYou can retrieve an object in a container worn or carried by another creature.\r\n\r\nYou can use Thief\'s Tools to pick locks and disarm traps at range.\r\n\r\nYou can perform one of these tasks without being noticed by a creature if you succeed on a Dexterity (Sleight of Hand) check contested by the creature\'s Wisdom (Perception) check.\r\n\r\nIn addition, you can use the bonus action granted by your Cunning Action to control the hand.'),
('Magical Ambush', 'If you are hidden from a creature when you cast a spell on it, the creature has disadvantage on any saving throw it makes against the spell this turn.'),
('Magical Secrets', 'You have plundered magical knowledge from a wide spectrum of disciplines. Choose two spells from any class, including this one. A spell you choose must be of a level you can cast, as shown on the Bard table, or a cantrip.\r\n\r\nThe chosen spells count as bard spells for you and are included in the number of Spells Known.\r\n\r\nUnlocking this feature multiple times allows you to unlock two additional spells.'),
('Malleable Illusions', 'When you cast an illusion spell that has a duration of 1 minute or longer, you can use your action to change the nature of that illusion (using the spell\'s normal parameters for the illusion), provided that you can see the illusion.'),
('Manoeuvre: Commander\'s Strike', 'When you take the attack action on your turn, you can forgo one of your attacks and use a bonus action to direct one of your companions to strike. When you do so, choose a friendly creature who can see or hear you and expend one superiority die. That creature can immediately use its reaction to make one weapon attack, adding the superiority die to the attack\'s damage roll.'),
('Manoeuvre: Disarming Attack', 'When you hit a creature with a weapon attack, you can expend on superiority die to attempt to disarm the target, forcing it to drop one item of your choice that it\'s holding. You add the superiority die to the attack\'s damage roll, and the target must make a Strength saving throw. On a failed save, it drops the object you choose. The object lands at its feet.'),
('Manoeuvre: Distracting Strike', 'When you hit a creature with a weapon attack, you can expend one superiority die to distract the creature, giving your allies an opening. You add the superiority die to the attack\'s damage roll. The next attack roll against the target by an attacker other than you has advantage if the attack is made before the start of your next turn.'),
('Manoeuvre: Evasive Footwork', 'When you move, you can expend one superiority die, rolling the die and adding the number rolled to your AC until you stop moving.'),
('Manoeuvre: Feinting Attack', 'You can expend on superiority die and use a bonus action on your turn to feint, choosing one creature within 5 feet of you as your target. You have advantage on your next attack roll against that creature. If that attack hits, add the superiority die to the attack\'s damage roll.'),
('Manoeuvre: Goading Attack', 'When you hit a creature with a weapon attack, you can expend one superiority die to attempt to goad the target into attacking you. You add the superiority die to the attack\'s damage roll, and the target must make a Wisdom saving throw. On a failed save, the target has disadvantage on all attack rolls against targets other than you until the end of your next turn.'),
('Manoeuvre: Lunging Attack', 'When you make a melee weapon attack on your turn, you can expend one superiority die to increase your reach for that attack by 5 feet. If you hit, you add the superiority die to the attack\'s damage roll.'),
('Manoeuvre: Manoeuvring Attack', 'When you hit a creature with a weapon attack, you can expend on superiority die to manoeuvre one of your comrades int a more advantageous position. You add the superiority die to the attack\'s damage roll, and you choose a friendly creature who can see or hear you. That creature can use its reaction to move up to half its speed without provoking opportunity attacks from the target of your attack.'),
('Manoeuvre: Menacing Attack', 'When you hit a creature with a weapon attack, you can expend one superiority die to attempt to frighten the target. You add the superiority die to the attack\'s damage roll, and the target must make a Wisdom saving throw. On a failed save, it is frightened of you until the end of your next turn.'),
('Manoeuvre: Parry', 'When another creature damages you with a melee attack, you can use your reaction and expend one superiority die to reduce the damage by the number on your superiority die + your Dexterity modifier.'),
('Manoeuvre: Precision Attack', 'When you make a weapon attack roll against a creature, you can expend on superiority die to add it to the roll. You can use this manoeuvre before or after making the attack roll, but before any effects of the attack are applied'),
('Manoeuvre: Pushing Attack', 'When you hit a creature with a weapon attack, you can expend on superiority die to attempt to drive the target back. You add the superiority die to the attack\'s damage roll, and if the target is Large or smaller, it must make a Strength saving throw. On a failed save, you push the target up to 15 geet away from you.'),
('Manoeuvre: Rally', 'On your turn, you can use a bonus action and expend one superiority die to bolster the resolve of one of your companions. When you do so, choose a friendly creature who can see or hear you. That creature gains temporary hit points equal to the superiority die roll + your Charisma modifier.'),
('Manoeuvre: Riposte', 'When a creature misses you with a melee attack, you can use your reaction and expend one superiority die to make a melee weapon attack against the creature. If you hit, you add the superiority die to the attack\'s damage roll.'),
('Manoeuvre: Sweeping Attack', 'When you hit a creature with a melee weapon attack, you can expend on superiority die to attempt to damage another creature with the same attack. Choose another creature within 5 feet of the original target and within your reach. If the original attack roll would hit the second creature, it takes damage equal to the number you roll on your superiority die. The damage is of the same type dealt bu the original attack.'),
('Manoeuvre: Trip Attack', 'When you hit a creature with a weapon attack, you can expend on superiority die to attempt to knock the target down. You add the superiority die to the attack\'s damage roll, and if the target is Large or smaller, it must make a Strength saving throw. One a failed save, you knock the target prone.'),
('Martial Archetype', 'You choose an archetype that you strice to emulate in your combat styles and techniques. Choose Champion, Battle Master, or Eldritch Knight.'),
('Martial Arts', 'Your practice of martial arts gives you mastery of combat styles that use unarmed strikes and monk weapons, which are shortswords and any simple melee weapons that don\'t have the two-handed or heavy property.\r\n\r\nYou gain the following benefits while you are unarmed or wielding only monk weapons and you aren\'t wearing armour or wielding a shield:\r\n\r\nYou can use Dexterity instead of Strength for the attack and damage rolls of your unarmed strikes and monk weapons.\r\n\r\nYou can roll a d4 in place of the normal damage of your unarmed strike or monk weapon. This die changes as you gain monk levels.\r\n\r\nWhen you use the Attack action with an unarmed strike or a monk weapon on your turn, you can make one unarmed strike as a bonus action. For example, if you take the Attack action and attack with a quarterstaff, you can also make an unarmed strike as a bonus action, assuming you haven\'t already taken a bonus action this turn.'),
('Master of Nature', 'You gain the ability to command animals and plant creatures. While creatures are charmed by your Charm Animals and Plants feature, you can take a bonus action on your turn to verbally command what each of those creatures will do on its next turn.'),
('Master Transmuter', 'You can use your action to consume the reserve  of transmutation magic stored within your transmuter\'s stone in a single burst. When you do so, choose one of the effects described below. Your transmuter\'s stone is destroyed and can\'t be remade until you finish a long rest.\r\n\r\nMajor Transformation: You can transmute one nonmagical object - no larger than a 5-foot cube - into another nonmagical object of similar size and mass and of equal or lesser value. You must spend 10 minute handling the object to transform it.\r\n\r\nPanacea: You remove all curses, diseases, and poisons affecting a creature that you touch with the transmuter\'s stone. The creature also regains all of its hit point.\r\n\r\nRestore Life: You cast the Raise Dead spell on a creature you touch with the transmuter\'s stone, without expending a spell slot or needing to have the spell in your spellbook.\r\n\r\nRestore Youth: You touch the transmuter\'s stone to a willing creature, and that creature\'s apparent age is reduced by 3d10 years, to a minimum of 13 years. This effect doesn\'t extend the creature\'s lifespan.'),
('Metamagic', 'You gain the ability to twist your spells to suit your needs. You gain two of the Metamagic options of your choice. You gain another one at 10th and 17th level.\r\n\r\nYou can only use one metamagic option on a spell when you cast it, unless otherwise noted.'),
('Metamagic: Careful Spell', 'When you case a spell that forces other creatures to make a saving throw, you can protect some of those creatures from the spell\'s full force. To do so, you spend 1 sorcery point and choose a number of those creatures up to your Charisma modifier (minimum of one creature). A chosen creature automatically succeeds on its saving throw against the spell.'),
('Metamagic: Distant Spell', 'When you cast a spell that has a range of 5 feet or greater, you can spend 1 sorcery point to double the range of the spell.\r\n\r\nWhen you cast a spell that has a range of touch, you can spent 1 sorcery point to make the range of the spell 30 feet.'),
('Metamagic: Empowered Spell', 'When you roll damage for a spell, you can spend 1 sorcery point to reroll a number of the damage dice up to your Charisma modifier (minimum of one). You must use the new rolls.\r\n\r\nYou can use Empowered Spell even if you have already used a different Metamagic option during the casting of the spell.'),
('Metamagic: Extended Spell', 'When you cast a spell that has a duration of 1 minute or longer, you can spend 1 sorcery point to double it duration, to a maximum duration of 24 hours.'),
('Metamagic: Heightened Spell', 'When you cast a spell that forces a creature to make a saving throw to resist its effects, you can spend 3 sorcery points to give one target of the spell disadvantage on its first saving throw made against the spell.'),
('Metamagic: Quickened Spell', 'When you cast a spell that has a casting time of 1 action, you can spend 2 sorcery point to change the casting time to 1 bonus action for this casting.'),
('Metamagic: Subtle Spell', 'When you cast a spell, you can spend 1 sorcery point to cast it without any somatic or verbal components.'),
('Metamagic: Twinned Spell', 'When you cast a spell that targets only one creature and doesn\'t have a range of self, you can spend a number of sorcery points equal to the spell\'s level to target a second creature in range with the same spell (1 sorcery point if the spell is a cantrip).'),
('Military Rank', 'You have a military rank from your career as a soldier. Soldiers loyal to your former military organisation still recognise your authority and influence, and they defer to you if they are of a lower rank. You can invoke your rank to exert influence over other soldiers and requisition simple equipment or horses for temporary use. You can also usually gain access to friendly military encampments and fortresses where you rank is recognised.'),
('Mindless Rage', 'You can\'t be charmed or frightened while raging. If you are charmed or frightened when you enter your rage, the effect is suspended for the duration of the rage.'),
('Minor Alchemy', 'You can temporarily alter the physical properties of one nonmagical object, changing it from one substance into another. You perform a special alchemical procedure on one object composed entirely of wood, stone (but not gemstone), iron, copper, or silver, transforming it into a different one of those materials. For each 10 minutes you spend performing the procedure, you can transform up to 1 cubic foot of material. After 1 hour, or until you lose your concentration (as if you were concentrating on a spell), the material reverts to its original substance.'),
('Minor Conjuration', 'You can use your action to conjure up an inanimate object in your hand or on the ground in an unoccupied space that you can see within 10 feet of you. This object can be no larger than 3 feet on a side and weight no more than 10 pounds, and its form must be that of a nonmagical object that you have seen. The object is visibly magical, radiating dim light out to 5 feet.\r\n\r\nThe object disappears after 1 hour, when you use this feature again, or if it takes any damage.'),
('Misty Escape', 'You can vanish in a puff of mist in response to harm. When you take damage, you can use your reaction to turn invisible and teleport up to 60 feet to an unoccupied space you can see. You remain invisible until the start of your next turn or until you attack of cast a spell.\r\n\r\nOnce you use this feature, you can\'t use it again until you finish a short or long rest.'),
('Monastic Tradition', 'You commit yourself to a monastic tradition: the Way of the Open Hand, the Way of Shadow, or the Way of the Four Elements.'),
('Monk\'s Timeless Body', 'Your ki sustains you so that you suffer none of the frailty of old age, and you can\'t be aged magically. You can still die of old age, however. In addition, you no longer need food or water.'),
('Multiattack', 'You gain one of the Multiattack features of your choice.'),
('Multiattack: Volley', 'You can use your action to make a ranged attack against any number of creatures within 10 feet of a point you can see within your weapon\'s range. You must have ammunition for each target, as normal, and you make a separate attack roll for each target.'),
('Multiattack: Whirlwind Attack', 'You can use your action to make a melee attack against any number of creatures within 5 feet of you, with a separate attack roll for each target.'),
('Mystic Arcanum', 'Your patron bestows upon you a magical secret called an arcanum. Choose one 6th-level spell from your warlock spell list as this arcanum.\r\n\r\nYou can cast your arcanum spell once without expending a spell slot. You must finish a long rest before you can do so again.\r\n\r\nAt higher levels, you gain more warlock spells of your choice that can be cast in this way: one 7th-level spell at 13th level, one 8th-level spell at 15th level, and one 9th-level spell at 17th level. You regain all uses of your Mystic Arcanum when you finish a long rest.'),
('Natural Explorer', 'You are particularly familiar with one type of natural environment and are adept at traveling and surviving in such regions. Choose one type of favoured terrain: artcit, coast, desert, forest, grassland, mountain, swamp, or the Underdark. When you make an Intelligence or Wisdom check related to your favoured terrain, your proficiency bonus is doubled if you are using a skill that you\'re proficient in.\r\n\r\nWhile travelling for an hour or more in your favoured terrain, you gain the following benefits:\r\n\r\nDifficult terrain doesn\'t slow your group\'s travel.\r\n\r\nYour group can\'t become lost except by magical means.\r\n\r\nEven when you are engaged in another activity while travelling (such as foraging, navigating, or tracking), you remain alert to danger.\r\n\r\nIf you are travelling alone, you can move stealthily at a normal pace.\r\n\r\nWhen you forage, you find twice as much food as you normally would.\r\n\r\nWhile tracking other creatures, you also learn their exact number, their sizes, and how long ago they passed through the area.\r\n\r\nYou choose additional favoured terrain types at 6th and 10th level.'),
('Natural Recovery', 'You can regain some of your magical energy by sitting in meditation and communing with nature. During a short rest, you choose expended spell slots to recover. The spell slots can have a combined level that is equal to or less than half your druid level (rounded up), and none of the slots can be 6th level or higher. You can\'t use this feature again until you finish a long rest.\r\n\r\nFor example, when you are a 4th-level druid, you can recover up to two levels worth of spell slots. You can recover either a 2nd-level slot or two 1st-level slots.'),
('Nature Domain Bonus Proficiency', 'You gain proficiency with heavy armour.'),
('Nature\'s Sanctuary', 'Creatures of the natural world sense your connection to nature and become hesitant to attack you. When a beast or plant creature attacks you, that creature must make a Wisdom saving throw against your druid spell save DC. On a failed save, the creature must choose a different target, or the attack automatically misses. On a successful save, the creature is immune to this effect for 24 hours. The creature is aware of this effect before it makes its attack against you.'),
('Nature\'s Ward', 'You can’t be Charmed or Frightened by elementals or fey, and you are immune to poison and disease.'),
('Necromancy Savant', 'The gold and time you must spend to copy a necromancy spell into your spellbook is halved.'),
('Open Hand Technique', 'You can manipulate your enemy\'s ki when you harness your own. Whenever you hit a creature with one of the attacks granted by your Flurry of Blows, you can impose one of the following effects on that target:\r\n\r\nIt must succeed on a Dexterity saving throw or be knocked prone.\r\n\r\nIt must take a Strength saving throw. If it fails, you can push it up to 15 feet away from you.\r\n\r\nIt can\'t take reactions until the end of your next turn.'),
('Opportunist', 'You can exploit a creature\'s momentary distraction when it is hit by an attack. Whenever a creature within 5 feet of you is hit by an attack made by a creature other than you, you can use your reaction to make a melee attack against that creature.'),
('Otherworldly Patron', 'You have struck a bargain with an otherworldly being of your choice: the Archfey, the Fiend, or the Great Old One.'),
('Overchannel', 'You can increase the power of your simpler spells. When you cast a wizard spell of 5th level or lower that deals damage, you can deal maximum damage with that spell.\r\n\r\nThe first time you do so, you suffer no adverse effect. If you use this feature again before you finish a long rest, you take 2d12 necrotic damage for each level of the spell, immediately after you cast it. Each time you use this feature again before finish a long rest, the necrotic damage per spell level increases by 1d12. This damage ignores resistance and immunity.'),
('Pact Boon', 'Your otherworldly patron bestows a gift upon you for your loyal service.'),
('Pact Boon: Pact of the Blade', 'You can use your action to create a pact weapon in your empty hand. You can choose the form that his melee weapon takes each time you create it. You are proficiency with it while you wield it. This weapon counts as magical for the purpose of overcoming resistance and immunity to nonmagical attacks and damage.\r\n\r\nYour pact weapon disappears if it is more than 5 feet from you for 1 minute or more. It also disappears if you use this feature again, if you dismiss the weapon (no action required), or if you die.\r\n\r\nYou can transform one magic weapon into your pact weapon by performing a special ritual over the course of 1 hour, which can be done during a short rest. You can then dismiss the weapon, shunting it into an extradimensional space, and it appears whenever you create your pact weapon thereafter. You can\'t affect an artefact or a sentient weapon in this way. The weapon ceases being your pact weapon if you die, if you perform the 1-hour ritual on a different weapon, or if you use a 1-hour ritual to break your bond to it. The weapon appears at your feet if it is in the extradimensional space when the bond breaks.'),
('Pact Boon: Pact of the Chain', 'You learn the Find Familiar spell and can cast it as a ritual. The spell doesn\'t count against your number of spells known.\r\n\r\nWhen you cast the spell, you can choose one of the normal forms for your familiar or one of the following special forms: imp, pseudodragon, quasit, or sprite.\r\n\r\nAdditionally, when you take the Attack action, you can forgo one of your own attacks to allow your familiar to make on attack of its own.'),
('Pact Boon: Pact of the Tome', 'Your patron gives you a grimoire called a Book of Shadows. When you gain this feature, choose three cantrips from any class\' spell list. While the book is on your person, you can cast those cantrips at will. They don\'t count against your number of cantrips known.\r\n\r\nIf you lose your Book of Shadows, you can perform a 1-hour ceremony to receive a replacement from your patron. This ceremony can be performed during a short or long rest, and it destroys the previous book. The book turns to ash when you die.'),
('Patient Defence', 'You can spend 1 ki point to take the Dodge action as a bonus action on your turn.'),
('Peerless Skill', 'When you make an ability check, you can expend one use of Bardic Inspiration. Roll a Bardic Inspiration die and add the number rolled to your ability check. You can choose to do so after you roll the die for the ability check, but before the DM tells you whether you succeed or fail.'),
('Perfect Self', 'When you roll for initiative and have no ki points remaining, you regain 4 ki points.'),
('Persistent Rage', 'Your rage is so fierce that it ends early only if you fall unconscious or if you choose to end it.'),
('Portent', 'When you choose this school, glimpses of the future begin to press in on your awareness. When you finish a long rest, roll two d20s and record the numbers rolled. You can replace any attack roll, saving throw, or ability check made by you or a creature that you can see with one of these foretelling rolls. You must choose to do so before the rool, and you can replace a roll in this way only one per turn.\r\n\r\nEach foretelling roll can be used only once. When you finish a long rest, you lose any unused foretelling rolls.'),
('Position of Privilege', 'Thanks to your noble birth, people are inclined to think the best of you. You are welcome in high society, and people assume you have the right to be wherever you are. The common folk make every effort to accommodate you and avoid your displeasure, and other people of high birth treat you as a member of the same social sphere. You can secure an audience with a local noble if you need to.'),
('Potent Cantrip', 'Your damaging cantrips affect even creatures that avoid the brunt of the effect. When a creature succeeds on a saving throw against your cantrip, the creature takes half the cantrip\'s damage (if any) but suffers no additional effect from the cantrip.'),
('Potent Spellcasting', 'You add your Wisdom modifier to the damage you deal with any cleric cantrip.'),
('Primal Champion', 'You embody the power of the wilds. Your Strength and Constitution scores increase by 4. Your maximum for those scores is now 24.'),
('Primal Path', 'You choose a path that shapes the nature of your rage. Choose the Path of the Berserker or the Path of the Totem Warrior.'),
('Primal Strike', 'Your attacks in beast form count as magical for the purpose of overcoming resistance and immunity to nonmagical attacks and damage.'),
('Primeval Awareness', 'You can use your action and expend one ranger spell slot to focus your awareness on the region around you. For 1 minute per level of the spell slot you expend, you can sense whether the following types of creatures are present within 1 mile of you (or within up to 6 miles if you are in your favoured terrain): abberations, celestials, dragons, elementals, fey, fiends, and undead. This feature doesn\'t reveal the creatures\' location or number.'),
('Projected Ward', 'When a creature that you can see within 30 feet of you takes damage, you can use your reaction to cause your Arcane Ward to absorb that damage. If this damage reduces the ward to 0 hit points, the warded creature takes any remaining damage.'),
('Purity of Body', 'Your mastery of the ki flowing through you makes you immune to disease and poison.'),
('Purity of Spirit', 'You are always under the effects of a Protection from Evil and Good spell.'),
('Quivering Palm', 'At 17th level, you gain the ability to set up lethal vibrations in someone\'s body. When you hit a creature with an unarmed strike, you can spend 3 ki points to start these imperceptible vibrations, which last for a number of days equal to your monk level. The vibrations are harmless unless you use your action to end them. To do so, you and the target must be on the same plane of existence. When you use this action, the creature must make a Constitution saving throw. If it fails, it is reduced to 0 hit points. If it succeeds, it takes 10d10 necrotic damage.\r\n\r\nYou can have only one creature under the effect of this feature at a time. You can choose to end the vibrations harmlessly without using an action.'),
('Rage', 'In battle, you fight with primal ferocity. On your turn, you can enter a rage as a bonus action. While raging, you gain the following benefits if you aren’t wearing heavy armor:\r\n\r\nYou have advantage on Strength checks and Strength\r\nsaving throws.\r\n\r\nWhen you make a melee weapon attack using Strength, you gain a bonus to the damage roll that increases as you gain levels as a barbarian, as shown in the Rage Damage column of the Barbarian table.\r\n\r\nYou have resistance to bludgeoning, piercing, and slashing damage.\r\n\r\nIf you are able to cast spells, you can’t cast them or concentrate on them while raging. Your rage lasts for 1 minute. It ends early if you are knocked unconscious or if your turn ends and you haven’t attacked a hostile creature since your last turn or taken damage since then. You can also end your rage on your turn as a bonus action.\r\n\r\nYou may only rage so many times between long rests dependent on your level.'),
('Ranger Archetype', 'You choose an archetype that you strive to emulate: Hunter or Beast Master.'),
('Ranger\'s Companion', 'At 3rd level, you gain a beat companion that accompanies you on your adventures and is trained to fight alongside you. Choose a beast that is no larger than Medium and that has a challenge rating of 1/4 or lower (such as a hawk, mastiff, or panther). Add your proficiency bonus to the beast\'s AC, attack rolls, and damage rolls, as well as to any saving throws and skills it is proficient in. It\'s hit point maximum equals its normal maximum or four times your ranger level, whichever is higher.\r\n\r\nThe beast obeys your commands as best as it can. It takes its turn on your initiative, though it doesn\'t take an action unless you command it to. On your turn, you can verbally command the beast where to move (no action required by you). You can use your action to verbally command it to take the Attack, Dash, Disengage, Dodge, or Help action. Once you have the Extra Attack feature, you can make one weapon attack yourself when you command the beast to take the Attack action.\r\n\r\nWhile travelling through your favoured terrain with only the beast, you can move stealthily at a normal pace.\r\n\r\nIf the beast dies, you can obtain another one by spending 8 hours magically bonding with another beast that isn\'t hostile to you, either the same type of beast as before or a different one.'),
('Reckless Attack', 'You throw aside all concern for defence to attack with fierce desperation. When you make your first attack on your turn, you can decide to attack recklessly. Doing so gives you advantage on melee weapon attack rolls using Strength during this turn, but attack rolls against you have advantage until your next turn.'),
('Relentless', 'When you roll initiative and have no superiority dice remaining, you regain 1 superiority die.'),
('Relentless Avenger', 'Your supernatural focus helps you close off a foe\'s retreat. When you hit a creature with an opportunity attack, you can move up to half your speed immediately after the attack and as part of the same reaction. This movement doesn\'t provoke opportunity attacks.'),
('Relentless Rage', 'Your rage can keep you fighting despite grievous wounds. If you drop to 0 hit points while you\'re raging and you don\'t die outright, you can make a DC 10 Constitution saving throw. If you succeed, you drop to 1 hit point instead.\r\n\r\nEach time you use this feature after the first, the DC increases by 5. When you finish a short or long rest, the DC reset to 10.'),
('Reliable Talent', 'You have refined your chosen skills until they approach perfection. Whenever you make an ability check that lets you add your proficiency bonus, you can treat a d20 roll of 9 or lower as 10.'),
('Remarkable Athlete', 'You can add half your proficiency bonus (round up) to any Strength, Dexterity, or Constitution check you make that doesn\'t already use your proficiency bonus.\r\n\r\nIn addition, when you make a running long jump, the distance you can cover increases by a number of feet equal to your Strength modifier.');
INSERT INTO `feature` (`name`, `description`) VALUES
('Researcher', 'When you attempt to learn or recall a piece of lore, if you do not know that information, you often know where and from whom you can obtain it. Usually, this information comes from a library, scriptorium, university, or a sage or other learned person or creature. Your DM might rule that the knowledge you seek is secreted away in an almost inaccessible place, or that it simply cannot be found. Unearthing the deepest secrets of the multiverse can require an adventure or even a whole campaign.'),
('Retainers', 'You have the service of three retainers loyal to your family. These retainers can be attendants or messengers, and one might be a majordomo. Your retainers are commoners who can perform mundane tasks for you, but they do not fight for you, will not follow you into obviously dangerous areas (such as dungeons), and will leave if they are frequently endangered or abused.'),
('Retaliation', 'When you take damage from a creature that is within 5 feet of you, you can use your reaction to make a melee weapon attack against that creature.'),
('Rogue\'s Expertise', 'Choose two of your skill proficiencies, or one of your skill proficiencies and your proficiency with Theif\'s Tools. Your proficiency bonus is doubled for any ability check you make that uses either of the chosen proficiencies.\r\n\r\nAt 6th level, you can choose two more of your proficiencies (in skills or with Thief\'s Tools) to gain this benefit.'),
('Roguish Archetype', 'You choose an archetype that you emulate in the exercise or your rogue abilities: Thief, Assassin, or Arcance Trickster.'),
('Rustic Hospitality', 'Since you come from the ranks of the common folk, you fit in among them with ease. You can find a place to hide, rest, or recuperate among other commoners, unless you have shown yourself to be a danger to them. They will shield you from the law or anyone else searching for you, though they will not risk their lives for you.'),
('Sacred Oath', 'You swear the oath that binds you as a paladin forever. Up to this time you have been in a preparatory stage, committed to the path but not yet sworn to it. Now you choose the Oath of Devotion, the Oath of Ancients, or the Oath of Vengeance.\r\n\r\nEach oath has a list of associated spells. You again access to these spells at specified levels. Once you gain access to an oath spell, you always have it prepared. Oath spells don\'t count against the number of spells you can prepare each day.\r\n\r\nIf you gain an oath spell that doesn\'t appear on the paladin spell list, the spell is nonetheless a paladin spell for you.\r\n\r\nYour oath allows you to channel divine energy to fuel magical effects. Each Channel Divinity option provided by your oath explains how to use it.\r\n\r\nWhen you use your Channel Divinity, you choose which option to use. You must then finish a short or long rest to use your Channel Divinity again.\r\n\r\nSome Channel Divinity effects require saving throws. When you use such an effect from this class, the DC equals your paladin spell save DC.'),
('Sculpt Spells', 'You can create pockets of relative safety within the effects of your evocation spells. When you cast an evocation spell that affects other creatures that you can see, you can choose a number of them equal to 1 + the spell\'s level. The chosen creatures automatically succeed on their saving throws against the spell, and they take no damage if they would normally take half damage on a successful save.'),
('Second Wind', 'You have a limited well of stamina that you can draw on to protect yourself from harm. On your turn, you can use a bonus action to regain hit points equal to 1d10 + your fighter level.\r\n\r\nOnce you use this feature, you must finish a short or long rest before you can use it again.'),
('Second-Story Work', 'You gain the ability to climb faster than normal; climbing no longer costs you extra movement.\r\n\r\nIn addition, when you make a running jump, the distance you cover increases by a number of feet equal to your Dexterity modifier.'),
('Shadow Arts', 'You can use your ki to duplicate the effects of certain spells. As an action, you can spend 2 ki points to cast Darkness, Darkvision, Pass Without Trace, or Silence, without providing material components. Additionally, you gain the Minor Illusion cantrip if you don\'t already know it.'),
('Shadow Step', 'You gain the abilit to step from one shadow into another. When you are in dim light or darkness, as a bonus action you can teleport up to 60 feet to an unoccupied space you can see that is also in dim light or darkness. You then have advantage on the first melee attack you make before the end of the turn.'),
('Shapechanger', 'You add the Polymorph spell to your spellbook, if it is not there already. You can cast Polymorph without expending a spell slot. When you do so, you can target only yourself and transform into a beast whose challenge rating is 1 or lower.\r\n\r\nOnce you cast Polymorph in this way, you can\'t do so again until you finish a short or long rest, though you can still cast it normally using an available spell slot.'),
('Share Spells', 'When you cast a spell targeting yourself, you can also affect your beast companion with the spell if the beast is within 30 feet of you.'),
('Shelter of the Faithful', 'As an acolyte, you command the respect of those who share your faith, and you can perform the religious ceremonies of your deity. You and your adventuring companions can expect to receive free healing and care at a temple shrine, or other established presence of your faith, though you must provide any material components needed for spells. Those who share your religion will support you (but only you) at a modest lifestyle.\r\n\r\nYou might also have ties to a specific temple dedicated to your chosen deity or pantheon, and you have a residence there. This could be the temple where you used to serve, if you remain on good terms with it, or a temple where you have found a new home. While near your temple, you can call upon the priests for assistance, provided the assistance you ask for is not hazardous and you remain in good standing with your temple.'),
('Ship\'s Passage', 'When you need to, you can secure free passage on a sailing ship for yourself and your adventuring companions. You might sail on the ship you served on, or another ship you have good relations with (perhaps one captained by a former crewmate). Because you\'re calling in a favour, you can\'t be certain of a schedule or route that will meet your ever need. Your DM will determine how long it takes to get where you need to go. In return for your free passage, you and your companions are expected to assist the crew during the voyage.'),
('Signature Spells', 'You gain mastery over two powerful spells and can cast them with little effort. Choose two 3rd-level wizard spells in your spellbook as your signature spells. You always have these spells prepared, they don\'t count against the number of spells you have prepared, and you can cast each of them once at 3rd level without expending a spell slot. When you do so, you can\'t do so again until you finish a short or long rest.\r\n\r\nIf you want to cast either spell at a higher level, you must expend a spell slot as normal.'),
('Slippery Mind', 'You have acquired greater mental strength. You gain proficiency in Wisdom saving throws.'),
('Slow Fall', 'You can use your reaction when you fall to reduce any falling damage you take by an amount equal to five times your monk level.'),
('Sneak Attack', 'You know how to strike subtly and exploit a foe\'s distraction. Once per turn, you can deal an extra 1d6 damage to one creature you hit with an attack if you have advantage on the attack roll. The attack must use a finesse or a ranged weapon.\r\n\r\nYou don\'t need advantage on the attack roll if another enemy of the target is within 5 feet of it, that enemy isn\'t incapacitated, and you don\'t have disadvantage on the attack roll.\r\n\r\nThe amount of extra damage increases as you gain levels in the Rogue class.'),
('Song of Rest', 'You can use soothing music or oration to help revitalise your wounded allies during a short rest. If you ore any friendly creatures who can hear your performance regain hit points at the end of the short rest, each of those creatures regains an extra 1d6 hit points.\r\n\r\nThe extra hit points increase when you reach level levels in this class: to 1d8 at 9th level, to 1dd10 at 13th level, and to 1d12 at 17th level.'),
('Sorcerous Origin', 'Choose a sorcerous origin, which describes the source of your innate magical power: Draconic Bloodline, or Wild Magic.'),
('Sorcerous Restoration', 'You regain 4 expended sorcery points whenever you finish a short rest.'),
('Soul of Vengeance', 'The authority with which you speak your Vow of Enmity gives you greater power over your foe. When a creature under the effect of your Vow of Enmity makes an attack, you can use your reaction to make a melee weapon attack against that creature if it is within range.'),
('Spell Bombardment', 'The harmful energy of your spells intensifies. When you roll damage for a spell and roll the highest number possible on any dice, choose one of those dice, roll it again and add that roll to the damage. You can use the feature only once per turn.'),
('Spell Mastery', 'You have achieved such mastery over certain spells that you can cast them at will. Choose a 1st-level wizard spell and a 2nd-level wizard spell that are in your spellbook. You can cast those spells at their lowest level without expending a spell slot as normal.\r\n\r\nBy spending 8 hours in study, you can exchange one of both of the spells you chose for different spells of the same levels.'),
('Spell Resistance', 'You have advantage on saving throws against spells.\r\n\r\nFurthermore, you have resistance against the damage of spells.'),
('Spell Thief', 'You gain the ability to magically steal the knowledge of how to cast a spell from another spellcaster.\r\n\r\nImmediately after a creature casts a spell that targets you or includes you in its area of effect, you can use your reaction to force the creature to make a saving throw with its spellcasting ability modifier. The DC equals your spell save DC. On a failed save, you negate the spell\'s effect against you, and you steal the knowledge of the spell if it is at least 1st level and of a level you can cast (it doesn\'t need to be a wizard spell). For the next 8 hours, you know the spell and can cast it using your spell slots. The creature can\'t cast that spell until the 8 hours have passed.\r\n\r\nOnce you use this feature, you can\'t use it again until you finish a long rest.'),
('Spirit Seeker', 'Yours is a path that seeks attunement with the natural world, giving you the kinship with beasts. You gain the ability to cast the Beast Sense and Speak with Animals spells, but only as rituals.'),
('Spirit Walker', 'You can cast the Commune with Nature spell, but only as a ritual. When you do so, a spiritual version of one of the animals you chose for Totem Spirit or Aspect of the Beast appears to you to convey the information you seek.'),
('Split Enchantment', 'When you cast an enchantment spell of 1st level or higher that targets only one creature, you can have it target a second creature.'),
('Step of the Wind', 'You can spend 1 ki point to take the Disengage or Dash action as a bonus action on your turn, and your jump distance is doubled for the turn.'),
('Stillness of Mind', 'You can use your action to end one effect on yourself that is causing you to be charmed or frightened.'),
('Stormborn', 'You have a flying speed equal to your current walking speed whenever you are not underground or indoors.'),
('Stroke of Luck', 'You have an uncanny knack for succeeding when you need to. If your attack misses a target within range, you can turn the miss into a hit. Alternatively, if you fail on an ability check, you can treat the d20 roll as a 20.\r\n\r\nOnce you use this feature, you can\'t use it again until you finish a short or long rest.'),
('Student of War', 'You gain proficiency with one type of Artisan\'s Tools of your choice.'),
('Stunning Strike', 'You can interfere with the flow of ki in an opponent\'s body. When you hit another creature with a melee weapon attack, you can spend 1 ki point to attempt a stunning strike. The target must succeed on a Constitution saving throw or be stunned until the end of your next turn.'),
('Superior Critical', 'Your weapon attacks score a critical hit on a roll of 18-20.'),
('Superior Hunter\'s Defence', 'You gain one of the Superior Hunter\'s Defence features of your choice.'),
('Superior Hunter\'s Defence: Evasion', 'You can nimbly dodge out of the way of certain area effects, such as a red dragon\'s fiery breath or a Lightning Bolt spell. When you are subjected to an effect that allows you to make a Dexterity saving throw to take only half damage, you instead take no damage if you succeed on the saving throw, and only half damage if you fail.'),
('Superior Hunter\'s Defence: Stand Against the Tide', 'When a hostile creature misses you with a melee attack, you can use your reaction to force that creature to repeat the same attack against another creature (other than itself) of your choice.'),
('Superior Hunter\'s Defence: Uncanny Dodge', 'When an attacker that you can see hits you with an attack, you can use your reaction to halve the attack\'s damage against you.'),
('Superior Inspiration', 'When you roll initiative and have no uses of Bardic Inspiration left, you regain one use.'),
('Supreme Healing', 'When you would normally roll one or more dice to restore hit points with a spell, you instead use the highest number possible for each die. For example, instead of restoring 2d6 hit points to a creature, you restore 12.'),
('Supreme Sneak', 'You have advantage on a Dexterity (Stealth) check if you move no more than half your speed on the same turn.'),
('Survivor', 'You attain the pinnacle of resilience in battle. At the start of each of your turns, you regain hit points equal to 5 + your Constitution modifier if you have no more than half of your hit points left. You don\'t gain this benefit if you have 0 hit point.'),
('Sweeping Cinder Strik', 'You can spend 2 ki points to cast Burning Hands.'),
('Tempest Domain Bonus Proficiencies', 'You gain proficiency with martial weapons and heavy armour.'),
('The Third Eye', 'You can use your action to increase your powers of perception. When you do so, choose on of the following benefits, which lasts until you are incapacitated or you take a short or long rest.\r\n\r\nDarkvision: You gain darkvision out to a range of 60 feet.\r\n\r\nEthereal Sight: You can see into the Ethereal Plane within 60 feet of you.\r\n\r\nGreater Comprehension: You can read any language.\r\n\r\nSee Invisibility: You can see invisible creatures and objects within 10 feet of you that are within line of sight.'),
('Thief\'s Reflexes', 'You have become adept at laying ambushes and quickly escaping danger. You can take two turns during the first round of any combat. You take your first turn at your normal initiative and your second turn at your initiative minus 10. You can\'t use this feature when you are surprised.'),
('Thieves\' Cant', 'During your rogue training you learned thieves\' cant, a secret mix of dialect, jargon, and code that allows you to hide messages in seemingly normal conversation. Only another creature that knows thieves\' cant understands such messages. It takes four times longer to convey such a message than it does to speak the same idea plainly.\r\n\r\nIn addition, you understand a set of secret signs and symbols used to convey short, simple messages, such as whether an area is dangerous or the territory of a thieves\' guild, whether loot is nearby, or whether the people in an area are easy marks or will provide a safe house for thieves on the run.'),
('Thought Shield', 'Your thoughts can\'t be read by telepathy or other means unless you allow it. You also have resistance to psychic damage, and whenever a creature deals psychic damage to you, that creature takes the same amount of damage that you do.'),
('Thousand Forms', 'You have learned to use magic to alter your physical form in more subtle ways. You can cast the Alter Self spell at will.'),
('Thunderbolt Strike', 'When you deal lightning damage to a Large or smaller creature, you can also push it up to 10 feet away from you.'),
('Tides of Chaos', 'You can manipulate the forces of cahnce and chaos to gain advantage on one attack roll, ability check, or saving throw. Once you do so, you must finished a long rest before you can use this feature again.\r\n\r\nAny time before you regain the use of this feature, the DM can have you roll on the Wild Magic Surge table immediately after you cast a sorcerer spell of 1st level or higher. You then regain the use of this feature.'),
('Tongue of the Sun and Moon', 'You learn to touch the ki of other minds so that you understand all spoken languages. Moreover, any creature that can understand a language can understand what you say.'),
('Totem Spirit', 'You choose a totem spirit and gain its feature. You must make or acquire a physical totem object - an amulet or similar adornment - that incorporates fur or feathers, claws, teeth, or bones of the totem animals. At your option, you also gain minor physical attributes athat are reminiscent of your totem spirit. For example, if you have a bear totem spirit, you might be unusually hairy and thick-skinned, or if your totem is the eagle, your eyes turn bright yellow.\r\n\r\nYour totem animal might be an animal related to those listed here, but more appropriate to your homeland. For example, you could choose a hawk or vulture in place of an eagle.\r\n\r\nBear: While raging, you have resistance to all damage except psychic damage. The spirit of the bear makes you tough enough to stand up to any punishment.\r\n\r\nEagle: While you\'re raging and aren\'t wearing heavy armour, other creatures have disadvantage on opportunity attack rolls against you, and you can use the Dash action as a bonus action on your turn. The spirit of the eagle makes you into a predator who can weave through the fray with ease.\r\n\r\nWolf: While you\'re raging, your friends have advantage on melee attack rolls against any creature within 5 feet of you that is hostile to you. The spirit of the wolf makes you a leader of hunters.'),
('Totemic Attunement', 'You gain a magical benefit based on a totem animal of your choice. You can choose the same animal you selected previously or a different one.\r\n\r\nBear: While you\'re raging, any creature within 5 feet of you that\'s hostile to you had disadvantage on attack rolls against targets other than you or another character with this feature. An enemy is immune to this effect if it can\'t see or hear you or if it can\'t be frightened.\r\n\r\nEagle: While raging, you have a flying speed equal to your current walking speed. This benefit works only in short bursts; you fall if you end your turn in the air and nothing else is holding you aloft.\r\n\r\nWolf: While you\'re raging, you can use a bonus action on your turn to knock a Large or smaller creature prone when you hit it with a melee weapon attack.'),
('Tranquility', 'You can enter a special meditation that surrounds you with an aura of peace. At the end of a long rest, you gain the effect of a Sanctuary spell that lasts until the start of your next long rest (the spell can end early as normal). The saving throw DC for the spell equals 8 + your Wisdom modifier + your proficiency bonus.'),
('Transmutation Savant', 'The gold and time you must spend to copy a transmutation spell into your spellbook is halved.'),
('Transmuter\'s Stone', 'You can spend 8 hours creating a transmuter\'s stone that stores transmutation magic. You can benefit from the stone yourself or give it to another creature. A creature gains a benefit of your choice as long as the stone is in the creature\'s possession. When you create the stone, choose the benefit from the following options:\r\n\r\nDarkvision out to a range of 60 feet.\r\n\r\nAn increase to speed of 10 feet while the creature is unencumbered.\r\n\r\nProficiency in Constitution saving throws.\r\n\r\nResistance to acid, cold, fire, lightning, or thunder damage (your choice whenever you choose this benefit).\r\n\r\nEach time you cast a transmutation spell of 1st level or higher, you can change the effect of your stone if the stone is on your person.\r\n\r\nIf you create a new transmuter\'s stone, the previous one ceases to function.'),
('Unarmoured Defence', 'While you are not wearing any armour, your Armour Class equals 10 + your Dexterity modifier + your Constitution modifier. You can use a shield and still gain this benefit.'),
('Unarmoured Movement', 'Your speed increases by 10 feet while you are not wearing armour or wielding a shield. This bonus increases when you reach certain monk levels, as shown in the Monk table.\r\n\r\nAt 9th level, you gain the ability to move along vertical surfaces and across liquids on your turn without falling during the move.'),
('Uncanny Dodge', 'When an attacker that you can see hits you with an attack, you can use your reaction to halve the attack\'s damage against you.'),
('Undead Thralls', 'You add the Animate Dead spell to your spellbook if it is not there already. When you cast Animate Dead, you can target one additional corpse or pile of bones, creating another zombie or skeleton, as appropriate.\r\n\r\nWhenever you create an undead using a necromancy spell, it has additional benefits:\r\n\r\nThe creature\'s hit point maximum is increased by an amount equal to your wizard level.\r\n\r\nThe creature adds your proficiency bonus to its weapon damage rolls.'),
('Undying Sentinel', 'When you are reduced to 0 hit points and are not killed outright, you can choose to drop to 1 hit point instead. Once you use this ability, you can\'t use it again until you finish a long rest.\r\n\r\nAdditionally you suffer none of the drawbacks of old age, and you can\'t be aged magically.'),
('Use Magic Device', 'You have learned enough about the workings of magic that you can improvise the use of items even when they are not intended for you. You ignore all class, race, and level requirements on the use of magic items.'),
('Vanish', 'You can use the Hide action as a bonus action on your turn. Also, you can\'t be tracked by nonmagical means, unless you choose to leave a trail.'),
('Versatile Trickster', 'You gain the ability to distract targets with your Mage Hand. As a bonus action on your turn, you can designate a creature within 5 feet of the spectral hand created by the spell. Doing so gives you advantage on attack rolls against that creature until the end of the turn.'),
('Visions of the Past', 'You can call up visions of the past that relate to an object you hold or your immediate surroundings. You spend at least 1 minute in meditation and prayer, then receive dreamlike, shadowy glimpses of recent events. You can meditate in this way for a number of minutes equal to your Wisdom score and must maintain concentrating during that time, as if you were casting a spell.\r\n\r\nOnce you use this feature, you can\'t use it again until you finish a short or long rest.\r\n\r\nObject Reading: Holding an object as you meditate, you can see vision of the object\'s previous owner. After meditating for 1 minute, you learn how the owner acquired and lost the object, as well as the most recent significant event involving the object and that owner. If the object was owned by another creature in the recent past (within a number of days equal to your Wisdom score), you can spend 1 additional minute for each owner to learn the same information about that creature.\r\n\r\nArea Reading: As you meditate, you see visions of recent events in your immediate vicinity (a room, street, tunnel, clearing, or the like, up to a 50-foot cube), going back a number of days equal to your Wisdom score. For each minute you meditate, you learn about one significant event, beginning with the most recent. Significant events typically involve powerful emotions, such as battles and betrayal, marriages and murders, births and funerals. However, they might also include more mundane events that are nevertheless important in your current situation.'),
('Wanderer', 'You have an excellent memory for maps and geography, and you can always recall the general layout of terrain, settlements, and other features areound you. In addition, you can find food and fresh water for yourself and up to five other people each day, provided that the land offers berries, small game, water, and so forth.'),
('War Domain Bonus Proficiencies', 'You gain proficiency with martial weapons and heavy armour.'),
('War Magic', 'When you use your action to cast a cantrip, you can make one weapon attack as a bonus action.'),
('War Priest', 'Your god delivers bolts of inspiration to you while you are engaged in battle. When you use the Attack action, you can make on weapon attack as a bonus action.\r\n\r\nYou can use this feature a number of times equal to your Wisdom modifier (a minimum of once). You regain all expended uses when you finish a long rest.'),
('Warding Flare', 'You can interpose divine light between yourself and an attacking enemy. When you are attacked by a creature within 30 feet of you that you can see, you can use your reaction to impose disadvantage on the attack roll, causing light to flare before the attacker hits or misses. An attacker that can\'t be blinded is immune to this feature.\r\n\r\nYou can use this feature a number of times equal to your Wisdom modifier (a minimum of once). You regain all expended uses when you finish a long rest.'),
('Water Whip', 'You can spend 2 ki points as a bonus action to create a whip of water that shoves and pulls a creature to unbalance it. A creature that you can see that is within 30 feet of you must make a Dexterity saving throw. On a failed save, the creature takes 3d10 bludgeoning damage, plus an extra 1d10 bludgeoning damage for each additional ki point you spend, and you can either knock it prone or pull it up to 25 feet closer to you. On a successful save, the creatures takes half as much damage, and you don\'t pull it or knock it prone.'),
('Weapon Bond', 'You learn a ritual that creates a magical bond between yourself and one weapon. You perform the ritual over the course of 1 hour, which can be done during a short rest. The weapon must be within your reach throughout the ritual, at the conclusion of which you touch the weapon and forge the bond. \r\n\r\nOnce you have bonded a weapon to yourself, you can\'t be disarmed of that weapon unless you are incapacitated. If it is on the same plane of existence, you can summon that weapon as a bonus action on your turn, causing it to teleport instantly to your hand.\r\n\r\nYou can have up to two bonded weapons, but can summon only one at a time with your bonus action. If you attempt to bond with a third weapon, you must break the bond with one of the other two.'),
('Wholeness of Body', 'You gain the ability to heal yourself. As an action, you can regain hit points equal to three times your monk level. You must finish a long rest before you can use this feature again.'),
('Wild Magic Surge', 'Your spellcasting can unleash surges of untamed magic. Immediately after you cast a sorcerer spell of 1st level or higher, the DM can have you roll a d20. If you roll a 1 a random magical effect occurs.'),
('Wild Shape', 'You can use your action to magically assume the shape of a beast that you have seen before. You can use this feature twice. You regain expended uses when you finish a short or long rest.\r\n\r\nYour druid level determines the beasts you can transform into.\r\n\r\nYou can stay in beast shape for a number of hours equal to half your druid level (rounded down). You then revert to your normal form unless you expend another use of this feature. You can revert to your normal form earlier by using a bonus action on your turn. You automatically revert if you fall unconscious, drop to 0 hit points, or die.\r\n\r\nWhile you are transformed, the following rules apply:\r\n\r\nYour game statistic are replaced by the statistics of the beast, but you retain your alignment, personality, and Intelligence, Wisdom and Charisma scores. You also retain all of your skill and saving throw proficiencies, in addition to gaining those of the creature. If the creature has the same proficiency as you and the bonus in its stat block is higher than yours, use the creature\'s bonus instead of yours. If the creature has any legendary or lair actions, you can\'t use them.\r\n\r\nWhen you transform, you assume the beast\'s hit point and Hit Dice. When you revert to your normal form, you return to the number of hit point you had before you transformed. However, if you revert as a result of dropping to 0 hit points, any excess damage carries over to your normal form. For example, if you take 10 damage in animal form and have only 1 hit point left, you can revert and take 9 damage. As long as the excess damage doesn\'t reduce your normal form to 0 hit points, you aren\'t knocked unconscious.\r\n\r\nYou can\'t cast spells, and your ability to speak or take any action that requires hands is limited to the capabilities of your beast form. Transforming doesn\'t break your concentration on a spell you\'ve already cast, however, or prevent you from taking actions that are part of a spell, such as Call Lightning that you\'ve already cast.\r\n\r\nYou retain the benefit of any features from your class, race, or other source and can use them if the new form is physically capable of doing so. However, you can\'t use any of your special senses, such as darkvision, unless your new form also has that sense.\r\n\r\nYou choose whether your equipment falls to the ground in your space, merges into your new form, or is worn by it. Worn equipment functions as normal, but the DM decides whether it is practical for the new form to wear a piece of equipment (based on the creature\'s shape and size). Your equipment doesn\'t change size or shape to match the new form, and any equipment that the new form can\'t wear must either fall to the ground or merge with it. Equipment that merges with the form has no effect until you leave the form.'),
('Wrath of the Storm', 'You can thunderously rebuke attackers. When a creature within 5 feet of you that you can see hits you with an attack, you can use your reaction to cause the creature to make a Dexterity saving throw. The creature takes 2d8 lightning or thunder damage (your choice) on a failed saving throw, and half as much damage on a successful one.\r\n\r\nYou can use this feature a number of times equal to your Wisdom modifier (a minimum of once). You regain all expended uses when you finish a long rest.');

-- --------------------------------------------------------

--
-- Table structure for table `flaw`
--

CREATE TABLE `flaw` (
  `id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `flaw`
--

INSERT INTO `flaw` (`id`, `description`) VALUES
(1, 'I judge others harshly, and myself even more severely.'),
(2, 'I put too much trust in those who wield power within my temple\'s hierarchy.'),
(3, 'My piety sometimes leads me to blindly trust those that profess faith in my god.'),
(4, 'I am inflexible in my thinking.'),
(5, 'I am suspicious of strangers and expect the worst of them.'),
(6, 'Once I pick a goal, I become obsessed with it to the detriment of everything else in my life.'),
(7, 'I can\'t resist a pretty face.'),
(8, 'I\'m always in debt. I spend my ill-gotten gains on decadent luxuries faster than I bring them in.'),
(9, 'I\'m convinced that no-one could ever fool me the way I fool others.'),
(10, 'I\'m too greedy for my own good. I can\'t resist taking a risk if there\'s money involved.'),
(11, 'I can\'t resist swindling people who are more powerful than me.'),
(12, 'I hate to admit it and will hate myself for it, but I\'ll run and preserve my own hide if the going gets tough.'),
(13, 'When I see something valuable, I can\'t think about anything but how to steal it.'),
(14, 'When faced with a choice between money and my friends, I usually choose the money.'),
(15, 'If there\'s a plan, I\'ll forget it. If I don\'t forget it, I\'ll ignore it.'),
(16, 'I have a \"tell\" that reveals when I\'m lying.'),
(17, 'I turn tail and run when things look bad.'),
(18, 'An innocent person is in prison for a crime that I committed. I\'m okay with that.'),
(19, 'I\'ll do anything to win fame and renown.'),
(20, 'I\'m a sucker for a pretty face.'),
(21, 'A scandal prevents me from ever going home again. That kind of trouble seems to follow me around.'),
(22, 'I once satirised a noble who still wants my head. It was a mistake that I will likely repeat.'),
(23, 'I have trouble keeping my true feelings hidden. My sharp tongue lands me in trouble.'),
(24, 'Despite my best efforts, I am unreliable to my friends.'),
(25, 'The tyrant that rules my land will stop at nothing to see me killed.'),
(26, 'I\'m convinced of the significance of my destiny, and blind to my shortcomings and the risk of failure.'),
(27, 'The people who knew me when I was young know my shameful secret, so I can never go home again.'),
(28, 'I have a weakness for the vices of the city, especially hard drink.'),
(29, 'Secretly, I believe that things would be better if I were a tyrant lording over the land.'),
(30, 'I have trouble trusting my allies.'),
(31, 'I\'ll do anything to get my hands on something rare or priceless.'),
(32, 'I\'m quick to assume that someone is trying to cheat me.'),
(33, 'No-one must never learn that I once stole money from guild coffers.'),
(34, 'I\'m never satisfied with what I have - I always want more.'),
(35, 'I would kill to acquire a noble title.'),
(36, 'I\'m horribly jealous of anyone who can outshine my handiwork. Everywhere I go, I\'m surrounded by rivals.'),
(37, 'Now that I\'ve returned to the world, I enjoy its delights a little too much.'),
(38, 'I harbour dark, bloodthirsty thoughts that my isolation and meditation failed to quell.'),
(39, 'I am dogmatic in my thoughts and philosophy.'),
(40, 'I let my need to win arguments overshadow friendships and harmony.'),
(41, 'I\'d risk too much to uncover a lost bit of knowledge.'),
(42, 'I like keeping secrets and won\'t share them with anyone.'),
(43, 'I secretly believe that everyone is beneath me.'),
(44, 'I hide a truly scandalous secret that could ruin my family forever.'),
(45, 'I too often hear veiled insults and threats in every word addressed to me, and I\'m quick to anger.'),
(46, 'I have an insatiable desire for carnal pleasures.'),
(47, 'In fact, the world does revolve around me.'),
(48, 'By my words and actions, I often bring shame to my family.'),
(49, 'I am too enamoured of ale, wine, and other intoxicants.'),
(50, 'There\'s no room for caution in a life lived to the fullest.'),
(51, 'I remember every insult I\'ve received and nurse a silent resentment toward anyone who\'s ever wronged me.'),
(52, 'I am slow to trust members of other races, tribes, and societies.'),
(53, 'Violence is my answer to almost any challenge.'),
(54, 'Don\'t expect me to save those who can\'t save themselves. It is nature\'s way that the strong thrive and the weak perish.'),
(55, 'I am easily distracted by the promise of information.'),
(56, 'Most people scream and run when they see a demon. I stop and take notes on its anatomy.'),
(57, 'Unlocking an ancient mystery is worth the price of a civilisation.'),
(58, 'I overlook obvious solutions in favour of complicated ones.'),
(59, 'I speak without really thinking through my words, invariable insulting others.'),
(60, 'I can\'t keep a secret to save my life, or anyone else\'s.'),
(61, 'I\'ll follow orders, even if I think they\'re wrong.'),
(62, 'I\'ll say anything to avoid having to do extra work.'),
(63, 'Once someone questions my courage, I never back down no matter how dangerous the situation.'),
(64, 'Once I start drinking, it\'s hard for me to stop.'),
(65, 'I can\'t help but pocket loose coins and other trinkets I come across.'),
(66, 'My pride will probably lead to my destruction.'),
(67, 'The monstrous enemy we faced in battle still leaves me quivering with fear.'),
(68, 'I have little respect for anyone who is not a proven warrior.'),
(69, 'I made a terrible mistake in battle which cost many lives - I would do anything to keep that mistake secret.'),
(70, 'My hatred of my enemies is blind and unreasoning.'),
(71, 'I obey the law, even if the law causes misery.'),
(72, 'I\'d rather eat my armour than admit when I\'m wrong.'),
(73, 'If I\'m outnumbered, I will run away from a fight.'),
(74, 'Gold seems like a lot of money to me, and I\'ll do just about anything for more of it.'),
(75, 'I will never fully trust anyone other than myself.'),
(76, 'I\'d rather kill someone in their sleep than fight fair.'),
(77, 'It\'s not stealing if I need it more than someone else.'),
(78, 'People who can\'t take care of themselves get what they deserve.');

-- --------------------------------------------------------

--
-- Table structure for table `ideal`
--

CREATE TABLE `ideal` (
  `id` int(11) NOT NULL,
  `name` varchar(63) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_520_ci,
  `alignment_req` varchar(63) COLLATE utf8_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `ideal`
--

INSERT INTO `ideal` (`id`, `name`, `description`, `alignment_req`) VALUES
(1, 'Tradition', 'The ancient traditions of worship and sacrifice must be preserved and upheld.', 'Lawful'),
(2, 'Charity', 'I always try to help those in need, no matter what the personal cost.', 'Good'),
(3, 'Change', 'We must help bring about the changes the gods are constantly working in the world.', 'Chaotic'),
(4, 'Power', 'I hope to one day rise to the top of my faith\'s religious hierarchy.', 'Lawful'),
(5, 'Faith', 'I trust that my deity will guide my actions. I have faith that if I work hard, things will go well.', 'Lawful'),
(6, 'Aspiration', 'I seek to prove myself worthy of my god\'s favour by matching my actions against his or her teachings.', NULL),
(7, 'Independance', 'I am a free spirit - no one tells me what to do.', 'Chaotic'),
(8, 'Fairness', 'I never target people who can\'t afford to lose a few coins.', 'Lawful'),
(9, 'Charity', 'I distribute the money I acquire to the people who really need it.', 'Good'),
(10, 'Creativity', 'I never run the same con twice.', 'Chaotic'),
(11, 'Friendship', 'Material goods come and go. Bonds of friendship last forever.', 'Good'),
(12, 'Aspiration', 'I\'m determined to make something of myself.', NULL),
(13, 'Honour', 'I don\'t steal from others in the trade.', 'Lawful'),
(14, 'Freedom', 'Chains are meant to be broken, as are those who would forge them.', 'Chaotic'),
(15, 'Charity', 'I steal from the wealthy so that I can help people in need.', 'Good'),
(16, 'Greed', 'I will do whatever it takes to become wealthy.', 'Evil'),
(17, 'People', 'I\'m loyal to my friends, not to any ideals, and everyone else can take a trip down the Styx for all I care.', 'Neutral'),
(18, 'Redemption', 'There\'s a spark of good in everyone.', 'Good'),
(19, 'Beauty', 'When I perform, I make the world better than it was.', 'Good'),
(20, 'Tradition', 'The stories, legends, and songs of the past must never be forgotten, for they teach us who we are.', 'Lawful'),
(21, 'Creativity', 'The world is in need of new ideas and bold action.', 'Chaotic'),
(22, 'Greed.', 'I\'m only in it for the money and fame.', 'Evil'),
(23, 'People', 'I like seeing the smiles on people\'s faces when I perform. That\'s all that matters.', 'Neutral'),
(24, 'Honesty', 'Art should reflect the soul; it should come from within and reveal who we really are.', NULL),
(25, 'Respect', 'People deserve to be treated with dignity and respect.', 'Good'),
(26, 'Fairness', 'No one should get preferential treatment before the law, and no one is above the law.', 'Lawful'),
(27, 'Freedom', 'Tyrants must not be allowed to oppress the people.', 'Chaotic'),
(28, 'Might', 'If I become strong, I can take what I want - what I deserve.', 'Evil'),
(29, 'Sincerity', 'There\'s no good in pretending to be something I\'m not.', 'Neutral'),
(30, 'Destiny', 'Nothing and no-one can steer me away from my higher calling.', NULL),
(31, 'Community', 'It is the duty of all civilised people to strengthen the bonds of community and the security of civilisation.', 'Lawful'),
(32, 'Generosity', 'My talents were given to me so that I could use them to benefit the world.', 'Good'),
(33, 'Freedom', 'Everyone should be free to pursue his or her own livelihood.', 'Chaotic'),
(34, 'Greed', 'I\'m only in it for the money.', 'Evil'),
(35, 'People', 'I\'m committed to the people I care about, not to ideals.', 'Neutral'),
(36, 'Aspiration', 'I work hard to be the best there is at my craft.', NULL),
(37, 'Greater Good', 'My gifts are meant to be shared with all, not used for my own benefit.', 'Good'),
(38, 'Logic', 'Emotions must not cloud our sense of what is right and true, or our logical thinking.', 'Lawful'),
(39, 'Free Thinking', 'Inquiry and curiosity are the pillars of progress.', 'Chaotic'),
(40, 'Power', 'Solitude and contemplation are paths toward mystical or magical power.', 'Evil'),
(41, 'Live and Let Live', 'Meddling in the affairs of others only causes trouble.', 'Neutral'),
(42, 'Self-Knowledge', 'If you know yourself, there\'s nothing left to know.', NULL),
(43, 'Respect', 'Respect is due to me because of my position, but all people regardless of station deserve to be treated with dignity.', 'Good'),
(44, 'Responsibility', 'It is my duty to respect the authority of those above me, just as those below me must respect mine.', 'Lawful'),
(45, 'Independence', 'I must prove that I can handle myself without the coddling of my family.', 'Chaotic'),
(46, 'Power', 'If I can attain more power, no one will tell me what to do.', 'Evil'),
(47, 'Family', 'Blood runs thicker than water.', NULL),
(48, 'Noble Obligation', 'It is my duty to protect and care for the people beneath me.', 'Good'),
(49, 'Change', 'Life is like the seasons, in constant change, and we must change with it.', 'Chaotic'),
(50, 'Greater Good', 'It is each person\'s responsibility to make the most happiness for the whole tribe.', 'Good'),
(51, 'Honour', 'If I dishonour myself, I dishonour my whole clan.', 'Lawful'),
(52, 'Might', 'The strongest are meant to rule.', 'Evil'),
(53, 'Nature', 'The natural world is more important than all the constructs of civilisation.', 'Neutral'),
(54, 'Glory', 'I must earn glory in battle, for myself and my clan.', NULL),
(55, 'Knowledge', 'The path to power and self-improvement is through knowledge.', 'Neutral'),
(56, 'Beauty', 'What is beautiful points us beyond itself toward what is true.', 'Good'),
(57, 'Logic', 'Emotions must not cloud our logical thinking.', 'Lawful'),
(58, 'No Limits', 'Nothing should fetter the infinite possibility inherent in all existence.', 'Chaotic'),
(59, 'Power', 'Knowledge is the path to power and domination.', 'Evil'),
(60, 'Self-Improvement', 'The goal of a life of study is the betterment of oneself.', NULL),
(61, 'Respect', 'The thing that keeps a ship together is mutual respect between captain and crew.', 'Good'),
(62, 'Fairness', 'We all do the work, so we all share in the rewards.', 'Lawful'),
(63, 'Freedom', 'The sea is freedom - the freedom to go anywhere and do anything.', 'Chaotic'),
(64, 'Mastery', 'I\'m a predator, and the other ships on the sea are my prey.', 'Evil'),
(65, 'People', 'I\'m committed to my crewmates, not to ideals.', 'Neutral'),
(66, 'Aspiration', 'Someday I\'ll own my own ship and chart my own destiny.', NULL),
(67, 'Greater Good', 'Our lot is to lay down our lives in defence of others.', 'Good'),
(68, 'Responsiblity', 'I do what I must and obey just authority.', 'Lawful'),
(69, 'Independence', 'When people follow orders blindly, they embrace a kind of tyranny.', 'Chaotic'),
(70, 'Might', 'In life as in war, the stronger force wins.', 'Evil'),
(71, 'Live and Let Live', 'Ideals aren\'t worth killing over or going to war for.', 'Neutral'),
(72, 'Nation', 'My city, nation, or people are all that matter.', NULL),
(73, 'Respect', 'All people, rich or poor, deserve respect.', 'Good'),
(74, 'Community', 'We have to take care of each other, because no-one else is going to do it.', 'Lawful'),
(75, 'Change', 'The low are lifted up, and the high and mighty are brought down. Change is the nature of things.', 'Chaotic'),
(76, 'Retribution', 'The rich need to be shown what life and death are like in the gutters.', 'Evil'),
(77, 'People', 'I help the people who help me - that\'s what keeps us alive.', 'Neutral'),
(78, 'Aspiration', 'I\'m going to prove that I\'m worthy of a better life.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `item_type` varchar(63) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_520_ci,
  `cost` int(11) DEFAULT NULL,
  `weight` decimal(11,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`name`, `item_type`, `description`, `cost`, `weight`) VALUES
('Abacus', NULL, NULL, 200, '2.000'),
('Acid (Vial)', NULL, 'As an action, you can splash the contents of this vial onto a creature within 5 feet of you or throw the vial up to 20 feet, shattering it on impact. In either case, make a ranged attack against a creature or object, treating the acid as an improvised weapon. On a hit, the target takes 2d6 acid damage.', 2500, '1.000'),
('Alchemist\'s Fire (Flask)', NULL, 'This sticky, adhesive fluid ignites when exposed to air. As an action, you can throw this flask up to 20 feet, shattering it on impact. Make a ranged attack against a creature or object, treating the alchemist’s fire as an improvised weapon. On a hit, the target takes 1d4 fire damage at the start of each of its turns. A creature can end this damage by using its action to make a DC 10 Dexterity check to extinguish the flames.', 5000, '1.000'),
('Alchemist\'s Supplies', 'Tool', NULL, 5000, '8.000'),
('Alms Box', NULL, NULL, 80, '5.000'),
('Amulet', 'Holy Symbol', NULL, 500, '1.000'),
('Animal Feed', NULL, 'One day\'s worth of animal feed.', 5, '10.000'),
('Animal Trophy', NULL, NULL, 200, '5.000'),
('Antitoxin (Vial)', NULL, 'A creature that drinks this vial of liquid gains advantage on saving throws against poison for 1 hour. It confers no benefit to undead or constructs.', 5000, '0.000'),
('Arrow', 'Ammunition', NULL, 5, '0.050'),
('Backpack', 'Container', NULL, 200, '5.000'),
('Bag of Sand (Small)', NULL, NULL, 5, '1.000'),
('Bagpipes', 'Tool', NULL, 3000, '6.000'),
('Ball Bearings (bag of 1000)', NULL, 'As an action, you can spill these tiny metal balls from their pouch to cover a level, square area that is 10 feet on a side. A creature moving across the covered area must succeed on a DC 10 Dexterity saving throw or fall Prone. A creature moving through the area at half speed doesn’t need to make the save.', 100, '2.000'),
('Barrel', NULL, NULL, 200, '70.000'),
('Basket', 'Container', NULL, 40, '2.000'),
('Battleaxe', 'Weapon', NULL, 1000, '4.000'),
('Bedroll', NULL, NULL, 100, '7.000'),
('Bell', NULL, NULL, 100, '0.000'),
('Bit and Bridle', NULL, NULL, 200, '1.000'),
('Blanket', NULL, NULL, 50, '3.000'),
('Block and Tackle', NULL, 'A set of pulleys with a cable threaded through them and a hook to attach to objects, a block and tackle allows you to hoist up to four times the weight you can normally lift.', 100, '5.000'),
('Blowgun', 'Weapon', NULL, 1000, '1.000'),
('Blowgun Needle', 'Ammunition', NULL, 20, '0.200'),
('Book', NULL, 'A book might contain poetry, historical accounts, information pertaining to a particular field of lore, diagrams and notes on gnomish contraptions, or just about anything else that can be represented using text or pictures. A book of spells is a spellbook.', 2500, '5.000'),
('Book of Lore', NULL, NULL, 2500, '5.000'),
('Book of Prayer', NULL, NULL, 2500, '5.000'),
('Bottle (Glass)', 'Container', NULL, 200, '2.000'),
('Bottle of Mysterious Liquid', NULL, 'This bottle, filled with a coloured liquid, probably doesn\'t do anything - but punters don\'t know that!', 200, '2.000'),
('Breastplate', 'Armour', 'This armour consists of a fitted metal chest piece worn with supple leather. Although it leaves the legs and arms relatively unprotected, this armor provides good protection for the wearer’s vital organs while leaving the wearer relatively unencumbered.', 40000, '20.000'),
('Brewer\'s Supplies', 'Tool', NULL, 2000, '9.000'),
('Broken Blade', NULL, NULL, NULL, '2.000'),
('Bucket', 'Container', NULL, 5, '2.000'),
('Calligrapher\'s Supplies', 'Tool', NULL, 1000, '5.000'),
('Caltrops (bag of 20)', NULL, 'As an action, you can spread a bag of caltrops to cover a square area that is 5 feet on a side. Any creature that enters the area must succeed on a DC 15 Dexterity saving throw or stop moving this turn and take 1 piercing damage. Taking this damage reduces the creature’s walking speed by 10 feet until the creature regains at least 1 hit point. A creature moving through the area at half speed doesn’t need to make the save.', 100, '2.000'),
('Camel', 'Mount', NULL, 5000, '0.000'),
('Candle', NULL, 'For 1 hour, a candle sheds bright light in a 5-foot radius and dim light for an additional 5 feet.', 1, '0.000'),
('Carpenter\'s Tools', 'Tool', NULL, 800, '6.000'),
('Carriage', 'Tool', NULL, 10000, '600.000'),
('Cart', 'Tool', NULL, 1500, '200.000'),
('Cartographer\'s Tools', 'Tool', NULL, 1500, '6.000'),
('Case (Crossbow Bolt)', NULL, 'This wooden case can hold up to twenty crossbow bolts.', 100, '1.000'),
('Case (Map/Scroll)', NULL, 'This cylindrical leather case can hold up to ten rolled-up sheets of paper or five rolled-up sheets of parchment.', 100, '1.000'),
('Case of Notes', NULL, 'This cylindrical leather case is stuffed with notes from studies or prayers.', 100, '1.000'),
('Censer', 'Holy Symbol', NULL, 500, '1.000'),
('Chain (10 feet)', NULL, 'A chain has 10 hit points. It can be burst with a successful DC 20 Strength check.', 500, '10.000'),
('Chain Mail', 'Armour', 'Made of interlocking metal rings, chain mail includes a layer of quilted fabric worn underneath the mail to prevent chafing and to cushion the impact of blows. The suit includes gauntlets.', 7500, '55.000'),
('Chain Shirt', 'Armour', 'Made of interlocking metal rings, a chain shirt is worn between layers of clothing or leather. This armor offers modest protection to the wearer’s upper body and allows the sound of the rings rubbing against one another to be muffled by outer layers.', 5000, '20.000'),
('Chalk (1 piece)', NULL, NULL, 1, '0.000'),
('Chariot', 'Tool', NULL, 25000, '100.000'),
('Chest', 'Container', NULL, 500, '25.000'),
('Climber\'s Kit', NULL, 'A climber’s kit includes special pitons, boot tips, gloves, and a harness. You can use the climber’s kit as an action to anchor yourself; when you do, you can’t fall more than 25 feet from the point where you anchored yourself, and you can’t climb more than 25 feet away from that point without undoing the anchor.', 2500, '12.000'),
('Clothes (Common, Dark)', NULL, 'These dark clothes might not actually help you sneak around, but you\'ll feel the part when doing so.', 50, '3.000'),
('Clothes (Common)', NULL, NULL, 50, '3.000'),
('Clothes (Costume)', NULL, NULL, 500, '4.000'),
('Clothes (Fine)', NULL, NULL, 1500, '6.000'),
('Clothes (Traveler\'s)', NULL, NULL, 200, '4.000'),
('Club', 'Weapon', NULL, 10, '2.000'),
('Cobbler\'s Tools', 'Tool', NULL, 500, '5.000'),
('Component Pouch', NULL, 'A component pouch is a small, watertight leather belt pouch that has compartments to hold all the material components and other special items you need to cast your spells, except for those components that have a specific cost (as indicated in a spell’s description).', 2500, '2.000'),
('Cook\'s Utensils', 'Tool', NULL, 100, '8.000'),
('Crossbow (Hand)', 'Weapon', NULL, 7500, '3.000'),
('Crossbow (Heavy)', 'Weapon', NULL, 5000, '18.000'),
('Crossbow (Light)', 'Weapon', NULL, 2500, '5.000'),
('Crossbow Bolt', 'Ammunition', NULL, 5, '0.075'),
('Crowbar', NULL, 'Using a crowbar grants advantage to Strength checks where the crowbar’s leverage can be applied.', 2, '5.000'),
('Crystal', 'Arcane Focus', NULL, 1000, '1.000'),
('Dagger', 'Weapon', NULL, 200, '1.000'),
('Dart', 'Weapon', NULL, 5, '0.250'),
('Deck of Marked Cards', NULL, NULL, 50, '0.000'),
('Dice Set', 'Tool', NULL, 10, '0.000'),
('Disguise Kit', 'Tool', 'This pouch of cosmetics, hair dye, and small props lets you create disguises that change your physical appearance. Proficiency with this kit lets you add your proficiency bonus to any ability checks you make to create a visual disguise.', 2500, '3.000'),
('Donkey', 'Mount', NULL, 800, '0.000'),
('Drum', 'Tool', NULL, 600, '3.000'),
('Dulcimer', 'Tool', NULL, 2500, '10.000'),
('Elephant', 'Mount', NULL, 20000, '0.000'),
('Emblem', 'Holy Symbol', NULL, 500, '0.000'),
('Fishing Tackle', NULL, 'This kit includes a wooden rod, silken line, corkwood bobbers, steel hooks, lead sinkers, velvet lures, and narrow netting.', 100, '4.000'),
('Flail', 'Weapon', NULL, 1000, '2.000'),
('Flask', 'Container', NULL, 2, '1.000'),
('Flute', 'Tool', NULL, 200, '1.000'),
('Forgery Kit', 'Tool', 'This small box contains a variety of papers and parchments, pens and inks, seals and sealing wax, gold and silver leaf, and other supplies necessary to create convincing forgeries of physical documents. Proficiency with this kit lets you add your proficiency bonus to any ability checks you make to create a physical forgery of a document.', 1500, '5.000'),
('Galley', 'Tool', NULL, 3000000, '0.000'),
('Glaive', 'Weapon', NULL, 2000, '6.000'),
('Glassblower\'s Tools', 'Tool', NULL, 3000, '5.000'),
('Grappling Hook', NULL, NULL, 200, '4.000'),
('Greataxe', 'Weapon', NULL, 3000, '7.000'),
('Greatclub', 'Weapon', NULL, 20, '10.000'),
('Greatsword', 'Weapon', NULL, 5000, '6.000'),
('Halberd', 'Weapon', NULL, 2000, '6.000'),
('Half Plate', 'Armour', 'Half plate consists of shaped metal plates that cover most of the wearer’s body. It does not include leg protection beyond simple greaves that are attached with leather straps.', 75000, '40.000'),
('Hammer', NULL, NULL, 100, '3.000'),
('Hammer (Sledge)', NULL, NULL, 200, '10.000'),
('Handaxe', 'Weapon', NULL, 500, '2.000'),
('Healer\'s Kit', NULL, 'This kit is a leather pouch containing bandages, salves, and splints. The kit has ten uses. As an action, you can expend one use of the kit to stabilize a creature that has 0 hit points, without needing to make a Wisdom (Medicine) check.', 500, '3.000'),
('Herbalism Kit', 'Tool', 'This kit contains a variety of instruments such as clippers, mortar and pestle, and pouches and vials used by herbalists to create remedies and potions. Proficiency with this kit lets you add your proficiency bonus to any ability checks you make to identify or apply herbs. Also, proficiency with this kit is required to create antitoxin and potions of healing.', 500, '3.000'),
('Hide', 'Armour', 'This crude armour consists of thick furs and pelts. It is commonly worn by barbarian tribes, evil humanoids, and other folk who lack access to the tools and materials needed to create better armour.', 1000, '12.000'),
('Holy Water (Flask)', NULL, 'As an action, you can splash the contents of this flask onto a creature within 5 feet of you or throw it up to 20 feet, shattering it on impact. In either case, make a ranged attack against a target creature, treating the holy water as an improvised weapon. If the target is a fiend or undead, it takes 2d6 radiant damage. A cleric or paladin may create holy water by performing a special ritual. The ritual takes 1 hour to perform, uses 25 gp worth of powdered silver, and requires the caster to expend a 1st-level spell slot.', 2500, '1.000'),
('Horn', 'Tool', NULL, 300, '2.000'),
('Horse (Draft)', 'Mount', NULL, 5000, '0.000'),
('Horse (Riding)', 'Mount', NULL, 7500, '0.000'),
('Horse (War)', 'Mount', NULL, 40000, '0.000'),
('Hourglass', NULL, NULL, 2500, '1.000'),
('Hunting Trap', NULL, 'When you use your action to set it, this trap forms a saw-toothed steel ring that snaps shut when a creature steps on a pressure plate in the center. The trap is affixed by a heavy chain to an immobile object, such as a tree or a spike driven into the ground. A creature that steps on the plate must succeed on a DC 13 Dexterity saving throw or take 1d4 piercing damage and stop moving. Thereafter, until the creature breaks free of the trap, its movement is limited by the length of the chain (typically 3 feet long). A creature can use its action to make a DC 13 Strength check, freeing itself or another creature within its reach on a success. Each failed check deals 1 piercing damage to the trapped creature.', 500, '25.000'),
('Incense Block', NULL, NULL, 10, '0.000'),
('Incense Stick', NULL, NULL, 5, '0.000'),
('Ink (1 ounce bottle)', NULL, NULL, 1000, '0.000'),
('Ink Pen', NULL, NULL, 2, '0.000'),
('Insignia of Rank', NULL, NULL, NULL, '0.000'),
('Javelin', 'Weapon', NULL, 50, '2.000'),
('Jeweller\'s Tools', 'Tool', NULL, 2500, '2.000'),
('Jug', 'Container', NULL, 2, '4.000'),
('Keelboat', 'Tool', NULL, 300000, '0.000'),
('Knife (Small)', NULL, NULL, 2, '0.000'),
('Ladder (10-foot)', NULL, NULL, 10, '25.000'),
('Lamp', NULL, 'A lamp casts bright light in a 15-foot radius and dim light for an additional 30 feet. Once lit, it burns for 6 hours on a flask (1 pint) of oil.', 50, '1.000'),
('Lance', 'Weapon', NULL, 1000, '6.000'),
('Lantern (Bullseye)', NULL, 'A bullseye lantern casts bright light in a 60-foot cone and dim light for an additional 60 feet. Once lit, it burns for 6 hours on a flask (1 pint) of oil.', 1000, '2.000'),
('Lantern (Hooded)', NULL, 'A hooded lantern casts bright light in a 30-foot radius and dim light for an additional 30 feet. Once lit, it burns for 6 hours on a flask (1 pint) of oil. As an action, you can lower the hood, reducing the light to dim light in a 5-foot radius.', 500, '2.000'),
('Leather', 'Armour', 'The breastplate and shoulder protectors of this armour are made of leather that has been stiffened by being boiled in oil. The rest of the armour is made of softer and more flexible materials.', 1000, '10.000'),
('Leatherworker\'s Tools', 'Tool', NULL, 500, '5.000'),
('Letter of Guild Introduction', NULL, 'This letter certifies that you have been welcomed into an Artisan\'s Guild.', NULL, '0.000'),
('Letter of Mystery', NULL, 'This letter contains a question you haven\'t been able to answer, asked by an old colleague now deceased.', NULL, '0.000'),
('Light Hammer', 'Weapon', NULL, 200, '2.000'),
('Lock', NULL, 'A key is provided with the lock. Without the key, a creature proficient with thieves’ tools can pick this lock with a successful DC 15 Dexterity check. Your GM may decide that better locks are available for higher prices.', 1000, '1.000'),
('Longbow', 'Weapon', NULL, 5000, '2.000'),
('Longship', 'Tool', NULL, 1000000, '0.000'),
('Longsword', NULL, NULL, 1500, '3.000'),
('Lute', 'Tool', NULL, 3500, '2.000'),
('Lyre', 'Tool', NULL, 3000, '2.000'),
('Mace', NULL, NULL, 500, '4.000'),
('Magnifying Glass', NULL, 'This lens allows a closer look at small objects. It is also useful as a substitute for flint and steel when starting fires. Lighting a fire with a magnifying glass requires light as bright as sunlight to focus, tinder to ignite, and about 5 minutes for the fire to ignite. A magnifying glass grants advantage on any ability check made to appraise or inspect an item that is small or highly detailed.', 10000, '0.000'),
('Manacles', NULL, 'These metal restraints can bind a Small or Medium creature. Escaping the manacles requires a successful DC 20 Dexterity check. Breaking them requires a successful DC 20 Strength check. Each set of manacles comes with one key. Without the key, a creature proficient with thieves’ tools can pick the manacles’ lock with a successful DC 15 Dexterity check. Manacles have 15 hit points.', 200, '6.000'),
('Map (City)', NULL, NULL, 100, '0.000'),
('Mason\'s Tools', 'Tool', NULL, 1000, '8.000'),
('Mastiff', 'Mount', NULL, 2500, '0.000'),
('Maul', NULL, NULL, 1000, '10.000'),
('Mess Kit', NULL, 'This tin box contains a cup and simple cutlery. The box clamps together, and one side can be used as a cooking pan and the other as a plate or shallow bowl.', 20, '1.000'),
('Mirror (Steel)', NULL, NULL, 500, '0.500'),
('Morningstar', NULL, NULL, 15, '4.000'),
('Mouse (Pet)', NULL, NULL, NULL, '0.000'),
('Mule', 'Mount', NULL, 800, '0.000'),
('Navigator\'s Tools', 'Tool', 'This set of instruments is used for navigation at sea. Proficiency with navigator’s tools lets you chart a ship’s course and follow navigation charts. In addition, these tools allow you to add your proficiency bonus to any ability check you make to avoid getting lost at sea.', 2500, '2.000'),
('Net', NULL, NULL, 100, '3.000'),
('Oil (Flask)', NULL, 'Oil usually comes in a clay flask that holds 1 pint. As an action, you can splash the oil in this flask onto a creature within 5 feet of you or throw it up to 20 feet, shattering it on impact. Make a ranged attack against a target creature or object, treating the oil as an improvised weapon. On a hit, the target is covered in oil. If the target takes any fire damage before the oil dries (after 1 minute), the target takes an additional 5 fire damage from the burning oil. You can also pour a flask of oil on the ground to cover a 5-foot-square area, provided that the surface is level. If lit, the oil burns for 2 rounds and deals 5 fire damage to any creature that enters the area or ends its turn in the area. A creature can take this damage only once per turn.', 10, '1.000'),
('Orb', 'Arcane Focus', NULL, 2000, '3.000'),
('Padded', NULL, 'Padded armour consists of quilted layers of cloth and batting.', 500, '8.000'),
('Painter\'s Supplies', 'Tool', NULL, 1000, '5.000'),
('Pan Flute', 'Tool', NULL, 1200, '2.000'),
('Paper (1 sheet)', NULL, NULL, 20, '0.000'),
('Parchment (1 sheet)', NULL, NULL, 10, '0.000'),
('Perfume (Vial)', NULL, NULL, 500, '0.000'),
('Pick (Miner\'s)', NULL, NULL, 200, '10.000'),
('Pike', NULL, NULL, 500, '18.000'),
('Pitcher', 'Container', NULL, 2, '4.000'),
('Piton', NULL, NULL, 5, '0.250'),
('Plate', NULL, 'Plate consists of shaped, interlocking metal plates to cover the entire body. A suit of plate includes gauntlets, heavy leather boots, a visored helmet, and thick layers of padding underneath the armour. Buckles and straps distribute the weight over the body.', 150000, '65.000'),
('Playing Card Set', 'Tool', NULL, 50, '0.000'),
('Poison (Basic) (Vial)', NULL, 'You can use the poison in this vial to coat one slashing or piercing weapon or up to three pieces of ammunition. Applying the poison takes an action. A creature hit by the poisoned weapon or ammunition must make a DC 10 Constitution saving throw or take 1d4 poison damage. Once applied, the poison retains potency for 1 minute before drying.', 10000, '0.000'),
('Poisoner\'s Kit', 'Tool', 'A poisoner’s kit includes the vials, chemicals, and other equipment necessary for the creation of poisons. Proficiency with this kit lets you add your proficiency bonus to any ability checks you make to craft or use poisons.', 5000, '2.000'),
('Pole (10-foot)', NULL, NULL, 5, '7.000'),
('Pony', 'Mount', NULL, 3000, '0.000'),
('Pot (Iron)', 'Container', NULL, 200, '10.000'),
('Potion of Healing', NULL, 'A character who drinks the magical red fluid in this vial regains 2d4 + 2 hit points. Drinking or administering a potion takes an action.', 5000, '0.500'),
('Potter\'s Tools', 'Tool', NULL, 1000, '3.000'),
('Pouch', 'Container', 'A cloth or leather pouch can hold up to 20 sling bullets or 50 blowgun needles, among other things. A compartmentalised pouch for holding spell components is called a component pouch.', 50, '1.000'),
('Prayer Wheel', NULL, NULL, 2500, '5.000'),
('Quarterstaff', NULL, NULL, 20, '4.000'),
('Quill', NULL, NULL, 2, '0.000'),
('Quiver', NULL, 'A quiver can hold up to 20 arrows.', 100, '1.000'),
('Ram (Portable)', NULL, 'You can use a portable ram to break down doors. When doing so, you gain a +4 bonus on the Strength check. One other character can help you use the ram, giving you advantage on this check.', 400, '35.000'),
('Rapier', NULL, NULL, 2500, '2.000'),
('Rations (1 day)', NULL, 'Rations consist of dry foods suitable for extended travel, including jerky, dried fruit, hardtack, and nuts.', 50, '2.000'),
('Reliquary', 'Holy Symbol', NULL, 500, '2.000'),
('Ring Mail', NULL, 'This armour is leather armour with heavy rings sewn into it. The rings help reinforce the armor against blows from swords and axes. Ring mail is inferior to chain mail, and it’s usually worn only by those who can’t afford better armour.', 3000, '40.000'),
('Robes', NULL, NULL, 100, '4.000'),
('Rod', 'Arcane Focus', NULL, 1000, '2.000'),
('Rope (Hempen, 50-foot)', NULL, 'Rope, whether made of hemp or silk, has 2 hit points and can be burst with a DC 17 Strength check.', 100, '10.000'),
('Rope (Silk, 50-foot)', NULL, 'Rope, whether made of hemp or silk, has 2 hit points and can be burst with a DC 17 Strength check.', 1000, '5.000'),
('Rowboat', 'Tool', NULL, 5000, '100.000'),
('Sack', 'Container', NULL, 1, '0.500'),
('Saddle (Exotic)', 'Tool', 'Required for mounting aquatic or flying animals.', 6000, '40.000'),
('Saddle (Military)', 'Tool', 'Gives an advantage when attempting to remain mounted.', 2000, '30.000'),
('Saddle (Pack)', 'Tool', NULL, 500, '15.000'),
('Saddle (Riding)', 'Tool', NULL, 1000, '25.000'),
('Saddlebags', NULL, NULL, 400, '8.000'),
('Sailing Ship', 'Tool', NULL, 10000, '0.000'),
('Scale (Merchant\'s)', NULL, 'A scale includes a small balance, pans, and a suitable assortment of weights up to 2 pounds. With it, you can measure the exact weight of small objects, such as raw precious metals or trade goods, to help determine their worth.', 500, '3.000'),
('Scale Mail', NULL, 'This armour consists of a coat and leggings (and perhaps a separate skirt) of leather covered with overlapping pieces of metal, much like the scales of a fish. The suit includes gauntlets.', 5000, '45.000'),
('Scimitar', NULL, NULL, 2500, '3.000'),
('Scroll of Pedigree', NULL, NULL, NULL, '0.000'),
('Sealing Wax', NULL, NULL, 50, '0.000'),
('Shawm', 'Tool', NULL, 200, '1.000'),
('Shield', NULL, NULL, 1000, '6.000'),
('Shortbow', NULL, NULL, 2500, '2.000'),
('Shortsword', NULL, NULL, 1000, '2.000'),
('Shovel', NULL, NULL, 200, '5.000'),
('Sickle', NULL, NULL, 100, '3.000'),
('Signal Whistle', NULL, NULL, 5, '0.000'),
('Signet Ring', NULL, NULL, 500, '0.000'),
('Signet Ring (Fake)', NULL, NULL, 500, '0.000'),
('Sled', 'Tool', NULL, 2000, '300.000'),
('Sling', NULL, NULL, 10, '0.000'),
('Sling Bullet', 'Ammunition', NULL, 1, '0.075'),
('Smith\'s Tools', 'Tool', NULL, 2000, '8.000'),
('Soap', NULL, NULL, 2, '0.000'),
('Spear', NULL, NULL, 100, '3.000'),
('Spellbook', NULL, 'Essential for wizards, a spellbook is a leather-bound tome with 100 blank vellum pages suitable for recording spells.', 5000, '3.000'),
('Spike (Iron)', NULL, NULL, 10, '0.500'),
('Splint', NULL, 'This armour is made of narrow vertical strips of metal riveted to a backing of leather that is worn over cloth padding. Flexible chain mail protects the joints.', 20000, '60.000'),
('Sprig of Mistletoe', 'Druidic Focus', NULL, 100, '0.000'),
('Spyglass', NULL, 'Objects viewed through a spyglass are magnified to twice their size.', 100000, '1.000'),
('Stabling', NULL, 'This represents the cost of accommodating a horse overnight.', 50, '0.000'),
('Staff', 'Arcane Focus', NULL, 500, '4.000'),
('String (10-foot)', NULL, NULL, 10, '0.500'),
('Studded Leather', NULL, 'Made from tough but flexible leather, studded leather is reinforced with close-set rivets or spikes.', 4500, '13.000'),
('Tankard', 'Container', NULL, 2, '1.000'),
('Tent (2-person)', NULL, 'A simple and portable canvas shelter, a tent sleeps two.', 200, '20.000'),
('Thief\'s Tools', 'Tool', 'This set of tools includes a small file, a set of lock picks, a small mirror mounted on a metal handle, a set of narrow-bladed scissors, and a pair of pliers. Proficiency with these tools lets you add your proficiency bonus to any ability checks you make to disarm traps or open locks.', 2500, '1.000'),
('Tinderbox', NULL, 'This small container holds flint, fire steel, and tinder (usually dry cloth soaked in light oil) used to kindle a fire. Using it to light a torch—or anything else with abundant, exposed fuel—takes an action. Lighting any other fire takes 1 minute.', 50, '1.000'),
('Tinker\'s Tools', 'Tool', NULL, 5000, '10.000'),
('Torch', NULL, 'A torch burns for 1 hour, providing bright light in a 20-foot radius and dim light for an additional 20 feet. If you make a melee attack with a burning torch and hit, it deals 1 fire damage.', 1, '1.000'),
('Torn Banner', NULL, NULL, NULL, '2.000'),
('Totem', 'Druidic Focus', NULL, 100, '0.000'),
('Trident', NULL, NULL, 500, '4.000'),
('Trinket 01', 'Trinket', 'A mummified goblin hand.', NULL, '0.000'),
('Trinket 02', 'Trinket', 'A piece of crystal that faintly glows in the monlight.', NULL, '0.000'),
('Trinket 03', 'Trinket', 'A gold coin minted in an unknown land.', NULL, '0.000'),
('Trinket 04', 'Trinket', 'A diary written in a language you don\'t know.', NULL, '0.000'),
('Trinket 05', 'Trinket', 'A brass ring that never tarnishes.', NULL, '0.000'),
('Trinket 06', 'Trinket', 'An old chess piece made from glass.', NULL, '0.000'),
('Trinket 07', 'Trinket', 'A pair of knucklebone dice, each with a skull symbol on the side that would normally show six pips.', NULL, '0.000'),
('Trinket 08', 'Trinket', 'A small idol depicting a nightmarish creature that gives you unsettling dreams when you sleep near it.', NULL, '0.000'),
('Trinket 09', 'Trinket', 'A rope necklace from which dangles four mummified elf fingers.', NULL, '0.000'),
('Trinket 10', 'Trinket', 'The deed for a parcel of land in a realm unknown to you.', NULL, '0.000'),
('Trinket 100', 'Trinket', 'A metal urn containing the ashes of a hero.', NULL, '0.000'),
('Trinket 11', 'Trinket', 'A 1-ounce block madae from an unknown material.', NULL, '0.000'),
('Trinket 12', 'Trinket', 'A small cloth doll skewered with needles.', NULL, '0.000'),
('Trinket 13', 'Trinket', 'A tooth from an unknown beast.', NULL, '0.000'),
('Trinket 14', 'Trinket', 'An enormous scale, perhaps from a dragon.', NULL, '0.000'),
('Trinket 15', 'Trinket', 'A bright green feather.', NULL, '0.000'),
('Trinket 16', 'Trinket', 'An old divination card bearing your likeness.', NULL, '0.000'),
('Trinket 17', 'Trinket', 'A glass orb filled with moving smoke.', NULL, '0.000'),
('Trinket 18', 'Trinket', 'A 1-pound egg with a bright red shell.', NULL, '0.000'),
('Trinket 19', 'Trinket', 'A pipe that blows bubbles.', NULL, '0.000'),
('Trinket 20', 'Trinket', 'A glass jar containing a weird bit of flesh floating in pickling fluid.', NULL, '0.000'),
('Trinket 21', 'Trinket', 'A tiny gnome-crafted music box that plays a song you dimly remember from your childhood.', NULL, '0.000'),
('Trinket 22', 'Trinket', 'A small wooden statuette of a smug halfling.', NULL, '0.000'),
('Trinket 23', 'Trinket', 'A brass orb etched with strange runes.', NULL, '0.000'),
('Trinket 24', 'Trinket', 'A multicoloured stone disk.', NULL, '0.000'),
('Trinket 25', 'Trinket', 'A tiny silver icon of a raven.', NULL, '0.000'),
('Trinket 26', 'Trinket', 'A bag containing forty-seven humanoid teeth, one of which is rotten.', NULL, '0.000'),
('Trinket 27', 'Trinket', 'A shard of obsidian that always feels warm to the touch.', NULL, '0.000'),
('Trinket 28', 'Trinket', 'A dragon\'s bony talon hanging from a plain leather necklace.', NULL, '0.000'),
('Trinket 29', 'Trinket', 'A pair of old socks.', NULL, '0.000'),
('Trinket 30', 'Trinket', 'A blank book whose pages refuse to hold ink, chalk, graphite, or any other substance of marking.', NULL, '0.000'),
('Trinket 31', 'Trinket', 'A silver badge in the shape of a five-pointed star.', NULL, '0.000'),
('Trinket 32', 'Trinket', 'A knife that belonged to a relative.', NULL, '0.000'),
('Trinket 33', 'Trinket', 'A glass vial filled with nail clippings.', NULL, '0.000'),
('Trinket 34', 'Trinket', 'A rectangular metal device with two tiny metal cups on one end that throws sparks when wet.', NULL, '0.000'),
('Trinket 35', 'Trinket', 'A white, sequined glove sized for a human.', NULL, '0.000'),
('Trinket 36', 'Trinket', 'A vest wth one hundred tiny pockets.', NULL, '0.000'),
('Trinket 37', 'Trinket', 'A small, weightless stone block.', NULL, '0.000'),
('Trinket 38', 'Trinket', 'A tiny sketch portrait of a goblin.', NULL, '0.000'),
('Trinket 39', 'Trinket', 'An empty glass vial that smells of perfume when opened.', NULL, '0.000'),
('Trinket 40', 'Trinket', 'A gemstone that looks like a lump of coal when examined by anyone but you.', NULL, '0.000'),
('Trinket 41', 'Trinket', 'A scrap of cloth from an old banner.', NULL, '0.000'),
('Trinket 42', 'Trinket', 'A rank insignia from a lost legionnaire.', NULL, '0.000'),
('Trinket 43', 'Trinket', 'A tiny silver bell without a clapper.', NULL, '0.000'),
('Trinket 44', 'Trinket', 'A mechanical canary inside a gnomish lamp.', NULL, '0.000'),
('Trinket 45', 'Trinket', 'A tiny chest carved to look like it has numerous feet on the bottom.', NULL, '0.000'),
('Trinket 46', 'Trinket', 'A dead sprite inside a clear glass bottle.', NULL, '0.000'),
('Trinket 47', 'Trinket', 'A metal can that has no opening but sounds as if it is filled with liquid, sand, spiders, or broken glass (your choice).', NULL, '0.000'),
('Trinket 48', 'Trinket', 'A glass orb filled with water, in which swims a clockwork goldfish.', NULL, '0.000'),
('Trinket 49', 'Trinket', 'A silver spoon with an M engraved on the handle.', NULL, '0.000'),
('Trinket 50', 'Trinket', 'A whistle made from gold-coloured wood.', NULL, '0.000'),
('Trinket 51', 'Trinket', 'A dead scarab beetle the size of your hand.', NULL, '0.000'),
('Trinket 52', 'Trinket', 'Two toy soldiers, one with a missing head.', NULL, '0.000'),
('Trinket 53', 'Trinket', 'A small box filled with different-sized buttons.', NULL, '0.000'),
('Trinket 54', 'Trinket', 'A candle that can\'t be lit.', NULL, '0.000'),
('Trinket 55', 'Trinket', 'A tiny cage with no door.', NULL, '0.000'),
('Trinket 56', 'Trinket', 'An old key.', NULL, '0.000'),
('Trinket 57', 'Trinket', 'An indecipherable treasure map.', NULL, '0.000'),
('Trinket 58', 'Trinket', 'A hilt from a broken sword.', NULL, '0.000'),
('Trinket 59', 'Trinket', 'A rabbit\'s foot.', NULL, '0.000'),
('Trinket 60', 'Trinket', 'A glass eye.', NULL, '0.000'),
('Trinket 61', 'Trinket', 'A cameo carved in the likeness of a hideous person.', NULL, '0.000'),
('Trinket 62', 'Trinket', 'A silver skull the size of a coin.', NULL, '0.000'),
('Trinket 63', 'Trinket', 'An alabaster mask.', NULL, '0.000'),
('Trinket 64', 'Trinket', 'A pyramid of sticky black incense that smells very bad.', NULL, '0.000'),
('Trinket 65', 'Trinket', 'A nightcap that, when worn, gives you pleasant dreams.', NULL, '0.000'),
('Trinket 66', 'Trinket', 'A single caltrop made from bone.', NULL, '0.000'),
('Trinket 67', 'Trinket', 'A gold monocle frame without the lens.', NULL, '0.000'),
('Trinket 68', 'Trinket', 'A 1-inch cube, each side painted a different colour.', NULL, '0.000'),
('Trinket 69', 'Trinket', 'A crystal knob from a door.', NULL, '0.000'),
('Trinket 70', 'Trinket', 'A small packet filled with pink dust.', NULL, '0.000'),
('Trinket 71', 'Trinket', 'A fragment of a beautiful song, written as musical notes on two pieces of parchment.', NULL, '0.000'),
('Trinket 72', 'Trinket', 'A silver teardrop earring made from a real teardrop.', NULL, '0.000'),
('Trinket 73', 'Trinket', 'The shell of an egg painted with scenes of human misery in disturbing detail.', NULL, '0.000'),
('Trinket 74', 'Trinket', 'A fan that, when unfolded, shows a sleeping cat.', NULL, '0.000'),
('Trinket 75', 'Trinket', 'A set of bone pipes.', NULL, '0.000'),
('Trinket 76', 'Trinket', 'A four-leaf clover pressed inside a book discussing manners and etiquette.', NULL, '0.000'),
('Trinket 77', 'Trinket', 'A sheet of parchment upon which is drawn a complex mechanical contraption.', NULL, '0.000'),
('Trinket 78', 'Trinket', 'An ornate scabbard that fits no blade you have found so far.', NULL, '0.000'),
('Trinket 79', 'Trinket', 'An invitation to a party where a murder happened.', NULL, '0.000'),
('Trinket 80', 'Trinket', 'A bronze pentacle with an etching of a rat\'s head in its centre.', NULL, '0.000'),
('Trinket 81', 'Trinket', 'A purple handkerchief embroidered with the name of a powerful archmage.', NULL, '0.000'),
('Trinket 82', 'Trinket', 'Half of a floorplan for a temple, castle, or some other structure.', NULL, '0.000'),
('Trinket 83', 'Trinket', 'A bit of folded cloth that, when unfolded, turns into a stylish cap.', NULL, '0.000'),
('Trinket 84', 'Trinket', 'A receipt of deposit at a bank in a far-flung city.', NULL, '0.000'),
('Trinket 85', 'Trinket', 'A diary with seven missing pages.', NULL, '0.000'),
('Trinket 86', 'Trinket', 'An empty silver snuffbox bearing an inscription on the surface that says \"dreams\".', NULL, '0.000'),
('Trinket 87', 'Trinket', 'An iron holy symbol devoted to an unknown god.', NULL, '0.000'),
('Trinket 88', 'Trinket', 'A book that tells the story of a legendary hero\'s rise and fall, with the last chapter missing.', NULL, '0.000'),
('Trinket 89', 'Trinket', 'A vial of dragon blood.', NULL, '0.000'),
('Trinket 90', 'Trinket', 'An ancient arrow of elven design.', NULL, '0.000'),
('Trinket 91', 'Trinket', 'A needle that never bends.', NULL, '0.000'),
('Trinket 92', 'Trinket', 'An ornate brooch of dwarven design.', NULL, '0.000'),
('Trinket 93', 'Trinket', 'An empty wine bottle that says \"The Wizard of Wines Winery, Red Dragon Crush, 221422-W\".', NULL, '0.000'),
('Trinket 94', 'Trinket', 'A mosaic tile with a multicoloured, glazed surface.', NULL, '0.000'),
('Trinket 95', 'Trinket', 'A petrified mouse.', NULL, '0.000'),
('Trinket 96', 'Trinket', 'A black pirate flag adorned with a dragon\'s skull and crossbones.', NULL, '0.000'),
('Trinket 97', 'Trinket', 'A tiny mechanical crab or spider that moves about when it\'s not being observed.', NULL, '0.000'),
('Trinket 98', 'Trinket', 'A glass jar containing lard with a label that reads \"Griggon Grease\".', NULL, '0.000'),
('Trinket 99', 'Trinket', 'A wooden box with a ceramic bottom that holds a living worm with a head on each end of its body.', NULL, '0.000'),
('Vestments', NULL, NULL, 500, '4.000'),
('Vial', 'Container', NULL, 100, '0.000'),
('Viol', 'Tool', NULL, 3000, '1.000'),
('Wagon', 'Tool', NULL, 3500, '400.000'),
('Wand', 'Arcane Focus', NULL, 1000, '1.000'),
('War Pick', NULL, NULL, 500, '2.000'),
('Warhammer', NULL, NULL, 1500, '2.000'),
('Warship', 'Tool', NULL, 2500000, '0.000'),
('Waterskin', 'Container', NULL, 20, '5.000'),
('Weaver\'s Tools', 'Tool', NULL, 100, '5.000'),
('Weighted Dice Set', NULL, NULL, NULL, '0.000'),
('Whetstone', NULL, NULL, 1, '1.000'),
('Whip', NULL, NULL, 200, '3.000'),
('Woodcarver\'s Tools', 'Tool', NULL, 100, '5.000'),
('Wooden Staff', 'Druidic Focus', NULL, 500, '4.000'),
('Yew Wand', 'Druidic Focus', NULL, 1000, '1.000');

-- --------------------------------------------------------

--
-- Table structure for table `item_group`
--

CREATE TABLE `item_group` (
  `id` int(11) NOT NULL,
  `name` varchar(63) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `cost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `item_group`
--

INSERT INTO `item_group` (`id`, `name`, `cost`) VALUES
(1, 'Arrows (20)', 100),
(2, 'Blowgun Needles (5)', 100),
(3, 'Crossbow Bolts (20)', 100),
(4, 'Sling Bullets (20)', 4),
(5, 'Spikes (Iron) (10)', 100),
(6, 'Burglar\'s Pack', 1600),
(7, 'Diplomat\'s Pack', 3900),
(8, 'Dungeoneer\'s Pack', 1200),
(9, 'Entertainer\'s Pack', 4000),
(10, 'Explorer\'s Pack', 1000),
(11, 'Priest\'s Pack', 1900),
(12, 'Scholar\'s Pack', 4000),
(13, 'Acolyte\'s Basic Equipment', NULL),
(14, 'Acolyte\'s Prayer Equipment', NULL),
(15, 'Charlatan\'s Basic Equipment', NULL),
(16, 'Charlatan\'s Con Equipment', NULL),
(17, 'Criminal\'s Basic Equipment', NULL),
(18, 'Entertainer\'s Basic Equipment', NULL),
(19, 'Musical Instruments', NULL),
(20, 'Trinkets', NULL),
(21, 'Folk Hero\'s Basic Equipment', NULL),
(22, 'Artisan\'s Tools', NULL),
(23, 'Guild Artisan\'s Basic Equipment', NULL),
(24, 'Guild Merchant\'s Basic Equipment', NULL),
(25, 'Hermit\'s Basic Equipment', NULL),
(26, 'Noble\'s Basic Equipment', NULL),
(27, 'Outlander\'s Basic Equipment', NULL),
(28, 'Sage\'s Basic Equipment', NULL),
(29, 'Sailor\'s Basic Equipment', NULL),
(30, 'Soldier\'s Basic Equipment', NULL),
(31, 'Soldier\'s Trophies', NULL),
(32, 'Soldier\'s Entertainment', NULL),
(33, 'Urchin\'s Basic Equipment', NULL),
(34, 'Holy Symbols', NULL),
(35, 'Greataxe', NULL),
(36, 'Martial Melee Weapons', NULL),
(37, 'Handaxe (2)', NULL),
(38, 'Simple Weapons', NULL),
(39, 'Javelin (4)', NULL),
(40, 'Rapier', NULL),
(41, 'Longsword', NULL),
(42, 'Leather Armour', NULL),
(43, 'Dagger', NULL),
(44, 'Mace', NULL),
(45, 'Warhammer', NULL),
(46, 'Scale Mail', NULL),
(47, 'Chain Mail', NULL),
(48, 'Crossbow (Light) and Bolts (20)', NULL),
(49, 'Shield', NULL),
(50, 'Scimitar', NULL),
(51, 'Simple Melee Weapons', NULL),
(52, 'Druidic Focuses', NULL),
(53, 'Longbow, Quiver, and Arrows (20)', NULL),
(54, 'Martial Weapons', NULL),
(55, 'Shortsword', NULL),
(56, 'Dart (10)', NULL),
(57, 'Javelin (5)', NULL),
(58, 'Shortsword (2)', NULL),
(59, 'Thief\'s Tools', NULL),
(60, 'Dagger (2)', NULL),
(61, 'Component Pouch', NULL),
(62, 'Arcane Focuses', NULL),
(63, 'Quarterstaff', NULL),
(64, 'Spellbook', NULL),
(65, 'Leather Armour, Longbow, Quiver, and Arrows (20)', NULL),
(66, 'Martial Weapons & Shield', NULL),
(67, 'Shortbow, Quiver, and Arrows (20)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_group_items`
--

CREATE TABLE `item_group_items` (
  `item_group` int(11) NOT NULL,
  `item` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `item_group_items`
--

INSERT INTO `item_group_items` (`item_group`, `item`, `count`) VALUES
(1, 'Arrow', 20),
(2, 'Blowgun Needle', 5),
(3, 'Crossbow Bolt', 20),
(4, 'Sling Bullet', 20),
(5, 'Spike (Iron)', 10),
(6, 'Backpack', 1),
(6, 'Ball Bearings (bag of 1000)', 1),
(6, 'Bell', 1),
(6, 'Candle', 5),
(6, 'Crowbar', 1),
(6, 'Hammer', 1),
(6, 'Lantern (Hooded)', 1),
(6, 'Oil (Flask)', 2),
(6, 'Piton', 10),
(6, 'Rations (1 day)', 5),
(6, 'Rope (Hempen, 50-foot)', 1),
(6, 'String (10-foot)', 1),
(6, 'Tinderbox', 1),
(6, 'Waterskin', 1),
(7, 'Case (Map/Scroll)', 2),
(7, 'Chest', 1),
(7, 'Clothes (Fine)', 1),
(7, 'Ink (1 ounce bottle)', 1),
(7, 'Ink Pen', 1),
(7, 'Lamp', 1),
(7, 'Oil (Flask)', 2),
(7, 'Paper (1 sheet)', 5),
(7, 'Perfume (Vial)', 1),
(7, 'Sealing Wax', 1),
(7, 'Soap', 1),
(8, 'Backpack', 1),
(8, 'Crowbar', 1),
(8, 'Hammer', 1),
(8, 'Piton', 10),
(8, 'Rations (1 day)', 10),
(8, 'Rope (Hempen, 50-foot)', 1),
(8, 'Tinderbox', 1),
(8, 'Torch', 10),
(8, 'Waterskin', 1),
(9, 'Backpack', 1),
(9, 'Bedroll', 1),
(9, 'Clothes (Costume)', 2),
(10, 'Backpack', 1),
(10, 'Bedroll', 1),
(10, 'Mess Kit', 1),
(10, 'Rations (1 day)', 10),
(10, 'Rope (Hempen, 50-foot)', 1),
(10, 'Tinderbox', 1),
(10, 'Torch', 10),
(10, 'Waterskin', 1),
(11, 'Alms Box', 1),
(11, 'Backpack', 1),
(11, 'Blanket', 1),
(11, 'Candle', 10),
(11, 'Censer', 1),
(11, 'Incense Block', 2),
(11, 'Rations (1 day)', 2),
(11, 'Tinderbox', 1),
(11, 'Vestments', 1),
(11, 'Waterskin', 1),
(12, 'Backpack', 1),
(12, 'Bag of Sand (Small)', 1),
(12, 'Book of Lore', 1),
(12, 'Ink (1 ounce bottle)', 1),
(12, 'Ink Pen', 1),
(12, 'Knife (Small)', 1),
(12, 'Parchment (1 sheet)', 10),
(13, 'Clothes (Common)', 1),
(13, 'Incense Stick', 5),
(13, 'Vestments', 1),
(14, 'Book of Prayer', 1),
(14, 'Prayer Wheel', 1),
(15, 'Clothes (Fine)', 1),
(15, 'Disguise Kit', 1),
(16, 'Bottle of Mysterious Liquid', 10),
(16, 'Deck of Marked Cards', 1),
(16, 'Signet Ring (Fake)', 1),
(16, 'Weighted Dice Set', 1),
(17, 'Clothes (Common, Dark)', 1),
(17, 'Crowbar', 1),
(18, 'Candle', 5),
(18, 'Clothes (Costume)', 1),
(18, 'Disguise Kit', 1),
(18, 'Rations (1 day)', 5),
(18, 'Waterskin', 1),
(19, 'Bagpipes', 1),
(19, 'Drum', 1),
(19, 'Dulcimer', 1),
(19, 'Flute', 1),
(19, 'Horn', 1),
(19, 'Lute', 1),
(19, 'Lyre', 1),
(19, 'Pan Flute', 1),
(19, 'Shawm', 1),
(19, 'Viol', 1),
(20, 'Trinket 01', 1),
(20, 'Trinket 02', 1),
(20, 'Trinket 03', 1),
(20, 'Trinket 04', 1),
(20, 'Trinket 05', 1),
(20, 'Trinket 06', 1),
(20, 'Trinket 07', 1),
(20, 'Trinket 08', 1),
(20, 'Trinket 09', 1),
(20, 'Trinket 10', 1),
(20, 'Trinket 100', 1),
(20, 'Trinket 11', 1),
(20, 'Trinket 12', 1),
(20, 'Trinket 13', 1),
(20, 'Trinket 14', 1),
(20, 'Trinket 15', 1),
(20, 'Trinket 16', 1),
(20, 'Trinket 17', 1),
(20, 'Trinket 18', 1),
(20, 'Trinket 19', 1),
(20, 'Trinket 20', 1),
(20, 'Trinket 21', 1),
(20, 'Trinket 22', 1),
(20, 'Trinket 23', 1),
(20, 'Trinket 24', 1),
(20, 'Trinket 25', 1),
(20, 'Trinket 26', 1),
(20, 'Trinket 27', 1),
(20, 'Trinket 28', 1),
(20, 'Trinket 29', 1),
(20, 'Trinket 30', 1),
(20, 'Trinket 31', 1),
(20, 'Trinket 32', 1),
(20, 'Trinket 33', 1),
(20, 'Trinket 34', 1),
(20, 'Trinket 35', 1),
(20, 'Trinket 36', 1),
(20, 'Trinket 37', 1),
(20, 'Trinket 38', 1),
(20, 'Trinket 39', 1),
(20, 'Trinket 40', 1),
(20, 'Trinket 41', 1),
(20, 'Trinket 42', 1),
(20, 'Trinket 43', 1),
(20, 'Trinket 44', 1),
(20, 'Trinket 45', 1),
(20, 'Trinket 46', 1),
(20, 'Trinket 47', 1),
(20, 'Trinket 48', 1),
(20, 'Trinket 49', 1),
(20, 'Trinket 50', 1),
(20, 'Trinket 51', 1),
(20, 'Trinket 52', 1),
(20, 'Trinket 53', 1),
(20, 'Trinket 54', 1),
(20, 'Trinket 55', 1),
(20, 'Trinket 56', 1),
(20, 'Trinket 57', 1),
(20, 'Trinket 58', 1),
(20, 'Trinket 59', 1),
(20, 'Trinket 60', 1),
(20, 'Trinket 61', 1),
(20, 'Trinket 62', 1),
(20, 'Trinket 63', 1),
(20, 'Trinket 64', 1),
(20, 'Trinket 65', 1),
(20, 'Trinket 66', 1),
(20, 'Trinket 67', 1),
(20, 'Trinket 68', 1),
(20, 'Trinket 69', 1),
(20, 'Trinket 70', 1),
(20, 'Trinket 71', 1),
(20, 'Trinket 72', 1),
(20, 'Trinket 73', 1),
(20, 'Trinket 74', 1),
(20, 'Trinket 75', 1),
(20, 'Trinket 76', 1),
(20, 'Trinket 77', 1),
(20, 'Trinket 78', 1),
(20, 'Trinket 79', 1),
(20, 'Trinket 80', 1),
(20, 'Trinket 81', 1),
(20, 'Trinket 82', 1),
(20, 'Trinket 83', 1),
(20, 'Trinket 84', 1),
(20, 'Trinket 85', 1),
(20, 'Trinket 86', 1),
(20, 'Trinket 87', 1),
(20, 'Trinket 88', 1),
(20, 'Trinket 89', 1),
(20, 'Trinket 90', 1),
(20, 'Trinket 91', 1),
(20, 'Trinket 92', 1),
(20, 'Trinket 93', 1),
(20, 'Trinket 94', 1),
(20, 'Trinket 95', 1),
(20, 'Trinket 96', 1),
(20, 'Trinket 97', 1),
(20, 'Trinket 98', 1),
(20, 'Trinket 99', 1),
(21, 'Clothes (Common)', 1),
(21, 'Pot (Iron)', 1),
(21, 'Shovel', 1),
(22, 'Alchemist\'s Supplies', 1),
(22, 'Brewer\'s Supplies', 1),
(22, 'Calligrapher\'s Supplies', 1),
(22, 'Carpenter\'s Tools', 1),
(22, 'Cartographer\'s Tools', 1),
(22, 'Cobbler\'s Tools', 1),
(22, 'Cook\'s Utensils', 1),
(22, 'Glassblower\'s Tools', 1),
(22, 'Jeweller\'s Tools', 1),
(22, 'Leatherworker\'s Tools', 1),
(22, 'Mason\'s Tools', 1),
(22, 'Painter\'s Supplies', 1),
(22, 'Potter\'s Tools', 1),
(22, 'Smith\'s Tools', 1),
(22, 'Tinker\'s Tools', 1),
(22, 'Weaver\'s Tools', 1),
(22, 'Woodcarver\'s Tools', 1),
(23, 'Clothes (Traveler\'s)', 1),
(23, 'Letter of Guild Introduction', 1),
(24, 'Cart', 1),
(24, 'Clothes (Traveler\'s)', 1),
(24, 'Letter of Guild Introduction', 1),
(24, 'Mule', 1),
(25, 'Blanket', 1),
(25, 'Case of Notes', 1),
(25, 'Clothes (Common)', 1),
(25, 'Herbalism Kit', 1),
(26, 'Clothes (Fine)', 1),
(26, 'Scroll of Pedigree', 1),
(26, 'Signet Ring', 1),
(27, 'Animal Trophy', 1),
(27, 'Clothes (Traveler\'s)', 1),
(27, 'Hunting Trap', 1),
(27, 'Staff', 1),
(28, 'Clothes (Common)', 1),
(28, 'Ink (1 ounce bottle)', 1),
(28, 'Knife (Small)', 1),
(28, 'Letter of Mystery', 1),
(28, 'Quill', 1),
(29, 'Clothes (Common)', 1),
(29, 'Club', 1),
(29, 'Rope (Silk, 50-foot)', 1),
(30, 'Clothes (Common)', 1),
(30, 'Insignia of Rank', 1),
(31, 'Broken Blade', 1),
(31, 'Dagger', 1),
(31, 'Torn Banner', 1),
(32, 'Dice Set', 1),
(32, 'Playing Card Set', 1),
(33, 'Clothes (Common)', 1),
(33, 'Knife (Small)', 1),
(33, 'Map (City)', 1),
(33, 'Mouse (Pet)', 1),
(34, 'Amulet', 1),
(34, 'Emblem', 1),
(34, 'Reliquary', 1),
(35, 'Greataxe', 1),
(36, 'Battleaxe', 1),
(36, 'Flail', 1),
(36, 'Glaive', 1),
(36, 'Greataxe', 1),
(36, 'Greatsword', 1),
(36, 'Halberd', 1),
(36, 'Lance', 1),
(36, 'Longsword', 1),
(36, 'Maul', 1),
(36, 'Morningstar', 1),
(36, 'Pike', 1),
(36, 'Rapier', 1),
(36, 'Scimitar', 1),
(36, 'Shortsword', 1),
(36, 'Trident', 1),
(36, 'War Pick', 1),
(36, 'Warhammer', 1),
(36, 'Whip', 1),
(37, 'Handaxe', 2),
(38, 'Club', 1),
(38, 'Crossbow (Light)', 1),
(38, 'Dagger', 1),
(38, 'Dart', 1),
(38, 'Greatclub', 1),
(38, 'Handaxe', 1),
(38, 'Javelin', 1),
(38, 'Light Hammer', 1),
(38, 'Mace', 1),
(38, 'Quarterstaff', 1),
(38, 'Shortbow', 1),
(38, 'Sickle', 1),
(38, 'Sling', 1),
(38, 'Spear', 1),
(39, 'Javelin', 5),
(40, 'Rapier', 1),
(41, 'Longsword', 1),
(42, 'Leather', 1),
(43, 'Dagger', 1),
(44, 'Mace', 1),
(45, 'Warhammer', 1),
(46, 'Scale Mail', 1),
(48, 'Case (Crossbow Bolt)', 1),
(48, 'Crossbow (Light)', 1),
(48, 'Crossbow Bolt', 20),
(49, 'Shield', 1),
(50, 'Scimitar', 1),
(51, 'Club', 1),
(51, 'Dagger', 1),
(51, 'Greatclub', 1),
(51, 'Handaxe', 1),
(51, 'Javelin', 1),
(51, 'Light Hammer', 1),
(51, 'Mace', 1),
(51, 'Quarterstaff', 1),
(51, 'Sickle', 1),
(51, 'Spear', 1),
(52, 'Sprig of Mistletoe', 1),
(52, 'Totem', 1),
(52, 'Wooden Staff', 1),
(52, 'Yew Wand', 1),
(53, 'Arrow', 20),
(53, 'Longbow', 1),
(53, 'Quiver', 1),
(54, 'Battleaxe', 1),
(54, 'Blowgun', 1),
(54, 'Crossbow (Hand)', 1),
(54, 'Crossbow (Heavy)', 1),
(54, 'Flail', 1),
(54, 'Glaive', 1),
(54, 'Greataxe', 1),
(54, 'Greatsword', 1),
(54, 'Halberd', 1),
(54, 'Lance', 1),
(54, 'Longbow', 1),
(54, 'Longsword', 1),
(54, 'Maul', 1),
(54, 'Morningstar', 1),
(54, 'Net', 1),
(54, 'Pike', 1),
(54, 'Rapier', 1),
(54, 'Scimitar', 1),
(54, 'Shortsword', 1),
(54, 'Trident', 1),
(54, 'War Pick', 1),
(54, 'Whip', 1),
(55, 'Shortsword', 1),
(56, 'Dart', 10),
(57, 'Javelin', 5),
(58, 'Shortsword', 2),
(59, 'Thief\'s Tools', 1),
(60, 'Dagger', 2),
(61, 'Component Pouch', 1),
(62, 'Crystal', 1),
(62, 'Orb', 1),
(62, 'Rod', 1),
(62, 'Staff', 1),
(62, 'Wand', 1),
(63, 'Quarterstaff', 1),
(64, 'Spellbook', 1),
(65, 'Arrow', 20),
(65, 'Leather', 1),
(65, 'Longbow', 1),
(65, 'Quiver', 1),
(66, 'Battleaxe', 1),
(66, 'Blowgun', 1),
(66, 'Crossbow (Hand)', 1),
(66, 'Crossbow (Heavy)', 1),
(66, 'Flail', 1),
(66, 'Glaive', 1),
(66, 'Greataxe', 1),
(66, 'Greatsword', 1),
(66, 'Halberd', 1),
(66, 'Lance', 1),
(66, 'Longbow', 1),
(66, 'Longsword', 1),
(66, 'Maul', 1),
(66, 'Morningstar', 1),
(66, 'Net', 1),
(66, 'Pike', 1),
(66, 'Rapier', 1),
(66, 'Scimitar', 1),
(66, 'Shield', 1),
(66, 'Shortsword', 1),
(66, 'Trident', 1),
(66, 'War Pick', 1),
(66, 'Warhammer', 1),
(66, 'Whip', 1),
(67, 'Arrow', 20),
(67, 'Quiver', 1),
(67, 'Shortbow', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_set`
--

CREATE TABLE `item_set` (
  `id` int(11) NOT NULL,
  `name` varchar(63) COLLATE utf8_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `item_set`
--

INSERT INTO `item_set` (`id`, `name`) VALUES
(1, 'A Greataxe / Any Martial Melee weapon.'),
(2, 'Two Handaxes / Any Simple Weapon'),
(3, 'An Explorer\'s Pack & Four Javelins'),
(4, 'A Rapier / A Longsword / Any Simple weapon'),
(5, 'A Diplomat\'s Pack / An Entertainer\'s Pack'),
(6, 'Any Musical Instrument'),
(7, 'Leather armour & A Dagger'),
(8, 'A Mace / A Warhammer'),
(9, 'Scale Mail / Leather armour / Chain Mail'),
(10, 'A Crossbow (Light) and 20 Bolts / Any Simple weapon'),
(11, 'A Priest\'s Pack / An Explorer\'s Pack'),
(12, 'A Shield & A Holy Symbol'),
(13, 'A Shield / Any Simple weapon'),
(14, 'A Scimitar / Any Simple Melee weapon'),
(15, 'Leather armour, An Explorer\'s Pack, & A Druidic Focus'),
(16, 'Chain Mail / Leather armour, Longbow, Quiver, & 20 Arrows'),
(17, 'A Crossbow (Light) & 20 Bolts / Two handaxes'),
(18, 'A Dungeoneer\'s Pack / An Explorer\'s Pack'),
(19, 'A Shortsword / Any Simple weapon'),
(20, 'A Dungeoneer\'s Pack / An Explorer\'s Pack'),
(21, '10 Darts'),
(22, 'A Martial weapon & A Shield / Two Martial weapons'),
(23, 'Five Javelins / Any Simple Melee weapon'),
(24, 'A Priest\'s Pack / An Explorer\'s Pack'),
(25, 'Chain Mail & A Holy Symbol'),
(26, 'Scale Mail / Leather armour'),
(27, 'Two Shortswords / Two Simple Melee weapons'),
(28, 'A Dungeoneer\'s Pack / An Explorer\'s Pack'),
(29, 'A Longbow, Quiver, & 20 Arrows'),
(30, 'A Rapier / A Shortsword'),
(31, 'A Shortbow, Quiver, & 20 Arrows / A Shortsword'),
(32, 'A Burglar\'s Pack / A Dungeoneer\'s Pack / An Explorer\'s Pack'),
(33, 'Leather armour, Two Daggers & Thief\'s Tools'),
(34, 'A Crossbow (Light) & 20 Bolts / Any Simple weapon'),
(35, 'A Component Pouch / An Arcane Focus'),
(36, 'A Dungeoneer\'s Pack / An Explorer\'s Pack'),
(37, 'Two Daggers'),
(38, 'A Crossbow (Light) & 20 Bolts / Any Simple weapon'),
(39, 'A Component Pouch / An Arcane Focus'),
(40, 'A Scholar\'s Pack / A Dungeoneer\'s Pack'),
(41, 'Leather armour, Any Simple weapon & Two Daggers'),
(42, 'A Quarterstaff / A Dagger'),
(43, 'A Component Pouch / An Arcane Focus'),
(44, 'A Scholar\'s Pack / An Explorer\'s Pack'),
(45, 'A Spellbook');

-- --------------------------------------------------------

--
-- Table structure for table `item_set_groups`
--

CREATE TABLE `item_set_groups` (
  `item_set` int(11) NOT NULL,
  `item_group` int(11) NOT NULL,
  `item_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `item_set_groups`
--

INSERT INTO `item_set_groups` (`item_set`, `item_group`, `item_limit`) VALUES
(1, 35, NULL),
(1, 36, 1),
(2, 37, NULL),
(2, 38, 1),
(3, 10, NULL),
(3, 39, NULL),
(4, 38, 1),
(4, 40, NULL),
(4, 41, NULL),
(5, 7, NULL),
(5, 9, NULL),
(6, 19, 1),
(7, 42, NULL),
(7, 43, NULL),
(8, 44, NULL),
(8, 45, NULL),
(9, 42, NULL),
(9, 46, NULL),
(9, 47, NULL),
(10, 38, 1),
(10, 48, NULL),
(11, 10, NULL),
(11, 11, NULL),
(12, 34, 1),
(12, 49, NULL),
(13, 38, 1),
(13, 49, NULL),
(14, 50, NULL),
(14, 51, 1),
(15, 10, NULL),
(15, 42, NULL),
(15, 52, 1),
(16, 47, NULL),
(16, 65, NULL),
(17, 37, NULL),
(17, 48, NULL),
(18, 8, NULL),
(18, 10, NULL),
(19, 38, 1),
(19, 55, NULL),
(20, 8, NULL),
(20, 10, NULL),
(21, 56, NULL),
(22, 66, 2),
(23, 51, 0),
(23, 57, NULL),
(24, 10, NULL),
(24, 11, NULL),
(25, 34, 1),
(25, 47, NULL),
(26, 42, NULL),
(26, 46, NULL),
(27, 51, 2),
(27, 58, NULL),
(28, 8, NULL),
(28, 10, NULL),
(29, 53, NULL),
(30, 40, NULL),
(30, 55, NULL),
(31, 55, NULL),
(31, 67, NULL),
(32, 6, NULL),
(32, 8, NULL),
(32, 10, NULL),
(33, 42, NULL),
(33, 59, NULL),
(33, 60, NULL),
(34, 38, 1),
(34, 48, NULL),
(35, 61, NULL),
(35, 62, 1),
(36, 8, NULL),
(36, 10, NULL),
(37, 60, NULL),
(38, 38, 1),
(38, 48, NULL),
(39, 61, NULL),
(39, 62, 1),
(40, 8, NULL),
(40, 12, NULL),
(41, 42, NULL),
(41, 51, 1),
(41, 60, NULL),
(42, 43, NULL),
(42, 63, NULL),
(43, 61, NULL),
(43, 62, 1),
(44, 10, NULL),
(44, 12, NULL),
(45, 64, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE `item_type` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `item_type`
--

INSERT INTO `item_type` (`name`, `description`) VALUES
('Ammunition', NULL),
('Arcane Focus', 'An arcane focus is a special item — an orb, a crystal, a rod, a specially constructed staff, a wand-like length of wood, or some similar item — designed to channel the power of arcane spells. A sorcerer, warlock, or wizard can use such an item as a spellcasting focus.'),
('Armour', NULL),
('Container', NULL),
('Druidic Focus', 'A druidic focus might be a sprig of mistletoe or holly, a wand or sceptre made of yew or another special wood, a staff drawn whole out of a living tree, or a totem object incorporating feathers, fur, bones, and teeth from sacred animals. A druid can use such an object as a spellcasting focus.'),
('Holy Symbol', 'A holy symbol is a representation of a god or pantheon. It might be an amulet depicting a symbol representing a deity, the same symbol carefully engraved or inlaid as an emblem on a shield, or a tiny box holding a fragment of a sacred relic. A cleric or paladin can use a holy symbol as a spellcasting focus. To use the symbol in this way, the caster must hold it in hand, wear it visibly, or bear it on a shield.'),
('Mount', 'A good mount can help you move more quickly through the wilderness, but its primary purpose is to carry the gear that would otherwise slow you down.'),
('Tool', NULL),
('Trinket', 'A simple item, lightly touched by mystery.'),
('Weapon', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `language_type` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `typical_speakers` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `script` varchar(63) COLLATE utf8_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`name`, `language_type`, `typical_speakers`, `script`) VALUES
('Abyssal', 'Exotic', 'Demons', 'Infernal'),
('Celestial', 'Exotic', 'Celestials', 'Celestial'),
('Common', 'Standard', 'Humans', 'Common'),
('Deep Speech', 'Exotic', 'Aboleths, Cloakers', NULL),
('Draconic', 'Exotic', 'Dragons, Dragonborn', 'Draconic'),
('Dwarvish', 'Standard', 'Dwarves', NULL),
('Elvish', 'Standard', 'Elves', 'Elvish'),
('Giant', 'Standard', 'Ogres, Giants', 'Dwarvish'),
('Gnomish', 'Standard', 'Gnomes', 'Dwarvish'),
('Goblin', 'Standard', 'Goblinoids', 'Dwarvish'),
('Halfling', 'Standard', 'Halflings', 'Common'),
('Infernal', 'Exotic', 'Devils', 'Infernal'),
('Orc', 'Standard', 'Orcs', 'Dwarvish'),
('Primordial', 'Exotic', 'Elementals', 'Dwarvish'),
('Sylvan', 'Exotic', 'Fey Creatures', 'Elvish'),
('Undercommon', 'Exotic', 'Underworld Traders', 'Elvish');

-- --------------------------------------------------------

--
-- Table structure for table `language_type`
--

CREATE TABLE `language_type` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `language_type`
--

INSERT INTO `language_type` (`name`) VALUES
('Exotic'),
('Standard');

-- --------------------------------------------------------

--
-- Table structure for table `mount`
--

CREATE TABLE `mount` (
  `item` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `speed` int(11) NOT NULL,
  `carrying_capacity` int(11) NOT NULL,
  `is_rideable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `mount`
--

INSERT INTO `mount` (`item`, `speed`, `carrying_capacity`, `is_rideable`) VALUES
('Camel', 50, 480, 1),
('Donkey', 40, 420, 1),
('Elephant', 40, 1320, 1),
('Horse (Draft)', 40, 540, 1),
('Horse (Riding)', 60, 480, 1),
('Horse (War)', 60, 540, 1),
('Mastiff', 40, 195, 0),
('Mule', 40, 420, 1),
('Pony', 40, 225, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personality_trait`
--

CREATE TABLE `personality_trait` (
  `id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `personality_trait`
--

INSERT INTO `personality_trait` (`id`, `description`) VALUES
(1, 'I idolise a particular hero of my faith, and constantly refer to that person’s deeds and example.'),
(2, 'I can find common ground between the fiercest enemies, empathising with them and always working toward peace.'),
(3, 'I see omens in every event and action. The gods try to speak to us, we just need to listen.'),
(4, 'Nothing can shake my optimistic attitude.'),
(5, 'I quote (or misquote) sacred texts and proverbs in almost every situation.'),
(6, 'I am tolerant (or intolerant) of other faiths and respect (or condemn) the worship of other gods.'),
(7, 'I\'ve enjoyed fine food, drink, and high society among my temple\'s elite. Rough living grates on me.'),
(8, 'I\'ve spent so long in the temple that I have little practical experience dealing with people in the outside world.'),
(9, 'I fall in and out of love easily, and am always pursuing someone.'),
(10, 'I have a joke for every occasion, especially occasions where humour is inappropriate.'),
(11, 'Flattery is my preferred trick for getting what I want.'),
(12, 'I\'m a born gambler who can\'t resist taking a risk for a potential payoff.'),
(13, 'I lie about almost everything, even when there\'s no good reason to.'),
(14, 'Sarcasm and insults are my weapons of choice.'),
(15, 'I keep multiple holy symbols on me and invoke whatever deity might come in useful at any given moment.'),
(16, 'I pocket anything I see that might have some value.'),
(17, 'I always have a plan for what to do when things go wrong.'),
(18, 'I am always calm, no matter what the situation. I never raise my voice or let my emotions control me.'),
(19, 'The first thing I do in a new place is note the locations of everything valuable - or where such things could be hidden.'),
(20, 'I would rather make a new friend than a new enemy.'),
(21, 'I am incredible slow to trust. Those who seem the fairest often have the most to hide.'),
(22, 'I don\'t pay attention to the risks in a situation. Never tell me the odds.'),
(23, 'The best way to get me to do something is to tell me I can\'t do it.'),
(24, 'I blow up at the slightest insult.'),
(25, 'I know a story relevant to almost every situation.'),
(26, 'Whenever I come to a new place, I collect local rumours and spread gossip.'),
(27, 'I\'m a hopeless romantic, always searching for that \"special someone\".'),
(28, 'Nobody stays angry at me or around me for long, since I can defuse any amount of tension.'),
(29, 'I love a good insult, even one directed at me.'),
(30, 'I get bitter if I\'m not the centre of attention.'),
(31, 'I\'ll settle for nothing less than perfection.'),
(32, 'I change my mood or my mind as quickly as I change key in a song.'),
(33, 'I judge people by their actions, not their words.'),
(34, 'If someone is in trouble, I\'m always ready to lend help.'),
(35, 'When I set my mind to something, I follow through no matter what gets in my way.'),
(36, 'I have a strong sense of fair play and always try to find the most equitable solution to arguments.'),
(37, 'I\'m confident in my own abilities and do what I can to instil confidence in others.'),
(38, 'Thinking is for other people. I prefer action.'),
(39, 'I misuse long words in an attempt to sound smarter.'),
(40, 'I get bored easily. When am I going to get on with my destiny?'),
(41, 'I believe that anything worth doing is worth doing right. I can\'t help it - I\'m a perfectionist.'),
(42, 'I\'m a snob who looks down on those who can\'t appreciate fine art.'),
(43, 'I always want to know how things work and what makes people tick.'),
(44, 'I\'m full of witty aphorisms and have a proverb for every occasion.'),
(45, 'I\'m rude to people who lack my commitment to hard work and fair play.'),
(46, 'I like to talk at length about my profession.'),
(47, 'I don\'t part with my money easily and will haggle tirelessly to get the best deal possible.'),
(48, 'I\'m well known for my work, and I want to make sure everyone appreciates it. I\'m always taken aback when people haven\'t heard of me.'),
(49, 'I\'ve been isolated for so long that I rarely speak, preferring gestures and the occasional grunt.'),
(50, 'I am utterly serene, even in the face of disaster.'),
(51, 'The leader of my community had something wise to say on every topic, and I am eager to share that wisdom.'),
(52, 'I feel tremendous empathy for all who suffer.'),
(53, 'I\'m oblivious to etiquette and social expectations.'),
(54, 'I connect everything that happens to me to a grand, cosmic plan.'),
(55, 'I often get lost in my own thoughts and contemplation, becoming oblivious to my surroundings.'),
(56, 'I am working on a grand philosophical theory and love sharing my ideas.'),
(57, 'My eloquent flattery makes everyone I talk to feel like the most wonderful and important person in the world.'),
(58, 'The common folk love me for my kindness and generosity.'),
(59, 'No-one could doubt by looking at my regal bearing that I am a cut above the unwashed masses.'),
(60, 'I take great pains to always look my best and follow the latest fashions.'),
(61, 'I don\'t like to get my hands dirty, and I won\'t be caught dead in unsuitable accommodations.'),
(62, 'Despite my noble birth, I do not place myself above other folk. We all have the same blood.'),
(63, 'My favour, once lost, is lost forever.'),
(64, 'If you do me an injury, I will crush you, ruin your name, and salt your fields.'),
(65, 'I\'m driven by a wanderlust that led me away from home.'),
(66, 'I watch over my friends as if they were a litter of newborn pups.'),
(67, 'I once ran twenty-five miles without stopping to warn my clan of an approaching orc horde. I\'d do it again if I had to.'),
(68, 'I have a lesson for every situation, drawn from observing nature.'),
(69, 'I place no stock in wealthy or well-mannered folk. Money and manners won\'t save you from a hungry owlbear.'),
(70, 'I\'m always picking things up, absently fiddling with them, and sometimes accidentally breaking them.'),
(71, 'I feel far more comfortable around animals than people.'),
(72, 'I was, in fact, raised by wolves.'),
(73, 'I use polysyllabic words that convey the impression of great erudition.'),
(74, 'I\'ve read every book in the world\'s greatest libraries - or I like to boast that I have.'),
(75, 'I\'m used to helping out those who aren\'t as smart as I am, and I patiently explain anything and everything to others.'),
(76, 'There\'s nothing I like more than a good mystery.'),
(77, 'I\'m willing to listen to every side of an argument before I make my own judgement.'),
(78, 'I ... speak ... slowly ... when talking ... to idiots, ... which ... almost ... everyone ... is ... compared ... to me.'),
(79, 'I am horribly, horribly awkward in social situations.'),
(80, 'I\'m convinced that people are always trying to steal my secrets.'),
(81, 'My friends know they can rely on me, no matter what.'),
(82, 'I work hard so that I can play hard when the work is done.'),
(83, 'I enjoy sailing into new ports and making new friends over a flagon of ale.'),
(84, 'I stretch the truth for the sake of a good story.'),
(85, 'To me, a tavern brawl is a nice way to get to know a new city.'),
(86, 'I never pass up a friendly wager.'),
(87, 'My language is as foul as an otyugh nest.'),
(88, 'I like a job well done, especially if I can convince someone else to do it.'),
(89, 'I\'m always polite and respectful.'),
(90, 'I\'m haunted by memories of war. I can\'t get the images of violence out of my mind.'),
(91, 'I\'ve lost too many friends, and I\'m slow to make new ones.'),
(92, 'I\'m full of inspiring and cautionary tales from my military experience relevant to almost every combat situation.'),
(93, 'I can stare down a hell hound without flinching.'),
(94, 'I enjoy being strong and like breaking things.'),
(95, 'I have a crude sense of humour.'),
(96, 'I face problems head-on. A simple, direct solution is the best path to success.'),
(97, 'I hide scraps of food and trinkets away in my pockets.'),
(98, 'I ask a lot of questions.'),
(99, 'I like to squeeze into small places where no one else can get to me.'),
(100, 'I sleep with my back to a wall or tree, with everything I own wrapped in a bundle in my arms.'),
(101, 'I eat like a pig and have bad manners.'),
(102, 'I think anyone who\'s nice to me is hiding evil intent.'),
(103, 'I don\'t like to bathe.'),
(104, 'I bluntly say what other people are hinting at or hiding.');

-- --------------------------------------------------------

--
-- Table structure for table `race`
--

CREATE TABLE `race` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `min_age` int(11) NOT NULL,
  `max_age` int(11) NOT NULL,
  `height_base` int(11) NOT NULL,
  `height_mod` int(11) DEFAULT NULL,
  `weight_base` int(11) NOT NULL,
  `weight_mod` int(11) DEFAULT NULL,
  `speed_base` int(11) NOT NULL,
  `parent` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `race`
--

INSERT INTO `race` (`name`, `min_age`, `max_age`, `height_base`, `height_mod`, `weight_base`, `weight_mod`, `speed_base`, `parent`) VALUES
('Dark Elf (Drow)', 100, 750, 53, 10, 75, 2, 30, 'Elf'),
('Dragonborn', 15, 80, 66, 9, 175, 8, 30, 'Dragonborn'),
('Forest Gnome', 40, 450, 35, 7, 35, NULL, 25, 'Gnome'),
('Half-Elf', 20, 180, 57, 9, 110, 7, 30, 'Half-Elf'),
('Half-Orc', 14, 75, 58, 10, 140, 8, 30, 'Half-Orc'),
('High Elf', 100, 750, 54, 10, 90, 1, 30, 'Elf'),
('Hill Dwarf', 50, 350, 44, 7, 115, 8, 25, 'Dwarf'),
('Human', 19, 75, 56, 10, 110, 7, 30, 'Human'),
('Lightfoot Halfling', 20, 150, 31, 7, 35, NULL, 25, 'Halfling'),
('Mountain Dwarf', 50, 350, 48, 7, 130, 8, 25, 'Dwarf'),
('Rock Gnome', 40, 450, 35, 7, 35, NULL, 25, 'Gnome'),
('Stout Halfling', 20, 150, 31, 7, 35, NULL, 25, 'Halfling'),
('Tiefling', 19, 100, 57, 9, 110, 7, 30, 'Tiefling'),
('Wood Elf', 100, 750, 54, 10, 100, 1, 30, 'Elf');

-- --------------------------------------------------------

--
-- Table structure for table `race_ability_score_increments`
--

CREATE TABLE `race_ability_score_increments` (
  `race` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `ability` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `race_ability_score_increments`
--

INSERT INTO `race_ability_score_increments` (`race`, `ability`, `amount`) VALUES
('Dark Elf (Drow)', 'Charisma', 1),
('Dark Elf (Drow)', 'Dexterity', 2),
('Dragonborn', 'Charisma', 1),
('Dragonborn', 'Strength', 2),
('Forest Gnome', 'Dexterity', 1),
('Forest Gnome', 'Intelligence', 2),
('Half-Elf', 'Charisma', 2),
('Half-Orc', 'Constitution', 1),
('Half-Orc', 'Strength', 2),
('High Elf', 'Dexterity', 2),
('High Elf', 'Intelligence', 1),
('Hill Dwarf', 'Constitution', 2),
('Hill Dwarf', 'Wisdom', 1),
('Human', 'Charisma', 1),
('Human', 'Constitution', 1),
('Human', 'Dexterity', 1),
('Human', 'Intelligence', 1),
('Human', 'Strength', 1),
('Human', 'Wisdom', 1),
('Lightfoot Halfling', 'Charisma', 1),
('Lightfoot Halfling', 'Dexterity', 2),
('Mountain Dwarf', 'Constitution', 2),
('Mountain Dwarf', 'Strength', 2),
('Rock Gnome', 'Constitution', 1),
('Rock Gnome', 'Intelligence', 2),
('Stout Halfling', 'Constitution', 1),
('Stout Halfling', 'Dexterity', 2),
('Tiefling', 'Charisma', 2),
('Tiefling', 'Intelligence', 1),
('Wood Elf', 'Dexterity', 2),
('Wood Elf', 'Wisdom', 1);

-- --------------------------------------------------------

--
-- Table structure for table `race_languages`
--

CREATE TABLE `race_languages` (
  `race` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `language` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `race_languages`
--

INSERT INTO `race_languages` (`race`, `language`) VALUES
('Dark Elf (Drow)', 'Common'),
('Dark Elf (Drow)', 'Elvish'),
('Dragonborn', 'Common'),
('Dragonborn', 'Draconic'),
('Forest Gnome', 'Common'),
('Forest Gnome', 'Gnomish'),
('Half-Elf', 'Common'),
('Half-Elf', 'Elvish'),
('Half-Orc', 'Common'),
('Half-Orc', 'Orc'),
('High Elf', 'Common'),
('High Elf', 'Elvish'),
('Hill Dwarf', 'Common'),
('Hill Dwarf', 'Dwarvish'),
('Human', 'Common'),
('Lightfoot Halfling', 'Celestial'),
('Lightfoot Halfling', 'Halfling'),
('Mountain Dwarf', 'Common'),
('Mountain Dwarf', 'Dwarvish'),
('Rock Gnome', 'Common'),
('Rock Gnome', 'Gnomish'),
('Stout Halfling', 'Common'),
('Stout Halfling', 'Halfling'),
('Tiefling', 'Common'),
('Tiefling', 'Infernal'),
('Wood Elf', 'Common'),
('Wood Elf', 'Elvish');

-- --------------------------------------------------------

--
-- Table structure for table `race_parent`
--

CREATE TABLE `race_parent` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `race_parent`
--

INSERT INTO `race_parent` (`name`, `description`) VALUES
('Dragonborn', 'Born of dragons, as their name proclaims, the dragonborn walk proudly through a world that greets them with fearful incomprehension. Shaped by draconic gods or the dragons themselves, dragonborn originally hatched from dragon eggs as a unique race, combining the best attributes of dragons and humanoids. Some dragonborn are faithful servants to true dragons, others form the ranks of soldiers in great wars, and still others fine themselves adrift, with no clear calling in life.'),
('Dwarf', 'Kingdoms rich in ancient grandeur, halls carved into the roots of mountains, the echoing of picks and hammers in deep mines and blazing forges, a commitment to clan and tradition, and a burning hatred of goblins and orcs - these common threads unite all dwarves.'),
('Elf', 'Elves are a magical people of otherworldly grace, living in the world but not entirely part of it. They live in places of ethereal beauty, in the midst of ancient forests or in silvery spires glittering with faerie light, where soft music drifts through the air and gentle fragrances waft on the breeze. Elves love nature and magic, art and artistry, music and poetry, and the good things of the world.'),
('Gnome', 'A constant hum of busy activity pervades the warrens and neighbourhoods where gnomes form their close-knit communities. Louder sounds punctuate the hum: a crunch of grinding gears here, a minor explosion there, a yelp of surprise or triumph, and especially bursts of laughter. Gnomes take delight in life, enjoying every moment of invention, exploration, investigation, creation, and play.'),
('Half-Elf', 'Walking in two worlds but truly belonging to neither, half-elves combine what some say are the best qualities of their elf and human parents: human curiosity, inventiveness, and ambition tempered by the refined senses, love of nature, and artistic tastes of the elves. Some half-elves live among humans, set apart by their emotional and physical differences, watching friends and loved ones age while time barely touches them. Others live with the elves, growing restless as they reach adulthood in the timeless elven realms, while their peers continue to live as children. Many half-elves, unable to fit into either society, choose lives of solitary wandering or join with other misfits and outcasts in the adventuring life.'),
('Half-Orc', 'Whether united under the leadership of a mighty warlock or having fought to a standstill after years of conflict, orc and human tribes sometimes form alliances, joining forces into a larger horde to the terror of civilised lands nearby. When these alliances are sealed by marriages, half-orcs are born. Some half-orcs rise to become proud chiefs of orc tribes, their human blood giving them an edge over their full-blooded orc rivals. Some venture into the world to prove their worth among humans and other more civilised races. Many of these becomes adventurers, achieving greatness for their mighty deeds and notoriety for their barbaric customs and savage fury. '),
('Halfling', 'The comforts of home are the goals of most halflings\' lives: a place to settle in peace and quiet, far from marauding monsters and clashing armies; a blazing fire and a generous meal; fine drink and fine conversation. Though some halflings live out their days in remote agricultural communities, others form nomadic bands that travel constantly, lured by the open road and the wide horizon to discover the wonders of new lands and peoples. But even these wanderers love peace, food, hearth, and home, though home might be a wagon jostling along a dirt road or a raft floating downriver.'),
('Human', 'In the reckonings of most worlds, humans are the youngest of the common races, late to arrive on the world scene and short-lived in comparison to dwarves, elves, and dragons. Perhaps it is because of their shorter lives that they strive to achieve as much as they can in the years they are given. Or maybe they feel they have something to prove to the elder races, and that\'s why they build their mighty empires on the foundation of conquest and trade. Whatever drives them, humans are the innovators, the achievers, and the pioneers of the worlds.'),
('Tiefling', 'To be greeted with stares and whispers, to suffer violence and insult on the street, to see mistrust and fear in every eye: this is the lot of the tiefling. And to twist the knife, tieflings know that this is because a pact struck generations ago infused the essence of Asmodeus - overlord of the Nine Hells - into their bloodline. Their appearance and their nature are not their fault but the result of an ancient sin, for which they and their children and their children\'s children will always be held accountable.');

-- --------------------------------------------------------

--
-- Table structure for table `race_traits`
--

CREATE TABLE `race_traits` (
  `race` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `trait` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `race_traits`
--

INSERT INTO `race_traits` (`race`, `trait`) VALUES
('Dark Elf (Drow)', 'Darkvision'),
('Dark Elf (Drow)', 'Drow Magic'),
('Dark Elf (Drow)', 'Drow Weapon Training'),
('Dark Elf (Drow)', 'Fey Ancestry'),
('Dark Elf (Drow)', 'Keen Senses'),
('Dark Elf (Drow)', 'Sunlight Sensitivity'),
('Dark Elf (Drow)', 'Superior Darkvision'),
('Dark Elf (Drow)', 'Trance'),
('Dragonborn', 'Breath Weapon'),
('Dragonborn', 'Damage Resistance'),
('Dragonborn', 'Draconic Ancestry'),
('Forest Gnome', 'Darkvision'),
('Forest Gnome', 'Gnome Cunning'),
('Forest Gnome', 'Natural Illusionist'),
('Forest Gnome', 'Speak with Small Beasts'),
('Half-Elf', 'Darkvision'),
('Half-Elf', 'Dual Ability Increase'),
('Half-Elf', 'Extra Language'),
('Half-Elf', 'Fey Ancestry'),
('Half-Elf', 'Skill Versatility'),
('Half-Orc', 'Darkvision'),
('Half-Orc', 'Menacing'),
('Half-Orc', 'Relentless Endurance'),
('Half-Orc', 'Savage Attacks'),
('High Elf', 'Darkvision'),
('High Elf', 'Elf Weapon Training'),
('High Elf', 'Extra Language'),
('High Elf', 'Fey Ancestry'),
('High Elf', 'Keen Senses'),
('High Elf', 'Trance'),
('Hill Dwarf', 'Darkvision'),
('Hill Dwarf', 'Dwarven Combat Training'),
('Hill Dwarf', 'Dwarven Resilience'),
('Hill Dwarf', 'Dwarven Toughness'),
('Hill Dwarf', 'Stonecunning'),
('Human', 'Extra Language'),
('Lightfoot Halfling', 'Brave'),
('Lightfoot Halfling', 'Halfling Nimbleness'),
('Lightfoot Halfling', 'Lucky'),
('Lightfoot Halfling', 'Naturally Stealthy'),
('Mountain Dwarf', 'Darkvision'),
('Mountain Dwarf', 'Dwarven Armour Training'),
('Mountain Dwarf', 'Dwarven Combat Training'),
('Mountain Dwarf', 'Dwarven Resilience'),
('Mountain Dwarf', 'Stonecunning'),
('Rock Gnome', 'Artificer\'s Lore'),
('Rock Gnome', 'Darkvision'),
('Rock Gnome', 'Gnome Cunning'),
('Rock Gnome', 'Tinker'),
('Stout Halfling', 'Brave'),
('Stout Halfling', 'Halfling Nimbleness'),
('Stout Halfling', 'Lucky'),
('Stout Halfling', 'Stout Resilience'),
('Tiefling', 'Darkvision'),
('Tiefling', 'Hellish Resistance'),
('Tiefling', 'Infernal Legacy'),
('Wood Elf', 'Darkvision'),
('Wood Elf', 'Elf Weapon Training'),
('Wood Elf', 'Fey Ancestry'),
('Wood Elf', 'Fleet of Foot'),
('Wood Elf', 'Keen Senses'),
('Wood Elf', 'Mask of the Wild'),
('Wood Elf', 'Trance');

-- --------------------------------------------------------

--
-- Table structure for table `script`
--

CREATE TABLE `script` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `script`
--

INSERT INTO `script` (`name`) VALUES
('Celestial'),
('Common'),
('Draconic'),
('Dwarvish'),
('Elvish'),
('Infernal');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `ability` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`name`, `ability`, `description`) VALUES
('Acrobatics', 'Dexterity', 'Your Dexterity (Acrobatics) check covers your attempt to stay on your feet in a tricky situation, such as when you\'re trying to run across a sheet of ice, balance on a tightrope, or stay upright on a rocking ship\'s deck. The GM might also call for a Dexterity (Acrobatics) check to see if you can perform acrobatic stunts, including dives, rolls, somersaults, and flips.'),
('Animal Handling', 'Wisdom', 'When there is any question whether you can calm down a domesticated animal, keep a mount from getting spooked, or intuit an animal\'s intentions, the GM might call for a Wisdom (Animal Handling) check. You also make a Wisdom (Animal Handling) check to control your mount when you attempt a risky manoeuvre.'),
('Arcana', 'Intelligence', 'Your Intelligence (Arcana) check measures your ability to recall lore about spells, magic items, eldritch symbols, magical traditions, the planes of existence, and the inhabitants of those planes.'),
('Athletics', 'Strength', 'Your Strength (Athletics) check covers difficult situations you encounter while climbing, jumping, or swimming.'),
('Deception', 'Charisma', 'Your Charisma (Deception) check determines whether you can convincingly hide the truth, either verbally or through your actions. This deception can encompass everything from misleading others through ambiguity to telling outright lies. Typical situations include trying to fast-talk a guard, con a merchant, earn money through gambling, pass yourself off in a disguise, dull someone\'s suspicions with false assurances, or maintain a straight face while telling a blatant lie.'),
('History', 'Intelligence', 'Your Intelligence (History) check measures your ability to recall lore about historical events, legendary people, ancient kingdoms, past disputes, recent wars, and lost civilisations.'),
('Insight', 'Wisdom', 'Your Wisdom (Insight) check decides whether you can determine the true intentions of a creature, such as when searching out a lie or predicting someone\'s next move. Doing so involves gleaning clues from body language, speech habits, and changes in mannerisms.'),
('Intimidation', 'Charisma', 'When you attempt to influence someone through overt threats, hostile actions, and physical violence, the GM might ask you to make a Charisma (Intimidation) check. Examples include trying to pry information out of a prisoner, convincing street thugs to back down from a confrontation, or using the edge of a broken bottle to convince a sneering vizier to reconsider a decision.'),
('Investigation', 'Intelligence', 'When you look around for clues and make deductions based on those clues, you make an Intelligence (Investigation) check. You might deduce the location of a hidden object, discern from the appearance of a wound what kind of weapon dealt it, or determine the weakest point in a tunnel that could cause it to collapse. Poring through ancient scrolls in search of a hidden fragment of knowledge might also call for an Intelligence (Investigation) check.'),
('Medicine', 'Wisdom', 'A Wisdom (Medicine) check lets you try to stabilise a dying companion or diagnose an illness.'),
('Nature', 'Intelligence', 'Your Intelligence (Nature) check measures your ability to recall lore about terrain, plants and animals, the weather, and natural cycles.'),
('Perception', 'Wisdom', 'Your Wisdom (Perception) check	lets you spot, hear, or otherwise detect the presence of something. It measures your general awareness of your surroundings and the keenness of your senses. For example, you might try to hear a conversation through a closed door, eavesdrop under an open window, or hear monsters moving stealthily in the forest. Or you might try to spot things that are obscured or easy to miss, whether they are orcs lying in ambush on a road, thugs hiding in the shadows of an alley, or candlelight under a closed secret door.'),
('Performance', 'Charisma', 'Your Charisma (Performance) check determines how well you can delight an audience with music, dance, acting, storytelling, or some other form of entertainment.'),
('Persuasion', 'Charisma', 'When you attempt to influence someone or a group of people with tact, social graces, or good nature, the GM might ask you to make a Charisma (Persuasion) check. Typically, you use persuasion when acting in good faith, to foster friendships, make cordial requests, or exhibit proper etiquette. Examples of persuading others include convincing a chamberlain to let your party see the king, negotiating peace between warring tribes, or inspiring a crowd of townsfolk.'),
('Religion', 'Intelligence', 'Your Intelligence (Religion) check measures your ability to recall lore about deities, rites and prayers, religious hierarchies, holy symbols, and the practices of secret cults.'),
('Sleight of Hand', 'Dexterity', 'Whenever you attempt an act of legerdemain or manual trickery, such as planting something on someone else or concealing an object on your person, make a Dexterity (Sleight of Hand) check. The GM might also call for a Dexterity (Sleight of Hand) check to determine whether you can lift a coin purse off another person or slip something out of another person\'s pocket.'),
('Stealth', 'Dexterity', 'Make a Dexterity (Stealth) check when you attempt to conceal yourself from enemies, slink past guards, slip away without being noticed, or sneak up on someone without being seen or heard.'),
('Survival', 'Wisdom', 'The GM might ask you to make a Wisdom (Survival) check to follow tracks, hunt wild game, guide your group through frozen wastelands, identify signs that owlbears live nearby, predict the weather, or avoid quicksand and other natural hazards.');

-- --------------------------------------------------------

--
-- Table structure for table `specialty`
--

CREATE TABLE `specialty` (
  `id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `specialty`
--

INSERT INTO `specialty` (`id`, `description`) VALUES
(1, 'I cheat at games of chance.'),
(2, 'I shave coins or forge documents.'),
(3, 'I insinuate myself into people\'s lives to prey on their weakness and secure their fortunes.'),
(4, 'I put on new identities like clothes.'),
(5, 'I run sleight-of-hand cons on street corners.'),
(6, 'I convince people that worthless junk is worth their hard-earned money.'),
(7, 'Blackmailer'),
(8, 'Burglar'),
(9, 'Enforcer'),
(10, 'Fence'),
(11, 'Highway Robber'),
(12, 'Hired Killer'),
(13, 'Pickpocket'),
(14, 'Smuggler'),
(15, 'Actor'),
(16, 'Dancer'),
(17, 'Fire-Eater'),
(18, 'Jester'),
(19, 'Juggler'),
(20, 'Instrumentalist'),
(21, 'Poet'),
(22, 'Singer'),
(23, 'Storyteller'),
(24, 'Tumbler'),
(25, 'I stood up to a tyrant\'s agents.'),
(26, 'I saved people during a natural disaster.'),
(27, 'I stood alone against a terrible monster.'),
(28, 'I stole from a corrupt merchant to help the poor.'),
(29, 'I led a militia to fight off an invading army.'),
(30, 'I broke into a tyrant\'s castle and stole weapons to arm the people.'),
(31, 'I trained the peasantry to use farm implements as weapons against a tyrant\'s soldiers.'),
(32, 'A lord rescinded an unpopular decree after I led a symbolic act of protest against it.'),
(33, 'A celestial, fey, or similar creature gave me a blessing or revealed my secret origin.'),
(34, 'Recruited into a lord\'s army, I rose to leadership and was commended for my heroism.'),
(35, 'Alchemists and Apothecaries'),
(36, 'Armourers, Locksmiths, and Finesmiths'),
(37, 'Brewers, Distillers, and Vintners'),
(38, 'Calligraphers, Scribes, and Scriveners'),
(39, 'Carpenters, Roofers, and Plasteres'),
(40, 'Cartographers, Surveyors, and Chart-Makers'),
(41, 'Cobblers and Shomemakers'),
(42, 'Cooks and Bakers'),
(43, 'Glassblowers and Glaziers'),
(44, 'Jewellers and Gemcutters'),
(45, 'Leatherworkers, Skinners, and Tanners'),
(46, 'Masons and Stonecutters'),
(47, 'Painters, Limners, and Sign-Makers'),
(48, 'Potters and Tile-Makers'),
(49, 'Shipwrights and Sailmakers'),
(50, 'Smiths and Metal-Forgers'),
(51, 'Tinkers, Pewterers, and Casters'),
(52, 'Wagon-Makers and Wheelwrights'),
(53, 'Weavers and Dyers'),
(54, 'Woodcarvers, Coopers, and Bowyers'),
(55, 'I was searching for spiritual enlightenment.'),
(56, 'I was partaking of communal living in accordance with the dictates of a religious order.'),
(57, 'I was exiled for a crime I didn\'t commit.'),
(58, 'I retreated from a society after a life-altering event.'),
(59, 'I needed a quiet place to work on my art, literature, music or manfesto.'),
(60, 'I needed to commune with nature, far from civilisation.'),
(61, 'I was the caretaker of an ancient ruin or relic.'),
(62, 'I was a pilgrim in search of a person, place or relic of spiritual significance.'),
(63, 'Forester'),
(64, 'Trapper'),
(65, 'Homesteader'),
(66, 'Guide'),
(67, 'Exile/Outcast'),
(68, 'Bounty Hunter'),
(69, 'Pilgrim'),
(70, 'Tribal Nomad'),
(71, 'Hunter-Gatherer'),
(72, 'Tribal Marauder'),
(73, 'Alchemist'),
(74, 'Astronomer'),
(75, 'Discredited Academic'),
(76, 'Librarian'),
(77, 'Professor'),
(78, 'Researcher'),
(79, 'Wizard\'s Apprentice'),
(80, 'Scribe'),
(81, 'Officer'),
(82, 'Scout'),
(83, 'Infantry'),
(84, 'Cavalry'),
(85, 'Healer'),
(86, 'Quartermaster'),
(87, 'Standard Bearer'),
(88, 'Support Staff (Cook, blacksmith, or the like.)');

-- --------------------------------------------------------

--
-- Table structure for table `subclass`
--

CREATE TABLE `subclass` (
  `class` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `subclass`
--

INSERT INTO `subclass` (`class`, `name`) VALUES
('Barbarian', 'Path of the Berserker'),
('Barbarian', 'Path of the Totem Warrior'),
('Bard', 'College of Lore'),
('Bard', 'College of Valour'),
('Cleric', 'Knowledge Domain'),
('Cleric', 'Life Domain'),
('Cleric', 'Light Domain'),
('Cleric', 'Nature Domain'),
('Cleric', 'Tempest Domain'),
('Cleric', 'Trickery Domain'),
('Cleric', 'War Domain'),
('Druid', 'Circle of the Land'),
('Druid', 'Circle of the Moon'),
('Fighter', 'Battle Master'),
('Fighter', 'Champion'),
('Fighter', 'Eldritch Knight'),
('Monk', 'Way of Shadow'),
('Monk', 'Way of the Four Elements'),
('Monk', 'Way of the Open Hand'),
('Paladin', 'Oath of Devotion'),
('Paladin', 'Oath of the Ancients'),
('Paladin', 'Oath of Vengeance'),
('Ranger', 'Beast Master'),
('Ranger', 'Hunter'),
('Rogue', 'Arcane Trickster'),
('Rogue', 'Assassin'),
('Rogue', 'Thief'),
('Sorcerer', 'Draconic Bloodline'),
('Sorcerer', 'Wild Magic'),
('Warlock', 'The Archfey'),
('Warlock', 'The Fiend'),
('Warlock', 'The Great Old One'),
('Wizard', 'School of Abjuration'),
('Wizard', 'School of Conjuration'),
('Wizard', 'School of Divination'),
('Wizard', 'School of Enchantment'),
('Wizard', 'School of Evocation'),
('Wizard', 'School of Illusion'),
('Wizard', 'School of Necromancy'),
('Wizard', 'School of Transmutation');

-- --------------------------------------------------------

--
-- Table structure for table `subclass_features`
--

CREATE TABLE `subclass_features` (
  `subclass` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `feature` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `level_requirement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `subclass_features`
--

INSERT INTO `subclass_features` (`subclass`, `feature`, `level_requirement`) VALUES
('Arcane Trickster', 'Mage Hand Legerdemain', 3),
('Arcane Trickster', 'Magical Ambush', 9),
('Arcane Trickster', 'Spell Thief', 17),
('Arcane Trickster', 'Versatile Trickster', 13),
('Assassin', 'Assassin\'s Bonus Proficiencies', 3),
('Assassin', 'Assassinate', 3),
('Assassin', 'Death Strike', 17),
('Assassin', 'Imposter', 13),
('Assassin', 'Infiltration Expertise', 9),
('Battle Master', 'Combat Superiority', 3),
('Battle Master', 'Improved Combat Superiority', 10),
('Battle Master', 'Know Your Enemy', 7),
('Battle Master', 'Relentless', 15),
('Battle Master', 'Student of War', 3),
('Beast Master', 'Bestial Fury', 11),
('Beast Master', 'Exceptional Training', 7),
('Beast Master', 'Ranger\'s Companion', 3),
('Beast Master', 'Share Spells', 15),
('Champion', 'Additional Fighting Style', 10),
('Champion', 'Improved Critical', 3),
('Champion', 'Remarkable Athlete', 7),
('Champion', 'Superior Critical', 15),
('Champion', 'Survivor', 18),
('Circle of the Land', 'Circle of the Land Bonus Cantrip', 2),
('Circle of the Land', 'Circle Spells', 3),
('Circle of the Land', 'Land\'s Stride', 6),
('Circle of the Land', 'Natural Recovery', 2),
('Circle of the Land', 'Nature\'s Sanctuary', 14),
('Circle of the Land', 'Nature\'s Ward', 10),
('Circle of the Moon', 'Circle Forms', 2),
('Circle of the Moon', 'Combat Wild Shape', 2),
('Circle of the Moon', 'Elemental Wild Shape', 10),
('Circle of the Moon', 'Primal Strike', 6),
('Circle of the Moon', 'Thousand Forms', 14),
('College of Lore', 'Additional Magical Secrets', 6),
('College of Lore', 'College of Lore Bonus Proficiencies', 3),
('College of Lore', 'Cutting Words', 3),
('College of Lore', 'Peerless Skill', 14),
('College of Valour', 'Battle Magic', 14),
('College of Valour', 'College of Valour Bonus Proficiencies', 3),
('College of Valour', 'Combat Inspiration', 3),
('College of Valour', 'Extra Attack', 6),
('Draconic Bloodline', 'Draconic Presence', 18),
('Draconic Bloodline', 'Draconic Resilience', 1),
('Draconic Bloodline', 'Dragon Ancestor', 1),
('Draconic Bloodline', 'Dragon Wings', 14),
('Draconic Bloodline', 'Elemental Affinity', 6),
('Eldritch Knight', 'Arcane Charge', 15),
('Eldritch Knight', 'Eldritch Strike', 10),
('Eldritch Knight', 'Improved War Magic', 18),
('Eldritch Knight', 'War Magic', 7),
('Eldritch Knight', 'Weapon Bond', 3),
('Hunter', 'Defensive Tactics', 7),
('Hunter', 'Hunter\'s Prey', 3),
('Hunter', 'Multiattack', 11),
('Hunter', 'Superior Hunter\'s Defence', 15),
('Knowledge Domain', 'Blessings of Knowledge', 1),
('Knowledge Domain', 'Channel Divinity: Knowledge of the Ages', 2),
('Knowledge Domain', 'Channel Divinity: Read Thoughts', 6),
('Knowledge Domain', 'Potent Spellcasting', 8),
('Knowledge Domain', 'Visions of the Past', 17),
('Life Domain', 'Blessed Healer', 6),
('Life Domain', 'Channel Divinity: Preserve Life', 2),
('Life Domain', 'Disciple of Life', 1),
('Life Domain', 'Divine Strike', 8),
('Life Domain', 'Life Domain Bonus Proficiency', 1),
('Life Domain', 'Supreme Healing', 17),
('Light Domain', 'Channel Divinity: Radiance of the Dawn', 2),
('Light Domain', 'Corona of Light', 17),
('Light Domain', 'Improved Flare', 6),
('Light Domain', 'Light Domain Bonus Cantrip', 1),
('Light Domain', 'Potent Spellcasting', 8),
('Light Domain', 'Warding Flare', 1),
('Nature Domain', 'Acolyte of Nature', 1),
('Nature Domain', 'Channel Divinity: Charm Animals and Plants', 2),
('Nature Domain', 'Dampen Elements', 6),
('Nature Domain', 'Divine Strike', 8),
('Nature Domain', 'Master of Nature', 17),
('Nature Domain', 'Nature Domain Bonus Proficiency', 1),
('Oath of Devotion', 'Aura of Devotion', 7),
('Oath of Devotion', 'Channel Divinity: Sacred Weapon', 3),
('Oath of Devotion', 'Channel Divinity: Turn the Unholy', 3),
('Oath of Devotion', 'Holy Nimbus', 20),
('Oath of Devotion', 'Purity of Spirit', 15),
('Oath of the Ancients', 'Aura of Warding', 7),
('Oath of the Ancients', 'Channel Divinity: Nature\'s Wrath', 3),
('Oath of the Ancients', 'Channel Divinity: Turn the Faithless', 3),
('Oath of the Ancients', 'Elder Champion', 20),
('Oath of the Ancients', 'Undying Sentinel', 15),
('Oath of Vengeance', 'Avenging Angel', 20),
('Oath of Vengeance', 'Channel Divinity: Abjure Enemy', 3),
('Oath of Vengeance', 'Channel Divinity: Vow of Enmity', 3),
('Oath of Vengeance', 'Relentless Avenger', 7),
('Path of the Berserker', 'Frenzy', 3),
('Path of the Berserker', 'Intimidating Presence', 10),
('Path of the Berserker', 'Mindless Rage', 6),
('Path of the Berserker', 'Retaliation', 14),
('Path of the Totem Warrior', 'Aspect of the Beast', 6),
('Path of the Totem Warrior', 'Spirit Seeker', 3),
('Path of the Totem Warrior', 'Spirit Walker', 10),
('Path of the Totem Warrior', 'Totem Spirit', 3),
('Path of the Totem Warrior', 'Totemic Attunement', 14),
('School of Abjuration', 'Abjuration Savant', 2),
('School of Abjuration', 'Arcane Ward', 2),
('School of Abjuration', 'Improved Abjuration', 10),
('School of Abjuration', 'Projected Ward', 6),
('School of Abjuration', 'Spell Resistance', 14),
('School of Conjuration', 'Benign Transposition', 6),
('School of Conjuration', 'Conjuration Savant', 2),
('School of Conjuration', 'Durable Summons', 14),
('School of Conjuration', 'Focused Conjuration', 10),
('School of Conjuration', 'Minor Conjuration', 2),
('School of Divination', 'Divination Savant', 2),
('School of Divination', 'Expert Divination', 6),
('School of Divination', 'Greater Portent', 14),
('School of Divination', 'Portent', 2),
('School of Divination', 'The Third Eye', 10),
('School of Enchantment', 'Alter Memories', 14),
('School of Enchantment', 'Enchantment Savant', 2),
('School of Enchantment', 'Hypnotic Gaze', 2),
('School of Enchantment', 'Instinctive Charm', 6),
('School of Enchantment', 'Split Enchantment', 10),
('School of Evocation', 'Empowered Evocation', 10),
('School of Evocation', 'Evocation Savant', 2),
('School of Evocation', 'Overchannel', 14),
('School of Evocation', 'Sculpt Spells', 2),
('School of Illusion', 'Illusion Savant', 2),
('School of Illusion', 'Illusory Reality', 14),
('School of Illusion', 'Illusory Self', 10),
('School of Illusion', 'Improved Minor Illusion', 2),
('School of Illusion', 'Malleable Illusions', 6),
('School of Illusion', 'Potent Cantrip', 6),
('School of Necromancy', 'Command Undead', 14),
('School of Necromancy', 'Grim Harvest', 2),
('School of Necromancy', 'Inured to Undeath', 10),
('School of Necromancy', 'Necromancy Savant', 2),
('School of Necromancy', 'Undead Thralls', 6),
('School of Transmutation', 'Master Transmuter', 14),
('School of Transmutation', 'Minor Alchemy', 2),
('School of Transmutation', 'Shapechanger', 10),
('School of Transmutation', 'Transmutation Savant', 2),
('School of Transmutation', 'Transmuter\'s Stone', 6),
('Tempest Domain', 'Channel Divinity: Destructive Wrath', 2),
('Tempest Domain', 'Divine Strike', 8),
('Tempest Domain', 'Stormborn', 17),
('Tempest Domain', 'Tempest Domain Bonus Proficiencies', 1),
('Tempest Domain', 'Thunderbolt Strike', 6),
('Tempest Domain', 'Wrath of the Storm', 1),
('The Archfey', 'Archfey\'s Expanded Spell List', 1),
('The Archfey', 'Beguiling Defences', 10),
('The Archfey', 'Dark Delirium', 14),
('The Archfey', 'Fey Presence', 1),
('The Archfey', 'Misty Escape', 6),
('The Fiend', 'Dark One\'s Blessing', 1),
('The Fiend', 'Dark One\'s Own Luck', 6),
('The Fiend', 'Fiend\'s Expanded Spell List', 1),
('The Fiend', 'Fiendish Resilience', 10),
('The Fiend', 'Hurl Through Hell', 14),
('The Great Old One', 'Awakened Mind', 1),
('The Great Old One', 'Create Thrall', 14),
('The Great Old One', 'Entropic Ward', 6),
('The Great Old One', 'Great Old One\'s Expanded Spell List', 1),
('The Great Old One', 'Thought Shield', 10),
('Thief', 'Fast Hands', 3),
('Thief', 'Second-Story Work', 3),
('Thief', 'Supreme Sneak', 9),
('Thief', 'Thief\'s Reflexes', 17),
('Thief', 'Use Magic Device', 13),
('Trickery Domain', 'Blessing of the Trickster', 1),
('Trickery Domain', 'Channel Divinity: Cloak of Shadows', 6),
('Trickery Domain', 'Channel Divinity: Invoke Duplicity', 2),
('Trickery Domain', 'Divine Strike', 8),
('Trickery Domain', 'Improved Duplicity', 17),
('War Domain', 'Avatar of Battle', 17),
('War Domain', 'Channel Divinity: Guided Strike', 2),
('War Domain', 'Channel Divinity: War God\'s Blessing', 6),
('War Domain', 'Divine Strike', 8),
('War Domain', 'War Domain Bonus Proficiencies', 1),
('War Domain', 'War Priest', 1),
('Way of Shadow', 'Cloak of Shadows', 11),
('Way of Shadow', 'Opportunist', 17),
('Way of Shadow', 'Shadow Arts', 3),
('Way of Shadow', 'Shadow Step', 6),
('Way of the Four Elements', 'Disciple of the Elements', 3),
('Way of the Open Hand', 'Open Hand Technique', 3),
('Way of the Open Hand', 'Quivering Palm', 17),
('Way of the Open Hand', 'Tranquility', 11),
('Way of the Open Hand', 'Wholeness of Body', 6),
('Wild Magic', 'Bend Luck', 6),
('Wild Magic', 'Controlled Chaos', 14),
('Wild Magic', 'Spell Bombardment', 18),
('Wild Magic', 'Tides of Chaos', 1),
('Wild Magic', 'Wild Magic Surge', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tool`
--

CREATE TABLE `tool` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `tool_type` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `tool`
--

INSERT INTO `tool` (`name`, `tool_type`) VALUES
('Alchemist\'s Supplies', 'Artisan\'s Tools'),
('Brewer\'s Supplies', 'Artisan\'s Tools'),
('Calligrapher\'s Supplies', 'Artisan\'s Tools'),
('Carpenter\'s Tools', 'Artisan\'s Tools'),
('Cartographer\'s Tools', 'Artisan\'s Tools'),
('Cobbler\'s Tools', 'Artisan\'s Tools'),
('Cook\'s Utensils', 'Artisan\'s Tools'),
('Glassblower\'s Tools', 'Artisan\'s Tools'),
('Jeweller\'s Tools', 'Artisan\'s Tools'),
('Leatherworker\'s Tools', 'Artisan\'s Tools'),
('Mason\'s Tools', 'Artisan\'s Tools'),
('Painter\'s Supplies', 'Artisan\'s Tools'),
('Potter\'s Tools', 'Artisan\'s Tools'),
('Smith\'s Tools', 'Artisan\'s Tools'),
('Tinker\'s Tools', 'Artisan\'s Tools'),
('Weaver\'s Tools', 'Artisan\'s Tools'),
('Woodcarver\'s Tools', 'Artisan\'s Tools'),
('Dice Set', 'Gaming Set'),
('Playing Card Set', 'Gaming Set'),
('Disguise Kit', 'Kit'),
('Forgery Kit', 'Kit'),
('Herbalism Kit', 'Kit'),
('Navigator\'s Tools', 'Kit'),
('Poisoner\'s Kit', 'Kit'),
('Thief\'s Tools', 'Kit'),
('Bagpipes', 'Musical Instrument'),
('Drum', 'Musical Instrument'),
('Dulcimer', 'Musical Instrument'),
('Flute', 'Musical Instrument'),
('Horn', 'Musical Instrument'),
('Lute', 'Musical Instrument'),
('Lyre', 'Musical Instrument'),
('Pan Flute', 'Musical Instrument'),
('Shawm', 'Musical Instrument'),
('Viol', 'Musical Instrument'),
('Carriage', 'Vehicle (Land)'),
('Cart', 'Vehicle (Land)'),
('Chariot', 'Vehicle (Land)'),
('Saddle (Exotic)', 'Vehicle (Land)'),
('Saddle (Military)', 'Vehicle (Land)'),
('Saddle (Pack)', 'Vehicle (Land)'),
('Saddle (Riding)', 'Vehicle (Land)'),
('Sled', 'Vehicle (Land)'),
('Wagon', 'Vehicle (Land)'),
('Galley', 'Vehicle (Water)'),
('Keelboat', 'Vehicle (Water)'),
('Longship', 'Vehicle (Water)'),
('Rowboat', 'Vehicle (Water)'),
('Sailing Ship', 'Vehicle (Water)'),
('Warship', 'Vehicle (Water)');

-- --------------------------------------------------------

--
-- Table structure for table `tool_type`
--

CREATE TABLE `tool_type` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `tool_type`
--

INSERT INTO `tool_type` (`name`, `description`) VALUES
('Artisan\'s Tools', 'These special tools include the items needed to pursue a craft or trade. Proficiency with a set of artisan’s tools lets you add your proficiency bonus to any ability checks you make using the tools in your craft. Each type of artisan’s tools requires a separate proficiency.'),
('Gaming Set', 'This item encompasses a wide range of game pieces, including dice and decks of cards (for games such as Three-Dragon Ante). If you are proficient with a gaming set, you can add your proficiency bonus to ability checks you make to play a game with that set. Each type of gaming set requires a separate proficiency.'),
('Kit', NULL),
('Musical Instrument', 'If you have proficiency with a given musical instrument, you can add your proficiency bonus to any ability checks you make to play music with the instrument. A bard can use a musical instrument as a spellcasting focus. Each type of musical instrument requires a separate proficiency.'),
('Vehicle (Land)', NULL),
('Vehicle (Water)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trait`
--

CREATE TABLE `trait` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `trait`
--

INSERT INTO `trait` (`name`, `description`) VALUES
('Artificer\'s Lore', 'Whenever you make an Intelligence (History) check related to magic items, alchemical objects, or technological devices, you can add twice your proficiency bonus, instead of any proficiency bonus you normally apply.'),
('Brave', 'You have advantage on saving throws against being frightened.'),
('Breath Weapon', 'You can use your action to exhale destructive energy. Your draconic ancestry determines the size, shape, and damage type of the exhalation.\r\n\r\nWhen you use your breath weapon, each creature in the area of the exhalation must make a saving throw, the type of which is determined by your Draconic Ancestry. The DC for this saving throw equals 8 + your Constitution modifier _ your proficiency bonus. A creates takes 2d6 damage on a failed save, and half as much damage on a successful one. The damage increases to 3d6 at 6th level, 4d6 at 11th level, and 5d6 at 16th level.\r\n\r\nAfter you use your breath weapon, you can\'t use it again until you complete a short or long rest.'),
('Damage Resistance', 'You have resistance to the damage type associated with your Draconic Ancestry.'),
('Darkvision', 'Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can\'t discern colour in darkness, only shades of grey.'),
('Draconic Ancestry', 'You have draconic ancestry. Choose one type of dragon - your breath weapon and damage resistance are determined by the dragon type.'),
('Drow Magic', 'You know the Dancing Lights cantrip. When you reach 3rd level, you can cast the Faerie Fire spell once per day. When you reach 5th level, you can also cast the Darkness spell once per day. Charisma is your spellcasting ability for these spells.'),
('Drow Weapon Training', 'You have proficiency with rapiers, shortswords, and hand crossbows.'),
('Dual Ability Increase', 'Two different ability scores of your choice increase by 1.'),
('Dwarven Armour Training', 'You have proficiency with light and medium armour.'),
('Dwarven Combat Training', 'You have proficiency with the battleaxe, handaxe, throwing hammer, and warhammer.'),
('Dwarven Resilience', 'You have advantage on saving throws against poison, and you have resistance against poison damage.'),
('Dwarven Toughness', 'Your hit point maximum increases by 1, and it increases by 1 every time you gain a level.'),
('Elf Weapon Training', 'You have proficiency with the longsword, shortsword, shortbow and longbow.'),
('Extra Language', 'You can speak, read, and write one extra language of your choice.'),
('Fey Ancestry', 'You have advantage on saving throws against being charmed, and magic can\'t put you to sleep.'),
('Fleet of Foot', 'Your base walking speed increases to 35 feet.'),
('Gnome Cunning', 'You have advantage on all Intelligence, Wisdom, and Charisma saving throws against magic.'),
('Halfling Nimbleness', 'You can move through the space of any creature that is of a size larger than yours.'),
('Hellish Resistance', 'You have resistance to fire damage.'),
('Infernal Legacy', 'You know the Thaumaturgy cantrip. Once you reach 3rd level, you can cast the Hellish Rebuke spell once per day as a 2nd-level spell. Once you reach 5th level, you can also cast the Darkness spell once per day. Charisma is your spellcasting ability for these spells.'),
('Keen Senses', 'You have proficiency in the Perception skill.'),
('Lucky', 'When you roll a 1 on an attack roll, ability check, or saving throw, you can reroll the die and must use the new roll.'),
('Mask of the Wild', 'You can attempt to hid even when you are only lightly obscured by foliage, heavy rain, falling snow, mist, and other natural phenomena.'),
('Menacing', 'You gain proficiency in the Intimidation skill.'),
('Natural Illusionist', 'You know the Minor Illusion cantrip. Intelligence is your spellcasting ability for it.'),
('Naturally Stealthy', 'You can attempt to hide even when you are obscured only by a creature that is at least one size larger than you.'),
('Relentless Endurance', 'When you are reduced to 0 hit points but not killed outright, you can drop to 1 hit point instead. You can\'t use this feature again until you finish a long rest.'),
('Savage Attacks', 'When you score a critical hit with a melee weapon attack, you can roll one of the weapon\'s damage dice one additional time and add it to the extra damage of the critical hit.'),
('Skill Versatility', 'You gain proficiency in two skills of your choice.'),
('Speak with Small Beasts', 'Through sounds and gestures, you can communicate simple ideas with Small or smaller beasts. Forest gnomes love animals and often keep squirrels, badgers, rabbits, moles, woodpeckers, and other creatures as beloved pets.'),
('Stonecunning', 'Whenever you make an Intelligence (History) check related to the origin of stonework, you are considered proficient in the History skill and add double your proficiency bonus to the check, instead of your normal proficiency bonus.'),
('Stout Resilience', 'You have advantage on saving throws against poison, and you have resistance against poison damage.'),
('Sunlight Sensitivity', 'You have disadvantage on atack rolls and on Wisdom (Perception) checks that rely on sight when you, the target of your attack, or whatever you are trying to perceive is in direct sunlight.'),
('Superior Darkvision', 'Your darkvision has a radius of 120 feet.'),
('Tinker', 'You have proficiency with Tinker\'s Tools. Using those tools, you can spend 1 hour and 10gp worth of materials to construct a Tiny Clockwork Device (AC5, 1hp). The device ceases to function after 24 hours (unless you spend 1 hour repairing it to keep the device functioning), or when you use your action to dismantle it; at that time, you can reclaim the materials used to create it. You can have up to three such devices active at a time.\r\n\r\nClockwork Devices:\r\n\r\nClockwork Toy: This toy is a clockwork animal, monster, or person. When placed on the ground, the toy moves 5 feet across the ground on each of your turns in a random direction. It makes noises as appropriate to the creature it represents.\r\n\r\nFire Starter: The device produces a miniature flame, which you can use to light a candle, torch, or campfire. Using the device requires your action.\r\n\r\nMusic Box: When opened, this music box plays a single song at a moderate volume. This box stops playing when it reaches the song\'s end or when it is closed.'),
('Trance', 'Elves don\'t need to sleep. Instead, they meditate deeply, remaining semiconscious, for 4 hours a day. While meditating, you can dream after a fashion; such dreams are actually mental exercises that have become reflexive through years of practice. After resting in this way, you gain the same benefit that a human does from 8 hours of sleep.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `creation_date`) VALUES
(1, 'eventide@jerobertson.co.uk', '$2y$10$jN3z0a0KwW7jpk/niP35.u9sfpbo3oIA8wYLXB3RsrO9kald.C0IS', '2018-01-26 22:02:17'),
(2, 'test@jerobertson.co.uk', '$2y$10$JhKCBbyYxKAhILTheYhXc.kzJiGySz8t4eS7xoE41XQ38oscJsFeO', '2018-06-10 23:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `water_vehicle`
--

CREATE TABLE `water_vehicle` (
  `tool` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `speed` decimal(11,3) NOT NULL,
  `is_rowed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `water_vehicle`
--

INSERT INTO `water_vehicle` (`tool`, `speed`, `is_rowed`) VALUES
('Galley', '4.000', 0),
('Keelboat', '1.000', 1),
('Longship', '3.000', 0),
('Rowboat', '1.500', 1),
('Sailing Ship', '2.000', 0),
('Warship', '2.500', 0);

-- --------------------------------------------------------

--
-- Table structure for table `weapon`
--

CREATE TABLE `weapon` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `weapon_type` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `damage_dice` int(11) DEFAULT NULL,
  `damage_const` int(11) DEFAULT NULL,
  `damage_type` varchar(63) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `range_norm` int(11) DEFAULT NULL,
  `range_max` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `weapon`
--

INSERT INTO `weapon` (`name`, `weapon_type`, `damage_dice`, `damage_const`, `damage_type`, `range_norm`, `range_max`) VALUES
('Battleaxe', 'Martial Melee', 3, NULL, 'Slashing', NULL, NULL),
('Blowgun', 'Martial Ranged', NULL, 1, 'Piercing', 25, 100),
('Club', 'Simple Melee', 1, NULL, 'Bludgeoning', NULL, NULL),
('Crossbow (Hand)', 'Martial Ranged', 2, NULL, 'Piercing', 30, 120),
('Crossbow (Heavy)', 'Martial Ranged', 4, NULL, 'Piercing', 100, 400),
('Crossbow (Light)', 'Simple Ranged', 3, NULL, 'Piercing', 80, 320),
('Dagger', 'Simple Melee', 1, NULL, 'Piercing', 20, 60),
('Dart', 'Simple Ranged', 1, NULL, 'Piercing', 20, 60),
('Flail', 'Martial Melee', 3, NULL, 'Bludgeoning', NULL, NULL),
('Glaive', 'Martial Melee', 4, NULL, 'Slashing', NULL, NULL),
('Greataxe', 'Martial Melee', 5, NULL, 'Slashing', NULL, NULL),
('Greatclub', 'Simple Melee', 3, NULL, 'Bludgeoning', NULL, NULL),
('Greatsword', 'Martial Melee', 8, NULL, 'Slashing', NULL, NULL),
('Halberd', 'Martial Melee', 4, NULL, 'Slashing', NULL, NULL),
('Handaxe', 'Simple Melee', 2, NULL, 'Slashing', 20, 60),
('Javelin', 'Simple Melee', 2, NULL, 'Piercing', 30, 120),
('Lance', 'Martial Melee', 5, NULL, 'Piercing', NULL, NULL),
('Light Hammer', 'Simple Melee', 1, NULL, 'Bludgeoning', 20, 60),
('Longbow', 'Martial Ranged', 3, NULL, 'Piercing', 150, 600),
('Longsword', 'Martial Melee', 3, NULL, 'Slashing', NULL, NULL),
('Mace', 'Simple Melee', 2, NULL, 'Bludgeoning', NULL, NULL),
('Maul', 'Martial Melee', 8, NULL, 'Bludgeoning', NULL, NULL),
('Morningstar', 'Martial Melee', 3, NULL, 'Piercing', NULL, NULL),
('Net', 'Martial Ranged', NULL, NULL, NULL, 5, 15),
('Pike', 'Martial Melee', 4, NULL, 'Piercing', NULL, NULL),
('Quarterstaff', 'Simple Melee', 2, NULL, 'Bludgeoning', NULL, NULL),
('Rapier', 'Martial Melee', 3, NULL, 'Piercing', NULL, NULL),
('Scimitar', 'Martial Melee', 2, NULL, 'Slashing', NULL, NULL),
('Shortbow', 'Simple Ranged', 2, NULL, 'Piercing', 80, 320),
('Shortsword', 'Martial Melee', 2, NULL, 'Piercing', NULL, NULL),
('Sickle', 'Simple Melee', 1, NULL, 'Slashing', NULL, NULL),
('Sling', 'Simple Ranged', 1, NULL, 'Bludgeoning', 30, 120),
('Spear', 'Simple Melee', 2, NULL, 'Piercing', 20, 60),
('Trident', 'Martial Melee', 2, NULL, 'Piercing', 20, 60),
('War Pick', 'Martial Melee', 3, NULL, 'Piercing', NULL, NULL),
('Warhammer', 'Martial Melee', 3, NULL, 'Bludgeoning', NULL, NULL),
('Whip', 'Martial Melee', 1, NULL, 'Slashing', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `weapon_properties`
--

CREATE TABLE `weapon_properties` (
  `weapon` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `weapon_property` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `weapon_properties`
--

INSERT INTO `weapon_properties` (`weapon`, `weapon_property`) VALUES
('Battleaxe', 'Versatile (1d10)'),
('Blowgun', 'Ammunition'),
('Blowgun', 'Loading'),
('Club', 'Light'),
('Crossbow (Hand)', 'Ammunition'),
('Crossbow (Hand)', 'Light'),
('Crossbow (Hand)', 'Loading'),
('Crossbow (Heavy)', 'Ammunition'),
('Crossbow (Heavy)', 'Heavy'),
('Crossbow (Heavy)', 'Loading'),
('Crossbow (Heavy)', 'Two-Handed'),
('Crossbow (Light)', 'Ammunition'),
('Crossbow (Light)', 'Loading'),
('Crossbow (Light)', 'Two-Handed'),
('Dagger', 'Finesse'),
('Dagger', 'Light'),
('Dagger', 'Thrown'),
('Dart', 'Finesse'),
('Dart', 'Thrown'),
('Glaive', 'Heavy'),
('Glaive', 'Reach'),
('Glaive', 'Two-Handed'),
('Greataxe', 'Heavy'),
('Greataxe', 'Two-Handed'),
('Greatclub', 'Two-Handed'),
('Halberd', 'Heavy'),
('Halberd', 'Reach'),
('Halberd', 'Two-Handed'),
('Handaxe', 'Light'),
('Handaxe', 'Thrown'),
('Javelin', 'Thrown'),
('Lance', 'Reach'),
('Lance', 'Special (Lance)'),
('Light Hammer', 'Light'),
('Light Hammer', 'Thrown'),
('Longbow', 'Ammunition'),
('Longbow', 'Heavy'),
('Longbow', 'Two-Handed'),
('Longsword', 'Versatile (1d10)'),
('Maul', 'Heavy'),
('Maul', 'Two-Handed'),
('Net', 'Special (Net)'),
('Net', 'Thrown'),
('Pike', 'Heavy'),
('Pike', 'Reach'),
('Pike', 'Two-Handed'),
('Quarterstaff', 'Versatile (1d8)'),
('Rapier', 'Finesse'),
('Scimitar', 'Finesse'),
('Scimitar', 'Light'),
('Shortbow', 'Ammunition'),
('Shortbow', 'Two-Handed'),
('Shortsword', 'Finesse'),
('Shortsword', 'Light'),
('Sickle', 'Light'),
('Sling', 'Ammunition'),
('Spear', 'Thrown'),
('Spear', 'Versatile (1d8)'),
('Trident', 'Thrown'),
('Trident', 'Versatile (1d8)'),
('Warhammer', 'Versatile (1d10)'),
('Whip', 'Finesse'),
('Whip', 'Reach');

-- --------------------------------------------------------

--
-- Table structure for table `weapon_property`
--

CREATE TABLE `weapon_property` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `weapon_property`
--

INSERT INTO `weapon_property` (`name`, `description`) VALUES
('Ammunition', 'You can use a weapon that has the ammunition property to make a ranged attack only if you have ammunition to fire from the weapon. Each time you attack with the weapon, you expend one piece of ammunition. Drawing the ammunition from a quiver, case, or other container is part of the attack (you need a free hand to load a one-handed weapon). At the end of the battle, you can recover half your expended ammunition by taking a minute to search the battlefield.\r\n\r\nIf you use a weapon that has the ammunition property to make a melee attack, you treat the weapon as an improvised weapon. A sling must be loaded to deal any damage when used in this way.'),
('Finesse', 'When making an attack with a finesse weapon, you use your choice of your Strength or Dexterity modifier for the attack and damage rolls. You must use the same modifier for both rolls.'),
('Heavy', 'Small creatures have disadvantage on attack rolls with heavy weapons. A heavy weapon’s size and bulk make it too large for a Small creature to use effectively.'),
('Light', 'A light weapon is small and easy to handle, making it ideal for use when fighting with two weapons.'),
('Loading', 'Because of the time required to load this weapon, you can fire only one piece of ammunition from it when you use an action, bonus action, or reaction to fire it, regardless of the number of attacks you can normally make.'),
('Range', 'A weapon that can be used to make a ranged attack has a range in parentheses after the ammunition or thrown property. The range lists two numbers. The first is the weapon’s normal range in feet, and the second indicates the weapon’s long range. When attacking a target beyond normal range, you have disadvantage on the attack roll. You can’t attack a target beyond the weapon’s long range.'),
('Reach', 'This weapon adds 5 feet to your reach when you attack with it, as well as when determining your reach for opportunity attacks with it.'),
('Silvered', 'Some monsters that have immunity or resistance to nonmagical weapons are susceptible to silver weapons, so cautious adventurers invest extra coin to plate their weapons with silver. You can silver a single weapon or ten pieces of ammunition for 100 gp. This cost represents not only the price of the silver, but the time and expertise needed to add silver to the weapon without making it less effective.'),
('Special (Lance)', 'You have disadvantage when you use a lance to attack a target within 5 feet of you. Also, a lance requires two hands to wield when you aren’t mounted.'),
('Special (Net)', 'A Large or smaller creature hit by a net is Restrained until it is freed. A net has no effect on creatures that are formless, or creatures that are Huge or larger. A creature can use its action to make a DC 10 Strength check, freeing itself or another creature within its reach on a success. Dealing 5 slashing damage to the net (AC 10) also frees the creature without harming it, ending the effect and destroying the net.\r\n\r\nWhen you use an action, bonus action, or reaction to attack with a net, you can make only one attack regardless of the number of attacks you can normally make.'),
('Thrown', 'If a weapon has the thrown property, you can throw the weapon to make a ranged attack. If the weapon is a melee weapon, you use the same ability modifier for that attack roll and damage roll that you would use for a melee attack with the weapon. For example, if you throw a handaxe, you use your Strength, but if you throw a dagger, you can use either your Strength or your Dexterity, since the dagger has the finesse property.'),
('Two-Handed', 'This weapon requires two hands when you attack with it.'),
('Versatile (1d10)', 'This weapon can be used with one or two hands. A damage value in parentheses appears with the property—the damage when the weapon is used with two hands to make a melee attack.'),
('Versatile (1d8)', 'This weapon can be used with one or two hands. A damage value in parentheses appears with the property—the damage when the weapon is used with two hands to make a melee attack.');

-- --------------------------------------------------------

--
-- Table structure for table `weapon_type`
--

CREATE TABLE `weapon_type` (
  `name` varchar(63) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `weapon_type`
--

INSERT INTO `weapon_type` (`name`) VALUES
('Martial Melee'),
('Martial Ranged'),
('Simple Melee'),
('Simple Ranged');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ability`
--
ALTER TABLE `ability`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `alignment`
--
ALTER TABLE `alignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alignment_fk0` (`name_x`),
  ADD KEY `alignment_fk1` (`name_y`);

--
-- Indexes for table `alignment_type`
--
ALTER TABLE `alignment_type`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `armour`
--
ALTER TABLE `armour`
  ADD PRIMARY KEY (`name`),
  ADD KEY `armour_fk1` (`armour_type`);

--
-- Indexes for table `armour_type`
--
ALTER TABLE `armour_type`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `background_bonds`
--
ALTER TABLE `background_bonds`
  ADD PRIMARY KEY (`background`,`bond`),
  ADD KEY `background_bonds_fk1` (`bond`);

--
-- Indexes for table `background_features`
--
ALTER TABLE `background_features`
  ADD PRIMARY KEY (`background`,`feature`),
  ADD KEY `background_features_fk1` (`feature`);

--
-- Indexes for table `background_flaws`
--
ALTER TABLE `background_flaws`
  ADD PRIMARY KEY (`background`,`flaw`),
  ADD KEY `background_flaws_fk1` (`flaw`);

--
-- Indexes for table `background_ideals`
--
ALTER TABLE `background_ideals`
  ADD PRIMARY KEY (`background`,`ideal`),
  ADD KEY `background_ideals_fk1` (`ideal`);

--
-- Indexes for table `background_item_groups`
--
ALTER TABLE `background_item_groups`
  ADD PRIMARY KEY (`background`,`item_group`),
  ADD KEY `background_item_groups_fk1` (`item_group`);

--
-- Indexes for table `background_languages`
--
ALTER TABLE `background_languages`
  ADD PRIMARY KEY (`background`,`language`),
  ADD KEY `background_languages_fk1` (`language`);

--
-- Indexes for table `background_personality_traits`
--
ALTER TABLE `background_personality_traits`
  ADD PRIMARY KEY (`background`,`personality_trait`),
  ADD KEY `background_personality_traits_fk1` (`personality_trait`);

--
-- Indexes for table `background_skills`
--
ALTER TABLE `background_skills`
  ADD PRIMARY KEY (`background`,`skill`),
  ADD KEY `background_skills_fk1` (`skill`);

--
-- Indexes for table `background_specialties`
--
ALTER TABLE `background_specialties`
  ADD PRIMARY KEY (`background`,`specialty`),
  ADD KEY `background_specialties_fk1` (`specialty`);

--
-- Indexes for table `background_tools`
--
ALTER TABLE `background_tools`
  ADD PRIMARY KEY (`background`,`tool`),
  ADD KEY `background_tools_fk1` (`tool`);

--
-- Indexes for table `background_tool_types`
--
ALTER TABLE `background_tool_types`
  ADD PRIMARY KEY (`background`,`tool_type`),
  ADD KEY `background_tool_types_fk1` (`tool_type`);

--
-- Indexes for table `bond`
--
ALTER TABLE `bond`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character`
--
ALTER TABLE `character`
  ADD PRIMARY KEY (`id`),
  ADD KEY `character_fk0` (`race`),
  ADD KEY `character_fk1` (`class`),
  ADD KEY `character_fk2` (`background`),
  ADD KEY `character_fk3` (`alignment`);

--
-- Indexes for table `character_base_abilities`
--
ALTER TABLE `character_base_abilities`
  ADD PRIMARY KEY (`character`,`ability`),
  ADD KEY `character_base_abilities_fk1` (`ability`);

--
-- Indexes for table `character_bonds`
--
ALTER TABLE `character_bonds`
  ADD PRIMARY KEY (`character`,`bond`),
  ADD KEY `character_bonds_fk1` (`bond`);

--
-- Indexes for table `character_flaws`
--
ALTER TABLE `character_flaws`
  ADD PRIMARY KEY (`character`,`flaw`),
  ADD KEY `character_flaws_fk1` (`flaw`);

--
-- Indexes for table `character_ideals`
--
ALTER TABLE `character_ideals`
  ADD PRIMARY KEY (`character`,`ideal`),
  ADD KEY `character_ideals_fk1` (`ideal`);

--
-- Indexes for table `character_item_groups`
--
ALTER TABLE `character_item_groups`
  ADD PRIMARY KEY (`character`,`item_group`),
  ADD KEY `character_item_groups_fk1` (`item_group`),
  ADD KEY `character_item_groups_fk2` (`item_group_source`);

--
-- Indexes for table `character_item_group_source`
--
ALTER TABLE `character_item_group_source`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `character_languages`
--
ALTER TABLE `character_languages`
  ADD PRIMARY KEY (`character`,`language`),
  ADD KEY `character_languages_fk1` (`language`),
  ADD KEY `character_languages_fk2` (`language_source`);

--
-- Indexes for table `character_language_source`
--
ALTER TABLE `character_language_source`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `character_personality_traits`
--
ALTER TABLE `character_personality_traits`
  ADD PRIMARY KEY (`character`,`personality_trait`),
  ADD KEY `character_personality_traits_fk1` (`personality_trait`);

--
-- Indexes for table `character_saving_throws`
--
ALTER TABLE `character_saving_throws`
  ADD PRIMARY KEY (`character`,`ability`),
  ADD KEY `character_saving_throws_fk1` (`ability`),
  ADD KEY `character_saving_throws_fk2` (`saving_throw_source`);

--
-- Indexes for table `character_saving_throw_source`
--
ALTER TABLE `character_saving_throw_source`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `character_skill_proficiencies`
--
ALTER TABLE `character_skill_proficiencies`
  ADD PRIMARY KEY (`character`,`skill`),
  ADD KEY `character_skill_proficiencies_fk1` (`skill`),
  ADD KEY `character_skill_proficiencies_fk2` (`skill_proficiency_source`);

--
-- Indexes for table `character_skill_proficiency_source`
--
ALTER TABLE `character_skill_proficiency_source`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `character_specialties`
--
ALTER TABLE `character_specialties`
  ADD PRIMARY KEY (`character`,`specialty`),
  ADD KEY `character_specialties_fk1` (`specialty`);

--
-- Indexes for table `character_tool_proficiencies`
--
ALTER TABLE `character_tool_proficiencies`
  ADD PRIMARY KEY (`character`,`tool`),
  ADD KEY `character_tool_proficiencies_fk1` (`tool`),
  ADD KEY `character_tool_proficiencies_fk2` (`tool_proficiency_source`);

--
-- Indexes for table `character_tool_proficiency_source`
--
ALTER TABLE `character_tool_proficiency_source`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`name`),
  ADD KEY `class_fk0` (`hit_die`),
  ADD KEY `class_fk1` (`wealth_roll`);

--
-- Indexes for table `class_armour_proficiencies`
--
ALTER TABLE `class_armour_proficiencies`
  ADD PRIMARY KEY (`class`,`armour`),
  ADD KEY `class_armour_proficiencies_fk1` (`armour`);

--
-- Indexes for table `class_armour_type_proficiencies`
--
ALTER TABLE `class_armour_type_proficiencies`
  ADD PRIMARY KEY (`class`,`armour_type`),
  ADD KEY `class_armour_type_proficiencies_fk1` (`armour_type`);

--
-- Indexes for table `class_features`
--
ALTER TABLE `class_features`
  ADD PRIMARY KEY (`class`,`feature`,`level_requirement`),
  ADD KEY `class_features_fk1` (`feature`);

--
-- Indexes for table `class_item_sets`
--
ALTER TABLE `class_item_sets`
  ADD PRIMARY KEY (`class`,`item_set`),
  ADD KEY `class_item_sets_fk1` (`item_set`);

--
-- Indexes for table `class_saving_throws`
--
ALTER TABLE `class_saving_throws`
  ADD PRIMARY KEY (`class`,`ability`),
  ADD KEY `class_saving_throws_fk1` (`ability`);

--
-- Indexes for table `class_skill_proficiencies`
--
ALTER TABLE `class_skill_proficiencies`
  ADD PRIMARY KEY (`class`,`skill`),
  ADD KEY `class_skill_proficiencies_fk1` (`skill`);

--
-- Indexes for table `class_tool_proficiencies`
--
ALTER TABLE `class_tool_proficiencies`
  ADD PRIMARY KEY (`class`,`tool`),
  ADD KEY `class_tool_proficiencies_fk1` (`tool`);

--
-- Indexes for table `class_weapon_proficiencies`
--
ALTER TABLE `class_weapon_proficiencies`
  ADD PRIMARY KEY (`class`,`weapon`),
  ADD KEY `class_weapon_proficiencies_fk1` (`weapon`);

--
-- Indexes for table `class_weapon_type_proficiencies`
--
ALTER TABLE `class_weapon_type_proficiencies`
  ADD PRIMARY KEY (`class`,`weapon_type`),
  ADD KEY `class_weapon_type_proficiencies_fk1` (`weapon_type`);

--
-- Indexes for table `damage_type`
--
ALTER TABLE `damage_type`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `dice_roll`
--
ALTER TABLE `dice_roll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature`
--
ALTER TABLE `feature`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `flaw`
--
ALTER TABLE `flaw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ideal`
--
ALTER TABLE `ideal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ideal_fk0` (`alignment_req`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `item_fk0` (`item_type`);

--
-- Indexes for table `item_group`
--
ALTER TABLE `item_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_group_items`
--
ALTER TABLE `item_group_items`
  ADD PRIMARY KEY (`item_group`,`item`),
  ADD KEY `item_group_items_fk1` (`item`);

--
-- Indexes for table `item_set`
--
ALTER TABLE `item_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_set_groups`
--
ALTER TABLE `item_set_groups`
  ADD PRIMARY KEY (`item_set`,`item_group`),
  ADD KEY `item_set_groups_fk1` (`item_group`);

--
-- Indexes for table `item_type`
--
ALTER TABLE `item_type`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`name`),
  ADD KEY `language_fk0` (`language_type`),
  ADD KEY `language_fk1` (`script`);

--
-- Indexes for table `language_type`
--
ALTER TABLE `language_type`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `mount`
--
ALTER TABLE `mount`
  ADD PRIMARY KEY (`item`);

--
-- Indexes for table `personality_trait`
--
ALTER TABLE `personality_trait`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`name`),
  ADD KEY `race_fk0` (`height_mod`),
  ADD KEY `race_fk1` (`weight_mod`),
  ADD KEY `race_fk2` (`parent`);

--
-- Indexes for table `race_ability_score_increments`
--
ALTER TABLE `race_ability_score_increments`
  ADD PRIMARY KEY (`race`,`ability`),
  ADD KEY `race_abilitiy_score_increments_fk1` (`ability`);

--
-- Indexes for table `race_languages`
--
ALTER TABLE `race_languages`
  ADD PRIMARY KEY (`race`,`language`),
  ADD KEY `race_languages_fk1` (`language`);

--
-- Indexes for table `race_parent`
--
ALTER TABLE `race_parent`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `race_traits`
--
ALTER TABLE `race_traits`
  ADD PRIMARY KEY (`race`,`trait`),
  ADD KEY `race_traits_fk1` (`trait`);

--
-- Indexes for table `script`
--
ALTER TABLE `script`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`name`),
  ADD KEY `skill_fk0` (`ability`);

--
-- Indexes for table `specialty`
--
ALTER TABLE `specialty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subclass`
--
ALTER TABLE `subclass`
  ADD PRIMARY KEY (`class`,`name`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `subclass_features`
--
ALTER TABLE `subclass_features`
  ADD PRIMARY KEY (`subclass`,`feature`,`level_requirement`),
  ADD KEY `subclass_features_fk1` (`feature`);

--
-- Indexes for table `tool`
--
ALTER TABLE `tool`
  ADD PRIMARY KEY (`name`),
  ADD KEY `tool_fk1` (`tool_type`);

--
-- Indexes for table `tool_type`
--
ALTER TABLE `tool_type`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `trait`
--
ALTER TABLE `trait`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `water_vehicle`
--
ALTER TABLE `water_vehicle`
  ADD PRIMARY KEY (`tool`);

--
-- Indexes for table `weapon`
--
ALTER TABLE `weapon`
  ADD PRIMARY KEY (`name`),
  ADD KEY `weapon_fk1` (`weapon_type`),
  ADD KEY `weapon_fk2` (`damage_dice`),
  ADD KEY `weapon_fk3` (`damage_type`);

--
-- Indexes for table `weapon_properties`
--
ALTER TABLE `weapon_properties`
  ADD PRIMARY KEY (`weapon`,`weapon_property`),
  ADD KEY `weapon_properties_fk1` (`weapon_property`);

--
-- Indexes for table `weapon_property`
--
ALTER TABLE `weapon_property`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `weapon_type`
--
ALTER TABLE `weapon_type`
  ADD PRIMARY KEY (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alignment`
--
ALTER TABLE `alignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bond`
--
ALTER TABLE `bond`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `character`
--
ALTER TABLE `character`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dice_roll`
--
ALTER TABLE `dice_roll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `flaw`
--
ALTER TABLE `flaw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `ideal`
--
ALTER TABLE `ideal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `item_group`
--
ALTER TABLE `item_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `item_set`
--
ALTER TABLE `item_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `personality_trait`
--
ALTER TABLE `personality_trait`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `specialty`
--
ALTER TABLE `specialty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alignment`
--
ALTER TABLE `alignment`
  ADD CONSTRAINT `alignment_fk0` FOREIGN KEY (`name_x`) REFERENCES `alignment_type` (`name`),
  ADD CONSTRAINT `alignment_fk1` FOREIGN KEY (`name_y`) REFERENCES `alignment_type` (`name`);

--
-- Constraints for table `armour`
--
ALTER TABLE `armour`
  ADD CONSTRAINT `armour_fk0` FOREIGN KEY (`name`) REFERENCES `item` (`name`),
  ADD CONSTRAINT `armour_fk1` FOREIGN KEY (`armour_type`) REFERENCES `armour_type` (`name`);

--
-- Constraints for table `background_bonds`
--
ALTER TABLE `background_bonds`
  ADD CONSTRAINT `background_bonds_fk0` FOREIGN KEY (`background`) REFERENCES `background` (`name`),
  ADD CONSTRAINT `background_bonds_fk1` FOREIGN KEY (`bond`) REFERENCES `bond` (`id`);

--
-- Constraints for table `background_features`
--
ALTER TABLE `background_features`
  ADD CONSTRAINT `background_features_fk0` FOREIGN KEY (`background`) REFERENCES `background` (`name`),
  ADD CONSTRAINT `background_features_fk1` FOREIGN KEY (`feature`) REFERENCES `feature` (`name`);

--
-- Constraints for table `background_flaws`
--
ALTER TABLE `background_flaws`
  ADD CONSTRAINT `background_flaws_fk0` FOREIGN KEY (`background`) REFERENCES `background` (`name`),
  ADD CONSTRAINT `background_flaws_fk1` FOREIGN KEY (`flaw`) REFERENCES `flaw` (`id`);

--
-- Constraints for table `background_ideals`
--
ALTER TABLE `background_ideals`
  ADD CONSTRAINT `background_ideals_fk0` FOREIGN KEY (`background`) REFERENCES `background` (`name`),
  ADD CONSTRAINT `background_ideals_fk1` FOREIGN KEY (`ideal`) REFERENCES `ideal` (`id`);

--
-- Constraints for table `background_item_groups`
--
ALTER TABLE `background_item_groups`
  ADD CONSTRAINT `background_item_groups_fk0` FOREIGN KEY (`background`) REFERENCES `background` (`name`),
  ADD CONSTRAINT `background_item_groups_fk1` FOREIGN KEY (`item_group`) REFERENCES `item_group` (`id`);

--
-- Constraints for table `background_languages`
--
ALTER TABLE `background_languages`
  ADD CONSTRAINT `background_languages_fk0` FOREIGN KEY (`background`) REFERENCES `background` (`name`),
  ADD CONSTRAINT `background_languages_fk1` FOREIGN KEY (`language`) REFERENCES `language` (`name`);

--
-- Constraints for table `background_personality_traits`
--
ALTER TABLE `background_personality_traits`
  ADD CONSTRAINT `background_personality_traits_fk0` FOREIGN KEY (`background`) REFERENCES `background` (`name`),
  ADD CONSTRAINT `background_personality_traits_fk1` FOREIGN KEY (`personality_trait`) REFERENCES `personality_trait` (`id`);

--
-- Constraints for table `background_skills`
--
ALTER TABLE `background_skills`
  ADD CONSTRAINT `background_skills_fk0` FOREIGN KEY (`background`) REFERENCES `background` (`name`),
  ADD CONSTRAINT `background_skills_fk1` FOREIGN KEY (`skill`) REFERENCES `skill` (`name`);

--
-- Constraints for table `background_specialties`
--
ALTER TABLE `background_specialties`
  ADD CONSTRAINT `background_specialties_fk0` FOREIGN KEY (`background`) REFERENCES `background` (`name`),
  ADD CONSTRAINT `background_specialties_fk1` FOREIGN KEY (`specialty`) REFERENCES `specialty` (`id`);

--
-- Constraints for table `background_tools`
--
ALTER TABLE `background_tools`
  ADD CONSTRAINT `background_tools_fk0` FOREIGN KEY (`background`) REFERENCES `background` (`name`),
  ADD CONSTRAINT `background_tools_fk1` FOREIGN KEY (`tool`) REFERENCES `tool` (`name`);

--
-- Constraints for table `background_tool_types`
--
ALTER TABLE `background_tool_types`
  ADD CONSTRAINT `background_tool_types_fk0` FOREIGN KEY (`background`) REFERENCES `background` (`name`),
  ADD CONSTRAINT `background_tool_types_fk1` FOREIGN KEY (`tool_type`) REFERENCES `tool_type` (`name`);

--
-- Constraints for table `character`
--
ALTER TABLE `character`
  ADD CONSTRAINT `character_fk0` FOREIGN KEY (`race`) REFERENCES `race` (`name`),
  ADD CONSTRAINT `character_fk1` FOREIGN KEY (`class`) REFERENCES `class` (`name`),
  ADD CONSTRAINT `character_fk2` FOREIGN KEY (`background`) REFERENCES `background` (`name`),
  ADD CONSTRAINT `character_fk3` FOREIGN KEY (`alignment`) REFERENCES `alignment` (`id`);

--
-- Constraints for table `character_base_abilities`
--
ALTER TABLE `character_base_abilities`
  ADD CONSTRAINT `character_base_abilities_fk0` FOREIGN KEY (`character`) REFERENCES `character` (`id`),
  ADD CONSTRAINT `character_base_abilities_fk1` FOREIGN KEY (`ability`) REFERENCES `ability` (`name`);

--
-- Constraints for table `character_bonds`
--
ALTER TABLE `character_bonds`
  ADD CONSTRAINT `character_bonds_fk0` FOREIGN KEY (`character`) REFERENCES `character` (`id`),
  ADD CONSTRAINT `character_bonds_fk1` FOREIGN KEY (`bond`) REFERENCES `bond` (`id`);

--
-- Constraints for table `character_flaws`
--
ALTER TABLE `character_flaws`
  ADD CONSTRAINT `character_flaws_fk0` FOREIGN KEY (`character`) REFERENCES `character` (`id`),
  ADD CONSTRAINT `character_flaws_fk1` FOREIGN KEY (`flaw`) REFERENCES `flaw` (`id`);

--
-- Constraints for table `character_ideals`
--
ALTER TABLE `character_ideals`
  ADD CONSTRAINT `character_ideals_fk0` FOREIGN KEY (`character`) REFERENCES `character` (`id`),
  ADD CONSTRAINT `character_ideals_fk1` FOREIGN KEY (`ideal`) REFERENCES `ideal` (`id`);

--
-- Constraints for table `character_item_groups`
--
ALTER TABLE `character_item_groups`
  ADD CONSTRAINT `character_item_groups_fk0` FOREIGN KEY (`character`) REFERENCES `character` (`id`),
  ADD CONSTRAINT `character_item_groups_fk1` FOREIGN KEY (`item_group`) REFERENCES `item_group` (`id`),
  ADD CONSTRAINT `character_item_groups_fk2` FOREIGN KEY (`item_group_source`) REFERENCES `character_item_group_source` (`name`);

--
-- Constraints for table `character_languages`
--
ALTER TABLE `character_languages`
  ADD CONSTRAINT `character_languages_fk0` FOREIGN KEY (`character`) REFERENCES `character` (`id`),
  ADD CONSTRAINT `character_languages_fk1` FOREIGN KEY (`language`) REFERENCES `language` (`name`),
  ADD CONSTRAINT `character_languages_fk2` FOREIGN KEY (`language_source`) REFERENCES `character_language_source` (`name`);

--
-- Constraints for table `character_personality_traits`
--
ALTER TABLE `character_personality_traits`
  ADD CONSTRAINT `character_personality_traits_fk0` FOREIGN KEY (`character`) REFERENCES `character` (`id`),
  ADD CONSTRAINT `character_personality_traits_fk1` FOREIGN KEY (`personality_trait`) REFERENCES `personality_trait` (`id`);

--
-- Constraints for table `character_saving_throws`
--
ALTER TABLE `character_saving_throws`
  ADD CONSTRAINT `character_saving_throws_fk0` FOREIGN KEY (`character`) REFERENCES `character` (`id`),
  ADD CONSTRAINT `character_saving_throws_fk1` FOREIGN KEY (`ability`) REFERENCES `ability` (`name`),
  ADD CONSTRAINT `character_saving_throws_fk2` FOREIGN KEY (`saving_throw_source`) REFERENCES `character_saving_throw_source` (`name`);

--
-- Constraints for table `character_skill_proficiencies`
--
ALTER TABLE `character_skill_proficiencies`
  ADD CONSTRAINT `character_skill_proficiencies_fk0` FOREIGN KEY (`character`) REFERENCES `character` (`id`),
  ADD CONSTRAINT `character_skill_proficiencies_fk1` FOREIGN KEY (`skill`) REFERENCES `skill` (`name`),
  ADD CONSTRAINT `character_skill_proficiencies_fk2` FOREIGN KEY (`skill_proficiency_source`) REFERENCES `character_skill_proficiency_source` (`name`);

--
-- Constraints for table `character_specialties`
--
ALTER TABLE `character_specialties`
  ADD CONSTRAINT `character_specialties_fk0` FOREIGN KEY (`character`) REFERENCES `character` (`id`),
  ADD CONSTRAINT `character_specialties_fk1` FOREIGN KEY (`specialty`) REFERENCES `specialty` (`id`);

--
-- Constraints for table `character_tool_proficiencies`
--
ALTER TABLE `character_tool_proficiencies`
  ADD CONSTRAINT `character_tool_proficiencies_fk0` FOREIGN KEY (`character`) REFERENCES `character` (`id`),
  ADD CONSTRAINT `character_tool_proficiencies_fk1` FOREIGN KEY (`tool`) REFERENCES `tool` (`name`),
  ADD CONSTRAINT `character_tool_proficiencies_fk2` FOREIGN KEY (`tool_proficiency_source`) REFERENCES `character_tool_proficiency_source` (`name`);

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_fk0` FOREIGN KEY (`hit_die`) REFERENCES `dice_roll` (`id`),
  ADD CONSTRAINT `class_fk1` FOREIGN KEY (`wealth_roll`) REFERENCES `dice_roll` (`id`);

--
-- Constraints for table `class_armour_proficiencies`
--
ALTER TABLE `class_armour_proficiencies`
  ADD CONSTRAINT `class_armour_proficiencies_fk0` FOREIGN KEY (`class`) REFERENCES `class` (`name`),
  ADD CONSTRAINT `class_armour_proficiencies_fk1` FOREIGN KEY (`armour`) REFERENCES `armour` (`name`);

--
-- Constraints for table `class_armour_type_proficiencies`
--
ALTER TABLE `class_armour_type_proficiencies`
  ADD CONSTRAINT `class_armour_type_proficiencies_fk0` FOREIGN KEY (`class`) REFERENCES `class` (`name`),
  ADD CONSTRAINT `class_armour_type_proficiencies_fk1` FOREIGN KEY (`armour_type`) REFERENCES `armour_type` (`name`);

--
-- Constraints for table `class_features`
--
ALTER TABLE `class_features`
  ADD CONSTRAINT `class_features_fk0` FOREIGN KEY (`class`) REFERENCES `class` (`name`),
  ADD CONSTRAINT `class_features_fk1` FOREIGN KEY (`feature`) REFERENCES `feature` (`name`);

--
-- Constraints for table `class_item_sets`
--
ALTER TABLE `class_item_sets`
  ADD CONSTRAINT `class_item_sets_fk0` FOREIGN KEY (`class`) REFERENCES `class` (`name`),
  ADD CONSTRAINT `class_item_sets_fk1` FOREIGN KEY (`item_set`) REFERENCES `item_set` (`id`);

--
-- Constraints for table `class_saving_throws`
--
ALTER TABLE `class_saving_throws`
  ADD CONSTRAINT `class_saving_throws_fk0` FOREIGN KEY (`class`) REFERENCES `class` (`name`),
  ADD CONSTRAINT `class_saving_throws_fk1` FOREIGN KEY (`ability`) REFERENCES `ability` (`name`);

--
-- Constraints for table `class_skill_proficiencies`
--
ALTER TABLE `class_skill_proficiencies`
  ADD CONSTRAINT `class_skill_proficiencies_fk0` FOREIGN KEY (`class`) REFERENCES `class` (`name`),
  ADD CONSTRAINT `class_skill_proficiencies_fk1` FOREIGN KEY (`skill`) REFERENCES `skill` (`name`);

--
-- Constraints for table `class_tool_proficiencies`
--
ALTER TABLE `class_tool_proficiencies`
  ADD CONSTRAINT `class_tool_proficiencies_fk0` FOREIGN KEY (`class`) REFERENCES `class` (`name`),
  ADD CONSTRAINT `class_tool_proficiencies_fk1` FOREIGN KEY (`tool`) REFERENCES `tool` (`name`);

--
-- Constraints for table `class_weapon_proficiencies`
--
ALTER TABLE `class_weapon_proficiencies`
  ADD CONSTRAINT `class_weapon_proficiencies_fk0` FOREIGN KEY (`class`) REFERENCES `class` (`name`),
  ADD CONSTRAINT `class_weapon_proficiencies_fk1` FOREIGN KEY (`weapon`) REFERENCES `weapon` (`name`);

--
-- Constraints for table `class_weapon_type_proficiencies`
--
ALTER TABLE `class_weapon_type_proficiencies`
  ADD CONSTRAINT `class_weapon_type_proficiencies_fk0` FOREIGN KEY (`class`) REFERENCES `class` (`name`),
  ADD CONSTRAINT `class_weapon_type_proficiencies_fk1` FOREIGN KEY (`weapon_type`) REFERENCES `weapon_type` (`name`);

--
-- Constraints for table `ideal`
--
ALTER TABLE `ideal`
  ADD CONSTRAINT `ideal_fk0` FOREIGN KEY (`alignment_req`) REFERENCES `alignment_type` (`name`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_fk0` FOREIGN KEY (`item_type`) REFERENCES `item_type` (`name`);

--
-- Constraints for table `item_group_items`
--
ALTER TABLE `item_group_items`
  ADD CONSTRAINT `item_group_items_fk0` FOREIGN KEY (`item_group`) REFERENCES `item_group` (`id`),
  ADD CONSTRAINT `item_group_items_fk1` FOREIGN KEY (`item`) REFERENCES `item` (`name`);

--
-- Constraints for table `item_set_groups`
--
ALTER TABLE `item_set_groups`
  ADD CONSTRAINT `item_set_groups_fk0` FOREIGN KEY (`item_set`) REFERENCES `item_set` (`id`),
  ADD CONSTRAINT `item_set_groups_fk1` FOREIGN KEY (`item_group`) REFERENCES `item_group` (`id`);

--
-- Constraints for table `language`
--
ALTER TABLE `language`
  ADD CONSTRAINT `language_fk0` FOREIGN KEY (`language_type`) REFERENCES `language_type` (`name`),
  ADD CONSTRAINT `language_fk1` FOREIGN KEY (`script`) REFERENCES `script` (`name`);

--
-- Constraints for table `mount`
--
ALTER TABLE `mount`
  ADD CONSTRAINT `mount_fk0` FOREIGN KEY (`item`) REFERENCES `item` (`name`);

--
-- Constraints for table `race`
--
ALTER TABLE `race`
  ADD CONSTRAINT `race_fk0` FOREIGN KEY (`height_mod`) REFERENCES `dice_roll` (`id`),
  ADD CONSTRAINT `race_fk1` FOREIGN KEY (`weight_mod`) REFERENCES `dice_roll` (`id`),
  ADD CONSTRAINT `race_fk2` FOREIGN KEY (`parent`) REFERENCES `race_parent` (`name`);

--
-- Constraints for table `race_ability_score_increments`
--
ALTER TABLE `race_ability_score_increments`
  ADD CONSTRAINT `race_abilitiy_score_increments_fk0` FOREIGN KEY (`race`) REFERENCES `race` (`name`),
  ADD CONSTRAINT `race_abilitiy_score_increments_fk1` FOREIGN KEY (`ability`) REFERENCES `ability` (`name`);

--
-- Constraints for table `race_languages`
--
ALTER TABLE `race_languages`
  ADD CONSTRAINT `race_languages_fk0` FOREIGN KEY (`race`) REFERENCES `race` (`name`),
  ADD CONSTRAINT `race_languages_fk1` FOREIGN KEY (`language`) REFERENCES `language` (`name`);

--
-- Constraints for table `race_traits`
--
ALTER TABLE `race_traits`
  ADD CONSTRAINT `race_traits_fk0` FOREIGN KEY (`race`) REFERENCES `race` (`name`),
  ADD CONSTRAINT `race_traits_fk1` FOREIGN KEY (`trait`) REFERENCES `trait` (`name`);

--
-- Constraints for table `skill`
--
ALTER TABLE `skill`
  ADD CONSTRAINT `skill_fk0` FOREIGN KEY (`ability`) REFERENCES `ability` (`name`);

--
-- Constraints for table `subclass`
--
ALTER TABLE `subclass`
  ADD CONSTRAINT `subclass_fk0` FOREIGN KEY (`class`) REFERENCES `class` (`name`);

--
-- Constraints for table `subclass_features`
--
ALTER TABLE `subclass_features`
  ADD CONSTRAINT `subclass_features_fk0` FOREIGN KEY (`subclass`) REFERENCES `subclass` (`name`),
  ADD CONSTRAINT `subclass_features_fk1` FOREIGN KEY (`feature`) REFERENCES `feature` (`name`);

--
-- Constraints for table `tool`
--
ALTER TABLE `tool`
  ADD CONSTRAINT `tool_fk0` FOREIGN KEY (`name`) REFERENCES `item` (`name`),
  ADD CONSTRAINT `tool_fk1` FOREIGN KEY (`tool_type`) REFERENCES `tool_type` (`name`);

--
-- Constraints for table `water_vehicle`
--
ALTER TABLE `water_vehicle`
  ADD CONSTRAINT `water_vehicle_fk0` FOREIGN KEY (`tool`) REFERENCES `tool` (`name`);

--
-- Constraints for table `weapon`
--
ALTER TABLE `weapon`
  ADD CONSTRAINT `weapon_fk0` FOREIGN KEY (`name`) REFERENCES `item` (`name`),
  ADD CONSTRAINT `weapon_fk1` FOREIGN KEY (`weapon_type`) REFERENCES `weapon_type` (`name`),
  ADD CONSTRAINT `weapon_fk2` FOREIGN KEY (`damage_dice`) REFERENCES `dice_roll` (`id`),
  ADD CONSTRAINT `weapon_fk3` FOREIGN KEY (`damage_type`) REFERENCES `damage_type` (`name`);

--
-- Constraints for table `weapon_properties`
--
ALTER TABLE `weapon_properties`
  ADD CONSTRAINT `weapon_properties_fk0` FOREIGN KEY (`weapon`) REFERENCES `weapon` (`name`),
  ADD CONSTRAINT `weapon_properties_fk1` FOREIGN KEY (`weapon_property`) REFERENCES `weapon_property` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
