#language: pt
#encoding: utf-8

Funcionalidade: Acessar relatorio
Eu como usuario
Quero acessar a aba relatorio
Para visulizar o conteudo 

    @relatorio @ok
    Cenario: Acessar relatorio
    Dado que eu esteja na home principal
    Quando eu clicar em "Relatorios"
    E clicar em "btg pactual digital"
    Entao sera exibida a pagina de relatorios
