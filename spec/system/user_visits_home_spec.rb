require "rails_helper"

RSpec.describe "user visits home", type: :system do
  it "works", js: true do
    visit root_path

    expect(page).to have_content("Hi!")
  end
end
