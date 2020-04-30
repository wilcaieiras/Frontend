Quando("eu tento me cadastrar com um email inválido ou sem preencher o {string}") do |email|
  @signin_page.go
  @signin_page.cad_wrong_email(email)
end

Então("devo ver a mensagem de alerta {string}") do |alert|
  expect(@signin_page.alert_cad_email).to eql alert
end
