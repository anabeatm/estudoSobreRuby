# encapsulamento -> usado para isolar comportamentos e controlar o acesso a dados dos objetos das classes
# evitar o uso de certos trechos do nosso código por diversos fatores como:
# legibilidade, flexibilidade e facilitar modificações

# podemos declarar atributos ou métodos como públicos ou privados e assim controlar o seu acesso

# class Turma
#   attr_accessor :alunos, :nome
#   def initialize
#           @alunos = []
#   end

#   def adicionaAluno(aluno)
#           @alunos << aluno
#   end
# end

# em nossa classe Turma, se queremos gerenciar os alunos de uma turma somente por métodos, 
# podemos utilizar a notação private.

class Turma
    attr_reader :alunos
    attr_accessor :nome

    def initialize(nome)
            @nome = nome
            @alunos = [ ]

    end

    def adicionaAluno(aluno)
            @alunos << alunos
    end

    private


    attr_writer :alunos
end
# fechamos o método setter somente para dentro da nossa classe
# não podemos manipulá-lo de outro lugar
# podemos trocar seu valor somente através dos métodos declarados na classe Turma