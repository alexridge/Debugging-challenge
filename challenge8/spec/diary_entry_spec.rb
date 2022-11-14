require "diary_entry"

RSpec.describe DiaryEntry do 
  it "returns word count of entry" do 
    entry = DiaryEntry.new("title", "entry")
    expect(entry.count_words).to eq 1 
  end 
  it "returns word count of entry" do 
    entry = DiaryEntry.new("title", "entry test for counting words")
    expect(entry.count_words).to eq 5
  end 
  it "returns chunk of contentents able to read in given time to read in" do 
    diaryentry = DiaryEntry.new("", "sample string for testing and this is the second time")
    diaryentry.contents
    diaryentry.reading_chunk(4, 1)
    expect(diaryentry.reading_chunk(4, 1)).to eq "and this is the"
  end
end 