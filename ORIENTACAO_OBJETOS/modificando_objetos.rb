# ao criar objetos damos valores aos atributos
# porém o valor do atributo de um objeto pode e deve mudar ao longo do ciclo de execução de um programa

# uma boa prática de OO é que os atributos devem ser sempre protegidos e a leitura ou modificação dos 
# seus valores originais seja controlada via métodos

# esses métodos são conhecidos como getters e setters, pois eles servem simplesmente para obter (get) 
# ou atribuir (set) um valor a um atributo

# class Aluno
#     def initialize(nome, telefone, matricula)
#             @nome = nome
#             @telefone = telefone
#             @matricula = matricula
#     end

#     # getter
#     def telefone
#             return @telefone
#     end

#     # setter
#     def telefone=(valor)
#             @telefone = valor
#     end

#     def mostrar_info 
#       puts "Nome: #{@nome}"
#       puts "Telefone: #{@telefone}"
#       puts "Matrícula: #{@matricula}"
#     end
# end

# rafael = Aluno.new('Rafael Silva', '11 1234-5678', 333444555)

# puts '- Antes:'

# rafael.mostrar_info

# puts '- Depois:'

# rafael.telefone = '11 91234-5678'

# rafael.mostrar_info


# readers são o equivalente dos getters e writers são o equivalente dos setters
# repare que a ideia é a mesma, somente com outra nomenclatura
# -> como readers e writers são muito comuns dentro das classes, a linguagem nos dá uma 
# forma de resumir esse código em uma linha

# podemos declarar todos os métodos de leitura de valor com o código attr_reader
# podemos definir todos os métodos de escrita com attr_writer
# se for um mesmo atributo, deve permitir a leitura e escrita, podemos usar o attr_accessor

class Aluno
    attr_accessor :nome, :telefone, :matricula

    def initialize(nome, telefone, matricula)
            @nome = nome
            @telefone = telefone
            @matricula = matricula
    end
end


rafael = Aluno.new('Rafael Silva', '11 1234-5678', 333444555)

puts rafael.nome

rafael.nome = 'Rafael da Silva'

puts '- Depois'
puts rafael.nome


# RESUMO
# objetos devem possuir um estado
# esse estado nada mais é do que o conjunto de informações armazenadas em cada objeto e os atributos 
# são responsáveis por isso
 
# ao criarmos os atributos usando os métodos attr_reader, attr_writer e attr_accessor, 
# o uso direto das variáveis iniciadas com @ passa a ser desencorajado
# a boa prática é sempre usar os métodos para obter e atribuir valores.