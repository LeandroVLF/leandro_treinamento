Dado("que eu esteja na home do site") do
  home.load
  cadastro.create
  sleep 2
end

Quando("eu clicar no {string}") do |string|
  cadastro.create_last
end

Quando("preencher os campos com dados válidos") do
  nome = CADASTRO["nome"]
  email = CADASTRO["email"]
  username = CADASTRO["username"]
  senha = CADASTRO["senha"]
  cadastro.fill_fields(nome, email, username, senha)
end

Entao("válido que meu cadastro foi realizado com sucesso") do
  sleep 2
end

Quando("preenchar o campo de nome sem a quantidade de caracteres necessária") do
  nome_errado = CADASTRO["nome_errado"]
  email = CADASTRO["email"]
  username = CADASTRO["username"]
  senha = CADASTRO["senha"]
  cadastro.fill_fields(nome_errado, email, username, senha)
end

Então("eu visualizo a mensagem de alerta de nome {string}") do |message|
  expect(cadastro.messageErrorName).to eq message
  sleep 2
end

Quando("preenchar o campo de email com um endereço já cadastrado") do
  nome = CADASTRO["nome"]
  email_ja_cadastrado = CADASTRO["email_ja_cadastrado"]
  username = CADASTRO["username"]
  senha = CADASTRO["senha"]
  cadastro.fill_fields(nome, email_ja_cadastrado, username, senha)
end

Então("eu visualizo a mensagem de alerta de email {string}") do |message|
  expect(cadastro.messageErrorName).to eq message
  sleep 2
end

Quando("preenchar o campo de senha sem a quantidade de caracteres necessária") do
  nome = CADASTRO["nome"]
  email = CADASTRO["email"]
  username = CADASTRO["username"]
  senha_errada = CADASTRO["senha_errada"]
  cadastro.fill_fields(nome, email, username, senha_errada)
end

Então("eu visualizo a mensagem de alerta de senha {string}") do |message|
  expect(cadastro.messageErrorName).to eq message
  sleep 2
end