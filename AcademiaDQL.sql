-- 1) Média, maior e menor mensalidade paga e a diferença entre a maior e a menor
SELECT ROUND(AVG(valor), 2) AS mediaMensalidade, MAX(valor) AS maiorMensalidade,
MIN(valor) AS menorMensalidade, MAX(valor) - MIN(valor) AS diferenca
FROM pagamento WHERE dataPagamento IS NOT NULL;

-- 2) Nome, CREF e bairro dos instrutores que também são alunos da academia
SELECT pessoa.nome, instrutor.cref, pessoa.bairro
FROM instrutor
INNER JOIN aluno ON aluno.idAluno = instrutor.idInstrutor
INNER JOIN pessoa ON pessoa.idPessoa = instrutor.idInstrutor;

-- 3) Nome e CREF dos instrutores, quantas turmas conduzem e quantas avaliações físicas já fizeram
SELECT pessoa.nome, instrutor.cref,
(SELECT COUNT(*) FROM turma WHERE turma.idInstrutor = instrutor.idInstrutor) AS turmas,
(SELECT COUNT(*) FROM avaliacaoFisica WHERE avaliacaoFisica.idInstrutor = instrutor.idInstrutor) AS avaliacoes
FROM instrutor INNER JOIN pessoa ON pessoa.idPessoa = instrutor.idInstrutor
ORDER BY avaliacoes DESC;

-- 4) Quantos alunos estão inscritos em cada turma, mostrando a modalidade e o dia da semana
SELECT turma.idTurma, modalidade.nome AS modalidade, turma.diaSemana, COUNT(inscricao.idAluno) AS inscritos
FROM turma
INNER JOIN modalidade ON modalidade.idModalidade = turma.idModalidade
LEFT JOIN inscricao ON inscricao.idTurma = turma.idTurma
GROUP BY turma.idTurma, modalidade.nome, turma.diaSemana
ORDER BY inscritos DESC;

-- 5) Ranking das modalidades com mais alunos inscritos
SELECT modalidade.nome, COUNT(DISTINCT inscricao.idAluno) AS quantidadeAlunos FROM modalidade
INNER JOIN turma ON turma.idModalidade = modalidade.idModalidade
INNER JOIN inscricao ON inscricao.idTurma = turma.idTurma
GROUP BY modalidade.nome
ORDER BY quantidadeAlunos DESC;

-- 6) Telefones de contato de todos os alunos, em ordem alfabética
SELECT pessoa.nome, telefone.telefone
FROM aluno
INNER JOIN pessoa ON pessoa.idPessoa = aluno.idAluno
INNER JOIN telefone ON telefone.idPessoa = pessoa.idPessoa
ORDER BY pessoa.nome ASC;

-- 7) Quantas mensalidades foram pagas em cada forma de pagamento
SELECT formaPagamento, COUNT(*) AS quantidadePagamentos
FROM pagamento WHERE dataPagamento IS NOT NULL
GROUP BY formaPagamento
ORDER BY quantidadePagamentos DESC;