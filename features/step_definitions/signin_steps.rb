Dado("que sou um possível {string} que quero fazer compras na loja online") do |user_code|
  file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/cover/caduser.yaml"))
  @caduser = file[user_code]
end

Quando("eu me cadastro com um endereço de email valido") do
  @signin_page.go
  @signin_page.cad_email(@caduser)
  sleep 1
end

Então("devo preencher os campos obrigatórios para cadastro") do
  @signin_page.cad_user(@caduser)
end

E("devo ver a mensagem {string}") do |expect_msg|
  expect(@signin_page.myaccountmsg).to eql expect_msg
end
