module PageObjects

    # Método que instância a classe home.
    def home
        home ||= Home.new
    end

    def cadastro
        cadastro = Cadastro.new
    end

   



end 