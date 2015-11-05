When /^I click on a champion icon$/ do
  @page.get_champion
end

Then /^I should see all the champion icons$/ do
  expect(@page.get_champ_info?).to be true
end

Then /^I should be on the champion info page$/ do
  @champion_info_page = ChampionInfoPage.new(@browser)

end