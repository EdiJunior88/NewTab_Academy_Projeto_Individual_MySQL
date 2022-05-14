/* Criar um banco de dados para o projeto 2. */
CREATE SCHEMA `app_pagamento` ;

/* Criar a tabela "usuario" com os seguintes campos */
CREATE TABLE `app_pagamento`.`usuario` (
  `Id` INT NOT NULL,
  `Nome` VARCHAR(100) NOT NULL,
  `Imagem` BLOB NULL,
  `Nome_de_Usuario` VARCHAR(50) NULL,
  `Data_de_Cadastro` DATE NULL,
  PRIMARY KEY (`Id`));

/* Criar a tabela "cartao" com os seguintes campos */
CREATE TABLE `app_pagamento`.`cartão` (
  `Id` INT NOT NULL,
  `Numero` TINYTEXT NULL,
  `CVV` INT(3) NULL,
  `Data_de_Expiracao` DATE NULL,
  `Valido` DATE NULL,
  `Data_de_Cadastro` DATE NULL,
  PRIMARY KEY (`Id`));

/* Criar a tabela "transacao" com os seguintes campos */
CREATE TABLE `app_pagamento`.`transacao` (
  `Id` INT NOT NULL,
  `Id_Usuario_UNIQUE` INT NULL,
  `Id_Cartao_UNIQUE` INT NULL,
  `Valor` FLOAT(30,2) NULL,
  `Data_de_Cadastro` DATETIME NULL,
  PRIMARY KEY (`Id`));

/* Criar uma query que insira um usuário com os campos nome, imagem, nome de usuário e data de cadastro. */
INSERT INTO `app_pagamento`.`usuario` (`Id`, `Nome`, `Imagem`, `Nome_de_Usuario`, `Data_de_Cadastro`) VALUES ('1', 'Eduardo Santos', ?, '@eduardo.santos', '2019-05-28');
INSERT INTO `app_pagamento`.`usuario` (`Id`, `Nome`, `Imagem`, `Nome_de_Usuario`, `Data_de_Cadastro`) VALUES ('2', 'Marina Coelho', ?, '@marina.coelho', '2019-01-01');
INSERT INTO `app_pagamento`.`usuario` (`Id`, `Nome`, `Imagem`, `Nome_de_Usuario`, `Data_de_Cadastro`) VALUES ('3', 'Márcia da Silva', ?, '@marcia.silva', '2020-10-07');
INSERT INTO `app_pagamento`.`usuario` (`Id`, `Nome`, `Imagem`, `Nome_de_Usuario`, `Data_de_Cadastro`) VALUES ('4', 'Fabrício Val', ?, '@fabricio.val', '2020-12-12');
INSERT INTO `app_pagamento`.`usuario` (`Id`, `Nome`, `Imagem`, `Nome_de_Usuario`, `Data_de_Cadastro`) VALUES ('5', 'Júlia Magalhães', ?, '@julia.magalhaes', '2022-05-13');

/* Criar uma query que retorne todos os usuários cadastrados em ordem alfabética */
SELECT * FROM app_pagamento.usuario
ORDER BY Nome ASC;

/* Criar uma query que insira um cartão com os campos número, cvv, data de expiração, válido e data de cadastro. */
INSERT INTO `app_pagamento`.`cartão` (`Id`, `Numero`, `CVV`, `Data_de_Expiracao`, `Valido`, `Data_de_Cadastro`) VALUES ('1', '1111111111111111', '789', '2020-01-01', '2030-01-01', '2019-05-02');
INSERT INTO `app_pagamento`.`cartão` (`Id`, `Numero`, `CVV`, `Data_de_Expiracao`, `Valido`, `Data_de_Cadastro`) VALUES ('2', '1111111111111111', '789', '2020-01-01', '2029-05-05', '2018-01-12');
INSERT INTO `app_pagamento`.`cartão` (`Id`, `Numero`, `CVV`, `Data_de_Expiracao`, `Valido`, `Data_de_Cadastro`) VALUES ('3', '4111111111111234', '123', '2018-01-01', '2028-12-22', '2001-11-06');
INSERT INTO `app_pagamento`.`cartão` (`Id`, `Numero`, `CVV`, `Data_de_Expiracao`, `Valido`, `Data_de_Cadastro`) VALUES ('4', '4111111111111234', '123', '2018-01-01', '2027-05-08', '1998-05-05');
INSERT INTO `app_pagamento`.`cartão` (`Id`, `Numero`, `CVV`, `Data_de_Expiracao`, `Valido`, `Data_de_Cadastro`) VALUES ('5', '1111111111111111', '789', '2020-01-01', '2031-12-02', '2012-05-06');

/* Criar uma query que retorne apenas os cartões válidos em ordem crescente da data de cadastro */
SELECT Numero, Data_de_Cadastro
FROM `app_pagamento`.`cartão`
WHERE Numero = "1111111111111111"
ORDER BY Data_de_Cadastro ASC;

/* Criar uma query que insira uma transação com os campos id_usuario, id_cartao, valor e data de cadastro */
INSERT INTO `app_pagamento`.`transacao` (`Id`, `Id_Usuario`, `Id_Cartao`, `Valor`, `Data_de_Cadastro`) VALUES ('1', '1', '1', '2500.30', '2020-05-06');
INSERT INTO `app_pagamento`.`transacao` (`Id`, `Id_Usuario`, `Id_Cartao`, `Valor`, `Data_de_Cadastro`) VALUES ('2', '2', '2', '30.65', '2020-06-04');
INSERT INTO `app_pagamento`.`transacao` (`Id`, `Id_Usuario`, `Id_Cartao`, `Valor`, `Data_de_Cadastro`) VALUES ('3', '3', '3', '90.65', '2021-10-10');
INSERT INTO `app_pagamento`.`transacao` (`Id`, `Id_Usuario`, `Id_Cartao`, `Valor`, `Data_de_Cadastro`) VALUES ('4', '4', '4', '1.63', '1996-05-06');
INSERT INTO `app_pagamento`.`transacao` (`Id`, `Id_Usuario`, `Id_Cartao`, `Valor`, `Data_de_Cadastro`) VALUES ('5', '5', '5', '15556.56', '2022-01-01');

/* Criar uma query que retorne todas as transações cadastradas em ordem decrescente da data de cadastro, contendo os dados do usuário e cartão, não apenas seus IDs */
