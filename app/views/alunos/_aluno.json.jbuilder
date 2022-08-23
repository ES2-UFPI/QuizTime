json.extract! aluno, :id, :nome, :cpf, :matricula, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
