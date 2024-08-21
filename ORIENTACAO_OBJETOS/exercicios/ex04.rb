# class Professor
#   attr_reader :dataInicioFerias, :dataFimFerias
#   attr_accessor :nome, :codigoFuncionario, :disciplina, :ferias

#   def initialize(nome, codigoFuncionario, disciplina)
#           @nome = nome
#           @codigoFuncionario = codigoFuncionario
#           @disciplina = disciplina
#           @ferias = false 
#           @dataInicioFerias = nil
#           @dataFimFerias = nil
#   end

  # def iniciaFerias()
  #         @ferias = true
  #         puts 'Em férias'
  #         @dataInicioFerias = Time.now()
  #         @dataFimFerias = nil 
  #         puts "Iniciou férias: #{@dataInicioFerias}"
  # end

  # def encerraFerias()
  #         @ferias = false
  #         puts 'Acabou férias'
  #         @dataFimFerias = Time.now
  #         puts "Acabou férias: #{@dataFimFerias}"
  # end
# end

class Funcionario
    attr_accessor :nome, :ferias, :codigoFuncionario
    def initialize(nome, codigoFuncionario)
            @nome = nome
            @codigoFuncionario = codigoFuncionario
            @ferias = false
    end

    def imprime
            puts "Nome: #{@nome}"
            puts "Código do funcionário: #{@codigoFuncionario}"
    end

    def iniciaFerias()
          @ferias = true
          puts 'Em férias'
          @dataInicioFerias = Time.now()
          @dataFimFerias = nil 
          puts "Iniciou as suas férias em: #{@dataInicioFerias}"
    end 

  def encerraFerias()
        @ferias = false
        puts 'Acabou férias'
        @dataFimFerias = Time.now
        puts "Acabou as suas férias em: #{@dataFimFerias}"
  end
end


class Professor < Funcionario 
  attr_accessor :disciplina 

  def initialize(nome, codigoFuncionario, disciplina)
          super(nome, codigoFuncionario) 
          @ferias = false
          @disciplina = disciplina
  end

  def imprime 
        super
        puts "Disciplina: #{disciplina}"
  end
end

carlos = Funcionario.new('Carlos', 123)

tereza = Professor.new('Tereza', 1234, 'Ciências')

carlos.imprime

puts "Informações do Funcionário Carlos:"
carlos.iniciaFerias()



puts "\nInformações do Professor Tereza:"
tereza.imprime  


# ÁRVORE DE HERANÇA
puts Professor.ancestors