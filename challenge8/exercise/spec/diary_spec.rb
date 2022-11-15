require "diary"


RSpec.describe Diary do 
  it "for given input string returns title and contents" do 
    diary = Diary.new 
    entry = DiaryEntry.new("title", "entry")
    diary.add(entry)
    expect(diary.all).to eq [entry]
  end 
  it "for given input string returns title and contents" do 
    diary = Diary.new 
    entry = DiaryEntry.new("title", "entry")
    entry1 = DiaryEntry.new("title1", "entry1")
    diary.add(entry)
    diary.add(entry1)
    expect(diary.all).to eq [entry, entry1]
  end 
  
end 