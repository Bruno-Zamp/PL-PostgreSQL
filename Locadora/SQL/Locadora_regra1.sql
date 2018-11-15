/* REGRA 1A - Quando inserir Empréstimo, calcular Data a Devolver
      Calcular a DATA A DEVOLVER (com base no TIPO do filme)
*/ 

drop FUNCTION fRegra1 () cascade;

/* ------------------------------------- */
CREATE OR REPLACE FUNCTION fRegra1 () 
RETURNS trigger as $$ 
DECLARE
    varDias 	integer;
    varFeriado 	integer;
	VarFlag 	integer;
begin
    SELECT Nro_Dias   
    FROM Tipo, Filme, Fita
    WHERE Tipo.CodTipo = Filme.CodTipo and
          Filme.idFilme = Fita.idFilme and
          Fita.NroFita = NEW.nroFita
    INTO varDias;
    
    NEW.Dt_a_Dev = NEW.DtRet + varDias;

	-- encontrar próximo dia útil
	varFlag = 0;
	WHILE varFlag = 0 LOOP
		select count(*)
		from feriado
		where data = NEW.Dt_a_Dev
		INTO varFeriado;
		
		IF (extract(DOW from NEW.Dt_a_Dev) = 0) OR (varFeriado = 1) THEN
			NEW.Dt_a_Dev = NEW.Dt_a_Dev + 1;
			varFlag = 0;
		ELSE
			varFlag = 1;
		END IF; 
	END LOOP;
    
    return new; 
end; 
$$ language 'plpgsql';
