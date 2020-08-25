class Login < SitePrism::Page


    # Elementos mapeados
    element :botao_entrar, "a[class='btn-whiteTCN']" #Botao entrar
    element :campo_email, "input[id='loginId']" #Campo email
    element :campo_senha, "input[id='password']" #Campo senha
    element :botao_login, "button[id='loginButton']" #botao login
    element :validacao, ".activeName"

    #Metodos com as acoes
    def clicar_entrar
      botao_entrar.click
    end

    def digitar_email
      username = LOGIN["usuario"][0] # Usuario do Bruno por causa do index 0
      campo_email.set(username)
    end

    def digitar_senha
      senha = LOGIN["senha"]
      campo_senha.set(senha)
    end    

    def logar
      botao_login.click
    end

    def validation
      #("id=taltal / #taltal - class=taltal / .taltal")
      validacao.text
    end


end