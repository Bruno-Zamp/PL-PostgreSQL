CREATE OR REPLACE FUNCTION ejogadores (IN idtime integer)
  RETURNS TEXT AS $$

  DECLARE registro RECORD;
          retorno  TEXT;
          clubeN varchar(30) = (select nome from clube where idtime = codclube);

  BEGIN
   retorno = ''; 
   retorno =            '--------------------------------------------------------------' || E'\n';
   retorno = retorno || '             JOGADORES DO CLUBE '|| clubeN ||'                ' || E'\n';
   retorno = retorno || '--------------------------------------------------------------' || E'\n';
   retorno = retorno || 'Nome             Posição           Overall           Idade    ' || E'\n';
   
   FOR registro IN (Select Jogador.nome as Nome,
                           Posicao.Posicao as Posicao,
						   Jogador.Overall as Overall,
						   (CURRENT_DATE - Jogador.DtNasc)/365 as idade
                    From   Jogador, Posicao, Joga, Linha
                    Where  Jogador.CodJogador = Linha.CodJogador and
                           Linha.SiglaPos  = Posicao.SiglaPos and
						   Jogador.CodJogador = Joga.CodJogador and
                           Joga.CodClube = idtime and
                           Joga.Fim IS NULL
		   			)
   LOOP
        retorno = retorno || registro.Nome || '   -   ' || registro.Posicao   || '   -   ' || registro.Overall   || '   -   ' || registro.idade   || E'\n';

   END LOOP;

   retorno = retorno || '--------------------------------------------------------------' || E'\n';
   RETURN retorno; 
END;
$$ language 'plpgsql';

--
select * from ejogadores(1); -- Código do Time que deseja exibir os jogadores 