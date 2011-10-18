class FindMorpheus < Test::Unit::TestCase
  Capybara.run_server = false
  Capybara.app_host = 'http://www.google.com'
  Capybara.current_driver = :selenium

  def setup
    visit '/'
    fill_in 'Search', :with => 'neo asleep at computer scene'
    click_button 'Google Search'
  end

  def test_where_in_the_world_is_morpheus
    page.should have_content 'Neo searching for Morpheus - YouTube'
  end

  def teardown
  end
end
