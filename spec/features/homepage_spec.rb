require 'spec_helper'

feature "Quickly go to web sites I regularly visit" do
  scenario "Saved links are shown on homepage" do
    add_link("boogle.com", "Boogle")
    submit_form
    visit "/"
    expect(page).to have_link('Boogle')
  end
end
