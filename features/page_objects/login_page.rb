class LoginPage < AccountInfoPage

  URL = 'https://rocky-stream-2452.herokuapp.com/accounts/sign_in'

  text_field(:email, id: 'account_email')
  text_field(:password, id: 'account_password')

  link(:sign_out, href: '/accounts/sign_out')

  button(:login, type: 'submit')

  def open_login_page
    @browser.goto URL
  end

  def login_with(email, password)
    self.email = email
    self.password = password
    login
  end
end