require 'rest-client'

describe 'API Escola' do
  context '/avaliar' do
    context 'POST' do
      it 'alunos com notas maiores ou iguais que sete sao aprovados' do
        # Requisicao ao méTODO
        resposta = RestClient.post(
          'http://localhost:4567/escola/api/avaliar',
          :notaprova => '7',
          :notatrabalho => '7'
        )

        # resposta.body
        # {"status": "success", "message": "Aprovado"}
        # corpo.message

        # Conversão
        corpo = JSON.parse(
          resposta.body,
          :object_class => OpenStruct
        )

        # Validações
        expect(corpo.status).to eq("success")
        expect(corpo.message).to eq("Aprovado")
      end

      # TODO: Fazer testes de Exame e DP
    end
  end
end
