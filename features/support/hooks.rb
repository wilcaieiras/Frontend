Before do
  @signin_page = SigninPage.new
  @login_page = LoginPage.new
end

# After do
#   temp_shot = page.save_screenshot ("features/log/temp_shot.png")
#   screenshot = Base64.encode64(File.open(temp_shot).read)
#   embed(screenshot, "image/png", "Screenshot")
# end

After do |scenario|
  screenshot = page.save_screenshot("features/log/#{scenario.__id__}.png")
  embed(screenshot, "image/png", "Screenshot")
end
