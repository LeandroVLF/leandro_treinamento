class Relatorios < SitePrism::Page

    # Elementos mapeados
    element :botao_relatorios, "i[class='tcnews icon-clipboard-chart']" #Botao relatorios
    element :botao_btg, :xpath, "//*[@id='userarea']/div/div[1]/div/a/span"
    element :validacao, :xpath, "//*[@id='channel-main']/div[1]/div[4]/div/div/div[1]/div[1]/div/strong"


    #Metodos com as acoes
    def clicar_relatorios
        botao_relatorios.click
    end

    def clicar_btg
        botao_btg.click
    end    

    def validation
        validacao.text
    end

end 