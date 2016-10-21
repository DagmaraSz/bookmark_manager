def add_link(url, title)
  visit "/add"
  fill_in("url", with: url)
  fill_in("title", with: title)
end

def add_tag(tag)
  fill_in("tags", with: tag)
end

def submit_form
  click_button "Add"
end
