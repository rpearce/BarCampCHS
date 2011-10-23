class FindMorpheusTest < Test::Unit::TestCase
  include Capybara::DSL
  Capybara.run_server = false
  Capybara.app_host = 'http://www.google.com'
  Capybara.current_driver = :selenium

  def setup
    visit '/'
  end

  def test_find_morpheus_quote
    fill_in 'lst-ib', :with => 'the matrix neo'
    sleep 5
    click_link 'Neo (The Matrix)'
    sleep 5
    click_link 'Oracle'
    click_link 'Morpheus'
    sleep 5
    page.should have_content 'And Now That Dream is Gone from Me'
  end

  def test_where_in_the_world_is_morpheus
    fill_in 'lst-ib', :with => 'neo searching for morpheus'
    sleep 5
    click_link 'Neo searching for Morpheus - YouTube'
    puts "\e[H\e[2J"
    sleep 5
    puts "Wake up, Neo..."
    sleep 1000
  end

  def teardown
  end
end
