require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe "root route", {:type => :feature} do

  it 'cliks on the vehicle list link and displays the content for that route' do
    visit('/')
    click_link('See Vehicle List')
    expect('Vehicles')
  end

end
