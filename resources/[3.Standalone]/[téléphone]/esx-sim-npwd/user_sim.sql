USE `es_extended`;

CREATE TABLE `user_sim` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(555) NOT NULL,
  `number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `label` varchar(555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE `user_sim`
  ADD PRIMARY KEY (`id`);