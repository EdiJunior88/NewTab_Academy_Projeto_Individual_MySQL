/* Criar um banco de dados para o projeto 1 */
CREATE SCHEMA `controle_financeiro` ;

/* Criar a tabela “transacao” com os seguintes campos */
CREATE TABLE `controle_financeiro`.`transacao` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Tipo` VARCHAR(45) NULL,
  `Nome` VARCHAR(100) NULL,
  `Valor` FLOAT(30,2) NULL,
  `Data_de_Cadastro` DATE NULL,
  PRIMARY KEY (`Id`));

/* Criar uma query que insira uma transação com os campos tipo, nome, valor e data de cadastro. */
INSERT INTO `controle_financeiro`.`transacao` (`Tipo`, `Nome`, `Valor`, `Data_de_Cadastro`) 
  VALUES 
  ('compra', 'bolo', '10.00', '2022/03/01');

INSERT INTO `controle_financeiro`.`transacao` (`Tipo`, `Nome`, `Valor`, `Data_de_Cadastro`) 
  VALUES 
  ('venda', 'geladeira', '1500.00', '2022-03-15');

INSERT INTO `controle_financeiro`.`transacao` (`Tipo`, `Nome`, `Valor`, `Data_de_Cadastro`) 
  VALUES 
  ('venda', 'lâmpada fluorescente', '55.65', '2022-04-02');

INSERT INTO `controle_financeiro`.`transacao` (`Tipo`, `Nome`, `Valor`, `Data_de_Cadastro`) 
  VALUES 
  ('compra', 'máquina de lavar roupa', '2354.89', '2022-04-06');

/* Criar uma query que retorne todas as transações cadastradas em ordem crescente da data de cadastro. */
SELECT * FROM controle_financeiro.transacao
ORDER BY `Data_de_Cadastro` ASC;

/* Criar uma query que retorne o saldo acumulado considerando todas as transações cadastradas */
SELECT SUM(Valor) FROM controle_financeiro.transacao;

/* Criar uma query que exclua todas as transações cadastradas. */
DELETE FROM `controle_financeiro`.`transacao` WHERE (`Id` = '1');
DELETE FROM `controle_financeiro`.`transacao` WHERE (`Id` = '2');
DELETE FROM `controle_financeiro`.`transacao` WHERE (`Id` = '3');
DELETE FROM `controle_financeiro`.`transacao` WHERE (`Id` = '4');