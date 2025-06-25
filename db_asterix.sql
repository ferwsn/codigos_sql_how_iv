	CREATE DATABASE db_asterix;
	GO
	USE db_asterix;
	GO
	CREATE TABLE cliente (
		id_cliente INT PRIMARY KEY IDENTITY(1,1),
		nome VARCHAR(100) NOT NULL,
		cpf CHAR(11),
		email VARCHAR(100)
	);
	GO
	CREATE TABLE compra (
		id_compra INT PRIMARY KEY IDENTITY(1,1),
		data DATE NOT NULL,
		valor_total DECIMAL(10,2) NOT NULL,
		forma_pagamento VARCHAR(100) NOT NULL,
		cliente_id_cliente INT
	);
	GO
	ALTER TABLE compra
	ADD CONSTRAINT fk_compra_cliente_idx FOREIGN KEY (cliente_id_cliente) REFERENCES cliente(id_cliente);
	GO
	INSERT INTO cliente (nome, cpf, email) VALUES
	('João Silva Santos', '12345678901', 'joao.silva@email.com'),
	('Maria Oliveira Costa', '23456789012', 'maria.oliveira@email.com'),
	('Pedro Ferreira Lima', '34567890123', 'pedro.ferreira@email.com'),
	('Ana Paula Souza', '45678901234', 'ana.paula@email.com'),
	('Carlos Eduardo Alves', '56789012345', 'carlos.eduardo@email.com'),
	('Fernanda Santos Silva', '67890123456', 'fernanda.santos@email.com'),
	('Roberto Carlos Pereira', '78901234567', 'roberto.carlos@email.com'),
	('Juliana Martins Costa', '89012345678', 'juliana.martins@email.com'),
	('Ricardo Mendes Filho', '90123456789', 'ricardo.mendes@email.com'),
	('Camila Rodrigues Lima', '01234567890', 'camila.rodrigues@email.com'),
	('Bruno Henrique Silva', '11234567890', 'bruno.henrique@email.com'),
	('Patrícia Almeida Santos', '21234567890', 'patricia.almeida@email.com'),
	('Diego Barbosa Costa', '31234567890', 'diego.barbosa@email.com'),
	('Larissa Fernandes Souza', '41234567890', 'larissa.fernandes@email.com'),
	('Gustavo Cardoso Alves', '51234567890', 'gustavo.cardoso@email.com'),
	('Renata Vieira Pereira', '61234567890', 'renata.vieira@email.com'),
	('Thiago Gomes Silva', '71234567890', 'thiago.gomes@email.com'),
	('Vanessa Lima Martins', '81234567890', 'vanessa.lima@email.com'),
	('André Luis Santos', '91234567890', 'andre.luis@email.com'),
	('Carolina Ribeiro Costa', '02345678901', 'carolina.ribeiro@email.com'),
	('Marcos Antonio Silva', '12345678902', 'marcos.antonio@email.com'),
	('Beatriz Soares Lima', '23456789013', 'beatriz.soares@email.com'),
	('Felipe Nascimento Santos', '34567890124', 'felipe.nascimento@email.com'),
	('Gabriela Torres Costa', '45678901235', 'gabriela.torres@email.com'),
	('Leonardo Dias Pereira', '56789012346', 'leonardo.dias@email.com');
	GO
	INSERT INTO compra (data, valor_total, forma_pagamento, cliente_id_cliente) VALUES
	('2024-01-15', 125.50, 'Cartão de Crédito', 1),
	('2024-01-18', 89.90, 'PIX', 2),
	('2024-01-22', 234.75, 'Cartão de Débito', 3),
	('2024-01-25', 156.30, 'Dinheiro', 4),
	('2024-02-02', 78.45, 'PIX', 5),
	('2024-02-05', 312.80, 'Cartão de Crédito', 6),
	('2024-02-10', 92.15, 'Cartão de Débito', 7),
	('2024-02-14', 178.60, 'PIX', 8),
	('2024-02-18', 245.90, 'Cartão de Crédito', 9),
	('2024-02-22', 67.25, 'Dinheiro', 10),
	('2024-03-01', 189.40, 'PIX', 11),
	('2024-03-05', 134.75, 'Cartão de Débito', 12),
	('2024-03-08', 298.50, 'Cartão de Crédito', 13),
	('2024-03-12', 87.30, 'PIX', 14),
	('2024-03-15', 156.80, 'Cartão de Débito', 15),
	('2024-03-20', 203.45, 'Cartão de Crédito', 16),
	('2024-03-25', 112.90, 'Dinheiro', 17),
	('2024-04-02', 165.75, 'PIX', 18),
	('2024-04-06', 278.30, 'Cartão de Crédito', 19),
	('2024-04-10', 94.60, 'Cartão de Débito', 20),
	('2024-04-14', 187.25, 'PIX', 21),
	('2024-04-18', 145.80, 'Cartão de Crédito', 22),
	('2024-04-22', 89.45, 'Dinheiro', 23),
	('2024-04-26', 256.70, 'PIX', 24),
	('2024-05-01', 123.35, 'Cartão de Débito', 25),
	('2024-05-05', 198.90, 'Cartão de Crédito', 1),
	('2024-05-09', 76.50, 'PIX', 2),
	('2024-05-13', 167.80, 'Cartão de Débito', 3),
	('2024-05-17', 234.25, 'Cartão de Crédito', 4),
	('2024-05-21', 98.15, 'Dinheiro', 5),
	('2024-05-25', 156.70, 'PIX', 6),
	('2024-05-29', 289.40, 'Cartão de Crédito', 7),
	('2024-06-02', 87.95, 'Cartão de Débito', 8),
	('2024-06-06', 178.30, 'PIX', 9),
	('2024-06-10', 145.60, 'Cartão de Crédito', 10),
	('2024-06-14', 92.80, 'Dinheiro', 11),
	('2024-06-18', 267.45, 'PIX', 12),
	('2024-06-22', 134.90, 'Cartão de Débito', 13),
	('2024-06-26', 189.75, 'Cartão de Crédito', 14),
	('2024-06-30', 78.25, 'PIX', 15),
	('2024-07-04', 156.50, 'Cartão de Débito', 16),
	('2024-07-08', 234.80, 'Cartão de Crédito', 17),
	('2024-07-12', 89.35, 'Dinheiro', 18),
	('2024-07-16', 178.90, 'PIX', 19),
	('2024-07-20', 145.25, 'Cartão de Crédito', 20),
	('2024-07-24', 98.60, 'Cartão de Débito', 21),
	('2024-07-28', 267.15, 'PIX', 22),
	('2024-08-01', 123.45, 'Cartão de Crédito', 23),
	('2024-08-05', 187.80, 'Dinheiro', 24),
	('2024-08-09', 156.95, 'PIX', 25);
	GO