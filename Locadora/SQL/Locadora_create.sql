/*==============================================================*/
/* Table: ATOR                                                  */
/*==============================================================*/
create table ATOR (
   IDATOR               INTEGER                 not null,
   NOME                 VARCHAR(30)          not null,
   DTNASC               DATE                 null,
   constraint PK_ATOR primary key (IDATOR)
);


/*==============================================================*/
/* Table: CATEGORIA                                             */
/*==============================================================*/
create table CATEGORIA (
   CODCAT               INTEGER                 not null,
   NOMECAT              VARCHAR(30)          not null,
   constraint PK_CATEGORIA primary key (CODCAT)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   NROCLI               INTEGER                 not null,
   NOME                 VARCHAR(30)          not null,
   FONE                 VARCHAR(11)          null,
   ENDERECO             VARCHAR(50)          null,
   constraint PK_CLIENTE primary key (NROCLI)
);

/*==============================================================*/
/* Table: EMPRESTIMO                                            */
/*==============================================================*/
create table EMPRESTIMO (
   NROCLI               INTEGER                 not null,
   NROFITA              INTEGER                 not null,
   DTRET                DATE                 not null,
   DT_A_DEV             DATE                 null,
   DTDEV                DATE                 null,
   MULTA                NUMERIC(10,2)        null,
   constraint PK_EMPRESTIMO primary key (NROCLI, NROFITA, DTRET)
);

/*==============================================================*/
/* Table: ESTRELA                                               */
/*==============================================================*/
create table ESTRELA (
   IDATOR               INTEGER                 not null,
   IDFILME              INTEGER                 not null,
   constraint PK_ESTRELA primary key (IDATOR, IDFILME)
);

/*==============================================================*/
/* Table: FERIADO                                               */
/*==============================================================*/
create table FERIADO (
   DATA                 DATE                 not null,
   DESCRICAO            VARCHAR(30)          not null,
   constraint PK_FERIADO primary key (DATA)
);



/*==============================================================*/
/* Table: FILME                                                 */
/*==============================================================*/
create table FILME (
   IDFILME              INTEGER                 not null,
   CODTIPO              INTEGER                 not null,
   CODCAT               INTEGER                 not null,
   TITULO               VARCHAR(40)          not null,
   constraint PK_FILME primary key (IDFILME)
);


/*==============================================================*/
/* Table: FITA                                                  */
/*==============================================================*/
create table FITA (
   NROFITA              INTEGER                 not null,
   IDFILME              INTEGER                 not null,
   constraint PK_FITA primary key (NROFITA)
);

/*==============================================================*/
/* Table: TIPO                                                  */
/*==============================================================*/
create table TIPO (
   CODTIPO              INTEGER                 not null,
   DESCRICAO            VARCHAR(30)          not null,
   NRO_DIAS             INTEGER                 not null,
   VALOR                 NUMERIC(10,2)        not null,
   constraint PK_TIPO primary key (CODTIPO)
);

alter table EMPRESTIMO
   add constraint FK_EMPRESTI_RELATIONS_CLIENTE foreign key (NROCLI)
      references CLIENTE (NROCLI);

alter table EMPRESTIMO
   add constraint FK_EMPRESTI_RELATIONS_FITA foreign key (NROFITA)
      references FITA (NROFITA);

alter table ESTRELA
   add constraint FK_ESTRELA_ESTRELA_ATOR foreign key (IDATOR)
      references ATOR (IDATOR);

alter table ESTRELA
   add constraint FK_ESTRELA_ESTRELA2_FILME foreign key (IDFILME)
      references FILME (IDFILME);

alter table FILME
   add constraint FK_FILME_RELATIONS_TIPO foreign key (CODTIPO)
      references TIPO (CODTIPO);

alter table FILME
   add constraint FK_FILME_TEM_CATEGORI foreign key (CODCAT)
      references CATEGORIA (CODCAT);

alter table FITA
   add constraint FK_FITA_POSSUI_FILME foreign key (IDFILME)
      references FILME (IDFILME);

