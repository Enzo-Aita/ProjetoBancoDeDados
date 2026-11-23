# Banco de dados da academia

Uma academia decidiu desenvolver um sistema para facilitar o controle dos seus alunos, instrutures, 
planos, pagamentos, e aulas. Então foir realizada uma entrevista com os responsáveis para entender melhor
quais informações são necessárias para cirar um banco de dados para essa academia

A academia precisa armazenar os dados das pessoas que frequentam o local, indicado o nome, o CPF, a
data de nascimento e o endereço, com rua, número bairro, cidade e UF. Cada pessoa pode ter vários telefones
e vários emais para contato. Essas pessoas podem ser alunos ou instrutores, e uma mesma pessoa pode ser os
dois ao mesmo tempo, já que é comum um instrutor também treinar na academia. Para os alunos é necessário guardar
a data em que ele foi cadastrado, já oara os instrutores é preciso o número do registro profissional dele no 
Conselho Regional de Educação Física, o CREF e a data em que ele foi admitido.

A academia fornece planos para os alunos e cada plano tem um nome, a duração em meses e o valor da mensalidade.
Quando o aluno escolher um plano, é feita uma matrícula com a data de início, a data de fim e o status
dela (ativa, trancada ou encerrada). Um aluno pode ter várias matrículas ao longo do tempo, por exemplo quando
ele renova ou troca de plano, mas cada matrícula é de apenas um plano

Cada matrícula gero os pagamentos das mensalidades. Para cada Pagamento é preciso registrar a data de vencimento,
o valor, a data em que foi pago e a forma de pagamento (PIX, dinheiro, cartão de crédito ou débito ou boleto).
Enquanto a mensalidade não for paga, a data de pagamento e a forma de pagamento ficam em branco.
Um pagamento só existe se tiver uma matrícula ligada a ele.

Os alunos também podem fazer avaliações físicas, que são sempre feitas por um instrutpr. Na avaliação é registrada
a data em que ela foir feita,  o peso, a altura e o percentual de gordura do aluno, assim é possivel acompanhar
a evolução dele com o tempo. Um instrutor não pode fazer a avaliação de si mesmo.

Além da musculação a academia oferece modalidades como spinning, funcional, pilates e cada modalidade
tem um nome e uma descrição. Essas modalidades são organizadas em turmas e cada turma é de uma modalidade e é dada
por um instrutor. Para a turma é preciso saber o dia da semana, o horário de inicio e fim da aula, a sala e
a capacidade máxima de alunos.

Os alunos podem se inscrever nas turmas que quiserem e uma turma pode ter vários alunos inscritos. 
No momento em que o aluno se inscreve é registrada a data de inscrição, para a academia saber desde quando ele
participa daquela turma.
