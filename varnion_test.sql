-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2024 at 06:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

--
-- Structure
--
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `varnion_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `user_input` int(11) NOT NULL,
  `kode_kategori` bigint(20) UNSIGNED NOT NULL,
  `satuan` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `jumlah` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hasil_response`
--

CREATE TABLE `hasil_response` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_kelamin` tinyint(4) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nama_jalan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `angka_kurang` int(11) NOT NULL,
  `angka_lebih` int(11) NOT NULL,
  `profesi` char(1) NOT NULL,
  `plain_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`plain_json`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hasil_response`
--

INSERT INTO `hasil_response` (`id`, `jenis_kelamin`, `nama`, `nama_jalan`, `email`, `angka_kurang`, `angka_lebih`, `profesi`, `plain_json`, `created_at`, `updated_at`) VALUES
(12, 2, 'Laurie Bergeron', 'Queen St', 'laurie.bergeron@example.com', 12, 19, 'B', '\"{\\\"gender\\\":\\\"female\\\",\\\"name\\\":{\\\"title\\\":\\\"Ms\\\",\\\"first\\\":\\\"Laurie\\\",\\\"last\\\":\\\"Bergeron\\\"},\\\"location\\\":{\\\"street\\\":{\\\"number\\\":569,\\\"name\\\":\\\"Queen St\\\"},\\\"city\\\":\\\"Aylmer\\\",\\\"state\\\":\\\"Qu\\\\u00e9bec\\\",\\\"country\\\":\\\"Canada\\\",\\\"postcode\\\":\\\"A4M 1R1\\\",\\\"coordinates\\\":{\\\"latitude\\\":\\\"-64.7765\\\",\\\"longitude\\\":\\\"24.8002\\\"},\\\"timezone\\\":{\\\"offset\\\":\\\"+3:00\\\",\\\"description\\\":\\\"Baghdad, Riyadh, Moscow, St. Petersburg\\\"}},\\\"email\\\":\\\"laurie.bergeron@example.com\\\",\\\"login\\\":{\\\"uuid\\\":\\\"a1d80c0d-7063-4064-b2eb-db14f5663a78\\\",\\\"username\\\":\\\"sadsnake737\\\",\\\"password\\\":\\\"tabatha\\\",\\\"salt\\\":\\\"azndys9k\\\",\\\"md5\\\":\\\"b943c898f28b37d89cf2244108f9d64d\\\",\\\"sha1\\\":\\\"70fdc917c1e48a59e1408ab3e0c47bd69571963a\\\",\\\"sha256\\\":\\\"2e8cb51043cdb00b385c6a9d9015b17d9c6d112613b50b2f8b2cefd1a4fcd786\\\"},\\\"dob\\\":{\\\"date\\\":\\\"1951-07-04T15:44:12.133Z\\\",\\\"age\\\":72},\\\"registered\\\":{\\\"date\\\":\\\"2007-08-27T08:02:49.192Z\\\",\\\"age\\\":16},\\\"phone\\\":\\\"I33 G64-5801\\\",\\\"cell\\\":\\\"J41 R88-1406\\\",\\\"id\\\":{\\\"name\\\":\\\"SIN\\\",\\\"value\\\":\\\"601795198\\\"},\\\"picture\\\":{\\\"large\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/women\\\\\\/91.jpg\\\",\\\"medium\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/med\\\\\\/women\\\\\\/91.jpg\\\",\\\"thumbnail\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/thumb\\\\\\/women\\\\\\/91.jpg\\\"},\\\"nat\\\":\\\"CA\\\"}\"', '2024-05-18 05:17:17', '2024-05-18 05:17:17'),
(13, 1, 'Mohamed Martin', 'Avenida del Planetario', 'mohamed.martin@example.com', 9, 22, 'D', '\"{\\\"gender\\\":\\\"male\\\",\\\"name\\\":{\\\"title\\\":\\\"Mr\\\",\\\"first\\\":\\\"Mohamed\\\",\\\"last\\\":\\\"Martin\\\"},\\\"location\\\":{\\\"street\\\":{\\\"number\\\":9286,\\\"name\\\":\\\"Avenida del Planetario\\\"},\\\"city\\\":\\\"Gij\\\\u00f3n\\\",\\\"state\\\":\\\"Islas Baleares\\\",\\\"country\\\":\\\"Spain\\\",\\\"postcode\\\":18650,\\\"coordinates\\\":{\\\"latitude\\\":\\\"-37.5725\\\",\\\"longitude\\\":\\\"-113.8588\\\"},\\\"timezone\\\":{\\\"offset\\\":\\\"-3:30\\\",\\\"description\\\":\\\"Newfoundland\\\"}},\\\"email\\\":\\\"mohamed.martin@example.com\\\",\\\"login\\\":{\\\"uuid\\\":\\\"c85e35b1-9a87-4b95-9d5b-59d1a4092c3c\\\",\\\"username\\\":\\\"greenpeacock424\\\",\\\"password\\\":\\\"softball\\\",\\\"salt\\\":\\\"LNGBQJvf\\\",\\\"md5\\\":\\\"5cfdddbbff128eb5c6b1fc7ad1391dcc\\\",\\\"sha1\\\":\\\"9697a53ce4d6dd11c1ae4ef702b0e12dd18c96c0\\\",\\\"sha256\\\":\\\"38dd60bed904c240b77066832377e8b53b29b7f3fb542e68e8c21a8f1c11ebf4\\\"},\\\"dob\\\":{\\\"date\\\":\\\"1976-11-08T03:10:59.248Z\\\",\\\"age\\\":47},\\\"registered\\\":{\\\"date\\\":\\\"2019-07-07T15:06:56.611Z\\\",\\\"age\\\":4},\\\"phone\\\":\\\"962-061-727\\\",\\\"cell\\\":\\\"646-862-479\\\",\\\"id\\\":{\\\"name\\\":\\\"DNI\\\",\\\"value\\\":\\\"70659736-X\\\"},\\\"picture\\\":{\\\"large\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/men\\\\\\/7.jpg\\\",\\\"medium\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/med\\\\\\/men\\\\\\/7.jpg\\\",\\\"thumbnail\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/thumb\\\\\\/men\\\\\\/7.jpg\\\"},\\\"nat\\\":\\\"ES\\\"}\"', '2024-05-18 05:17:29', '2024-05-18 05:17:29'),
(14, 1, 'Adalberto da Paz', 'Rua Espirito Santo ', 'adalberto.dapaz@example.com', 15, 16, 'E', '\"{\\\"gender\\\":\\\"male\\\",\\\"name\\\":{\\\"title\\\":\\\"Mr\\\",\\\"first\\\":\\\"Adalberto\\\",\\\"last\\\":\\\"da Paz\\\"},\\\"location\\\":{\\\"street\\\":{\\\"number\\\":2506,\\\"name\\\":\\\"Rua Espirito Santo \\\"},\\\"city\\\":\\\"Rio Grande\\\",\\\"state\\\":\\\"Goi\\\\u00e1s\\\",\\\"country\\\":\\\"Brazil\\\",\\\"postcode\\\":34835,\\\"coordinates\\\":{\\\"latitude\\\":\\\"-80.3296\\\",\\\"longitude\\\":\\\"-47.1436\\\"},\\\"timezone\\\":{\\\"offset\\\":\\\"-8:00\\\",\\\"description\\\":\\\"Pacific Time (US & Canada)\\\"}},\\\"email\\\":\\\"adalberto.dapaz@example.com\\\",\\\"login\\\":{\\\"uuid\\\":\\\"04245b44-472d-40ec-b30e-f465bdbe4412\\\",\\\"username\\\":\\\"angrywolf962\\\",\\\"password\\\":\\\"channel\\\",\\\"salt\\\":\\\"rBj1c3WC\\\",\\\"md5\\\":\\\"c2684b1392ed6a7cd3cd5622c391bbc5\\\",\\\"sha1\\\":\\\"04a1ff21ba634048a1ce0f0a2f1f1baf5de5a291\\\",\\\"sha256\\\":\\\"e2c8e58f85b4a996f0449d86b0ae19402f43c0c754d24a423751fabca17d99be\\\"},\\\"dob\\\":{\\\"date\\\":\\\"1961-12-01T10:28:27.608Z\\\",\\\"age\\\":62},\\\"registered\\\":{\\\"date\\\":\\\"2010-01-11T08:28:38.029Z\\\",\\\"age\\\":14},\\\"phone\\\":\\\"(78) 6822-1177\\\",\\\"cell\\\":\\\"(55) 9237-5559\\\",\\\"id\\\":{\\\"name\\\":\\\"CPF\\\",\\\"value\\\":\\\"697.618.970-73\\\"},\\\"picture\\\":{\\\"large\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/men\\\\\\/36.jpg\\\",\\\"medium\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/med\\\\\\/men\\\\\\/36.jpg\\\",\\\"thumbnail\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/thumb\\\\\\/men\\\\\\/36.jpg\\\"},\\\"nat\\\":\\\"BR\\\"}\"', '2024-05-18 05:17:40', '2024-05-18 05:17:40'),
(15, 2, 'Lya Noel', 'Rue de la Mairie', 'lya.noel@example.com', 11, 18, 'D', '\"{\\\"gender\\\":\\\"female\\\",\\\"name\\\":{\\\"title\\\":\\\"Miss\\\",\\\"first\\\":\\\"Lya\\\",\\\"last\\\":\\\"Noel\\\"},\\\"location\\\":{\\\"street\\\":{\\\"number\\\":6812,\\\"name\\\":\\\"Rue de la Mairie\\\"},\\\"city\\\":\\\"Le Mans\\\",\\\"state\\\":\\\"Paris\\\",\\\"country\\\":\\\"France\\\",\\\"postcode\\\":30049,\\\"coordinates\\\":{\\\"latitude\\\":\\\"-21.0964\\\",\\\"longitude\\\":\\\"122.0447\\\"},\\\"timezone\\\":{\\\"offset\\\":\\\"+9:30\\\",\\\"description\\\":\\\"Adelaide, Darwin\\\"}},\\\"email\\\":\\\"lya.noel@example.com\\\",\\\"login\\\":{\\\"uuid\\\":\\\"ac1eaa6c-3796-448d-a1e3-4deabb8c4321\\\",\\\"username\\\":\\\"bluefish887\\\",\\\"password\\\":\\\"techniques\\\",\\\"salt\\\":\\\"CMArH1Ne\\\",\\\"md5\\\":\\\"e018b7b6117aa1b29c1c0d8eed7a4cd2\\\",\\\"sha1\\\":\\\"1cc1f7e04b85d446d387767d309ab8ed259ceed3\\\",\\\"sha256\\\":\\\"78321ddcc41b465992db1fd2171d78462e780cc193a128a5ce5c077d5ff55dbf\\\"},\\\"dob\\\":{\\\"date\\\":\\\"1995-03-02T02:12:39.776Z\\\",\\\"age\\\":29},\\\"registered\\\":{\\\"date\\\":\\\"2015-01-14T06:41:43.630Z\\\",\\\"age\\\":9},\\\"phone\\\":\\\"04-57-22-11-83\\\",\\\"cell\\\":\\\"06-56-88-78-27\\\",\\\"id\\\":{\\\"name\\\":\\\"INSEE\\\",\\\"value\\\":\\\"2950277187760 20\\\"},\\\"picture\\\":{\\\"large\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/women\\\\\\/68.jpg\\\",\\\"medium\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/med\\\\\\/women\\\\\\/68.jpg\\\",\\\"thumbnail\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/thumb\\\\\\/women\\\\\\/68.jpg\\\"},\\\"nat\\\":\\\"FR\\\"}\"', '2024-05-18 05:30:40', '2024-05-18 05:30:40'),
(16, 2, 'Dragana Terzić', 'Virska', 'dragana.terzic@example.com', 14, 16, 'E', '\"{\\\"gender\\\":\\\"female\\\",\\\"name\\\":{\\\"title\\\":\\\"Miss\\\",\\\"first\\\":\\\"Dragana\\\",\\\"last\\\":\\\"Terzi\\\\u0107\\\"},\\\"location\\\":{\\\"street\\\":{\\\"number\\\":4037,\\\"name\\\":\\\"Virska\\\"},\\\"city\\\":\\\"Ub\\\",\\\"state\\\":\\\"Rasina\\\",\\\"country\\\":\\\"Serbia\\\",\\\"postcode\\\":15353,\\\"coordinates\\\":{\\\"latitude\\\":\\\"63.8464\\\",\\\"longitude\\\":\\\"113.6632\\\"},\\\"timezone\\\":{\\\"offset\\\":\\\"-3:00\\\",\\\"description\\\":\\\"Brazil, Buenos Aires, Georgetown\\\"}},\\\"email\\\":\\\"dragana.terzic@example.com\\\",\\\"login\\\":{\\\"uuid\\\":\\\"3d356edb-044b-4db0-86a8-130355f4000e\\\",\\\"username\\\":\\\"orangebird289\\\",\\\"password\\\":\\\"mybaby\\\",\\\"salt\\\":\\\"qpT3SasA\\\",\\\"md5\\\":\\\"f2807a4126b3b7d94dc6826f299ac02b\\\",\\\"sha1\\\":\\\"2be512f3c7df58956441df682f444201119350d2\\\",\\\"sha256\\\":\\\"736bcc36d5b01bd9f10406815c62185a80df76fc716ea66e004ae3408bcdd13b\\\"},\\\"dob\\\":{\\\"date\\\":\\\"1947-12-29T17:37:06.701Z\\\",\\\"age\\\":76},\\\"registered\\\":{\\\"date\\\":\\\"2006-10-30T20:28:51.256Z\\\",\\\"age\\\":17},\\\"phone\\\":\\\"029-3000-935\\\",\\\"cell\\\":\\\"060-0385-576\\\",\\\"id\\\":{\\\"name\\\":\\\"SID\\\",\\\"value\\\":\\\"183491109\\\"},\\\"picture\\\":{\\\"large\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/women\\\\\\/35.jpg\\\",\\\"medium\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/med\\\\\\/women\\\\\\/35.jpg\\\",\\\"thumbnail\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/thumb\\\\\\/women\\\\\\/35.jpg\\\"},\\\"nat\\\":\\\"RS\\\"}\"', '2024-05-18 05:30:41', '2024-05-18 05:30:41'),
(17, 1, 'Philip Christensen', 'Børupvej', 'philip.christensen@example.com', 13, 14, 'A', '\"{\\\"gender\\\":\\\"male\\\",\\\"name\\\":{\\\"title\\\":\\\"Mr\\\",\\\"first\\\":\\\"Philip\\\",\\\"last\\\":\\\"Christensen\\\"},\\\"location\\\":{\\\"street\\\":{\\\"number\\\":9702,\\\"name\\\":\\\"B\\\\u00f8rupvej\\\"},\\\"city\\\":\\\"Haslev\\\",\\\"state\\\":\\\"Nordjylland\\\",\\\"country\\\":\\\"Denmark\\\",\\\"postcode\\\":73265,\\\"coordinates\\\":{\\\"latitude\\\":\\\"-43.4674\\\",\\\"longitude\\\":\\\"-90.3410\\\"},\\\"timezone\\\":{\\\"offset\\\":\\\"+11:00\\\",\\\"description\\\":\\\"Magadan, Solomon Islands, New Caledonia\\\"}},\\\"email\\\":\\\"philip.christensen@example.com\\\",\\\"login\\\":{\\\"uuid\\\":\\\"c0ff14ab-3bdf-40ab-81c9-760a7019b624\\\",\\\"username\\\":\\\"silvermeercat504\\\",\\\"password\\\":\\\"altima\\\",\\\"salt\\\":\\\"oR39cNRa\\\",\\\"md5\\\":\\\"7212ddfb2e71b1e5657d7a39ed6c670d\\\",\\\"sha1\\\":\\\"7250f1ed56ad28cd31ac20fa9560b7602704b87a\\\",\\\"sha256\\\":\\\"b4d00908365f2646d32f41a7e7c3128e304e2074a641d381f20816a3ea94c6c6\\\"},\\\"dob\\\":{\\\"date\\\":\\\"1969-02-04T07:58:40.580Z\\\",\\\"age\\\":55},\\\"registered\\\":{\\\"date\\\":\\\"2002-07-29T07:15:07.771Z\\\",\\\"age\\\":21},\\\"phone\\\":\\\"40157412\\\",\\\"cell\\\":\\\"92036752\\\",\\\"id\\\":{\\\"name\\\":\\\"CPR\\\",\\\"value\\\":\\\"040269-3510\\\"},\\\"picture\\\":{\\\"large\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/men\\\\\\/65.jpg\\\",\\\"medium\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/med\\\\\\/men\\\\\\/65.jpg\\\",\\\"thumbnail\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/thumb\\\\\\/men\\\\\\/65.jpg\\\"},\\\"nat\\\":\\\"DK\\\"}\"', '2024-05-18 05:30:48', '2024-05-18 05:30:48'),
(18, 2, 'Elsie Schmidt', 'Crockett St', 'elsie.schmidt@example.com', 13, 16, 'B', '\"{\\\"gender\\\":\\\"female\\\",\\\"name\\\":{\\\"title\\\":\\\"Miss\\\",\\\"first\\\":\\\"Elsie\\\",\\\"last\\\":\\\"Schmidt\\\"},\\\"location\\\":{\\\"street\\\":{\\\"number\\\":6717,\\\"name\\\":\\\"Crockett St\\\"},\\\"city\\\":\\\"Everett\\\",\\\"state\\\":\\\"Georgia\\\",\\\"country\\\":\\\"United States\\\",\\\"postcode\\\":62124,\\\"coordinates\\\":{\\\"latitude\\\":\\\"82.1822\\\",\\\"longitude\\\":\\\"130.1155\\\"},\\\"timezone\\\":{\\\"offset\\\":\\\"-7:00\\\",\\\"description\\\":\\\"Mountain Time (US & Canada)\\\"}},\\\"email\\\":\\\"elsie.schmidt@example.com\\\",\\\"login\\\":{\\\"uuid\\\":\\\"4d02a242-9ab4-469c-adf4-abf845be1f24\\\",\\\"username\\\":\\\"crazymouse726\\\",\\\"password\\\":\\\"wyatt\\\",\\\"salt\\\":\\\"NSsBLVQZ\\\",\\\"md5\\\":\\\"6722ad911dde9cae56a7bf2810ea7614\\\",\\\"sha1\\\":\\\"752c2b3f0256d1a3aeca8ac2f10395c24e1af7ea\\\",\\\"sha256\\\":\\\"0ebc84ab935925d6b52a6e983ab5d8dd771d58a2eba4ccb72bcde1da090b874d\\\"},\\\"dob\\\":{\\\"date\\\":\\\"2000-08-02T18:30:32.897Z\\\",\\\"age\\\":23},\\\"registered\\\":{\\\"date\\\":\\\"2013-07-19T07:37:41.132Z\\\",\\\"age\\\":10},\\\"phone\\\":\\\"(479) 291-2160\\\",\\\"cell\\\":\\\"(331) 768-4151\\\",\\\"id\\\":{\\\"name\\\":\\\"SSN\\\",\\\"value\\\":\\\"366-79-0622\\\"},\\\"picture\\\":{\\\"large\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/women\\\\\\/29.jpg\\\",\\\"medium\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/med\\\\\\/women\\\\\\/29.jpg\\\",\\\"thumbnail\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/thumb\\\\\\/women\\\\\\/29.jpg\\\"},\\\"nat\\\":\\\"US\\\"}\"', '2024-05-18 05:30:50', '2024-05-18 05:30:50'),
(19, 2, 'Yasmim Moreira', 'Avenida Brasil ', 'yasmim.moreira@example.com', 18, 13, 'B', '\"{\\\"gender\\\":\\\"female\\\",\\\"name\\\":{\\\"title\\\":\\\"Mrs\\\",\\\"first\\\":\\\"Yasmim\\\",\\\"last\\\":\\\"Moreira\\\"},\\\"location\\\":{\\\"street\\\":{\\\"number\\\":5754,\\\"name\\\":\\\"Avenida Brasil \\\"},\\\"city\\\":\\\"Mar\\\\u00edlia\\\",\\\"state\\\":\\\"Cear\\\\u00e1\\\",\\\"country\\\":\\\"Brazil\\\",\\\"postcode\\\":89323,\\\"coordinates\\\":{\\\"latitude\\\":\\\"-78.0143\\\",\\\"longitude\\\":\\\"87.7399\\\"},\\\"timezone\\\":{\\\"offset\\\":\\\"-8:00\\\",\\\"description\\\":\\\"Pacific Time (US & Canada)\\\"}},\\\"email\\\":\\\"yasmim.moreira@example.com\\\",\\\"login\\\":{\\\"uuid\\\":\\\"fa629083-e4aa-491e-9ebe-e46ff2041dd6\\\",\\\"username\\\":\\\"tinytiger353\\\",\\\"password\\\":\\\"pleasure\\\",\\\"salt\\\":\\\"rPPMh3g4\\\",\\\"md5\\\":\\\"1e89b334a675cd4354f0466ede91c462\\\",\\\"sha1\\\":\\\"2a48a64cce034bb81d352103d01c21de919c9be5\\\",\\\"sha256\\\":\\\"d82649aa7973528176d2fa052760899b4a9e6608a5af2b21be4199e3bb967f04\\\"},\\\"dob\\\":{\\\"date\\\":\\\"1966-04-23T11:24:45.671Z\\\",\\\"age\\\":58},\\\"registered\\\":{\\\"date\\\":\\\"2021-09-01T19:25:38.782Z\\\",\\\"age\\\":2},\\\"phone\\\":\\\"(10) 3088-4489\\\",\\\"cell\\\":\\\"(52) 3569-3501\\\",\\\"id\\\":{\\\"name\\\":\\\"CPF\\\",\\\"value\\\":\\\"518.965.769-66\\\"},\\\"picture\\\":{\\\"large\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/women\\\\\\/91.jpg\\\",\\\"medium\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/med\\\\\\/women\\\\\\/91.jpg\\\",\\\"thumbnail\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/thumb\\\\\\/women\\\\\\/91.jpg\\\"},\\\"nat\\\":\\\"BR\\\"}\"', '2024-05-18 05:37:27', '2024-05-18 05:37:27'),
(20, 2, 'Rosario Diaz', 'Calle del Barquillo', 'rosario.diaz@example.com', 11, 18, 'C', '\"{\\\"gender\\\":\\\"female\\\",\\\"name\\\":{\\\"title\\\":\\\"Ms\\\",\\\"first\\\":\\\"Rosario\\\",\\\"last\\\":\\\"Diaz\\\"},\\\"location\\\":{\\\"street\\\":{\\\"number\\\":7429,\\\"name\\\":\\\"Calle del Barquillo\\\"},\\\"city\\\":\\\"Bilbao\\\",\\\"state\\\":\\\"Canarias\\\",\\\"country\\\":\\\"Spain\\\",\\\"postcode\\\":28527,\\\"coordinates\\\":{\\\"latitude\\\":\\\"-34.9146\\\",\\\"longitude\\\":\\\"126.9000\\\"},\\\"timezone\\\":{\\\"offset\\\":\\\"+3:00\\\",\\\"description\\\":\\\"Baghdad, Riyadh, Moscow, St. Petersburg\\\"}},\\\"email\\\":\\\"rosario.diaz@example.com\\\",\\\"login\\\":{\\\"uuid\\\":\\\"d3b8bc22-3faf-4451-b75e-ecac2aacf8d8\\\",\\\"username\\\":\\\"whitetiger812\\\",\\\"password\\\":\\\"encore\\\",\\\"salt\\\":\\\"9P9pugCB\\\",\\\"md5\\\":\\\"fdf64ae7f4aad3ea511bfa72881e7833\\\",\\\"sha1\\\":\\\"085c3a5d89c24c2c48485e403690c314a4503754\\\",\\\"sha256\\\":\\\"eab8df11791202defeb695cc42e44f9c27f014667bb7d892a3ac5c4590a0d7e1\\\"},\\\"dob\\\":{\\\"date\\\":\\\"1980-08-08T04:27:38.807Z\\\",\\\"age\\\":43},\\\"registered\\\":{\\\"date\\\":\\\"2018-03-06T23:05:29.464Z\\\",\\\"age\\\":6},\\\"phone\\\":\\\"966-795-857\\\",\\\"cell\\\":\\\"637-530-000\\\",\\\"id\\\":{\\\"name\\\":\\\"DNI\\\",\\\"value\\\":\\\"09092377-Q\\\"},\\\"picture\\\":{\\\"large\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/women\\\\\\/16.jpg\\\",\\\"medium\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/med\\\\\\/women\\\\\\/16.jpg\\\",\\\"thumbnail\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/thumb\\\\\\/women\\\\\\/16.jpg\\\"},\\\"nat\\\":\\\"ES\\\"}\"', '2024-05-18 05:37:28', '2024-05-18 05:37:28'),
(21, 2, 'Vesna Mercier', 'Rue de la Mairie', 'vesna.mercier@example.com', 9, 18, 'A', '\"{\\\"gender\\\":\\\"female\\\",\\\"name\\\":{\\\"title\\\":\\\"Madame\\\",\\\"first\\\":\\\"Vesna\\\",\\\"last\\\":\\\"Mercier\\\"},\\\"location\\\":{\\\"street\\\":{\\\"number\\\":9700,\\\"name\\\":\\\"Rue de la Mairie\\\"},\\\"city\\\":\\\"Essertines-sur-Yverdon\\\",\\\"state\\\":\\\"Uri\\\",\\\"country\\\":\\\"Switzerland\\\",\\\"postcode\\\":5380,\\\"coordinates\\\":{\\\"latitude\\\":\\\"-64.0531\\\",\\\"longitude\\\":\\\"150.3215\\\"},\\\"timezone\\\":{\\\"offset\\\":\\\"-4:00\\\",\\\"description\\\":\\\"Atlantic Time (Canada), Caracas, La Paz\\\"}},\\\"email\\\":\\\"vesna.mercier@example.com\\\",\\\"login\\\":{\\\"uuid\\\":\\\"fa24fa4d-b4a6-4e13-84cb-bef57d7907dc\\\",\\\"username\\\":\\\"sadpanda930\\\",\\\"password\\\":\\\"samsam\\\",\\\"salt\\\":\\\"rOz4hpqq\\\",\\\"md5\\\":\\\"6edc6fdd27693d579fdac0e2cd878177\\\",\\\"sha1\\\":\\\"87b3f86d3f160221fa6bcd6208e7951d56bd8413\\\",\\\"sha256\\\":\\\"3a5a8344fdf40e8fd8351772147df431bc11871e2077aa5333cf39d147ae891b\\\"},\\\"dob\\\":{\\\"date\\\":\\\"1998-03-17T18:20:51.234Z\\\",\\\"age\\\":26},\\\"registered\\\":{\\\"date\\\":\\\"2008-09-27T03:02:52.120Z\\\",\\\"age\\\":15},\\\"phone\\\":\\\"078 048 71 41\\\",\\\"cell\\\":\\\"075 269 74 60\\\",\\\"id\\\":{\\\"name\\\":\\\"AVS\\\",\\\"value\\\":\\\"756.0845.1983.94\\\"},\\\"picture\\\":{\\\"large\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/women\\\\\\/46.jpg\\\",\\\"medium\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/med\\\\\\/women\\\\\\/46.jpg\\\",\\\"thumbnail\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/thumb\\\\\\/women\\\\\\/46.jpg\\\"},\\\"nat\\\":\\\"CH\\\"}\"', '2024-05-18 05:43:47', '2024-05-18 05:43:47'),
(22, 1, 'Ewald Van de Bunt', 'De Schagense Snees', 'ewald.vandebunt@example.com', 15, 16, 'B', '\"{\\\"gender\\\":\\\"male\\\",\\\"name\\\":{\\\"title\\\":\\\"Mr\\\",\\\"first\\\":\\\"Ewald\\\",\\\"last\\\":\\\"Van de Bunt\\\"},\\\"location\\\":{\\\"street\\\":{\\\"number\\\":1409,\\\"name\\\":\\\"De Schagense Snees\\\"},\\\"city\\\":\\\"Schouwen-Duiveland\\\",\\\"state\\\":\\\"Flevoland\\\",\\\"country\\\":\\\"Netherlands\\\",\\\"postcode\\\":\\\"4761 ZJ\\\",\\\"coordinates\\\":{\\\"latitude\\\":\\\"36.1533\\\",\\\"longitude\\\":\\\"-110.5210\\\"},\\\"timezone\\\":{\\\"offset\\\":\\\"+9:30\\\",\\\"description\\\":\\\"Adelaide, Darwin\\\"}},\\\"email\\\":\\\"ewald.vandebunt@example.com\\\",\\\"login\\\":{\\\"uuid\\\":\\\"4be26c1a-77ed-4226-a8b4-9d2e531f5a53\\\",\\\"username\\\":\\\"sadfish617\\\",\\\"password\\\":\\\"lancelot\\\",\\\"salt\\\":\\\"CD6Zklz5\\\",\\\"md5\\\":\\\"c0f5da34df4e5cafc038292647f61bb4\\\",\\\"sha1\\\":\\\"c18e8236ec7876d1346ba5cc81790ca674167e18\\\",\\\"sha256\\\":\\\"19a6097923623abfc6a1689f2dc26d1369e58aa1dab6f83525c8543cd170ed9e\\\"},\\\"dob\\\":{\\\"date\\\":\\\"1992-09-12T03:26:07.098Z\\\",\\\"age\\\":31},\\\"registered\\\":{\\\"date\\\":\\\"2004-11-15T11:09:19.266Z\\\",\\\"age\\\":19},\\\"phone\\\":\\\"(032) 1936317\\\",\\\"cell\\\":\\\"(06) 53402721\\\",\\\"id\\\":{\\\"name\\\":\\\"BSN\\\",\\\"value\\\":\\\"06852393\\\"},\\\"picture\\\":{\\\"large\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/men\\\\\\/90.jpg\\\",\\\"medium\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/med\\\\\\/men\\\\\\/90.jpg\\\",\\\"thumbnail\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/thumb\\\\\\/men\\\\\\/90.jpg\\\"},\\\"nat\\\":\\\"NL\\\"}\"', '2024-05-18 05:43:48', '2024-05-18 05:43:48'),
(23, 1, 'René Jesse', 'Blumenstraße', 'rene.jesse@example.com', 20, 11, 'D', '\"{\\\"gender\\\":\\\"male\\\",\\\"name\\\":{\\\"title\\\":\\\"Mr\\\",\\\"first\\\":\\\"Ren\\\\u00e9\\\",\\\"last\\\":\\\"Jesse\\\"},\\\"location\\\":{\\\"street\\\":{\\\"number\\\":9950,\\\"name\\\":\\\"Blumenstra\\\\u00dfe\\\"},\\\"city\\\":\\\"Waldeck\\\",\\\"state\\\":\\\"Sachsen-Anhalt\\\",\\\"country\\\":\\\"Germany\\\",\\\"postcode\\\":30651,\\\"coordinates\\\":{\\\"latitude\\\":\\\"-47.9751\\\",\\\"longitude\\\":\\\"-39.0316\\\"},\\\"timezone\\\":{\\\"offset\\\":\\\"+6:00\\\",\\\"description\\\":\\\"Almaty, Dhaka, Colombo\\\"}},\\\"email\\\":\\\"rene.jesse@example.com\\\",\\\"login\\\":{\\\"uuid\\\":\\\"c6cf2ed3-8b98-40cb-a602-18d836270cc1\\\",\\\"username\\\":\\\"beautifuldog194\\\",\\\"password\\\":\\\"genius\\\",\\\"salt\\\":\\\"IRLHaURz\\\",\\\"md5\\\":\\\"2f944d21755a2551c5901a3b6d129944\\\",\\\"sha1\\\":\\\"0b99bad043b6f442deaf72735e12dfe728cce949\\\",\\\"sha256\\\":\\\"1716e20340757574fd0ec55763f68ebbb7f13725a429eda1b578cfdbb4b77745\\\"},\\\"dob\\\":{\\\"date\\\":\\\"1973-11-29T23:27:36.753Z\\\",\\\"age\\\":50},\\\"registered\\\":{\\\"date\\\":\\\"2018-12-23T17:45:26.288Z\\\",\\\"age\\\":5},\\\"phone\\\":\\\"0231-4077108\\\",\\\"cell\\\":\\\"0174-4607616\\\",\\\"id\\\":{\\\"name\\\":\\\"SVNR\\\",\\\"value\\\":\\\"46 291173 J 321\\\"},\\\"picture\\\":{\\\"large\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/men\\\\\\/51.jpg\\\",\\\"medium\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/med\\\\\\/men\\\\\\/51.jpg\\\",\\\"thumbnail\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/thumb\\\\\\/men\\\\\\/51.jpg\\\"},\\\"nat\\\":\\\"DE\\\"}\"', '2024-05-18 05:48:49', '2024-05-18 05:48:49'),
(24, 2, 'Beverly Hart', 'Smokey Ln', 'beverly.hart@example.com', 16, 15, 'D', '\"{\\\"gender\\\":\\\"female\\\",\\\"name\\\":{\\\"title\\\":\\\"Mrs\\\",\\\"first\\\":\\\"Beverly\\\",\\\"last\\\":\\\"Hart\\\"},\\\"location\\\":{\\\"street\\\":{\\\"number\\\":4398,\\\"name\\\":\\\"Smokey Ln\\\"},\\\"city\\\":\\\"Daly City\\\",\\\"state\\\":\\\"Mississippi\\\",\\\"country\\\":\\\"United States\\\",\\\"postcode\\\":39664,\\\"coordinates\\\":{\\\"latitude\\\":\\\"84.1458\\\",\\\"longitude\\\":\\\"40.0852\\\"},\\\"timezone\\\":{\\\"offset\\\":\\\"+5:30\\\",\\\"description\\\":\\\"Bombay, Calcutta, Madras, New Delhi\\\"}},\\\"email\\\":\\\"beverly.hart@example.com\\\",\\\"login\\\":{\\\"uuid\\\":\\\"167b7c37-53f0-48dc-9a1c-a958e452f280\\\",\\\"username\\\":\\\"silvermouse645\\\",\\\"password\\\":\\\"altoids\\\",\\\"salt\\\":\\\"m7dG1WJO\\\",\\\"md5\\\":\\\"831383d3df0dc004c620128759b88af3\\\",\\\"sha1\\\":\\\"ae5e18613458f5a0c1a0083d44d2f114afe6c91c\\\",\\\"sha256\\\":\\\"7bc66983891c2ab76dd8a4ccb2e74eeed5b03c01ea2b4348c32ce3716fc2fd05\\\"},\\\"dob\\\":{\\\"date\\\":\\\"1964-05-07T16:23:03.563Z\\\",\\\"age\\\":60},\\\"registered\\\":{\\\"date\\\":\\\"2012-11-17T04:29:23.324Z\\\",\\\"age\\\":11},\\\"phone\\\":\\\"(431) 915-0396\\\",\\\"cell\\\":\\\"(676) 982-0998\\\",\\\"id\\\":{\\\"name\\\":\\\"SSN\\\",\\\"value\\\":\\\"175-78-2899\\\"},\\\"picture\\\":{\\\"large\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/women\\\\\\/89.jpg\\\",\\\"medium\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/med\\\\\\/women\\\\\\/89.jpg\\\",\\\"thumbnail\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/thumb\\\\\\/women\\\\\\/89.jpg\\\"},\\\"nat\\\":\\\"US\\\"}\"', '2024-05-18 05:48:50', '2024-05-18 05:48:50'),
(25, 1, 'امیر کریمی', 'قائم مقام فراهانی', 'myr.khrymy@example.com', 11, 21, 'D', '\"{\\\"gender\\\":\\\"male\\\",\\\"name\\\":{\\\"title\\\":\\\"Mr\\\",\\\"first\\\":\\\"\\\\u0627\\\\u0645\\\\u06cc\\\\u0631\\\",\\\"last\\\":\\\"\\\\u06a9\\\\u0631\\\\u06cc\\\\u0645\\\\u06cc\\\"},\\\"location\\\":{\\\"street\\\":{\\\"number\\\":6194,\\\"name\\\":\\\"\\\\u0642\\\\u0627\\\\u0626\\\\u0645 \\\\u0645\\\\u0642\\\\u0627\\\\u0645 \\\\u0641\\\\u0631\\\\u0627\\\\u0647\\\\u0627\\\\u0646\\\\u06cc\\\"},\\\"city\\\":\\\"\\\\u0622\\\\u0628\\\\u0627\\\\u062f\\\\u0627\\\\u0646\\\",\\\"state\\\":\\\"\\\\u0642\\\\u0632\\\\u0648\\\\u06cc\\\\u0646\\\",\\\"country\\\":\\\"Iran\\\",\\\"postcode\\\":38998,\\\"coordinates\\\":{\\\"latitude\\\":\\\"20.4856\\\",\\\"longitude\\\":\\\"-166.7691\\\"},\\\"timezone\\\":{\\\"offset\\\":\\\"+5:30\\\",\\\"description\\\":\\\"Bombay, Calcutta, Madras, New Delhi\\\"}},\\\"email\\\":\\\"myr.khrymy@example.com\\\",\\\"login\\\":{\\\"uuid\\\":\\\"3eb99085-2e37-414b-bc02-132c04f49afc\\\",\\\"username\\\":\\\"angrycat160\\\",\\\"password\\\":\\\"sevens\\\",\\\"salt\\\":\\\"k4oCfrT9\\\",\\\"md5\\\":\\\"abe1f165a3c8feebd3bf3a59e54fc1cc\\\",\\\"sha1\\\":\\\"7a5a18775a0312baa86ce5f639a529efe6f9331a\\\",\\\"sha256\\\":\\\"5beebdd69aea948a1eb9e69fe450516a2689d6d8a9732ecf43f98edbb298bf90\\\"},\\\"dob\\\":{\\\"date\\\":\\\"1957-03-26T00:26:16.131Z\\\",\\\"age\\\":67},\\\"registered\\\":{\\\"date\\\":\\\"2005-12-25T04:07:48.173Z\\\",\\\"age\\\":18},\\\"phone\\\":\\\"002-92569731\\\",\\\"cell\\\":\\\"0962-744-9410\\\",\\\"id\\\":{\\\"name\\\":\\\"\\\",\\\"value\\\":null},\\\"picture\\\":{\\\"large\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/men\\\\\\/76.jpg\\\",\\\"medium\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/med\\\\\\/men\\\\\\/76.jpg\\\",\\\"thumbnail\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/thumb\\\\\\/men\\\\\\/76.jpg\\\"},\\\"nat\\\":\\\"IR\\\"}\"', '2024-05-18 05:49:51', '2024-05-18 05:49:51'),
(26, 1, 'Nihal Shayana', 'Marine Drive', 'nihal.shayana@example.com', 15, 14, 'E', '\"{\\\"gender\\\":\\\"male\\\",\\\"name\\\":{\\\"title\\\":\\\"Mr\\\",\\\"first\\\":\\\"Nihal\\\",\\\"last\\\":\\\"Shayana\\\"},\\\"location\\\":{\\\"street\\\":{\\\"number\\\":3918,\\\"name\\\":\\\"Marine Drive\\\"},\\\"city\\\":\\\"Mirzapur\\\",\\\"state\\\":\\\"Mizoram\\\",\\\"country\\\":\\\"India\\\",\\\"postcode\\\":35617,\\\"coordinates\\\":{\\\"latitude\\\":\\\"6.3504\\\",\\\"longitude\\\":\\\"-98.9978\\\"},\\\"timezone\\\":{\\\"offset\\\":\\\"+3:30\\\",\\\"description\\\":\\\"Tehran\\\"}},\\\"email\\\":\\\"nihal.shayana@example.com\\\",\\\"login\\\":{\\\"uuid\\\":\\\"ad9689a4-ed22-40e5-b110-63261cdcee85\\\",\\\"username\\\":\\\"beautifulbird489\\\",\\\"password\\\":\\\"adults\\\",\\\"salt\\\":\\\"51jia5wo\\\",\\\"md5\\\":\\\"32fd4945bb816cce1575dd3820fe7704\\\",\\\"sha1\\\":\\\"4928b285a41e3ebfdebcbee704ac9c844a6f10a1\\\",\\\"sha256\\\":\\\"39a5c59c04f308c98ca2de702d99af3e35d7bd5eb23b8a42c53dd4fa73558e9c\\\"},\\\"dob\\\":{\\\"date\\\":\\\"1955-04-24T09:03:46.504Z\\\",\\\"age\\\":69},\\\"registered\\\":{\\\"date\\\":\\\"2004-10-27T07:18:23.319Z\\\",\\\"age\\\":19},\\\"phone\\\":\\\"7787885344\\\",\\\"cell\\\":\\\"8126870620\\\",\\\"id\\\":{\\\"name\\\":\\\"UIDAI\\\",\\\"value\\\":\\\"258339466710\\\"},\\\"picture\\\":{\\\"large\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/men\\\\\\/41.jpg\\\",\\\"medium\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/med\\\\\\/men\\\\\\/41.jpg\\\",\\\"thumbnail\\\":\\\"https:\\\\\\/\\\\\\/randomuser.me\\\\\\/api\\\\\\/portraits\\\\\\/thumb\\\\\\/men\\\\\\/41.jpg\\\"},\\\"nat\\\":\\\"IN\\\"}\"', '2024-05-18 05:49:53', '2024-05-18 05:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kelamin`
--

CREATE TABLE `jenis_kelamin` (
  `kode` tinyint(4) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_barangs`
--

CREATE TABLE `kategori_barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_barangs`
--

INSERT INTO `kategori_barangs` (`id`, `kode`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'KT001', 'Kitchen set', '2024-05-18 05:24:08', '2024-05-18 05:24:08'),
(2, 'FS001', 'Family set', '2024-05-18 05:24:08', '2024-05-18 05:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_18_081707_create_hasil_response_table', 1),
(6, '2024_05_18_082734_create_jenis_kelamin_table', 1),
(7, '2024_05_18_082743_create_tabel_profesi_table', 1),
(9, '2024_05_18_111132_create_kategori_barangs_table', 1),
(10, '2024_05_18_111211_create_satuan_barangs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satuan_barangs`
--

CREATE TABLE `satuan_barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satuan_barangs`
--

INSERT INTO `satuan_barangs` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Meter', '2024-05-18 05:28:44', '2024-05-18 05:28:44'),
(2, 'Lusin', '2024-05-18 05:28:44', '2024-05-18 05:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_profesi`
--

CREATE TABLE `tabel_profesi` (
  `kode` char(1) NOT NULL,
  `nama_profesi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barangs_kode_kategori_foreign` (`kode_kategori`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hasil_response`
--
ALTER TABLE `hasil_response`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hasil_response_jenis_kelamin_foreign` (`jenis_kelamin`),
  ADD KEY `hasil_response_profesi_foreign` (`profesi`);

--
-- Indexes for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `kategori_barangs`
--
ALTER TABLE `kategori_barangs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_barangs_kode_unique` (`kode`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `satuan_barangs`
--
ALTER TABLE `satuan_barangs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `satuan_barangs_nama_unique` (`nama`);

--
-- Indexes for table `tabel_profesi`
--
ALTER TABLE `tabel_profesi`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hasil_response`
--
ALTER TABLE `hasil_response`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `kategori_barangs`
--
ALTER TABLE `kategori_barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satuan_barangs`
--
ALTER TABLE `satuan_barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangs`
--
ALTER TABLE `barangs`
  ADD CONSTRAINT `barangs_kode_kategori_foreign` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori_barangs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
