require 'spec_helper'
feature 'There is an index page' do
  scenario 'The homepage displays a welcome message' do
    visit '/'
    expect(page).to have_content("Welcome")
  end
end
