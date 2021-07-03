SHOW DATABASES;

CREATE DATABASE ATPRUAN1;

use ATPRUAN1;

create table Departamento(

nome_departamento varchar(255),
nome_gerente varchar(255) null,

primary key (nome_departamento)


);

insert into Departamento(nome_departamento) values ("Marketing");
insert into Departamento( nome_departamento) values ("Manutencao");
insert into Departamento(nome_departamento) values ("RH");
insert into Departamento(nome_departamento) values ("Logistica");
insert into Departamento(nome_departamento) values ("Meio Ambiente");
insert into Departamento(nome_departamento) values ("Produção"); 
insert into Departamento(nome_departamento) values ("Almoxarifado");
insert into Departamento(nome_departamento) values ("Vendas");
insert into Departamento(nome_departamento) values ("TI");
insert into Departamento(nome_departamento) values ("Suprimentos");
insert into Departamento(nome_departamento) values ("Expedição");



create table Empregado(
cpf_empregado varchar(255) not null,
nome_empregado varchar(255) not null,
salario_empregado float not null,
departamento_empregado varchar(255) null,
cargo_empregado varchar (255) not null,
id_supervisor varchar (255) null,
sexo_empregado varchar (45) null,
primary key(cpf_empregado, nome_empregado),
unique (cpf_empregado),
foreign key (departamento_empregado) references Departamento(nome_departamento)

);

insert into empregado (nome_empregado, cpf_empregado, salario_empregado, departamento_empregado, cargo_empregado,sexo_empregado) 
values ("Ruan Gabriel","0885897019",4500,"Marketing","Gerente","Masculino");
insert into empregado (nome_empregado, cpf_empregado, salario_empregado, departamento_empregado, cargo_empregado,sexo_empregado) 
values ("Douglas da silva","0785897028",3200,"RH","Supervisor","Masculino");
insert into empregado (nome_empregado, cpf_empregado, salario_empregado, departamento_empregado, cargo_empregado,sexo_empregado) 
values ("Lucas Henrique","0587985632",2200,"Marketing","Assistente","Masculino"); update Empregado set sexo_empregado = "Masculino" where cpf_empregado = "0587985632";
insert into empregado (nome_empregado, cpf_empregado, salario_empregado, departamento_empregado, cargo_empregado,sexo_empregado) 
values ("Cid Glei","05878956321",5800,"Produção","Colorista","Masculino");
insert into empregado (nome_empregado, cpf_empregado, salario_empregado, departamento_empregado, cargo_empregado,sexo_empregado) 
values ("Cristiane Benfica","0478963651",4200,"Marketing","Auditor","Feminino");
insert into empregado (nome_empregado, cpf_empregado, salario_empregado, departamento_empregado, cargo_empregado,sexo_empregado) 
values ("Josiane Barbosa","0256988563",2800,"Meio Ambiente","Supervisor","Feminino");
insert into empregado (nome_empregado, cpf_empregado, salario_empregado, departamento_empregado, cargo_empregado,sexo_empregado) 
values ("Karoline Rodrigues","0863451234",1800,"Produção","Assistente","Feminino");
insert into empregado (nome_empregado, cpf_empregado, salario_empregado, departamento_empregado, cargo_empregado,sexo_empregado) 
values ("Talita Tavares","0456398793",2100,"TI","Analista Júnior","Feminino");
insert into empregado (nome_empregado, cpf_empregado, salario_empregado, departamento_empregado, cargo_empregado,sexo_empregado) 
values ("João Silveira","0284563658",7200,"Produção","Gerente","Masculino");
insert into empregado (nome_empregado, cpf_empregado, salario_empregado, departamento_empregado, cargo_empregado,sexo_empregado) 
values ("Mônica Pava","0452653691",3600,"Logística","Supervisor","Feminino");
insert into empregado (nome_empregado, cpf_empregado, salario_empregado, departamento_empregado, cargo_empregado,sexo_empregado) 
values ("José Palmas","0285697581",3700,"TI","Supervisor","Masculino");
insert into empregado (nome_empregado, cpf_empregado, salario_empregado, departamento_empregado, cargo_empregado,sexo_empregado) 
values ("Carlos Gutilinb","0256352411",4300,"Produção","Supervisor","Masculino");
insert into empregado (nome_empregado, cpf_empregado, salario_empregado, departamento_empregado, cargo_empregado,sexo_empregado) 
values ("Ana Caroline","0856912356",2800,"Expedição","Assistente","Feminino");
insert into empregado (nome_empregado, cpf_empregado, salario_empregado, departamento_empregado, cargo_empregado,sexo_empregado) 
values ("Kawane Noritz","0435698741",2100,"Manutenção","Assistente","Feminino");
insert into empregado (nome_empregado, cpf_empregado, salario_empregado, departamento_empregado, cargo_empregado,sexo_empregado) 
values ("Marcelo Loginti","0254569873",4000,"Manutenção","Supervisor","Masculino");


Update Departamento set nome_gerente = "Ruan Gabriel" where nome_departamento = "Marketing";
update Departamento set nome_gerente = "João Silveira" where nome_departamento = "Produção";

create table Supervisores(
id_supervisor varchar (45) not null,
nome_supervisor varchar (255) null,
cpf_supervisor varchar(255) null,
departamento_supervisor varchar (255) null,


primary key(id_supervisor),
foreign key (cpf_supervisor,nome_supervisor) references Empregado(cpf_empregado,nome_empregado),
foreign key (departamento_supervisor) references Empregado(departamento_empregado)

);

insert into Supervisores (id_supervisor, nome_supervisor, cpf_supervisor, departamento_supervisor) 
values (1,"Josiane Barbosa", "0256988563","Meio Ambiente");
insert into Supervisores (id_supervisor, nome_supervisor, cpf_supervisor, departamento_supervisor) 
values (2,"Douglas da Silva", "0785897028","RH");
insert into Supervisores (id_supervisor, nome_supervisor, cpf_supervisor, departamento_supervisor) 
values (3,"Mônica Pava", "0452653691","Logística");
insert into Supervisores (id_supervisor, nome_supervisor, cpf_supervisor, departamento_supervisor) 
values (4,"José Palmas", "0285697581","TI");
insert into Supervisores (id_supervisor, nome_supervisor, cpf_supervisor, departamento_supervisor) 
values (5,"Carlos Gutilinb", "0256352411","Produção");
insert into Supervisores (id_supervisor, nome_supervisor, cpf_supervisor, departamento_supervisor) 
values (6,"Marcelo Loginti", "0254569873","Manutenção");


ALTER TABLE Empregado ADD FOREIGN KEY (id_supervisor) REFERENCES Supervisores(id_supervisor);
update Empregado set id_supervisor = 1 where departamento_empregado = "Meio Ambiente" AND (Cargo_empregado!= "Supervisor" and Cargo_empregado != "Gerente");
update Empregado set id_supervisor = 2 where departamento_empregado = "RH" AND (Cargo_empregado!= "Supervisor" and Cargo_empregado != "Gerente");
update Empregado set id_supervisor = 3 where departamento_empregado = "Logística" AND (Cargo_empregado!= "Supervisor" and Cargo_empregado != "Gerente");
update Empregado set id_supervisor = 4 where departamento_empregado = "TI" AND (Cargo_empregado!= "Supervisor" and Cargo_empregado != "Gerente");
update Empregado set id_supervisor = 5 where departamento_empregado = "Produção" AND (Cargo_empregado!= "Supervisor" and Cargo_empregado != "Gerente");
update Empregado set id_supervisor = 6 where departamento_empregado = "Manutenção" AND (Cargo_empregado!= "Supervisor" and Cargo_empregado != "Gerente");

create table Dependentes(
cpf_dependente varchar(255) null,
numero_registro_certidao varchar(255) not null,
nome_dependente varchar (255) not null,
data_nascimento_dependente date not null,
cpf_empregado varchar(255) not null,
sexo_dependente varchar(255) not null,

primary key (numero_registro_certidao),
foreign key (cpf_empregado) references Empregado(cpf_empregado)
);
insert into Dependentes (cpf_dependente,numero_registro_certidao,nome_dependente,data_nascimento_dependente,cpf_empregado,sexo_dependente)
values ("0865987845","75454875", "Lucas Benfica", "2011-01-12", "09359740918","Masculino");
insert into Dependentes (cpf_dependente,numero_registro_certidao,nome_dependente,data_nascimento_dependente,cpf_empregado,sexo_dependente)
values ("0965634569","78596898", "Natália", "2015-03-10", "0256988563","Feminino");
insert into Dependentes (cpf_dependente,numero_registro_certidao,nome_dependente,data_nascimento_dependente,cpf_empregado,sexo_dependente)
values ("05698634561","89569831", "Júlia", "2012-01-12", "0256352411","Feminino");
insert into Dependentes (cpf_dependente,numero_registro_certidao,nome_dependente,data_nascimento_dependente,cpf_empregado,sexo_dependente)
values ("0789635624","25636541", "Mônica ", "2001-03-10", "0478963651","Feminino");
insert into Dependentes (cpf_dependente,numero_registro_certidao,nome_dependente,data_nascimento_dependente,cpf_empregado,sexo_dependente)
values ("0986354789","36256911", "Mateus", "2005-08-02", "0785897028","Masculino");
insert into Dependentes (cpf_dependente,numero_registro_certidao,nome_dependente,data_nascimento_dependente,cpf_empregado,sexo_dependente)
values ("0974561233","45623567", "Douglas", "1998-03-12", "0284563658","Masculino");
insert into Dependentes (cpf_dependente,numero_registro_certidao,nome_dependente,data_nascimento_dependente,cpf_empregado,sexo_dependente)
values ("0457896325","45632645", "Vanessa", "2015-04-12", "0256988563","Feminino");
insert into Dependentes (cpf_dependente,numero_registro_certidao,nome_dependente,data_nascimento_dependente,cpf_empregado,sexo_dependente)
values ("0894789132","75693265", "João", "2015-03-10", "0587985632","Masculino");




create table Projetos (
id_projeto int not null,
data_inicio date not null,
etapa_projeto int null,
ata_projeto int null,

primary key (id_projeto)
);



insert into Projetos (id_projeto,data_inicio) values (1, "2020-08-27" );
insert into Projetos (id_projeto,data_inicio) values (2, "2020-05-20" );
insert into Projetos (id_projeto,data_inicio) values (3, "2020-02-23" );
insert into Projetos (id_projeto,data_inicio) values (4, "2020-01-02" );
insert into Projetos (id_projeto,data_inicio) values (5, "2020-03-12" );
insert into Projetos (id_projeto,data_inicio) values (6, "2019-12-30" );
insert into Projetos (id_projeto,data_inicio) values (7, "2018-02-21" );
insert into Projetos (id_projeto,data_inicio) values (8, "2017-01-06" );
insert into Projetos (id_projeto,data_inicio) values (9, "2020-02-28" );
insert into Projetos (id_projeto,data_inicio) values (10, "2020-04-10");






create table etapaProjeto(
etapa_projeto int not null,
inicio_etapa date not null,
fim_etapa date null,
id_projeto int not null,

foreign key (id_projeto) references Projetos(id_projeto)

);

insert into etapaProjeto(id_projeto,etapa_projeto,inicio_etapa) values ("2",4,"2020-07-10");
insert into etapaProjeto(id_projeto,etapa_projeto,inicio_etapa) values ("4",2,"2020-03-20");
insert into etapaProjeto(id_projeto,etapa_projeto,inicio_etapa) values ("6",3,"2020-01-22");
insert into etapaProjeto(id_projeto,etapa_projeto,inicio_etapa) values ("7",8,"2019-03-19");
insert into etapaProjeto(id_projeto,etapa_projeto,inicio_etapa) values ("10",1,"2020-04-11");
insert into etapaProjeto(id_projeto,etapa_projeto,inicio_etapa) values ("1",1,"2020-08-28");






create table ataProjetos(
id_projeto int not null,
data_reuniao date not null,
local_reuniao varchar(255),
texto_ata longtext not null,

foreign key (id_projeto) references Projetos(id_projeto)
);

insert into ataProjetos (id_projeto, data_reuniao, local_reuniao, texto_ata) values (4,"2020-08-22","Salão 1", "De acordo ...");
insert into ataProjetos (id_projeto, data_reuniao, local_reuniao, texto_ata) values (2,"2020-02-25","Salão 3", "De acordo ...");
insert into ataProjetos (id_projeto, data_reuniao, local_reuniao, texto_ata) values (8,"2020-07-21","Salão 2", "De acordo ...");
insert into ataProjetos (id_projeto, data_reuniao, local_reuniao, texto_ata) values (1,"2020-09-22","Salão 1", "De acordo ...");


create table ParticipantesProjetos (
id_projeto int not null,
cpf_empregado varchar (255) not null,
nome_empregado varchar(255) not null,

foreign key (id_projeto) references Projetos(id_projeto),
foreign key (cpf_empregado,nome_empregado) references Empregado(cpf_empregado,nome_empregado)


);


insert into ParticipantesProjetos (id_projeto,cpf_empregado,nome_empregado) values (2,"09359740918","Ruan Gabriel");
insert into ParticipantesProjetos (id_projeto,cpf_empregado,nome_empregado) values (1,"09359740918","Ruan Gabriel");
insert into ParticipantesProjetos (id_projeto,cpf_empregado,nome_empregado) values (3,"0785897028","Douglas da Silva");
insert into ParticipantesProjetos (id_projeto,cpf_empregado,nome_empregado) values (4,"0456398793","Talita Tavares");
insert into ParticipantesProjetos (id_projeto,cpf_empregado,nome_empregado) values (8,"0256988563","Josiane Barbosa");
insert into ParticipantesProjetos (id_projeto,cpf_empregado,nome_empregado) values (6,"0385697852","Cid Glei");
insert into ParticipantesProjetos (id_projeto,cpf_empregado,nome_empregado) values (1,"0478963651","Cristiane Benfica");
insert into ParticipantesProjetos (id_projeto,cpf_empregado,nome_empregado) values (1,"0452653691","Mônica Pava");


create table ProjetosDepartamentos (
id_projeto int not null,
departamento_nome varchar(255) not null,

foreign key (id_projeto) references Projetos(id_projeto),
foreign key (departamento_nome) references Departamento(nome_departamento)

);


insert into ProjetosDepartamentos(id_projeto, departamento_nome) values (1,"MANUTENCAO");
insert into ProjetosDepartamentos(id_projeto, departamento_nome) values (5,"MANUTENCAO");
insert into ProjetosDepartamentos(id_projeto, departamento_nome) values (6,"MARKETING");
insert into ProjetosDepartamentos(id_projeto, departamento_nome) values (4,"TI");
insert into ProjetosDepartamentos(id_projeto, departamento_nome) values (2,"MARKETING");
insert into ProjetosDepartamentos(id_projeto, departamento_nome) values (3,"RH");
insert into ProjetosDepartamentos(id_projeto, departamento_nome) values (8,"MEIO AMBIENTE");
insert into ProjetosDepartamentos(id_projeto, departamento_nome) values (7,"PRODUÇÃO");
insert into ProjetosDepartamentos(id_projeto, departamento_nome) values (10,"LOGÍSTICA");

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `empregado_dependente` AS
    SELECT 
        `empregado`.`nome_empregado` AS `Nome do empregado`,
        `dependentes`.`nome_dependente` AS `Nome do dependente`
    FROM
        (`empregado`
        LEFT JOIN `dependentes` ON ((`empregado`.`cpf_empregado` = `dependentes`.`cpf_empregado`)));
        
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `maior_salario` AS
    SELECT 
        `empregado`.`nome_empregado` AS `Nome empregado`,
        `empregado`.`salario_empregado` AS `Salário empregado`
    FROM
        `empregado`
    ORDER BY `empregado`.`salario_empregado` DESC
    LIMIT 1;
    
    
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `media_fem` AS
    SELECT 
        AVG(`empregado`.`salario_empregado`) AS `Média dos salários MULHERES`
    FROM
        `empregado`
    WHERE
        (`empregado`.`sexo_empregado` = 'Feminino');
        
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `media_masc` AS
    SELECT 
        AVG(`empregado`.`salario_empregado`) AS `Média dos salários HOMENS`
    FROM
        `empregado`
    WHERE
        (`empregado`.`sexo_empregado` = 'Masculino');
        
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `nome_gerentes` AS
    SELECT 
        `empregado`.`nome_empregado` AS `Nome dos gerentes`
    FROM
        `empregado`
    WHERE
        (`empregado`.`cargo_empregado` = 'Gerente');
        
        
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `nome_maiorsalario` AS
    SELECT 
        `empregado`.`nome_empregado` AS `Nome do mais bem pago funcionário`
    FROM
        `empregado`
    ORDER BY `empregado`.`salario_empregado` DESC
    LIMIT 1;
    
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `projetos_empregados` AS
    SELECT 
        `empregado`.`nome_empregado` AS `Nome do empregado`,
        `participantesprojetos`.`id_projeto` AS `ID do projeto`
    FROM
        (`empregado`
        JOIN `participantesprojetos` ON ((`empregado`.`cpf_empregado` = `participantesprojetos`.`cpf_empregado`)));
        
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `salarios` AS
    SELECT 
        `empregado`.`nome_empregado` AS `Nome do empregado`,
        `empregado`.`salario_empregado` AS `Salário do empregado`
    FROM
        `empregado`
    ORDER BY `empregado`.`salario_empregado` DESC;
    DROP

DELIMITER $$
create procedure aumento (in porcentagem float, OUT aumento VARCHAR(45))

BEGIN

 start transaction;
 UPDATE Empregado SET salario_empregado = salario_empregado * (porcentagem+1);
 set aumento = "Aumento salarial aplicado";
 commit;
 
END$$
DELIMITER ;

alter table Empregado Add index nome_do_empregado (nome_empregado);
alter table Empregado Add index salario_do_empregado (salario_empregado);


select*from Empregado;
select*from supervisores;
select*from ataprojetos;
select*from dependentes;
select*from etapaprojeto;
select*from projetos;
select*from departamento;
select*from participantesprojetos;
select*from projetosdepartamentos;

set SQL_SAFE_UPDATES = 0;
call aumento(0.1,@aumento);
select @aumento as "Situação do aumento salarial";
set SQL_SAFE_UPDATES = 1;


explain select nome_empregado from Empregado where nome_empregado= "Ruan Gabriel";

select * from empregado_dependente;
select * from nome_maiorsalario;
select * from maior_salario;
select * from salarios;
select* from media_masc;
select* from media_fem;
select* from nome_gerentes;
select* from projetos_empregados;




