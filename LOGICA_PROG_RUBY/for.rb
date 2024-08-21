# estrutura de repetição finita
# exemplo:
for i in 1..5
    puts i
end

nomes = ["Alice", "Bob", "Carol"]

for nome in nomes
  puts "Olá, #{nome}!"
end



# porém não é comum o for, o comum é o each
# estrutura básica:
coleção.each do |elemento|
    # Código a ser executado para cada elemento
end
# coleção: é o array, hash, range, ou qualquer outra coleção sobre a qual você quer iterar.
# elemento: é a variável que representa o elemento atual da coleção em cada iteração.

numeros = [1, 2, 3, 4, 5]

numeros.each do |numero|
  puts numero
end



alunos.each do |um_aluno|
    puts(um_aluno[:nome])
end
# a função each itera sobre cada elemento de uma coleção e executa o bloco de código fornecido uma vez para cada elemento.