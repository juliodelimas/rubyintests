require 'rest-client'

describe "Gerenciar API Escola" do
	context "/avaliar" do
		context "GET" do
			it "alunos com notas maiores ou iguais a 7 são aprovados" do
				#  Executando a requisição
				resposta = RestClient.post(
					'http://localhost:4567/escola/api/avaliar', 
					:notaprova => '7', 
					:notatrabalho => '7'
				)
				
				# Convertendo o resultado de JSON para Object
				corpo    = JSON.parse(resposta.body, object_class: OpenStruct)
				
				# Validando resultados
				expect(corpo.status).to eq("success")
				expect(corpo.message).to eq("Aprovado")
			end
		end
	end
end