# rubyintests

Projeto criado durante a palestra de mesmo nome no TDC2016 SP (Trilha Testes II)

# Instalando as dependências

- Instale o Ruby 2.0;
- Rode o comando gem install bundler;
- Abra o diretório deste projeto no prompt de comando;
- Rode o comando bundle install;
- Pronto!

Observação:
Você também pode assistir ao vídeo tutorial de como preparar o ambiente no link http://bit.ly/RubyInTestInstalacao

# Startando a aplicação exemplo

Para iniciar a aplicação exemplo, acesse o diretório "app" via prompt de comando e rode o comando rby escola.rb.
Uma vez que isto acontecer a aplicação web e a API ficarão disponíveis através das respectivas URLs: http://localhost:4567/escola/web/ e http://localhost:4567/escola/api/.

# Rodando os testes

Para executar os testes, acesse o diretório "rubyintests" e rode o comando abaixo:
rspec spec --color --format documentation
