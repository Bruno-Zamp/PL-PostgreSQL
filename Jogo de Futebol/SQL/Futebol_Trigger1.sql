-- drop FUNCTION fCalcularOverAll () cascade;

CREATE OR REPLACE FUNCTION fCalcularOverAll () -- Trigger que calcula o OverAll dos Jogadores de linha
RETURNS TRIGGER as $$ 
DECLARE	
	 
begin
	IF NEW.SiglaPos IN ('PTD', 'PTE','CA','SA') THEN
		Update jogador
		Set OverAll = ((new.Desarme*0.25)+(new.Marcacao*0.25)+(new.Passe*1.75)+(new.Chute*3)+(new.Velocidade*2.25)+(new.drible*2.5))/9
		Where Jogador.CodJogador = new.CodJogador;
	end if;	
	IF NEW.SiglaPos IN ('MLG', 'VOL','MAT') THEN
		Update jogador
		Set OverAll = ((new.Desarme*0.25)+(new.Marcacao*1)+(new.Passe*3)+(new.Chute*2)+(new.Velocidade*2)+(new.drible*1.75)) / 9
		Where Jogador.CodJogador = new.CodJogador;
	end if;
	IF NEW.SiglaPos IN ('LE', 'LD','ZG') THEN
		Update jogador
		Set OverAll = ((new.Desarme*4)+(new.Marcacao*4)+(new.Passe*0.25)+(new.Chute*0.25)+(new.Velocidade*0.25)+(new.drible*0.25)) / 9
		Where Jogador.CodJogador = new.CodJogador;	
	END IF;
	
	return new; 
end; 
$$ language 'plpgsql'; 	

CREATE TRIGGER tgCalcularOverAll
AFTER INSERT
ON Linha
for each row execute procedure fCalcularOverAll(); 

-- Teste
delete from Linha where CodJogador = 32; 
delete from Jogador where CodJogador = 32; 
insert into Jogador values(32,'30/03/1986', 1.84, 'RRR', null,'ESP');
insert into Linha(CodJogador,Desarme,Marcacao,Passe,Chute,Velocidade,Drible,SiglaPos) 
	values(32, 87, 84, 69, 50, 79, 68, 'PTE');
select *  
from Jogador
where CodJogador = 32;




-- drop FUNCTION fCalcularOverAllGoleiro () cascade;
-- trigger para goleiro 

CREATE OR REPLACE FUNCTION fCalcularOverAllGoleiro () -- Trigger que calcula o OverAll dos Goleiros
RETURNS TRIGGER as $$ 
DECLARE	
	 
begin
		Update jogador
		Set OverAll = (new.Salto + new.Reflexo + new.Chutao)/3
		Where Jogador.CodJogador = new.CodJogador;
	
	return new; 
end; 
$$ language 'plpgsql'; 	

CREATE TRIGGER tgCalcularOverAllGoleiro
AFTER INSERT
ON Goleiro
for each row execute procedure fCalcularOverAllGoleiro(); 

-- Teste
delete from Goleiro where CodJogador = 12; 
insert into Goleiro values(12, 89, 89, 88); --Courtois

select *  
from Jogador
where CodJogador = 12;