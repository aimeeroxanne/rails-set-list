require "rails_helper"

RSpec.describe "songs index page", type: :feature do 
  it "user can see all songs" do 
    artist = Artist.create!(
      name: 'Prince'
    )
    song = artist.songs.create!(
      title: "Raspberry Beret",
      length: 345,
      play_count: 34
    )

    visit "/songs"

    expect(page).to have_content(song.title)
    expect(page).to have_content("Play Count: #{song.play_count}")
  end
end