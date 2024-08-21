alunos = [{nome: 'Alberto', nota: 6, disciplinas: 'Artes'}, {nome: 'João', nota: 4, disciplinas: 'Química'}, {nome: 'Felipe', nota: 100, disciplinas: 'Matemática'}]

if alunos[0][:nota] >= 5
    puts "#{alunos[0][:nome]} foi aprovado em #{alunos[0][:disciplinas]}."
end
    if alunos[1][:nota] < 5
    puts "#{alunos[1][:nome]} foi reprovado em #{alunos[1][:disciplinas]}"
end