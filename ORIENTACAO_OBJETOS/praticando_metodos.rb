class Turma
    attr_accessor :alunos, :nome
    def initialize
            @alunos = []
    end

    def adicionaAluno(aluno)
            @alunos << aluno
    end
end
