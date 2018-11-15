/* REGRA 2 - cálculo da multa */

-- drop FUNCTION fRegra2 () cascade;

/* ------------------------------------- */
CREATE OR REPLACE FUNCTION fRegra2 () 
RETURNS trigger as $$ 
DECLARE
    varValorDiaAtraso	float;
begin
    /* UPDATE fita 
			SET status = 'D' 
			WHERE Fita.NroFita = NEW.nroFita;
	*/

    IF (NEW.DTDEV > NEW.DT_A_DEV) THEN
		SELECT Valor / Nro_Dias   
    	FROM Tipo, Filme, Fita
    	WHERE Tipo.CodTipo = Filme.CodTipo and
          	Filme.idFilme = Fita.idFilme and
          	Fita.NroFita = NEW.nroFita
    	INTO varValorDiaAtraso;

        NEW.Multa = (NEW.DtDev - NEW.Dt_a_Dev) * varValorDiaAtraso;	
    END IF;

    return new; 
end; 
$$ language 'plpgsql';
