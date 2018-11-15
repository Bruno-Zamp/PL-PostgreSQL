-- Inserts de Clubes
insert into Clube values(1, 'Grêmio');
insert into Clube values(2, 'Palmeiras');
insert into Clube values(3, 'Cruzeiro');
insert into Clube values(4, 'Internacional');
insert into Clube values(5, 'Barcelona');

--Inserts de Nacionalidades
insert into Nacionalidade values('BRA', 'Brasil');
insert into Nacionalidade values('ALE', 'Alemanha');
insert into Nacionalidade values('ARG', 'Argentina');
insert into Nacionalidade values('URU', 'Uruguai');
insert into Nacionalidade values('ITA', 'Itália');
insert into Nacionalidade values('ING', 'Inglaterra');
insert into Nacionalidade values('PAR', 'Paraguai');
insert into Nacionalidade values('ESP', 'Espanha');
insert into Nacionalidade values('FRA', 'França');
insert into Nacionalidade values('POR', 'Portugal');
insert into Nacionalidade values('BEL', 'Bélgica');


--Inserts de Tecnicos
insert into Tecnico values(1, 'Renato Gaúcho', '09/09/1962', 'BRA');
insert into Tecnico values(2, 'Pep Guardiola', '18/01/1971', 'ESP');
insert into Tecnico values(3, 'Mourinho', '26/01/1963', 'POR');
insert into Tecnico values(4, 'Tite', '05/05/1961', 'BRA');
insert into Tecnico values(5, 'Pochettino', '02/03/1972', 'BRA');

--Inserts de Jogadores 
insert into Jogador values(1,'05/02/1985', 1.85, 'Cristiano Ronaldo', null,'POR');
insert into Jogador values(2,'24/06/1987', 1.70, 'Lionel Messi', null,'ARG');
insert into Jogador values(3,'05/02/1992', 1.75, 'Neymar', null,'BRA');
insert into Jogador values(4,'28/01/1978', 1.92, 'Gianluigi Buffon', null,'ITA');
insert into Jogador values(5,'27/03/1993', 1.80, 'Luan', null,'BRA');
insert into Jogador values(6,'03/09/1988', 1.92, 'Boateng', null,'ALE');
insert into Jogador values(7,'13/09/1989', 1.86, 'Thomas Müller', null,'ALE');
insert into Jogador values(8,'04/01/1990', 1.83, 'Toni Kross', null,'ALE');
insert into Jogador values(9,'21/03/1992', 1.76, 'Isco', null,'ESP');
insert into Jogador values(10,'28/06/1991', 1.81, 'Kevin De Bruyne', null,'BEL');
insert into Jogador values(11,'07/01/1991', 1.73, 'Eden Hazard', null,'BEL');
insert into Jogador values(12,'11/05/1992', 1.99, 'Thibaut Courtois', null,'BEL');
insert into Jogador values(13,'09/08/1988', 1.75, 'Willian', null,'BRA');
insert into Jogador values(14,'15/03/1993', 1.91, 'Paul Pogba', null,'FRA');
insert into Jogador values(15,'24/01/1987', 1.82, 'Suárez', null,'URU');
insert into Jogador values(16,'11/04/1996', 1.88, 'Dele Alli', null,'ING');
insert into Jogador values(17,'28/06/1993', 1.88, 'Harry Kane', null,'ING');
insert into Jogador values(18,'04/06/1992', 1.77, 'Romero', null,'PAR');
insert into Jogador values(19,'20/12/1998', 1.78, 'Mbappé', null,'FRA');
insert into Jogador values(20,'21/03/1991', 1.75, 'Griezmann', null,'FRA');
insert into Jogador values(21,'12/06/1992', 1.72, 'Philippe Coutinho', null,'BRA');
insert into Jogador values(22,'15/11/1993', 1.77, 'Paulo Dybala', null,'ARG');
insert into Jogador values(23,'14/09/1990', 1.72, 'Douglas Costa', null,'BRA');
insert into Jogador values(24,'14/02/1997', 1.84, 'Cavani', null,'URU');
insert into Jogador values(25,'05/11/1992', 1.65, 'Verratti', null,'ITA');
insert into Jogador values(26,'22/09/1984', 1.83, 'Thiago Silva', null,'BRA');
insert into Jogador values(27,'12/05/1988', 1.74, 'Marcelo', null,'BRA');
insert into Jogador values(28,'06/05/1983', 1.71, 'Daniel Alves', null,'BRA');
insert into Jogador values(29,'01/05/1987', 1.91, 'Bonucci', null,'ITA');
insert into Jogador values(30,'14/08/1984', 1.87, 'Chiellini', null,'ITA');
insert into Jogador values(31,'30/03/1986', 1.84, 'Sergio Ramos', null,'ESP');


-- Inserts de Posições
insert into Posicao values('PTD', 'Ponta direita');
insert into Posicao values('PTE', 'Ponta esquerda');
insert into Posicao values('CA', 'Centroavante');
insert into Posicao values('SA', 'Segundo Atacante');
insert into Posicao values('MAT', 'Meio-Atacante');
insert into Posicao values('MLG', 'Meia de ligação');
insert into Posicao values('VOL', 'Volante');
insert into Posicao values('ZG', 'Zagueiro');
insert into Posicao values('LE', 'Lateral esquerdo');
insert into Posicao values('LD', 'Lateral direito');

-- Inserts de Goleiros
insert into Goleiro values(4, 90, 88, 89); --Buffon
insert into Goleiro values(12, 89, 89, 88); --Courtois

-- Inserts de Linha
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(1, 33, 40, 82, 93, 90, 90, 'PTE'); -- CR7
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(2, 26, 35, 86, 90, 89, 95, 'PTD'); -- Messi
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(3, 30, 38, 82, 85, 92, 95, 'PTE'); -- Neymar
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(5, 38, 46, 69, 63, 85, 80, 'MAT'); -- Luan
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(6, 87, 84, 69, 50, 79, 68, 'ZG'); -- Boateng
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(7, 46, 50, 77, 83, 78, 78, 'SA'); -- Thomas Müller
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(8, 72, 81, 88, 81, 67, 82, 'MLG'); -- Toni Kross
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(9, 39, 42, 80, 75, 72, 86, 'MLG'); -- Isco
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(10, 48, 53, 90, 85, 76, 87, 'MAT'); -- Kevin De Bruyne
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(11, 32, 45, 84, 84, 90, 93, 'PTE'); -- Eden Hazard
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(13, 49, 54, 81, 76, 88, 88, 'PTD'); -- Willian
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(14, 72, 80, 83, 80, 77, 87, 'VOL'); -- Pogba
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(15, 42, 35, 79, 90, 82, 86, 'CA'); -- Suárez
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(16, 64, 64, 77, 80, 76, 82, 'MLG'); -- Dele Alli
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(17, 42, 35, 72, 87, 71, 79, 'CA'); -- Harry Kane
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(18, 35, 38, 65, 70, 74, 76, 'PTE'); -- Romero
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(19, 47, 30, 74, 80, 90, 85, 'CA'); -- Mbappé
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(20, 30, 31, 78, 85, 86, 87, 'SA'); -- Griezmann
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(21, 35, 42, 83, 78, 82, 88, 'MAT'); -- Philippe Coutinho
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(22, 25, 30, 84, 86, 86, 91, 'SA'); -- Paulo Dybala
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(23, 32, 35, 77, 77, 92, 84, 'PTE'); -- Douglas Costa
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(24, 42, 25, 72, 83, 77, 80, 'CA'); -- Cavani
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(25, 79, 83, 84, 60, 73, 89, 'VOL'); -- Verratti
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(26, 88, 90, 73, 56, 72, 74, 'ZG'); -- Thiago Silva
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(27, 81, 83, 83, 71, 82, 90, 'LE'); -- Marcelo
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(28, 77, 82, 81, 68, 82, 84, 'LD'); -- Dani Alves
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(29, 87, 88, 70, 54, 68, 71, 'ZG'); -- Bonucci
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(30, 90, 87, 56, 46, 74, 60, 'ZG'); -- Chiellini
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(31, 88, 89, 71, 63, 76, 72, 'ZG'); -- Sergio Ramos

-- Inserts de Joga
insert into Joga values ( 1, 1, '01/10/2018', null, true);  -- CRZ
insert into Joga values (20, 1, '01/10/2018', null, true); -- Griezmann
insert into Joga values (24, 1, '01/10/2018', null, true); -- Cavani
insert into Joga values (25, 1, '01/10/2018', null, true); -- Verratti
insert into Joga values (10, 1, '01/10/2018', null, true); -- Kevin De Bruyne
insert into Joga values (8, 1, '01/10/2018', null, true);  -- Toni Kross
insert into Joga values (27, 1, '01/10/2018', null, true); -- Marcelo
insert into Joga values (26, 1, '01/10/2018', null, true); -- Thiago Silva
insert into Joga values (4, 1, '01/10/2018', null, true);  -- Boateng

insert into Joga values (2, 4, '01/10/2018', null, true);  -- Messi
insert into Joga values (3, 4, '01/10/2018', null, true);  -- Neymar
insert into Joga values (15, 4, '01/10/2018', null, true); -- Suárez
insert into Joga values (9, 4, '01/10/2018', null, true);  -- Isco
insert into Joga values (21, 4, '01/10/2018', null, true); -- Philippe Coutinho
insert into Joga values (14, 4, '01/10/2018', null, true);  -- Pogba
insert into Joga values (28, 4, '01/10/2018', null, true); -- Dani Alves
insert into Joga values (29, 4, '01/10/2018', null, true); -- Bonucci
insert into Joga values (31, 4, '01/10/2018', null, true); -- Segio Ramos

--Inserts de Treina 
insert into Treina values (1, 2, '01/10/2018', null, true);
insert into Treina values (4, 3, '01/10/2018', null, true);
