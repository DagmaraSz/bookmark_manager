require 'spec_helper'

feature 'signing up' do

  before(:each) do
    visit '/sign_up'
    fill_in('email', with: 'bubble@bubbles.com')
    fill_in('password', with: '000000')
    click_button('Sign in')
  end

  scenario 'entering email and password' do
    expect(page.current_path).to eq '/'
  end

  scenario 'home page greets user' do
    expect(page).to have_text('Hi bubble@bubbles.com')
  end
end
