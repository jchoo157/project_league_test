class SignupPage < AccountInfoPage
  include PageObject

<<<<<<< HEAD
<<<<<<< HEAD
  URL = 'https://rocky-stream-2452.herokuapp.com/accounts/sign_up'
=======
  URL = 'http://localhost:3000/accounts/sign_up'
>>>>>>> e0da9e5fa704a29a307488e3c851f46b9525f981
=======
  URL = 'https://rocky-stream-2452.herokuapp.com/accounts/sign_up'
>>>>>>> feature/LST-100

  text_field(:email, id: 'account_email')
  text_field(:password, id: 'account_password')
  text_field(:confirm_password, id: 'account_password_confirmation')

  link(:sign_out, href: '/accounts/sign_out')

  button(:signup, type: 'submit')

  def open_signup_page
    browser.goto URL
  end

  def signup_without_confirmation(email, password)
    self.email = email
    self.password = password
    signup
  end

  def signup_with(email, password, confirm_password)
    self.email = email
    self.password = password
    self.confirm_password = confirm_password
    signup
  end
end