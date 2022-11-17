require "track"

RSpec.describe "track" do 
  it "for given input track returns title" do 
    song = Track.new("crazy", "frog")
    expect(song.title).to eq "crazy"
  end 
  it "returns true if either artist or title includes keyword" do 
    song = Track.new("crazy", "frog")
    expect(song.matches?("crazy")).to eq true
  end
  it "returns true if either artist or title includes keyword" do 
    song = Track.new("crazy", "frog")
    expect(song.matches?("bonkers")).to eq false
  end
end 