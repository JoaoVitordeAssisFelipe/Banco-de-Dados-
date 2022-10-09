/*Banco de Dados de uma catraca de um instituição */

CREATE TABLE alunos(
    id_aluno VARCHAR(30) not NULL PRIMARY key,
    cpf VARCHAR(15) not NULL,
    nome varchar(50) not NULL,
    rg VARCHAR(50) not NULL,
    sexo VARCHAR(30),
    comprovante_R VARCHAR(50) 
); 

CREATE TABLE telefoneAluno(
    telefone VARCHAR(15) not NULL,
    celular VARCHAR(15) not NULL,
    id_aluno VARCHAR(30) not NULL ,
    FOREIGN key (id_aluno) REFERENCES alunos(id_aluno) 
);

CREATE TABLE profissionais(
    id_profi int not null PRIMARY key,
    cpf varchar(30) not null,
    nome varchar(50),
    rg varchar (50) not null,
    sexo varchar (20),
    comprovante_residencia varchar(80) not null,
    cargo varchar (50) not null 
); 

CREATE TABLE telefoneProfi(
    telefone VARCHAR(15) not NULL,
    celular VARCHAR(15) not NULL,
    id_profi integer not NULL,
    FOREIGN key (id_profi) REFERENCES profissionais(id_profi) 
); 

CREATE TABLE emailProfi(
    email VARCHAR(50) not NULL,
    id_profi integer not NULL,
    FOREIGN key (id_profi) REFERENCES profissionais(id_profi)
); 

CREATE TABLE pontoeletronico (
    cod_ponto varchar(50),
    data_hora TIMESTAMP,
    PRIMARY key (cod_ponto) 
); 

CREATE TABLE emailAluno(
    email VARCHAR(50) not NULL,
    id_aluno VARCHAR(30) not NULL,
    FOREIGN key (id_aluno) REFERENCES alunos(id_aluno) 
);

CREATE TABLE instituicao(
    localizacao varchar(50) not null,
    url  varchar(50) not null ,
    nome varchar(50) not null,
    id_inst int not NULL PRIMARY KEY
); 

CREATE TABLE telefoneinst(
    telefone VARCHAR(15) not NULL,
    celular VARCHAR(15) not NULL,
    id_inst integer not NULL,
    FOREIGN key (id_inst) REFERENCES instituicao(id_inst) 
); 

CREATE TABLE emailinst(
    email VARCHAR(50) not NULL,
    id_inst integer not NULL,
    FOREIGN key (id_inst) REFERENCES instituicao(id_inst) 
); 

CREATE TABLE catraca(
    id_catraca int not null,
    data_hora TIMESTAMP 
); 

CREATE TABLE cartao_profi(
    id_profi int,
    nome varchar(80),
    FOREIGN key (id_profi) REFERENCES profissionais(id_profi) 
);

CREATE table cartao_aluno (
    id_aluno varchar(50),
    nome varchar(80),
    FOREIGN key (id_aluno) REFERENCES alunos(id_aluno)
);

CREATE TABLE HoraExtra(
    cod_ponto VARCHAR(50) not null,
    id_profi int,
    data_hora TIMESTAMP,
    valor int,
    FOREIGN key (id_profi) REFERENCES profissionais (id_profi),
    FOREIGN key(cod_ponto) REFERENCES pontoeletronico (cod_ponto) 
);

CREATE TABLE Endereco_Inst(
    id_inst int,
    rua VARCHAR(50),
    numero int,
    bairro VARCHAR(50),
    FOREIGN key (id_inst) REFERENCES instituicao 
); 

CREATE TABLE Endereco_aluno(
    id_aluno VARCHAR(30),
    rua VARCHAR(50),
    Numero int,
    Bairro VARCHAR(50),
    FOREIGN key (id_aluno) REFERENCES alunos 
); 

CREATE TABLE Endereco_Profi(
    id_profi INT,
    rua VARCHAR(50),
    Numero int,
    Bairro VARCHAR(50), 
    FOREIGN key (id_profi) REFERENCES profissionais 
);


/*Dados*/

INSERT INTO alunos(id_aluno,cpf,nome,rg,sexo,comprovante_r)
VALUES  ('1111593012','355.763.768-30','Ana Maria Nogueira','288.563','Feminino','35586-998'), 
        ('1111956317','251.265.020-00','Barbara Gomide Silva','254.672','Feminino','23404-456'), 
        ('1111369875','237.489.320-06','Davi Silva Gomes','566.518','Masculino','56433-789'), 
        ('1111456328','826.883.900-74','Emanuelle Paiva Silva','888.871','Feminino','36457- 344'), 
        ('1111369854','281.135.320-80','Francielle Paula Serrra','378.638','Feminino','18452-443'), 
        ('1111189542','838.319.390-47','Gustavo Alves Rodrigues','860.182','Masculino','87236-785'), 
        ('1111635872','665.480.070-26','Henrique Herrera Fernandes','615.398','Masculino','45665-987'),
        ('1111257451','607.533.270-74','Isadora Rodrigues Pena','951.556','Feminino','78235-864'), 
        ('1111623688','940.440.480-29','Wesley Moura Abrantes','545.224','Masculino','78235-864'), 
        ('1111544756','689.819.700-25','Wanda Silva Moura','483.838','Feminino','82139-852');

INSERT INTO telefonealuno(telefone, celular, id_aluno) 
VALUES ('(34) 4002-8922','(34) 4343-2466','1111544756'),
       ('(46) 3343-5656','(46) 2323-3342', '1111623688'),
       ('(34) 9889-4354','(34) 3483-2245','1111257451'),
       ('(23) 4537-9898','(23) 2132-2471', '1111635872'),
       ('(45) 8733-4554','(45) 4621-8764','1111189542'),
       ('(78) 3545-2345','(78) 7984-4874', '1111369854'),
       ('(12) 3454-0990','(12) 7353-2344','1111456328'),
       ('(87) 3476-8964','(87) 5897-9086', '1111369875'),
       ('(56) 7857-9864','(56) 3545-5732','1111956317'),
       ('(89) 2435-4619','(89) 5432-3243', '1111593012');

INSERT INTO emailaluno(email,id_aluno)
VALUES  ('ananogueira@zzz.com.br','1111593012'),
        ('barbaragomide@zzz.com.br','1111623688'),
        ('davisilvagomes123@zzz.com.br','1111257451'),
        ('emanuellepaiva@zzz.com.br','1111635872'),
        ('franciellepaulaserra@zzz.com.br','1111189542'),
        ('gustavoalves@zzz.com.br','1111369854'),
        ('henriqueherrera@zzz.com.br','1111456328'),
        ('isadorapena@zzz.com.br','1111369875'),
        ('wesleymoura@zzz.com.br','1111956317'),
        ('wandasilvamoura@zzz.com.br','1111593012');
        
INSERT INTO endereco_aluno(id_aluno,rua,numero,bairro)
VALUES  ('1111593012','Rua Katy Perry',899,'Copacabana'), 
        ('1111956317','Rua monte olimpo',702,'Santa Luzia'), 
        ('1111369875','Rua Alcides',203,'Dom Almir'), 
        ('1111456328','Rua Michele Naves',404,'Santa Mônica'), 
        ('1111369854','Rua Rondon Pacheco',444,'Santa Mônica'),
        ('1111189542','Rua Marcos Felipe',623,'Chacaras Tubalina'), 
        ('1111635872','Rua Herrera Da Mata',297,'Jardim Sucupira'), 
        ('1111257451','Rua Assis Machado',785,'Guarani'), 
        ('1111623688','Rua Continente Florido',247,'Luizote de Freitas'), 
        ('1111544756','Rua Silva Magalhães',131,'Santa Mônica');

INSERT INTO profissionais(id_profi,cpf,nome,rg,sexo,comprovante_residencia, cargo)
VALUES  (0000563216,'942.453.800-63','Ana Clara Nascimento Silva','15551-85','Feminino','34506-998', 'Professor'),
        (0000632891,'562.813.820-72','Ana Paula Silva Costa', '25256-78','Feminino','23408-456', 'Professor'),
        (0000256325,'925.014.290-01','Brenda Fernandes Ferreira','45824-65','Feminino','12345-675', 'limpeza'),
        (0000365874,'041.905.470-77','Bruno Toledo Cota','15245-75','Maculino','43723- 343', 'limpeza'),
        (0000232456,'566.378.710-01','Caio Serra Silva','23568-15','Masculino','95340-444', 'secretaria'),
        (0000221716,'849.216.670-39','Cassandra Monteiro Assis','51542-78','Feminino','26578-009', 'secretaria'),
        (0000181921,'818.174.350-43','Eduardo Francisco Silva','15248-45','Masculino','56845-898', 'segurança'),
        (0000040881,'304.916.060-87','Fábio Rodrigues Silva','23514-89','Masculino','45664-221','segurança'),
        (0000011132,'614.562.150-86','João Marcos Magalhães','25147-71','Masculino','56984-454','Professor'),
        (0000281104,'499.201.640-54','Jessica Lorrayne Alves','47584-85','Feminino','35482-000','segurança');
 
 INSERT INTO telefoneprofi(telefone, celular, id_profi)
 VALUES  ('(34)89976-3465', '(34)4637-6843', 0000563216),
         ('(34)84635-2734 ', '(46)6589-4363', 0000632891),
         ('(34)83464-5746', '(34)6578-2165', 0000256325),
         ('(34)84954-9839', '(23)9364-6763', 0000365874),
         ('(34)85474-3745', '(45)5378-2443', 0000232456),
         ('(34)85647-7543 ', '(78)3498-8900', 0000221716),
         ('(34)80763-4738', '(12)4397-3467', 0000181921),
         ('(34)85374-4753 ', '(87)6578-4378', 0000040881),
         ('(34)83472-43578', '(56)8904-4578', 0000011132),
         ('(34)80034-5647', '(89)8953-3478', 0000281104); 

INSERT INTO emailprofi(email,id_profi)
VALUES  ('anaclaranaasscimento@xxx.com.br',0000563216),
        ('anapaulasilva@xxx.com.br',0000632891),
        ('brendafernandes@xxx.com.br',0000256325),
        ('brunotoledo@xxx.com.br',0000365874),
        ('caioserrasilva@xxx.com.br',0000232456),
        ('monteirocassandra@xxx.com.br', 0000221716),
        ('eduardofrancisco@xxx.com.br',0000181921),
        ('fabiomagalhaes@xxx.com.br',0000040881),
        ('joaomarcos@xxx.com.br',0000011132),
        ('jessicalorraynealves@xxx.com.br',0000281104); 

INSERT INTO endereco_profi(id_profi,rua,numero,bairro)
VALUES  (0000563216,'Rua da Faxineira',899,'Aclimação'),
        (0000632891,'Rua do advogado',702,'Fundinho'),
        (0000256325,'Rua do mecânico',203,'Cazeca'),
        (0000365874,'Rua do motorista',404,'Santa Mônica'),
        (0000232456,'Avenida João Marques',444,'Planalto'),
        (0000221716,'Rua Francisco Silva',623,'Jardim Holanda'),
        (0000181921,'Rua Arã Marcos',297,'Centro'),
        (0000040881,'Rua Da Serra Verde',785,'São Jorge'),
        (0000011132,'Rua Monte Carmelo',247,'Jardim Botânico'),
        (0000281104,'Rua céu azul',131,'Santa Mônica');
        
INSERT INTO pontoeletronico(cod_ponto, data_hora)
VALUES  ('25544565', '2022-08-01 18:30:09'),
        ('54365879', '2022-08-12 18:16:21'),
        ('58487655', '2022-07-28 19:06:12'),
        ('46988776', '2022-08-17 19:03:11'),
        ('54798655', '2022-08-22 18:11:05'),
        ('74564355', '2022-08-21 18:25:14'),
        ('65465454', '2022-05-09 18:47:17'),
        ('54611236', '2022-08-01 19:11:36'),
        ('54749889', '2022-08-12 18:33:35'),
        ('44649879', '2022-02-26 19:15:52');

INSERT INTO horaextra(cod_ponto,id_profi,data_hora,valor)
VALUES  ('25544565',0000563216,'2022-08-01 18:30:09',15.04),
        ('54365879',0000632891,'2022-08-12 18:16:21',08.09),
        ('58487655',0000256325,'2022-07-28 19:06:12',25.02),
        ('46988776',0000365874,'2022-08-17 19:03:11',22.25),
        ('54798655',0000232456,'2022-08-22 18:11:05',02.35),
        ('74564355',0000221716,'2022-08-21 18:25:14',12.07),
        ('65465454',0000181921,'2022-05-09 18:47:17',23.10),
        ('54611236',0000040881,'2022-08-01 19:11:36',24.47),
        ('54749889',0000011132,'2022-08-12 18:33:35',15.14),
        ('44649879',0000281104,'2022-02-26 19:15:52',25.33);
        
 INSERT INTO instituicao(localizacao,url,nome,id_inst) 
 VALUES('38401-062','WWW7.fiemg.com.br.','SENAI Uberlândia  Dr. Celso Charuri',1); 
 
 INSERT INTO telefoneinst(telefone,celular,id_inst) 
 VALUES('(34) 3293-3200','xxxx-xxxx',1); 
 
 INSERT INTO emailinst(email,id_inst) 
 VALUES('Senai.com.br',1); 
 
 INSERT INTO endereco_inst(id_inst, rua, numero, bairro) 
 VALUES  ('1', 'rua Charuri', 123, 'Roosevelt');       

