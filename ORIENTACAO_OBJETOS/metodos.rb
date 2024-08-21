# assim como os atributos, os métodos devem ser declarados em nossas classes e estarem 
# disponíveis para todos os objetos criados para esta classe

class Professor
    attr_reader :ferias 
    attr_accessor :nome, :codigoFuncionario, :disciplina

    def initialize(nome, codigoFuncionario, disciplina)
            @nome = nome
            @codigoFuncionario = codigoFuncionario
            @disciplina = disciplina
            @ferias = false # só possui permissão de leitura
    end

    # entrou de férias
    def iniciaFerias()
            @ferias = true
            puts 'Em férias'
    end
end

alan = Professor.new("Alan", 12345, 'História')
puts alan.nome, alan.codigoFuncionario, alan.disciplina

alan.iniciaFerias()
