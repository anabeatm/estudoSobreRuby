class Professor
  attr_reader :dataInicioFerias, :dataFimFerias 
  attr_accessor :nome, :codigoFuncionario, :disciplina, :ferias

  def initialize(nome, codigoFuncionario, disciplina)
          @nome = nome
          @codigoFuncionario = codigoFuncionario
          @disciplina = disciplina
          @ferias = false 
          @dataInicioFerias = nil
          @dataFimFerias = nil
  end

  def iniciaFerias()
          @ferias = true
          puts 'Em férias'
          @dataInicioFerias = Time.now()
          @dataFimFerias = nil 
          puts "Iniciou férias: #{@dataInicioFerias}"
  end

  def encerraFerias()
          @ferias = false
          puts 'Acabou férias'
          @dataFimFerias = Time.now
          puts "Acabou férias: #{@dataFimFerias}"
  end
end

class Funcionario
    attr_accessor :nome, :ferias, :codigoFuncionario
    def initialize(nome, codigoFuncionario)
            @nome = nome
            @codigoFuncionario = codigoFuncionario
            @ferias = false
    end
    # herança 
    # permite abordar o cenário acima evitando duplicar código em nosso programa. 
    # Com ela, uma classe pode herdar todos os atributos e métodos de outra classe
end

class Professor < Funcionario # a classe Professor herda de Funcionario
    attr_accessor :disciplina # adiciona o atributo disciplina específico para a classe Professor

    def initialize(nome, codigoFuncionario, disciplina)
            super(nome, codigoFuncionario) # esse método permite chamar o método com o mesmo nome na classe pai
            # para chamar o método initialize da classe Funcionario e inicializa o Professor com o atributo adicional disciplina
            @ferias = false
            @disciplina = disciplina
    end
end # podemos usar a notação Professor < Funcionario para indicar que Professor herda de Funcionario, logo que
# professor também é um funcionário
# com isso podemos também tirar todos os atributos duplicados da classe professor e manter somente o atributo :disciplina

carlos = Funcionario.new('Carlos', 123)

tereza = Professor.new('Tereza', 1234, 'Ciências')


# no caso de métodos que existem nas duas classes, o método da classe mais específica vai ter sempre prioridade
# isso se deve ao que chamamos de method lookup – 'busca de métodos' – nas linguagens orientadas a objetos