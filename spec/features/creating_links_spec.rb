require 'spec_helper'

feature "Save a website" do
  scenario "Add site address and title" do
    add_link("yahoo.com", "Old, never used search engine")
    submit_form
    expect(page).to have_link('Old, never used search engine')
  end
end
