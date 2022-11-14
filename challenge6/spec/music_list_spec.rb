require "music_list"

RSpec.describe Music_List do 
 context "inp_songs tests" do 
  it "with one song input returns that song" do 
    newlist = Music_List.new
    expect(newlist.inp_songs("song")).to eq "(1): song"
  end 
  
  it "with one song input and one already input returns" do 
    newlist = Music_List.new
    newlist.inp_songs("song1")
    expect(newlist.inp_songs("song2")).to eq "(2): song2"
  end 
 end 
 context "print_songs tests" do 
  it "prints list of one input song" do 
    newlist = Music_List.new
    newlist.inp_songs("song1")
    expect(newlist.print_list).to eq "(1): song1"
  end 
  
  it "list of 4 songs with 4 input" do 
    newlist = Music_List.new
    newlist.inp_songs("song1")
    newlist.inp_songs("song2")
    newlist.inp_songs("song3")
    newlist.inp_songs("song4")
    expect(newlist.print_list).to eq "(1): song1 /n(2): song2 /n(3): song3 /n(4): song4"
  end 
 end 
end 