Quando("eu faço login com email {string} e senha {string}") do |usuario, senha|
  @signin_page.go
  @login_page.login(usuario, senha)
end

Então("devo ver a mensagem {string} na area logada") do |expect_msg|
  expect(@signin_page.myaccountmsg).to eql expect_msg
end
