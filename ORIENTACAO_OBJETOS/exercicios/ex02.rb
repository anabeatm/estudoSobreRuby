class Professor
  attr_reader :dataInicioFerias, :dataFimFerias # vão armazenar o valor de Time.now()
  attr_accessor :nome, :codigoFuncionario, :disciplina, :ferias

  def initialize(nome, codigoFuncionario, disciplina)
          @nome = nome
          @codigoFuncionario = codigoFuncionario
          @disciplina = disciplina
          @ferias = false # true se estiver de férias, false se não estiver. padrão: não está de férias (false)
          @dataInicioFerias = nil
          @dataFimFerias = nil
  end

  def iniciaFerias()
          @ferias = true
          puts 'Em férias'
          @dataInicioFerias = Time.now()
          @dataFimFerias = nil # reseta o fim das férias já que acabaram de começar
          puts "Iniciou férias: #{@dataInicioFerias}"
  end

  def encerraFerias()
          @ferias = false
          puts 'Acabou férias'
          @dataFimFerias = Time.now
          puts "Acabou férias: #{@dataFimFerias}"
  end
end

alan = Professor.new("Alan", 12345, 'História')
puts alan.nome, alan.codigoFuncionario, alan.disciplina

alan.iniciaFerias()

alan.encerraFerias()
