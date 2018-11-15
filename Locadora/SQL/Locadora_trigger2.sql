/* ------------------------------------- 
   gatilho: ao ALTERAR em EMPRESTIMO, COLUNA DTDEV
   ------------------------------------- 
*/
CREATE TRIGGER tgRegra2
BEFORE UPDATE OF DtDev 
ON EMPRESTIMO  
for each row execute procedure fRegra2(); 	

-- Testando
update emprestimo set dtdev = '10/09/2018'
     where nrocli = 1 and 
           nrofita = 5 and
           dtret = '06/09/2018';
select * from emprestimo;
-- não deve gerar multa


update emprestimo set dtdev = '11/09/2018'
     where nrocli = 1 and 
           nrofita = 5 and
           dtret = '06/09/2018';
select * from emprestimo;
-- gerar multa, 1 dia X R$ 5,00


update emprestimo set dtdev = '01/09/2018'
     where nrocli = 1 and 
           nrofita = 1 and
           dtret = '23/08/2018';
select * from emprestimo;
-- insert into emprestimo (nrocli, nrofita, dtret) values (1, 1, '23/08/18');
-- DT_A_DEV = 30/08/18
-- GERA MULTA, 2 DIAS x R$ 0,14
SELECT * FROM EMPRESTIMO;





