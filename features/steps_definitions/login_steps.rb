Dado("que eu esteja na tela de login") do
    visit 'https://tradersclub.com.br/'
    @login = Login.new
end
  
Quando("clicar no botao `entrar`") do
    @login.clicar_entrar
end
  
Quando("preencher os campos com dados validos") do
    @login.digitar_email
    @login.digitar_senha
    @login.logar
end
  
Entao("sera exibido a home do site") do
    expect(@login.validation).to eq("Vini Malachias")
end

