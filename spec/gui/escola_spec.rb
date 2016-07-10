require 'selenium-webdriver'

describe 'Site Escola' do
  it 'alunos com notas maiores ou iguais que sete devem ser aprovados' do
    # 1. Abrir e maximizar o browser Firefox;
    navegador = Selenium::WebDriver.for :firefox
    navegador.manage.window.maximize()

    # 2. Acessar a aplicação web;
    navegador.get('http://localhost:4567/escola/web/')

    # 3. Preencher o formulário;
    navegador.find_element(:name, 'notaprova').send_keys("7")
    navegador[:name => 'notatrabalho'].send_keys("7")

    # 4. Clicar no botão “Avaliar”;
    navegador[:id => "avaliar"].click()

    # 5. Validar que a mensagem “Aprovado" foi apresentada.
    resultado = navegador[:id => "message"].text
    expect(resultado).to eq("Aprovado")

    navegador.close()

  end
  
  # TODO: Criar testar para validar Exame e DP
end
