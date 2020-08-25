#language: pt
#encoding: utf-8

Funcionalidade: Realizar cadastro no site TradersClub
	Eu como usuário
	Quero me cadastrar
	Para receber informações da bolsa de valores

	@cadastro @ok
	Cenário: Realizar cadastro com dados válidos
		Dado que eu esteja na home do site
		Quando eu clicar no "Criar conta"
		E preencher os campos com dados válidos
		Entao válido que meu cadastro foi realizado com sucesso

    @cadastro @ok
	Cenário: Visualizar mensagem de erro para Nome incorreto
		Dado que eu esteja na home do site
		Quando eu clicar no "Criar conta"
		E preenchar o campo de nome sem a quantidade de caracteres necessária
		Então eu visualizo a mensagem de alerta de nome "Nome deve conter no mínimo 4 letras"

    @cadastro @ok
	Cenário: Visualizar mensagem de erro para Email já cadastrado
		Dado que eu esteja na home do site
		Quando eu clicar no "Criar conta"
		E preenchar o campo de email com um endereço já cadastrado
		Então eu visualizo a mensagem de alerta de email "Este Email já está cadastrado. Vá para a área de login."

    @cadastro @ok
	Cenário: Visualizar mensagem de erro para senha que não contém a quantidade certa de caracteres
		Dado que eu esteja na home do site
		Quando eu clicar no "Criar conta"
		E preenchar o campo de senha sem a quantidade de caracteres necessária
		Então eu visualizo a mensagem de alerta de senha "A senha deve conter no mínimo 6 caracteres"



