# escola.rb
require_relative "../avaliacao_class"
require 'sinatra'

# API
post "/escola/api/avaliar" do  
	avaliacao = Avaliacao.new()
	resultado = avaliacao.avaliar(params[:notaprova].to_i, params[:notatrabalho].to_i)
	"{\"status\":\"success\",\"message\":\"#{resultado}\"}"
end

# WEB Principal
get "/escola/web/" do
	'<!DOCTYPE html>
	<html lang="en">
	<head>
	  <title>Gerenciar Escola</title>
	  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	  <link href="http://materializecss.com/dist/css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection"/>
	</head>
	<body>
	  <div class="container">
		<div class="section">
		  <div class="row">
			<div class="col s6 offset-s3 center">
			  <h1>Avaliar aluno</h1>
			  <hr />
			  <h5>Informe suas notas e clique em avaliar para saber seu status.</h5>
			  <form action="http://localhost:4567/escola/web/avaliar" method="POST" enctype="multipart/form-data">
				  <div class="row">
					<div class="input-field col s12">
					  <input name="notaprova" type="text" class="validate" size="100">
					  <label for="notaprova">Nota da Prova</label>
					</div>
				  </div>
				  <div class="row">
					<div class="input-field col s12">
					  <input name="notatrabalho" type="text" class="validate" size="100">
					  <label for="notatrabalho">Nota do Trabalho</label>
					</div>
				  </div>
				  <div class="row">
					<div class="col s12">
						<input id="avaliar" type="submit" class="waves-effect waves-light btn" value="Avaliar" />
					</div>
				  </div>
			   </form>
			</div>
		  </div>
		</div>
	  </div>
	  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	  <script src="http://materializecss.com/dist/js/materialize.js"></script>
	  </body>
	</html>'
end

# WEB Resultado
post "/escola/web/avaliar" do  
	# Arrange
	avaliacao = Avaliacao.new()

	# Act
	resultado = avaliacao.avaliar(params[:notaprova].to_i, params[:notatrabalho].to_i)

	'<!DOCTYPE html>
	<html lang="en">
	<head>
	  <title>Gerenciar Escola</title>
	  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	  <link href="http://materializecss.com/dist/css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection"/>
	</head>
	<body>
	  <div class="container">
		<div class="section">
		  <div class="row">
			<div class="col s6 offset-s3 center">
			  <h5>Seu status:
			  <h1 id="message">' + resultado + '</h1>
			  <hr />
			  <p><a class="waves-effect waves-light btn" href="http://localhost:4567/escola/web/">Nova avaliação</a></p>
			</div>
		  </div>
		</div>
	  </div>
	  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	  <script src="http://materializecss.com/dist/js/materialize.js"></script>
	  </body>
	</html>'
end