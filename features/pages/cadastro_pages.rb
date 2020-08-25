class Cadastro < SitePrism::Page

	# Elementos mapeados
	element :create_account, "a[class='btn-blueTCN']" #criar conta
	element :create_account_last, :xpath, "//*[@id='root']/div/div/div/div/div/section/div[4]/div/div[2]/div/a"
	element :field_name, "input[name='firstname']"
	element :field_email, "input[name='email']"
	element :field_user, "input[name='nickname']"
	element :field_pass, "input[name='pass']"

	# Métodos c/ Acões
	def create
		create_account.click
	end

	def create_last
		create_account_last.click
	end

	def qualquer_nome

	end
	
    # Método com ação
	def fill_fields(name, email, user, pass)
		field_name.set(name)
		field_email.set(email)
		field_user.set(user)
		field_pass.set(pass)
	end

	def messageErrorName
		all('.handle-error')[0].text
	end

	def messageErrorEmail
		all('.handle-error')[1].text
	end

	def messageErrorUser
		all('.handle-error')[2].text
	end

	def messageErrorPass
		all('.handle-error')[3].text
	end

end