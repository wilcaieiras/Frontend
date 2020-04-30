Quando("eu faço login com {string} ou {string} incorretos") do |usuario, senha|
  @signin_page.go
  @login_page.login(usuario, senha)
end

Então("devo ver a mensagem de alerta do login {string}") do |expect_alert|
  expect(@login_page.alert_wrong_login).to eql expect_alert
end
