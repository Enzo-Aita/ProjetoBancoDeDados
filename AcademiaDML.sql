 -- --------------------------------------------------------------------   
    
INSERT INTO pessoa(idPessoa, nome, cpf, dataNascimento, rua, numero, bairro, cidade, uf)
VALUES 
('1','Ana Beatriz','12345678900','1992-05-14','Rua Felipe Schmidt','001','centro','Florianópolis','SC'),
('2','João Carlos','12345678901','1985-11-28','Rua Bocaiúva','002','centro','Florianópolis','SC'),
('3','Enzo Aita','12345678902','1988-02-11','Rua Lauro Linhares','003','campeche','Florianópolis','SC'),
('4','Camila Carvalho','12345678903','1985-01-30','Avenida Mauro Ramos','004','trindade','Florianópolis','SC'),
('5','Ana Carolina','12345678904','1992-06-25','Rua Delminda Silveira','005','trindade','Florianópolis','SC'),
('6','Carol Chaves','12345678905','1994-12-19','Rua João Pio Duarte','006','centro','Florianópolis','SC'),
('7','Eduarda Lima','12345678906','1990-07-22','Rua Esteves Júnior','007','centro','Florianópolis','SC'),
('8','Marcos Rocha','12345678907','2001-11-02','Rua Almirante Lamego','008','centro','Florianópolis','SC'),
('9','Pedro Mendes','12345678908','1998-03-14','Avenida Beira-Mar Norte','009','centro','Florianópolis','SC'),
('10','Alan Patrick','12345678909','1995-09-09','Rua Deodoro','010','centro','Florianópolis','SC');

SELECT * FROM pessoa;

INSERT INTO telefone (idPessoa, telefone)
 VALUES
('1','4899100100'),
('1','4899100101'),
('2','4899100102'),
('3','4899100103'),
('4','4899100104'),
('4','4899100105'),
('5','4899100106'),
('6','4899100107'),
('7','4899100108'),
('8','4899100109'),
('9','4899100110'),
('10','4899100111'); 
    
SELECT * FROM telefone;
    
INSERT INTO email (idPessoa, email) 
VALUES
('1','ana.beatriz@exemplo.com'),
('1','ana.trabalho@exemplo.com'),
('2','joao.carlos@exemplo.com'),
('3','enzo.aita@exemplo.com'),
('4','camila.carvalho@exemplo.com'),
('4','camila.m@empresa.exemplo.com'),
('5','ana.carolina@exemplo.com'),
('6','carol.chaves@exemplo.com'),
('7','eduarda.lima@exemplo.com'),
('7','eduarda@academia.exemplo.com'),
('8','marcos.rocha@exemplo.com'),
('9','pedro.mendes@exemplo.com'),
('10','alan.patrick@exemplo.com');

SELECT * FROM email;

INSERT INTO aluno (idAluno, dataCadastro) 
VALUES
('1','2026-01-05'),
('2','2026-09-01'),
('3','2026-11-01'),
('4','2026-06-01'),
('5','2026-03-02'),
('6','2026-08-17');

SELECT * FROM aluno;

INSERT INTO instrutor (idInstrutor, cref, dataAdmissao) 
VALUES
('6','000606-G/SC','2025-03-01'),
('7','000707-G/SC','2022-02-01'),
('8','000808-G/SC','2023-05-15'),
('9','000909-G/SC','2024-08-01'),
('10','001010-G/SC','2025-10-01');

SELECT * FROM instrutor;

INSERT INTO plano (idPlano,nome, duracaoMeses, valorMensal)
 VALUES
('1','Mensal','1','129.90'),
('2','Trimestral','3','109.90'),
('3','Semestral','6','99.90'),
('4','Anual','12','89.90'),
('5','Estudante','6','79.90');

SELECT * FROM plano;

INSERT INTO matricula (idMatricula,idAluno, idPlano, dataInicio, dataFim, status)
 VALUES
('1','1','4','2026-01-05','2027-01-05','ATIVA'),
('2','2','2','2026-09-01','2026-12-01','ATIVA'),
('3','3','1','2026-11-01','2026-12-01','ATIVA'),
('4','4','3','2026-06-01','2026-12-01','ATIVA'),
('5','5','1','2026-03-02','2026-04-02','ENCERRADA'),
('6','5','3','2026-07-01','2027-01-01','ATIVA'),
('7','6','5','2026-08-17','2027-02-17','TRANCADA');

SELECT * FROM matricula;

INSERT INTO pagamento (idMatricula, dataVencimento, valor, dataPagamento, formaPagamento) VALUES
('1','2026-09-10','89.90','2026-09-08','PIX'),
('1','2026-10-10','89.90','2026-10-10','PIX'),
('1','2026-11-10','89.90','2026-11-09','PIX'),
('2','2026-09-05','109.90','2026-09-05','CARTAO_CREDITO'),
('2','2026-10-05','109.90','2026-10-07','CARTAO_CREDITO'),
('2','2026-11-05','109.90','2026-11-05','CARTAO_CREDITO'),
('3','2026-11-05','129.90','2026-11-04','DINHEIRO'),
('4','2026-10-10','99.90','2026-10-10','CARTAO_DEBITO'),
('4','2026-11-10','99.90','2026-11-12','CARTAO_DEBITO'),   
('5','2026-03-05','129.90','2026-03-05','DINHEIRO'),
('6','2026-10-05','99.90','2026-10-02','PIX'),
('6','2026-11-05','99.90','2026-11-05','PIX'),
('7','2026-09-20','79.90','2026-09-20','BOLETO');
    
SELECT * FROM pagamento;
    
INSERT INTO avaliacaoFisica (idAluno, dataAvaliacao, idInstrutor, peso, altura, percentualGordura) VALUES
('1','2026-01-10','7','68.5','1.65','27.4'),
('1','2026-07-10','7','65.2','1.65','24.9'),
('2','2026-09-03','8','82.0','1.78','21.3'),
('3','2026-11-03','9','58.4','1.62','25.1'),
('4','2026-06-05','8','90.3','1.80','28.6'),
('5','2026-07-03','10','61.0','1.68','22.0'),
('6','2026-08-20','7','75.0','1.75','15.2');

SELECT * FROM avaliacaoFisica;
    

INSERT INTO modalidade (idModalidade,nome, descricao) VALUES
('1','Musculação','Treino de força orientado no salão principal'),
('2','Spinning','Ciclismo indoor em grupo'),
('3','Pilates','Fortalecimento e alongamento em solo e aparelhos'),
('4','Funcional','Circuito de exercícios funcionais'),
('5','Yoga','Posturas, respiração e relaxamento');

SELECT * FROM modalidade;

INSERT INTO turma (idTurma,idModalidade, idInstrutor, diaSemana, horaInicio, horaFim, sala, capacidade) VALUES
('1','2','7','SEG','07:00','08:00','Sala 1','20'),
('2','2','7','QUA','07:00','08:00','Sala 1','20'),
('3','3','8','TER','18:00','19:00','Sala 2','12'),
('4','4','9','QUI','19:00','20:00','Sala 3','15'),
('5','1','9','SEG','18:00','19:00','Salão principal','30'),
('6','5','10','SAB','09:00','10:00','Sala 2','14'),
('7','1','6','TER','07:00','08:00','Salão principal', '30');

SELECT * FROM turma;

INSERT INTO inscricao (idAluno, idTurma, dataInscricao) VALUES
('1','1','2026-01-06'),
('1','3','2026-01-06'),
('1','7','2026-02-01'),
('2','4','2026-09-02'),
('3','1','2026-11-01'),
('3','2','2026-11-01'),
('4','4','2026-06-02'),
('4','5','2026-06-02'),
('5','3','2026-07-01'),
('5','6','2026-07-01'),
('6','5','2026-08-17');

SELECT * FROM inscricao;