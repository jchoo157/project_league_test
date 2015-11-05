class ChampionsPage
  include PageObject

  URL = 'https://rocky-stream-2452.herokuapp.com/champions'

  link(:get_champ_info, href: /champion_info\?champion=/)

  def open_champions_page
    @browser.goto URL
  end

  def get_champion
    self.get_champ_info
  end
end