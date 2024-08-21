# métodos são utilizados para encapsular pequenos comportamentos de código que queremos reaproveitar e executar diversas vezes.

# declaração do método
def nome_do_metodo() 
    puts 'Método'
end

# chamada
nome_do_metodo() # método é executado neste momento


# parâmetros
# pode passar variáveis, valores ou objetos para o método executar e processar internamente.
def soma_valores(valor1, valor2)
    return valor1 + valor2
end

puts soma_valores(10, 20)

# os métodos em Ruby sempre retornam alguma coisa, mesmo que seja nil (nulo)
# esse retorno não precisa ser explícito com a palavra return como no exemplo
def soma_valores(valor1, valor2)
    valor1 + valor2
end
  
soma = soma_valores(10, 20) #última operação do método foi a soma
puts soma


alberto = {nome: 'Alberto', nota: 7, disciplina: 'Artes'}
joana = {nome: 'Joana', nota: 8, disciplina: 'Bio'}
karen = {nome: 'Karen', nota: 9, disciplina: 'Filosofia'}
alunos = [alberto, joana, karen]

def imprime_alunos(nome, nota, disciplina)
    puts("#{nome} tirou nota #{nota} em #{disciplina}")
end

alunos.each do |aluno|
    imprime_alunos(aluno[:nome], aluno[:nota], aluno[:disciplina])
end
