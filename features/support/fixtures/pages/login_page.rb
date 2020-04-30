class LoginPage
  include Capybara::DSL

  def login(usuario, senha)
    find("a.login").click
    find("#email").set usuario
    find("#passwd").set senha
    click_button "Sign in"
  end

  def alert_wrong_login
    find("div.alert.alert-danger").text
  end
end
