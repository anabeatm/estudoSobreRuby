# listas ordenadas de elementos
# em ruby, usamos [] e sua primeira posição é 0
alunos = ['André', 'Pedro', 'Carolina']
#        [   0         1          2   ]
alunos[0] # André
alunos[1] # Pedro
alunos[-1] # último elemento, Carolina

alunos = ['André', 1, true] # pode atribuir qualquer tipo de valor


alunos << 'Laura' # adiciona o valor "Laura" na última posição do array alunos 
alunos.pop() # remove o último valor do array, nesse caso, “Laura”


alunos = ['André', 'Pedro', 'Carolina']
alunos[1] = 'Joaquim' # muda o valor da posição 1 do array de "Pedro" para "Joaquim"

alunos.first() # retorna o valor da primeira posição do array
alunos.last() # retornar o valor da última posição do array
alunos.length() # retorna a quantidade de elementos do array
