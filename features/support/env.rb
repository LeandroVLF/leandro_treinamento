require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'site_prism'
require_relative 'page_helper.rb'
require_relative 'Helper.rb'

# Declarando os arquivos Helpers
World (PageObjects)
World (Helper)

# Instanciando os arquivos de massa
LOGIN = YAML.load_file('./fixtures/login.yml')
CADASTRO = YAML.load_file('./fixtures/cadastro.yml')

# Instanciando os Ambientes
AMBIENTE = ENV["url"]
URL = YAML.load_file('./fixtures/url.yml')

# Parametrizando as configurações Capybara
Capybara.configure do |config|
	config.default_driver = :selenium_chrome
	config.app_host = URL["#{AMBIENTE}"]
	config.default_max_wait_time = 15
	Capybara.page.driver.browser.manage.window.maximize
end


 

