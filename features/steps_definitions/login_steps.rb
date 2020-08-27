#codigo do leleco

Dado("que eu esteja na tela de login") do
    visit 'https://tradersclub.com.br/'
end
  
Quando("clicar no botao entrar") do
    @login = Login.new
    login.clicar_entrar
end
  
Quando("preencher os campos com dados validos") do
    @login.digitar_email
    @login.digitar_senha
    @login.logar
end
  
Entao("sera exibido a home do site") do
    expect(l@ogin.validation).to eq("Vini Malachias")
end

