require 'selenium-webdriver'
describe "Gerenciar Site Escola" do
	context "Avaliar" do
		it "alunos com notas maiores ou iguais a 7 são aprovados" do
			# Instanciando e configurando o navegador web
			navegador = Selenium::WebDriver.for :firefox
			navegador.manage.window.maximize()

			# Acessando a página inicial do QuickLoja
			navegador.get('http://localhost:4567/escola/web/')
				
			# Preenchendo o formulário
			navegador.find_element(:name, 'notaprova').send_keys("7")
			navegador.find_element(:name, 'notatrabalho').send_keys("7")
			navegador.find_element(:id, 'avaliar').click()
			
			# Validando que entrou
			expect(navegador.find_element(:id, 'message').text).to eq("Aprovado")
			
			# Fechar o browser
			navegador.close()
		end
	end
end