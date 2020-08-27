
  Dado("Dado que eu esteja na home principal do TC") do
    visit 'https://tc.tradersclub.com.br/login'
    @login = Login.new
    @login.digitar_email
    @login.digitar_senha
    @login.logar
end
  
Quando("eu clicar em mais") do
    @agenda = Agenda.new
    @agenda.clicar_mais
    
   # @relatorios = Relatorios.new
    #@relatorios.clicar_relatorios
    sleep 1
end
  
E("clicar em Agenda mercado") do
    @agenda.clicar_agenda
end
  
  #expect(@classe.metodo).to eq("texto a validar")
Entao("sera exibida a pagina de Agenda") do
    expect(@agenda.valida_agenda).to eq("Agenda Mercado")
end