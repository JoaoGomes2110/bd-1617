USE reserva_bilhetes;

-- Gerador de clientes para a base de dados
INSERT INTO cliente
			(Username,Password,Nome,`E-mail`,NIF,Morada) 
			VALUES
				('usr1','aaa1','Antonio Abel','antonioabelgmail.com',1111,'Rua numero 1 1-A'),
				('usr2','aaa2','Andre Alberto','andrealberto@gmail.com',1112,'Rua numero 2 1-B'),
				('usr3','aaa3','Bruno Baiao','brunobaiao@gmail.com',1113,'Rua numero 3 1-C'),
				('usr4','aaa4','Carlos Costa','carloscosta@gmail.com',1114,'Rua numero 4 1-D'),
				('usr5','aaa5','Bruno Carvalho','brunoCarvalho@gmail.com',1115,'Rua numero 5 1-E'),
				('usr6','aaa6','Adrien Silva','adriensilva@gmail.com',1116,'Rua numero 6 1-F'),
				('usr7','aaa7','Wiliam Carvalho','wiliamCarvalho14@gmail.com',1117,'Rua numero 7 1-G'),
				('usr8','aaa8','Andre Andre','andreandre20@gmail.com',1118,'Rua numero 8 1-H'),
				('usr9','aaa9','Ruben Neves','rubenneves6@gmail.com',1119,'Rua numero 9 1-I'),
				('usr10','aaa10','Andre Silva','craque10@gmail.com',11110,'Rua numero 10 1-J');

-- Geração de Comboios

INSERT INTO reserva_bilhetes.Comboio 
			(id_Comboio,Lotação,Nome) 
			VALUES
				('FASTrainX1',10,'Supersónico'),
				('FASTrainX2',15,'Veloz'),
				('FASTrainX3',20,'Xpress'),
				('REGULARtrainX1',20,'Amália'),
				('REGULARtrainX2',10,'Camões');
                
-- Geração de Viagens

INSERT INTO reserva_bilhetes.Viagem 
			(id_Viagem,id_Comboio,Hora_Partida,Hora_Chegada,Origem,Destino) 
            VALUES
				('viagem1','comb1',2016-03-28 11:00:00,2016-03-28 13:00:00,'Porto','Lisboa'),
				('viagem2','comb1',2016-03-28 14:00:00,2016-03-28 15:00:00,'Lisboa','Coimbra'),
				('viagem3','comb2',2016-03-28 09:00:00,2016-03-28 12:00:00,'Vila Real','Braga'),
				('viagem4','comb2',2016-03-28 14:00:00,2016-03-28 18:00:00,'Braga','Lisboa'),
				('viagem5','comb3',2016-03-29 10:00:00,2016-03-29 11:00:00,'Viana do Castelo','Porto'),
				('viagem6','comb3',2016-03-29 11:30:00,2016-03-29 12:30:00,'Porto','Braga'),
				('viagem7','comb1',2016-03-30 10:00:00,2016-03-30 15:00:00,'Porto','Faro'),
				('viagem8','comb1',2016-03-30 15:40:00,2016-03-30 18:00:00,'Faro','Beja'),
				('viagem9','comb2',2016-03-30 10:00:00,2016-03-30 14:00:00,'Faro','Lisboa'),
				('viagem10','comb2',2016-03-30 14:15:00,2016-03-30 16:00:00,'Lisboa','Porto');

-- Gerador de Reservas

INSERT INTO reserva_bilhetes.Reserva 
			(id_Reserva,id_viagem,Username,Data,Preço) 
            VALUES
				('res1','viagem1','usr10',2016-01-02 16:34:27,20),
				('res2','viagem1','usr9',2016-01-02 17:03:54,20),
				('res3','viagem3','usr6',2016-01-02 11:23:50,10),
				('res4','viagem3','usr7',2016-01-04 22:14:09,10); 



INSERT INTO reserva_bilhetes.Reserva 
			(id_Reserva,id_viagem,Username,Data,Preço) 
            VALUES
				('res1','viagem1','usr10',2016-01-02 16:34:27,20),
				('res2','viagem1','usr9',2016-01-02 17:03:54,20),
				('res3','viagem3','usr6',2016-01-02 11:23:50,10),
				('res4','viagem3','usr7',2016-01-04 22:14:09,10); 


INSERT INTO reserva_bilhetes.Lugar_Reserva 
			(Numero,Carruagem,Classe,id_Comboio,id_Reserva) 
            VALUES
				(1,1,1,'comb1','res1'),
				(2,1,1,'comb1','res1'),
				(4,1,1,'comb1','res2'),
				(5,1,1,'comb1','res2'),
				(1,1,1,'comb2','res3'),
				(1,1,1,'comb2','res4');

INSERT INTO reserva_bilhetes.Lugar_Reserva 
			(Numero,Carruagem,Classe,id_Comboio,id_Reserva) VALUES
				(1,1,1,'comb1','res1'),
				(2,1,1,'comb1','res1'),
				(4,1,1,'comb1','res2'),
				(5,1,1,'comb1','res2'),
				(1,1,1,'comb2','res3'),
				(1,1,1,'comb2','res4');

INSERT INTO reserva_bilhetes.Reserva 
			(id_Reserva,id_viagem,Username,Data,Preço) 
            VALUES
				('res1','viagem1','usr10',01/01/2016,20),
				('res2','viagem1','usr9',01/01/2016,20),
				('res3','viagem3','usr6',01/01/2016,10),
				('res4','viagem3','usr7',02/01/2016,10); 


INSERT INTO reserva_bilhetes.Lugar_Reserva
			(Numero,Carruagem,Classe,id_Comboio,id_Reserva) 
            VALUES
				(1,1,1,'comb1','res1'),
				(2,1,1,'comb1','res1'),
				(4,1,1,'comb1','res2'),
				(5,1,1,'comb1','res2'),
				(1,1,1,'comb2','res3'),
				(1,1,1,'comb2','res4');


INSERT INTO reserva_bilhetes.Reserva 
			(id_Reserva,id_viagem,Username,Data,Preço) 
			VALUES
				('res1','viagem1','usr10',01/01/2016,20),
				('res2','viagem1','usr9',01/01/2016,20),
				('res3','viagem3','usr6',01/01/2016,10),
				('res4','viagem3','usr7',02/01/2016,10);


INSERT INTO reserva_bilhetes.Lugar_Reserva 
			(Numero,Carruagem,Classe,id_Comboio,id_Reserva) 
            VALUES
				(1,1,1,'comb1','res1'),
				(2,1,1,'comb1','res1'),
				(4,1,1,'comb1','res2'),
				(5,1,1,'comb1','res2'),
				(1,1,1,'comb2','res3'),
				(1,1,1,'comb2','res4');


INSERT INTO reserva_bilhetes.Viagem 
			(id_Viagem,id_Comboio,Hora_Partida,Hora_Chegada,Origem,Destino) 
            VALUES
				('viagem1','comb1',2016-03-28 11:00:00,2016-03-28 13:00:00,'Porto','Lisboa'),
				('viagem2','comb1',2016-03-28 14:00:00,2016-03-28 15:00:00,'Lisboa','Coimbra'),
				('viagem3','comb2',2016-03-28 09:00:00,2016-03-28 12:00:00,'Vila Real','Braga'),
				('viagem4','comb2',2016-03-28 14:00:00,2016-03-28 18:00:00,'Braga','Lisboa'),
				('viagem5','comb3',2016-03-29 10:00:00,2016-03-29 11:00:00,'Viana do Castelo','Porto'),
				('viagem6','comb3',2016-03-29 11:30:00,2016-03-29 12:30:00,'Porto','Braga'),
				('viagem7','comb1',2016-03-30 10:00:00,2016-03-30 15:00:00,'Porto','Faro'),
				('viagem8','comb1',2016-03-30 15:40:00,2016-03-30 18:00:00,'Faro','Beja'),
				('viagem9','comb2',2016-03-30 10:00:00,2016-03-30 14:00:00,'Faro','Lisboa'),
				('viagem10','comb2',2016-03-30 14:15:00,2016-03-30 16:00:00,'Lisboa','Porto');




INSERT INTO reserva_bilhetes.Comboio 
			(id_Comboio,Lotação,Nome) 
			VALUES
				('comb1',10,'Alpha10'),
				('comb2',16,'Alpha15'),
				('comb3',20,'Alpha20RS'),
				('comb4',20,'Alpha20GT'),
				('comb5',10,'Alpha10V6');


INSERT INTO reserva_bilhetes.Lugar_Comboio 
			(Numero,Carrugem,Classe,id_Comboio) 
            VALUES
-- COMBOIO 1, CAPACIDADE:10, CLASSE 1 = 5L, CLASSE 2 = 5L, 1 CARRUAGEM
				(1,1,1,'comb1'),
				(2,1,1,'comb1'),
				(3,1,1,'comb1'),
				(4,1,1,'comb1'),
				(5,1,1,'comb1'),
				(6,1,2,'comb1'),
				(7,1,2,'comb1'),
				(8,1,2,'comb1'),
				(9,1,2,'comb1'),
				(10,1,2,'comb1'),

-- COMBOIO 2, CAPACIDADE:16, CLASSE 1 = 8L, CLASSE 2 = 8L, 2 CARRUAGENS
				(1,1,1,'comb2'),
				(2,1,1,'comb2'),
				(3,1,1,'comb2'),
				(4,1,1,'comb2'),
				(5,1,1,'comb2'),
				(6,1,1,'comb2'),
				(7,1,1,'comb2'),
				(8,1,1,'comb2'),
				(9,2,2,'comb2'),
				(10,2,2,'comb2'),
				(11,2,2,'comb2'),
				(12,2,2,'comb2'),
				(13,2,2,'comb2'),
				(14,2,2,'comb2'),
				(15,2,2,'comb2'),
				(16,2,2,'comb2'),
-- COMBOIO 3, CAPACIDADE:20, CLASSE 1 = 10L, CLASSE 2 = 10L, 2 CARRUAGENS
				(1,1,1,'comb3'),
				(2,1,1,'comb3'),
				(3,1,1,'comb3'),
				(4,1,1,'comb3'),
				(5,1,1,'comb3'),
				(6,1,1,'comb3'),
				(7,1,1,'comb3'),
				(8,1,1,'comb3'),
				(9,1,1,'comb3'),
				(10,1,1,'comb3'),
				(11,2,2,'comb3'),
				(12,2,2,'comb3'),
				(13,2,2,'comb3'),
				(14,2,2,'comb3'),
				(15,2,2,'comb3'),
				(16,2,2,'comb3'),
				(17,2,2,'comb3'),
				(18,2,2,'comb3'),
				(19,2,2,'comb3'),
				(20,2,2,'comb3'),

-- COMBOIO 4, CAPACIDADE:20, CLASSE 1 = 10L, CLASSE 2 = 10L, 2 CARRUAGENS
				(1,1,1,'comb4'),
				(2,1,1,'comb4'),
				(3,1,1,'comb4'),
				(4,1,1,'comb4'),
				(5,1,1,'comb4'),
				(6,1,1,'comb4'),
				(7,1,1,'comb4'),
				(8,1,1,'comb4'),
				(9,1,1,'comb4'),
				(10,1,1,'comb4'),
				(11,2,2,'comb4'),
				(12,2,2,'comb4'),
				(13,2,2,'comb4'),
				(14,2,2,'comb4'),
				(15,2,2,'comb4'),
				(16,2,2,'comb4'),
				(17,2,2,'comb4'),
				(18,2,2,'comb4'),
				(19,2,2,'comb4'),
				(20,2,2,'comb4'),

-- COMBOIO 5, CAPACIDADE:10, CLASSE 1 = 5L, CLASSE 2 = 5L, 1 CARRUAGEM
				(1,1,1,'comb5'),
				(2,1,1,'comb5'),
				(3,1,1,'comb5'),
				(4,1,1,'comb5'),
				(5,1,1,'comb5'),
				(6,1,2,'comb5'),
				(7,1,2,'comb5'),
				(8,1,2,'comb5'),
				(9,1,2,'comb5'),
				(10,1,2,'comb5');
