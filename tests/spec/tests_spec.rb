require_relative './spec_helper.rb'

describe 'My Sinatra application' do
  it "should contain the string 'Donald Wade'" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Donald Wade')

    ['Donald Wade', 'Portfolio', 'Bio', 'Contact'].each do |string|
      string
      expect(last_response.body).to include(string)
    end
  end

  it 'the response should not be empty' do
    get '/'
    expect(last_response.length).to be > 0
  end
end

describe "clicking on portfolio link", :type => :feature do
  it "links to the portfolio page" do
    visit '/'
    click_link('Portfolio')
    expected_content = ['Expat', 'voodoo', 'Qui', 'Zonbi']
    expected_content.each do |word|
      expect(page).to have_content(word)
    end
  end
end
