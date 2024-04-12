-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:8889
-- Thời gian đã tạo: Th4 12, 2024 lúc 07:24 AM
-- Phiên bản máy phục vụ: 5.7.34
-- Phiên bản PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lara01`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_27_083953_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 15, 'Mrs.', 'Autem dicta eius itaque. Dicta aut fugit enim vitae.', NULL, NULL),
(2, 12, 'Prof.', 'Voluptas ipsam perferendis accusamus.', NULL, NULL),
(3, 14, 'Mr.', 'Sed id et tenetur doloremque.', NULL, NULL),
(4, 11, 'Miss', 'Iure harum error esse provident magni tempore. Quia aliquid vel ut quam ad numquam porro.', NULL, NULL),
(5, 5, 'Mr.', 'Nihil quia sint soluta quo similique repudiandae est.', NULL, NULL),
(6, 12, 'Dr.', 'Ad at ut non. Asperiores nostrum atque inventore corporis corporis explicabo impedit.', NULL, NULL),
(7, 5, 'Dr.', 'Voluptatum ipsa incidunt mollitia consequatur ut pariatur reiciendis. Quaerat ea qui a alias maiores quisquam et.', NULL, NULL),
(8, 19, 'Dr.', 'Rerum accusantium sit harum. Laudantium quas dolor laborum eum.', NULL, NULL),
(9, 3, 'Miss', 'Modi voluptatem consequuntur numquam facere. Et sequi non et quae ut.', NULL, NULL),
(10, 18, 'Dr.', 'Quo laudantium minima accusamus ipsa sit.', NULL, NULL),
(11, 19, 'Mr.', 'Et voluptatem sed quas aut exercitationem.', NULL, NULL),
(12, 18, 'Mr.', 'Veniam distinctio sequi quisquam ad facilis ea non.', NULL, NULL),
(13, 20, 'Dr.', 'Aut aut aspernatur sed et praesentium aut qui. Error hic occaecati aperiam velit nostrum.', NULL, NULL),
(14, 13, 'Mrs.', 'Doloremque accusamus et aut pariatur magnam nostrum optio. Enim occaecati dolores et sint nobis modi.', NULL, NULL),
(15, 8, 'Mr.', 'Maxime molestiae mollitia maxime debitis illum. Eos rerum optio provident possimus aut aperiam ad voluptas.', NULL, NULL),
(16, 9, 'Ms.', 'Odio possimus sunt occaecati commodi. Ad quasi eos vitae est.', NULL, NULL),
(17, 9, 'Miss', 'Quas neque eaque provident aspernatur voluptates.', NULL, NULL),
(18, 6, 'Dr.', 'Nihil id neque est et ut commodi ut.', NULL, NULL),
(19, 16, 'Miss', 'Quos non enim quod dolorem. Omnis incidunt nihil vero dolores architecto omnis facere.', NULL, NULL),
(20, 6, 'Prof.', 'Doloremque ratione quia officia quis consequuntur.', NULL, NULL),
(21, 12, 'Mrs.', 'Iusto asperiores impedit sapiente laboriosam molestiae impedit fugiat.', NULL, NULL),
(22, 9, 'Prof.', 'Tempora sint rem nulla qui. Voluptas sit suscipit quia et.', NULL, NULL),
(23, 16, 'Mrs.', 'Eum dolores libero voluptates.', NULL, NULL),
(24, 8, 'Ms.', 'Voluptas et in eum quisquam nam aut odit.', NULL, NULL),
(25, 19, 'Prof.', 'Consequatur est deserunt corrupti aspernatur sapiente.', NULL, NULL),
(26, 3, 'Prof.', 'Nesciunt maiores aspernatur id at at molestiae harum.', NULL, NULL),
(27, 9, 'Dr.', 'Facilis dolore voluptas architecto id ex vel vel.', NULL, NULL),
(28, 19, 'Prof.', 'Error ut minima fugit ipsam nemo qui.', NULL, NULL),
(29, 13, 'Mrs.', 'Vel id similique ut a qui. Ut sint sed consectetur rerum fugit qui aut.', NULL, NULL),
(30, 3, 'Dr.', 'Qui commodi deserunt accusamus. Possimus id dignissimos cumque voluptatem.', NULL, NULL),
(31, 11, 'Prof.', 'Fugiat saepe voluptatem enim voluptatem ut est.', NULL, NULL),
(32, 17, 'Dr.', 'Voluptatum consequatur quae ut voluptas quo tempora id est.', NULL, NULL),
(33, 18, 'Mr.', 'Ipsam et qui illum nihil voluptatem voluptates sit repudiandae.', NULL, NULL),
(34, 5, 'Miss', 'Ipsa voluptatum maiores labore et placeat.', NULL, NULL),
(35, 4, 'Prof.', 'Sunt sed sit saepe sapiente dolore. Distinctio repellendus neque excepturi consequatur soluta est eveniet.', NULL, NULL),
(36, 1, 'Dr.', 'Rerum ad aut iusto et in. Optio et qui temporibus quas explicabo ipsa.', NULL, NULL),
(37, 11, 'Ms.', 'Et atque rerum saepe non ut impedit voluptates voluptatem.', NULL, NULL),
(38, 19, 'Dr.', 'Quod dolores eligendi nemo dolorem est reprehenderit. Magnam aliquid et consequuntur quo commodi quia tenetur.', NULL, NULL),
(39, 6, 'Miss', 'Quos qui ex aliquam et.', NULL, NULL),
(40, 5, 'Prof.', 'Voluptatem quibusdam placeat eum at qui dolor eum. Mollitia rem qui recusandae quaerat sapiente ad nobis.', NULL, NULL),
(41, 15, 'Prof.', 'Et voluptatem id non quia ex.', NULL, NULL),
(43, 6, 'Prof.', 'Error laboriosam dolor aliquid ipsa quisquam enim ut.', NULL, NULL),
(44, 13, 'Dr.', 'Qui qui magnam rem sed accusamus omnis cupiditate.', NULL, NULL),
(45, 15, 'Prof.', 'Non dolorem et dolor ullam', NULL, '2024-03-05 23:45:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Bernard Williamson', 'imckenzie@yahoo.com', NULL, NULL),
(2, 'Candice Schneider', 'maribel.herman@gmail.com', NULL, NULL),
(3, 'Jose Price', 'haley.beer@prosacco.com', NULL, NULL),
(4, 'Prof. Octavia Collins', 'hschuster@paucek.com', NULL, NULL),
(5, 'Seamus Medhurst', 'celia98@yahoo.com', NULL, NULL),
(6, 'Mr. Dan Stiedemann PhD', 'weissnat.fatima@gmail.com', NULL, NULL),
(7, 'Tyree Waelchi V', 'marco68@gmail.com', NULL, NULL),
(8, 'Madonna Kutch', 'fhahn@pollich.com', NULL, NULL),
(9, 'Jeromy Schmidt', 'kieran.boyle@oconner.com', NULL, NULL),
(10, 'Mrs. Maximillia Durgan MD', 'metz.norval@yahoo.com', NULL, NULL),
(11, 'Dr. Marc Johnson', 'eldon.von@gmail.com', NULL, NULL),
(12, 'Jammie Beatty MD', 'lind.eliseo@hotmail.com', NULL, NULL),
(13, 'Unique Heaney', 'agustin.beier@gmail.com', NULL, NULL),
(14, 'Mittie Nader', 'orn.jabari@jakubowski.com', NULL, NULL),
(15, 'Claire Douglas', 'augustus.ritchie@hotmail.com', NULL, NULL),
(16, 'Arnulfo McCullough', 'aubrey00@hotmail.com', NULL, NULL),
(17, 'Mrs. Jaquelin Graham', 'nakia.brekke@gmail.com', NULL, NULL),
(18, 'Mrs. Laila Gibson', 'winona90@hotmail.com', NULL, NULL),
(19, 'Madelyn Brakus Jr.', 'lucinda.krajcik@yahoo.com', NULL, NULL),
(20, 'Catherine DuBuque', 'reyna.graham@gmail.com', NULL, NULL),
(21, 'Saige DuBuque MD', 'ora66@gmail.com', NULL, NULL),
(22, 'Dr. Theron Kling', 'osinski.zackery@gmail.com', NULL, NULL),
(23, 'Mervin Lindgren', 'kira21@russel.com', NULL, NULL),
(24, 'Prof. Kendall Boyle', 'vrice@dickens.com', NULL, NULL),
(25, 'Ebony Willms DDS', 'ulices.jacobi@hotmail.com', NULL, NULL),
(26, 'Keyshawn Fritsch', 'alayna.oconnell@pouros.biz', NULL, NULL),
(27, 'Dr. Hattie Hackett', 'dangelo.ratke@hotmail.com', NULL, NULL),
(28, 'Dr. Erna Olson', 'shania18@hotmail.com', NULL, NULL),
(29, 'Mossie Turcotte', 'kaia.kassulke@sauer.com', NULL, NULL),
(30, 'Jerrell Abbott', 'xander.rosenbaum@hotmail.com', NULL, NULL),
(31, 'Weldon Quigley', 'akeebler@yahoo.com', NULL, NULL),
(32, 'Zander Schulist', 'mariam.emmerich@gmail.com', NULL, NULL),
(33, 'Carol Ebert', 'luna.nikolaus@deckow.net', NULL, NULL),
(34, 'Mrs. Pansy Huel', 'alisa.hegmann@gmail.com', NULL, NULL),
(35, 'Destini Bogisich', 'lonnie.crooks@nienow.com', NULL, NULL),
(36, 'Dayne Gaylord PhD', 'jasen96@gmail.com', NULL, NULL),
(37, 'Elody Brekke I', 'ashton.metz@gmail.com', NULL, NULL),
(38, 'Ana Bednar', 'kade.douglas@yahoo.com', NULL, NULL),
(39, 'Garnet Simonis', 'klein.wyatt@gmail.com', NULL, NULL),
(40, 'Keely Rau', 'ericka.mcglynn@bergnaum.net', NULL, NULL),
(41, 'Brannon Kiehn', 'dmonahan@denesik.org', NULL, NULL),
(42, 'Mr. Cullen Stamm', 'mohr.everette@gmail.com', NULL, NULL),
(43, 'Alford Breitenberg', 'cturner@fritsch.com', NULL, NULL),
(44, 'Dr. Colby Mante', 'fraynor@howe.com', NULL, NULL),
(45, 'Ignacio Zemlak', 'adrian32@brekke.com', NULL, NULL),
(46, 'Lucas Hodkiewicz', 'jessyca.nienow@gmail.com', NULL, NULL),
(47, 'Alanna Schneider I', 'bashirian.sydni@yahoo.com', NULL, NULL),
(48, 'Conner Heaney', 'towne.cydney@schinner.com', NULL, NULL),
(49, 'Justen Casper', 'antwan74@larson.com', NULL, NULL),
(50, 'Ms. Heath Greenholt PhD', 'gracie.gerlach@ohara.com', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
