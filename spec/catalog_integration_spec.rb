require 'capybara/rspec'
require './app'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the cd path', {:type => :feature} do
  it 'will add and list the cd title and artist' do
    visit '/'
    fill_in 'cd', :with => "wow ruby, calm down"
    fill_in 'artist', :with => "this is totally a good syntax, guys"
    click_button 'button'
    expect( page ).to have_content "wow ruby, calm down"
  end
end
