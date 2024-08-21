# na classe, podemos definir um conjunto de atributos que serão utilizados em todos os seus objetos
# atributos são como variáveis amarradas
 
# os atributos são definidos durante a criação dos objetos
# para alterar seu comportamento padrão devemos criar um método initialize na classe -> construtor

class Aluno
    def initialize(nome, telefone, matricula)
            @nome = nome # @variavel para declarar os atributos dos objetos Aluno que serão gerados
            # podemos dizer então que atributos são variáveis relacionadas a uma instância da classe
            @telefone = telefone
            @matricula = matricula
    end
    # método para exibir as informações do aluno
    def mostrar_info 
      puts "Nome: #{@nome}"
      puts "Telefone: #{@telefone}"
      puts "Matrícula: #{@matricula}"
    end
end

ana = Aluno.new('Ana', '99 99999-9999', 1234)

ana.mostrar_info


