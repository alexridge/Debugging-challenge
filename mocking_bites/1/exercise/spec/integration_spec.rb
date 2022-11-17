require "track"
require "music_library"

RSpec.describe "integration" do 
  it "returns list of all input tracks" do 
    songs = MusicLibrary.new 
    track = Track.new("Mr.Rager", "Kid Cudi")
    songs.add(track.title)
    expect(songs.all).to eq ["Mr.Rager"]
  end 
   it "returns list of all input tracks" do 
    songs = MusicLibrary.new 
    track = Track.new("Mr.Rager", "Kid Cudi")
    track1 = Track.new("Beleza Paluza", "M.Takanaka")
    track2 = Track.new("NotFair", "Hatena")
    songs.add(track.title)
    songs.add(track1.title)
    songs.add(track2.title)
    expect(songs.all).to eq ["Mr.Rager", "Beleza Paluza", "NotFair"]
  end 

end 