# perguntar um número qualquer para seu amigo
puts 'Digite um número: ' # puts imprime um texto na tela
# anotar este número num papel
numero = gets
# dividir esse número por 2
inteiro = numero.to_i()
# verificar se o resto dessa divisão é zero
resto = inteiro % 2

# se o resto da divisão por 2 for zero, o número é par
if resto == 0
    puts 'Número é par!'
else
    puts 'Número é ímpar!'
end