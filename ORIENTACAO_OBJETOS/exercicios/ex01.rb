class Aluno
  attr_accessor :nome, :telefone, :matricula

  def initialize(nome, telefone, matricula)
          @nome = nome
          @telefone = telefone
          @matricula = matricula
  end
end


maria = Aluno.new('Maria', '00 99999-9999', 96754)

puts '-> Aluno:'
puts maria.nome
puts maria.telefone
puts maria.matricula

class Professor
  attr_accessor :nome, :codigoFuncionario, :telefone

  def initialize(nome, codigoFuncionario, telefone)
          @nome = nome
          @codigoFuncionario = codigoFuncionario
          @telefone = telefone
  end
end

roberto = Professor.new('Roberto', 123872, '11 99999-9999')

puts '-> Professor:'
puts roberto.nome
puts roberto.codigoFuncionario
puts roberto.telefone

class Turma
  attr_accessor :nome, :numeroSala, :professorResponsavel, :alunos

  def initialize(nome, numeroSala, professorResponsavel)
          @nome = nome
          @numeroSala = numeroSala
          @professorResponsavel = professorResponsavel
          @alunos = []
  end

  def adicionarAlunoTurma(aluno)
        @alunos << aluno
  end

  def listarAlunos
        @alunos.each do |aluno|
          puts "Nome: #{aluno.nome} - RA: #{aluno.matricula}"
        end
  end
end

turma15 = Turma.new('Turma 15', 15, roberto)

turma15.adicionarAlunoTurma(maria)

puts '-> Turma:'
puts turma15.nome
puts "Número da sala: #{turma15.numeroSala}"
puts "Professor responsável: #{turma15.professorResponsavel.nome}"
puts "\nAlunos da #{turma15.nome}:"
turma15.listarAlunos
