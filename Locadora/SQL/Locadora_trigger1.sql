/* ------------------------------------- 
   gatilho: ao INSERIR em EMPRESTIMO
   ------------------------------------- 
*/
CREATE TRIGGER tgRegra1
BEFORE INSERT
ON EMPRESTIMO
for each row execute procedure fRegra1(); 	

-- TESTANDO 1
insert into emprestimo (nrocli, nrofita, dtret) values (1, 5, '23/08/18');
-- DT_A_DEV = 24/08/18
SELECT * FROM EMPRESTIMO;

insert into emprestimo (nrocli, nrofita, dtret) values (1, 1, '23/08/18');
-- DT_A_DEV = 30/08/18
SELECT * FROM EMPRESTIMO;

-- --------------
-- TESTANDO 2
insert into emprestimo (nrocli, nrofita, dtret) values (1, 5, '25/08/18');
-- DT_A_DEV = 27/08/18
SELECT * FROM EMPRESTIMO;

insert into emprestimo (nrocli, nrofita, dtret) values (1, 5, '06/09/18');
-- DT_A_DEV = 08/09/18  (* 08/set é um domingo
SELECT * FROM EMPRESTIMO;

-- --------------
-- TESTANDO 3
insert into feriado values ('08/09/2018', 'Feriado Teste');
delete from emprestimo;
insert into emprestimo (nrocli, nrofita, dtret) values (1, 5, '06/09/18');
-- DT_A_DEV = 07/09/18, 08/09/18, 09/09/18 -> 10/09/18
SELECT * FROM EMPRESTIMO;
