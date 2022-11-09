require "diaryentry"

RSpec.describe DiaryEntry do 
  it "counts the number of words in the given string" do 
    diaryentry = DiaryEntry.new("", "sample string for testing")
    diaryentry.contents
    expect(diaryentry.count_words).to eq 4
  end 
  it "returns the given title" do 
    diaryentry = DiaryEntry.new("Do Androids Dream of Electric Sheep", "sample string for testing")
    expect(diaryentry.title).to eq "Do Androids Dream of Electric Sheep"
  end 
  it "returns time to read given section" do 
    diaryentry = DiaryEntry.new("", "sample string for testing")
    diaryentry.contents
    expect(diaryentry.reading_time(4)).to eq 1
  end 
  it "returns chunk of contentents able to read in given time to read in" do 
    diaryentry = DiaryEntry.new("", "sample string for testing")
    diaryentry.contents
    expect(diaryentry.reading_chunk(4, 1)).to eq "sample string for testing"
  end
  it "returns chunk of contentents able to read in given time to read in" do 
    diaryentry = DiaryEntry.new("", "sample string for testing and this is the second time")
    diaryentry.contents
    diaryentry.reading_chunk(4, 1)
    expect(diaryentry.reading_chunk(4, 1)).to eq "and this is the"
  end
end 
  

