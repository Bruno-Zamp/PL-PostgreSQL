-- drop FUNCTION fProibeInserir () cascade;

CREATE OR REPLACE FUNCTION fProibeInserir () 
RETURNS TRIGGER as $$ 
DECLARE	
	 varNro integer;
begin
        select count(*)
        from Joga 
        where CodJogador = new.CodJogador and fim IS NULL
        into varNro;
        
	IF varNro > 0 then
		RAISE EXCEPTION 'NÃO É POSSÍVEL UM JOGADOR JOGAR EM DOIS CLUBES';
	END IF;
	
	return new; 
end; 
$$ language 'plpgsql'; 	

CREATE TRIGGER tgProibeInserir
before INSERT
ON Joga
for each row execute procedure fProibeInserir(); 

select * from joga

-- TESTE
delete from Joga where CodJogador = 32; 
delete from Joga where CodJogador = 32;

select * from joga;

insert into Joga values ( 32, 1, '01/10/2018', null, true); 
insert into Joga values ( 32, 2, '01/10/2018', null, true); 

select *  
from Jogador
where CodJogador = 32;