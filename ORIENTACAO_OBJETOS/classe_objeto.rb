# em OO tudo deve ser um objeto
# um objeto pode representar um grupo de informações contextualizados na aplicação
# objetos é uma instância de uma classe
# instância é uma ocorrência concreta de algo


# manter uma padronização dos objetos é uma camada de abstração, as classes

# CRIANDO UMA CLASSE
class Aluno
end


# atributos: dados que serão armazenados por cada objeto
# métodos: as mensagens que nossa classe pode receber durante a execucação do programa
alunos = []

alunos << Aluno.new
alunos << Aluno.new
alunos << Aluno.new

puts alunos.inspect # imprime todos os objetos de Aluno armazenados no array de alunos

# ABSTRAÇÃO
# abstração destina-se a receber objetos do mundo real e transformá-los em objetos na programação
# pegamos um objeto e removemos características até reduzi-las apenas às mais essenciais
# às características funcionais mais importantes dentro do contexto de nosso programa
# repare que programas ou sistemas com diferentes propósitos podem ter abstrações diferentes 
# de um mesmo elemento da vida real