class Turma
  attr_accessor :alunos, :nome
  def initialize
          @alunos = []
  end

  def adicionaAluno(aluno)
          @alunos << aluno
  end

  def totalAlunos # esse método utiliza o método length do array @alunos para contar o número de elementos
        puts "Total de alunos: #{@alunos.length}"
  end
end

turma = Turma.new
turma.adicionaAluno('Maria')
turma.adicionaAluno('João')
turma.adicionaAluno('Larissa')

turma.totalAlunos
