require 'spec_helper'

feature "find links on particular topic" do
  scenario "filter links by bubbles tag" do
    add_link("bubble.com", "Bubble")
    fill_in("tags", with: '#bubbles')
    submit_form
    add_link("google.com", "Goggle")
    fill_in("tags", with: '#google')
    submit_form
    visit "/tags/bubbles"
    expect(page).not_to have_text("Goggle")
    expect(page).to have_text("Bubble")
  end
 end
