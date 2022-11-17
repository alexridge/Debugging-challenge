require "music_library"

RSpec.describe "Music Library" do 
  it "returns list of all input tracks" do 
    songs = MusicLibrary.new 
    songs.add("Mr.Rager")
    expect(songs.all).to eq ["Mr.Rager"]
  end 
   it "returns list of all input tracks" do 
    songs = MusicLibrary.new 
    songs.add("Mr.Rager")
    songs.add("Beleza Paluza")
    songs.add("NotFair")
    expect(songs.all).to eq ["Mr.Rager", "Beleza Paluza", "NotFair"]
  end 
  it "returns list of all searched tracks" do 
    songs = MusicLibrary.new 
    songs.add("Mr.Rager")
    expect(songs.search("Mr.Rager")).to eq "Mr.Rager"
  end 
   it "returns message if no searched tracks found" do 
    songs = MusicLibrary.new
    songs.add("Mr.Rager")
    expect(songs.search("Kid Cudi")).to eq "no tracks found"
  end 
end 