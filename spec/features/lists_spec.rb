require 'rails_helper'

describe "Lists" do
  it 'allows someone to create a new list' do
    visit root_path

    click_on "Create a form list"

    fill_in "Name", with: "Schneiders family list"

    click_on "Save"

    expect(page).to have_field "Name", with: "Schneiders family list"
    expect(page).to have_content "Saved!"
  end
end
