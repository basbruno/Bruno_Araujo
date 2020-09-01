create database SorrisoEmDia;
use SorrisoEmDia;
create table tb_login(
id_usuario varchar(11) unique primary key,
senha varchar(10),
tipo_usuario varchar(200)
);
/*
create table tb_paciente(
id_cpf_paciente  int primary key,
id_end      int ,
id_fone     int,
nome        varchar(250),
constraint tb_endereco_id_end_fk foreign key (id_end) references
tb_endereco(id_end),
constraint tb_telefone_id_fone_fk foreign key(id_fone) references 
tb_telefone(id_fone)
);
create table tb_endereco(
id_end      int primary key,
logradouro  varchar(250),
nome        varchar(250),
numero      int,
bairro      varchar(250),
cep         int,
uf          varchar(2)
);
create table tb_telefone(
id_fone     int primary key,
celular     int,
residencial int,
recado      int
);
create table tb_sala(
);*/



/* Pentencentes a classe pessoa - INICIO*/

create table tb_pessoa(
id_cpf_pessoa int primary key,
nome_pessoa char(50),
data_nasc date,
rg char(11),
end_pessoa VARCHAR(50),
cont_pessoa varCHAR(11),
mail_pessoa varchar(50)
)

create table tb_paciente(
id_cpf_paciente int primary key,
/*inserir FK do plano dental e dados adcionais*/
constraint tb_paciente foreign key(id_cpf_paciente) references 
tb_pessoa(id_cpf_pessoa)
)

create TABLE tb_dentista(
id_cpf_dentista int primary key,
cro_dentista varchar(25),

/*Inserir Licença do dentista*/
constraint tb_dentista foreign key(id_cpf_funcionario) references 
tb_pessoa(id_cpf_pessoa),
constraint tb_dentista foreign key(id_cpf_dentista) references 
tb_pessoa(id_cpf_pessoa)
)


create TABLE tb_funcionario(
id_cpf_funcionario int primary key,
/*Inserir dados do funcionario*/
constraint tb_funcionario foreign key(id_cpf_funcionario) references 
tb_pessoa(id_cpf_pessoa)
)

/* Pentencentes a classe pessoa- FIM*/

create table tb_tratamentos(
id_tratamentos    int primary key,
valor       numeric(5),
tipo_tratamentos        varchar(250)
);



create table tb_mensagem(
id_mensagem int,
mensagem varchar(300),

)


create table tb_prontuario( 
id_prontuario int primary key,
id_cpf_paciente int(11) ,
id_tratamentos int,
id_dentista int ,
id_procedimentos int ,
descricao  varchar(5000)
);
create table tb_agenda(
id_cpf_paciente int(11),
id_dentista int,

);
create table tb_pacotesOdonto(
);
create table tb_chatBot(
);
create table tb_procedimentos(
id_
);
create table tb_chamado(
);/*
create table tb_dentista(
id_dentista int primary key,
nome_dentista varchar(250),
cro_dentista numeric(5),
id_fone int,
id_end int
);
create table tb_funcinarios(
);*/
create table tb_parceirosFornecedores(
id_forn     int primary key,
id_fone     int,
id_end      int,
cnpj        int,
nome_fantasia   varchar(250),
razao_social    varchar(250),
email           char(70),
constraint tb_telefone_id_fone_fk foreign key (id_fone) references
tb_telefone(id_fone),
constraint tb_endereco_id_end_fk foreign key (id_end) references
tb_endereco(id_end)
);
create table tb_dataHora(
id_dia_mes_ano date,
id_horario float
);