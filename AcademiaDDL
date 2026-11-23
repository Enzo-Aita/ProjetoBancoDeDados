CREATE DATABASE academia;

USE academia;

CREATE TABLE pessoa (
idPessoa INT NOT NULL COMMENT 'Valor único de identificação da Pessoa',
nome VARCHAR(100) NOT NULL COMMENT 'Nome Completo',
cpf CHAR(11) NOT NULL COMMENT 'Cadastro de Pessoa Física desta Pessoa',
dataNascimento DATE NOT NULL COMMENT 'Data de Nascença',
rua VARCHAR(100) NOT NULL COMMENT 'Rua do endereço da Pessoa',
numero VARCHAR(10) NOT NULL COMMENT 'Número do endereço da Pessoa',
bairro VARCHAR(60) NOT NULL COMMENT 'Bairro do endereço da Pessoa',
cidade VARCHAR(60) NOT NULL COMMENT 'Cidade do endereço da Pessoa',
uf CHAR(2) NOT NULL COMMENT 'Unidade Federativa do endereço da Pessoa',
CONSTRAINT PK_PESSOA PRIMARY KEY (idPessoa),
CONSTRAINT UK_PESSOA_CPF UNIQUE (cpf)
    ) COMMENT 'Tabela que armazena informações gerais de pessoa';

CREATE TABLE telefone (
idPessoa INT NOT NULL COMMENT 'Valor único de identificação da Pessoa',
telefone VARCHAR(15) NOT NULL COMMENT 'Número de telefone da pessoa cadastrada',
CONSTRAINT PK_TELEFONE PRIMARY KEY (idPessoa, telefone),
CONSTRAINT FK_TELEFONE_PESSOA FOREIGN KEY (idPessoa) REFERENCES pessoa (idPessoa)
) COMMENT 'Tabela que armazena informações gerais de telefone';

CREATE TABLE email (
idPessoa INT NOT NULL COMMENT 'Valor único de identificação da Pessoa',
email VARCHAR(100) NOT NULL COMMENT 'Email da pessoa cadastrada',
CONSTRAINT PK_EMAIL PRIMARY KEY (idPessoa, email),
CONSTRAINT UK_EMAIL_EMAIL UNIQUE (email),
CONSTRAINT FK_EMAIL_PESSOA FOREIGN KEY (idPessoa) REFERENCES pessoa (idPessoa)
    ) COMMENT 'Tabela que armazena informações gerais de email';

CREATE TABLE aluno (
idAluno INT NOT NULL COMMENT 'Valor único de identificação da Aluno',
data_cadastro DATE NOT NULL COMMENT 'Data de cadastro do Aluno',
CONSTRAINT PK_ALUNO PRIMARY KEY (idAluno),
CONSTRAINT FK_ALUNO_PESSOA FOREIGN KEY (idAluno) REFERENCES pessoa (idPessoa) 
    ) COMMENT 'Tabela que armazena informações gerais de aluno';

CREATE TABLE instrutor (
idInstrutor INT NOT NULL COMMENT 'Valor único de identificação da Instrutor',
cref VARCHAR(15) NOT NULL COMMENT 'Registro profissional de educação física',
dataAdmissao DATE NOT NULL COMMENT 'Data de vínculo',
CONSTRAINT PK_INSTRUTOR PRIMARY KEY (idInstrutor),
CONSTRAINT UK_INSTRUTOR_CREF UNIQUE (cref),
CONSTRAINT FK_INSTRUTOR_PESSOA FOREIGN KEY (idInstrutor) REFERENCES pessoa (idPessoa) 
    ) COMMENT 'Tabela que armazena informações gerais de instrutor';

CREATE TABLE plano (
idPlano INT NOT NULL COMMENT 'Valor único de identificação da Aluno',
nome VARCHAR(40) NOT NULL COMMENT 'Nome do Plano',
duracaoMeses INT NOT NULL COMMENT 'Duração em meses do plano',
valorMensal DECIMAL(8, 2) NOT NULL COMMENT 'Valor em meses do plano',
CONSTRAINT PK_PLANO PRIMARY KEY (idPlano),
CONSTRAINT UK_PLANO_NOME UNIQUE (nome),
CONSTRAINT CK_PLANO_DURACAO CHECK (duracaoMeses > 0),
CONSTRAINT CK_PLANO_VALOR CHECK (valorMensal > 0)
    ) COMMENT 'Tabela que armazena informações gerais de plano';

CREATE TABLE matricula (
idMatricula INT NOT NULL COMMENT 'Valor único de identificação da Matrícula',
idAluno INT NOT NULL COMMENT 'Valor único de identificação da Aluno',
idPlano INT NOT NULL COMMENT 'Valor único de identificação da Plano',
dataInicio DATE NOT NULL COMMENT 'Data de inicio da Matrícula',
dataFim DATE NOT NULL COMMENT 'Data do fim da Matrícula',
status VARCHAR(10) NOT NULL COMMENT '',
CONSTRAINT PK_MATRICULA PRIMARY KEY (idMatricula),
CONSTRAINT UK_MATRICULA_INICIO UNIQUE (idAluno, dataInicio),
CONSTRAINT CK_MATRICULA_DATAS CHECK (dataFim > dataInicio),
CONSTRAINT CK_MATRICULA_STATUS CHECK (status IN ('ATIVA', 'TRANCADA', 'ENCERRADA')),
CONSTRAINT FK_MATRICULA_ALUNO FOREIGN KEY (idAluno) REFERENCES aluno (idAluno),
CONSTRAINT FK_MATRICULA_PLANO FOREIGN KEY (idPlano) REFERENCES plano (idPlano) 
    ) COMMENT 'Tabela que armazena informações gerais de matricula';

CREATE TABLE pagamento (
idMatricula INT NOT NULL COMMENT 'Valor único de identificação da Aluno',
dataVencimento DATE NOT NULL COMMENT 'Data vencimento do pagamento ',
valor DECIMAL(8, 2) NOT NULL COMMENT 'Valor do pagamento',
dataPagamento DATE COMMENT 'Data do pagamento ',
formaPagamento VARCHAR(15) COMMENT 'Formas de pagamentos',
CONSTRAINT PK_PAGAMENTO PRIMARY KEY (idMatricula, dataVencimento),
CONSTRAINT CK_PAGAMENTO_VALOR CHECK (valor > 0),
CONSTRAINT CK_PAGAMENTO_FORMA CHECK (formaPagamento IN ('PIX','DINHEIRO','CARTAO_CREDITO','CARTAO_DEBITO','BOLETO')),
CONSTRAINT CK_PAGAMENTO_BAIXA CHECK ((dataPagamento IS NULL AND formaPagamento IS NULL) OR (dataPagamento IS NOT NULL AND formaPagamento IS NOT NULL)),
CONSTRAINT FK_PAGAMENTO_MATRICULA FOREIGN KEY (idMatricula) REFERENCES matricula (idMatricula) 
) COMMENT 'Tabela que armazena informações gerais de pagamento';

CREATE TABLE avaliacaoFisica (
idAluno INT NOT NULL COMMENT 'Valor único de identificação da Aluno',
dataAvaliacao DATE NOT NULL COMMENT 'Data da avaliação física',
idInstrutor INT NOT NULL COMMENT 'Valor único de identificação da Instrutor',
peso DECIMAL(5, 1) NOT NULL COMMENT 'Peso do aluno',
altura DECIMAL(3, 2) NOT NULL COMMENT 'altura do aluno',
percentualGordura DECIMAL(4, 1) NOT NULL COMMENT 'Percentual de Gordura do Aluno',
CONSTRAINT PK_AVALIACAO_FISICA PRIMARY KEY (idAluno, dataAvaliacao),
CONSTRAINT CK_AVALIACAO_PESSOAS CHECK (idAluno <> idInstrutor),
CONSTRAINT CK_AVALIACAO_MEDIDAS CHECK (peso > 0 AND altura > 0 AND percentualGordura BETWEEN 0 AND 100),
CONSTRAINT FK_AVALIACAO_ALUNO FOREIGN KEY (idAluno) REFERENCES aluno (idAluno),
CONSTRAINT FK_AVALIACAO_INSTRUTOR FOREIGN KEY (idInstrutor) REFERENCES instrutor (idInstrutor) 
) COMMENT 'Tabela que armazena informações gerais de avaliação física';

CREATE TABLE modalidade (
idModalidade INT NOT NULL COMMENT 'Valor único de identificação da Modalidade',
nome VARCHAR(40) NOT NULL COMMENT 'Nome da modalidade',
descricao VARCHAR(200) NOT NULL COMMENT 'Descrição da modalidade',
CONSTRAINT PK_MODALIDADE PRIMARY KEY (idModalidade),
CONSTRAINT UK_MODALIDADE_NOME UNIQUE (nome)
    ) COMMENT 'Tabela que armazena informações gerais de modalidade';

CREATE TABLE turma (
idTurma INT NOT NULL COMMENT 'Valor único de identificação da Turma',
idModalidade INT NOT NULL COMMENT 'Valor único de identificação da Modalidade',
idInstrutor INT NOT NULL COMMENT 'Valor único de identificação da Instrutor',
diaSemana CHAR(3) NOT NULL COMMENT 'Dia da Semana ',
horaInicio TIME NOT NULL COMMENT 'Horario de inicio',
horaFim TIME NOT NULL COMMENT 'Horario do fim',
sala VARCHAR(30) NOT NULL COMMENT 'Nome da sala',
capacidade INT NOT NULL COMMENT 'Capacidade da turma',
CONSTRAINT PK_TURMA PRIMARY KEY (idTurma),
CONSTRAINT UK_TURMA_INSTRUTOR UNIQUE (idInstrutor, diaSemana, horaInicio),
CONSTRAINT UK_TURMA_SALA UNIQUE (sala, diaSemana, horaInicio),
CONSTRAINT CK_TURMA_DIA CHECK (diaSemana IN ('SEG', 'TER', 'QUA', 'QUI', 'SEX', 'SAB', 'DOM')),
CONSTRAINT CK_TURMA_HORARIO CHECK (horaFim > horaInicio),
CONSTRAINT CK_TURMA_CAPACIDADE CHECK (capacidade > 0),
CONSTRAINT FK_TURMA_MODALIDADE FOREIGN KEY (idModalidade) REFERENCES modalidade (idModalidade),
CONSTRAINT FK_TURMA_INSTRUTOR FOREIGN KEY (idInstrutor) REFERENCES instrutor (idInstrutor) 
    ) COMMENT 'Tabela que armazena informações gerais de turma';

CREATE TABLE inscricao (
idAluno INT NOT NULL COMMENT 'Valor único de identificação da Aluno',
idTurma INT NOT NULL COMMENT 'Valor único de identificação da Turma',
dataInscricao DATE NOT NULL COMMENT 'Data da inscrição ',
CONSTRAINT PK_INSCRICAO PRIMARY KEY (idAluno, idTurma),
CONSTRAINT FK_INSCRICAO_ALUNO FOREIGN KEY (idAluno) REFERENCES aluno (idAluno),
CONSTRAINT FK_INSCRICAO_TURMA FOREIGN KEY (idTurma) REFERENCES turma (idTurma) 
    ) COMMENT 'Tabela que armazena informações gerais de inscrição';
    
    
    
