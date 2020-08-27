class Agenda < SitePrism::Page

	# Elementos mapeados
	element :botao_mais, "<span>Mais</span>"
    element :botao_agenda, "<span>Agenda Mercado</span>"
    element :valida_agenda, :xpath, "//*[@id='channel-main']/div[1]/div[4]/div/div/div[1]/div[1]/strong/span"


    #Metodos com as acoes
    def clicar_mais
        botao_mais.click
    end

    def clicar_agenda
        botao_agenda.click
    end    

    def validation
        valida_agenda.text
    end

end 