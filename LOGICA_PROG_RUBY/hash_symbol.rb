# symbols
"caneca" # string
:caneca # symbol
# após a primeira declaração, o mesmo objeto é reaproveitado na memória
# normalmente usados quando precisamos de identificadores

# hashes
# conjunto de pares com uma chave e um valor
aluno = {nome: 'João', nota: 7, disciplina: 'Ciências'}
puts aluno[:nome]
puts aluno[:disciplina]
aluno[:nome] = 'Maria'
puts aluno[:nome]