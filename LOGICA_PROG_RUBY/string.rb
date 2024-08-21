uma_string = "Qualquer texto"
outra_string = 'Um texto qualquer'
puts('Combinando' + 'Strings')

puts('Campus Code'.length())
# => 11

puts('Campus Code'.downcase())
# => "campus code"

puts('Campus Code'.upcase())
# => "CAMPUS CODE"


nome = 'Ana'
idade = '19'
puts('Meu nome é ' + nome + ' e eu tenho ' + idade + ' anos de idade.')
# puts('Meu nome tem ' + nome.length() + ' caracteres.')
# O método length devolve um número, mas quando a frase é impressa, espera-se uma string. 
# Por isso o código retorna um erro.
# Para funcionar: 
puts('Meu nome tem ' + nome.length.to_s() + ' caracteres.')

# interpolação:
puts("Meu nome tem #{nome.length().to_s()} caracteres.")
puts("Meu nome é #{nome}.")

puts('Qual o seu nome? ')
nome = gets().chomp() # comeu a marcação \n (space)
puts("Seu nome é #{nome}")
puts("Seu nome tem #{nome.length().to_s()} caracteres.")
