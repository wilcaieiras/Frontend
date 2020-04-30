class SigninPage
  include Capybara::DSL

  def go
    visit "/"
  end

  def cad_email(caduser)
    find("a.login").click
    find("#email_create").set caduser["email"]
    click_button "Create an account"
  end

  def cad_user(caduser)
    choose("id_gender1")
    find("#customer_firstname").set caduser["first_name"]
    find("#customer_lastname").set caduser["last_name"]
    find("#passwd").set caduser["password"]
    find("#firstname").set caduser["address_first_name"]
    find("#lastname").set caduser["address_last_name"]
    find("#address1").set caduser["address"]
    find("#city").set caduser["city"]
    select("Alabama", from: "id_state", visible: false)
    find("#postcode").set caduser["zip_postal_code"]
    find("#phone_mobile").set caduser["mobile_phone"]
    find("#alias").set caduser["address_alias"]
    click_button "Register"
    sleep 5
  end

  def myaccountmsg
    find("p.info-account").text
  end

  def cad_wrong_email(email)
    find("a.login").click
    find("#email_create").set email
    click_button "Create an account"
  end

  def alert_cad_email
    find("#create_account_error").text
  end
end
