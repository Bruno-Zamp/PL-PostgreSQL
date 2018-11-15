insert into tipo values (1, 'Lançamento', 1, 5.00);
insert into tipo values (2, 'Normal', 	  3, 3.50);
insert into tipo values (3, 'Acervo',     7, 1.00);

insert into cliente values (1, 'Antonio', '999-9999', 'Rua DDDD');

insert into categoria values (1, 'Comédia');
insert into categoria values (2, 'Drama');
insert into categoria values (3, 'Ação');

-- nrofilme, codtipo, codcat, titulo
insert into filme values (1, 3, 2, 'Lagoa Azul');
insert into filme values (2, 3, 1, 'Debi & Loide');
insert into filme values (3, 1, 3, 'J P I');
insert into filme values (4, 2, 3, 'Os Normais II');

insert into fita (NroFita, idFilme) values (1, 1);
insert into fita (NroFita, idFilme) values (2, 1);
insert into fita (NroFita, idFilme) values (3, 2);
insert into fita (NroFita, idFilme) values (4, 2);
insert into fita (NroFita, idFilme) values (5, 3);
insert into fita (NroFita, idFilme) values (6, 4);

insert into feriado values ('07/09/2018', 'Independência do Brasil');
insert into feriado values ('12/10/2018', 'Nossa Senhora Aparecida');
insert into feriado values ('02/11/2018', 'Finados');
insert into feriado values ('15/11/2018', 'Proclamação da República');
insert into feriado values ('08/12/2018', 'Feriado Municipal PF');

