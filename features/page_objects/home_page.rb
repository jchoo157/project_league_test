class HomePage
  include PageObject

  URL = 'https://rocky-stream-2452.herokuapp.com/'

  text_field(:username, id: 'summoner_name')

  button(:search_match_history, type: 'submit')

  def open_home_page
    @browser.goto URL
  end

  def search_for_summoner(input)
    self.username = input
    search_match_history
  end



end