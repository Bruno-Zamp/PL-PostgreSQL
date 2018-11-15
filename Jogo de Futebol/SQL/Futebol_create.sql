create table Clube(
	CodClube integer not null,
	Nome varchar(30) not null,
	primary key(CodClube)
);
create table Nacionalidade(
	SiglaPais char(4) not null,
	Pais varchar(30) not null,
	primary key (SiglaPais)
);
create table Tecnico(
	CodTecnico integer not null,
	Nome varchar(50) not null,
	DtNasc date not null,
	SiglaPais char(4) not null,
	primary key(CodTecnico),
	foreign key(SiglaPais) references Nacionalidade
);
create table Jogador(
	CodJogador integer not null,
	DtNasc date not null,
	Altura float not null,
	Nome varchar(50) not null,
	OverAll integer,
	SiglaPais char(4) not null,
	primary key(CodJogador),
	foreign key(SiglaPais) references Nacionalidade
);
create table Posicao(
	SiglaPos char(4) not null,
	Posicao varchar(20) not null,
	primary key(SiglaPos)
);
create table Goleiro(
	CodJogador integer not null, 
	Salto integer not null, 
	Reflexo integer not null, 
	Chutao integer not null,
	primary key(CodJogador),
	foreign key(CodJogador) references Jogador
);
create table Linha(
	CodJogador integer not null,
	Desarme integer not null,
	Marcacao integer not null,
	Passe integer not null,
	Chute integer not null,
	Velocidade integer not null,
	Drible integer not null,
	SiglaPos char(4) not null,
	primary key (CodJogador),
	foreign key (CodJogador) references Jogador,
	foreign key (SiglaPos) references Posicao 
);
create table Joga(
	CodJogador integer not null,
	CodClube integer not null,
	Inicio Date not null,
	Fim Date,
	Efetivo boolean not null,
	primary key(CodJogador,CodClube,Inicio),
	foreign key(CodJogador) references Jogador,
	foreign key(CodClube) references Clube
);
create table Treina(
	CodClube integer not null,
	CodTecnico integer not null,
	Inicio date not null,
	Fim date ,
	Efetivo boolean not null,
	primary key(CodClube, CodTecnico, Inicio),
	foreign key(CodClube) references Clube,
	foreign key(CodTecnico) references Tecnico
);