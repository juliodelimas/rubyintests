require_relative "../../avaliacao_class"

describe Avaliacao do
  it "alunos com notas maiores ou iguais a 7 são aprovados" do
    # Arrange
    avaliacao = Avaliacao.new()
    
    # Act
    resultado = avaliacao.avaliar(7, 7)

    # Assert
    expect(resultado).to eq("Aprovado")
  end
end