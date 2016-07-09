class Avaliacao
    def avaliar(notaprova, notatrabalho)
		if (notaprova >= 7)
            if (notatrabalho >= 7)
				return "Aprovado"
            else
				return "Exame"
			end
        else
            return "DP"
		end
    end
end