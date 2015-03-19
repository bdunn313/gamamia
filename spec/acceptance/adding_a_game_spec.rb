require 'rails_helper'

RSpec.feature "Adding a game" do
  include_context "with user logged in"

  before do
    visit new_game_path
  end

  it 'shows the form to add a new game' do
    expect(page).to have_content "Add a game"
  end
end
