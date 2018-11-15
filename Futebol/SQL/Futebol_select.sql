-- 1. Obtenha o nome dos jogadores e a idade (em anos) dos jogadores com mais de 25 anos, e mostre de forma que os jogadores de maior idade apareçam antes
select Nome, (CURRENT_DATE - DtNasc)/365 as idade
from Jogador
where (CURRENT_DATE - DtNasc)/365 > 25
order by 2 desc;

-- 2. Obtenha o nome de todos jogadores do Grêmio, mostre em ordem alfabética
select Jogador.nome
from Jogador, Clube, Joga
where   Clube.nome = 'Grêmio' AND
	Clube.CodClube = Joga.CodClube AND
	Joga.CodJogador = Jogador.CodJogador
order by jogador.nome;

-- 3. Obtenha o nome dos jogadores do Brasil que jogam no ataque (Centroavante, Pontas e Segundo Atacante)
select Jogador.nome
from Jogador, Linha
where   Jogador.SiglaPais = 'BRA' AND
	Jogador.CodJogador = Linha.CodJogador AND
	Linha.SiglaPos IN ('PTD', 'PTE','CA','SA');

-- 4. Obtenha o nome dos jogadores de meio de campo (Meio-Atacante, Meia de ligação e Volante) que possuem uma pontuação de passe acima 80 e exiba essa pontuação em ordem decrescente.
select Jogador.nome, Linha.Passe
from Jogador, Linha
where   Jogador.CodJogador = Linha.CodJogador AND
	Linha.Passe > 80 AND
	Linha.SiglaPos IN ('MLE', 'VOL','MAT')
Order by Linha.Passe desc;

-- 5. Mostre o nome do Pais e a quantidade, do pais que possui mais Jogadores.
select Nacionalidade.Pais, count(*)
from Jogador, Nacionalidade
where jogador.SiglaPais = Nacionalidade.SiglaPais
group by Nacionalidade.Pais
order by 2 desc;

-- 6. Mostre o nome dos Jogador que possuem a maior pontuação de Velocidade
select Jogador.Nome
from Jogador, Linha
where   Jogador.CodJogador = Linha.CodJogador AND
	Linha.Velocidade = (Select MAX(Velocidade) from Linha);

-- 7. Mostre o nome dos Jogadore e a altura, dos Jogadores com mais de 1.80, ordenando decrescentemente os mais altos
select nome, altura
from jogador
where altura>1.80
order by 2 desc;