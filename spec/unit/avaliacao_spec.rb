require_relative '../../avaliacao_class.rb'

describe 'Avaliacao' do
  it 'alunos com notas maiores ou iguais a sete sao aprovados' do
    # Arrange
    avaliacao = Avaliacao.new()
    # Act
    resultado = avaliacao.avaliar(7, 7)
    # Assert
    expect(resultado).to eq("Aprovado")
  end

  # TODO: Testes para DP e Exame
end
