require "diary"
require "diary_entry"

RSpec.describe "integration" do 
 
  it "for given input string returns title and contents" do 
    diary = Diary.new 
    entry = DiaryEntry.new("title", "entry")
    entry1 = DiaryEntry.new("title1", "entry1")
    diary.add(entry1)
    diary.add(entry)
    expect(diary.all).to eq [entry1, entry]
  end 
  context "count_words tests" do 
    it "returns total number of words across all entries" do
    diary = Diary.new 
    entry = DiaryEntry.new("title", "entry")
    entry1 = DiaryEntry.new("title1", "entry1")
    diary.add(entry)
    diary.add(entry1)
    expect(diary.count_words).to eq 2
  end 
    it "returns total number of words across all entries" do
    diary = Diary.new 
    entry = DiaryEntry.new("title", "entry")
    entry1 = DiaryEntry.new("title1", "entry1 and this is more to count")
    entry2 = DiaryEntry.new("title2", "entry2 even more to count")
    diary.add(entry)
    diary.add(entry1)
    diary.add(entry2)
    expect(diary.count_words).to eq 13
  end 
end 
  it "returns total reading time for entries" do
    diary = Diary.new 
    entry = DiaryEntry.new("title", "entry")
    entry1 = DiaryEntry.new("title1", "entry1 and this is more to")
    entry2 = DiaryEntry.new("title2", "entry2 even more to count")
    diary.add(entry)
    diary.add(entry1)
    diary.add(entry2)
    expect(diary.reading_time(12)).to eq 1
  end 
  context "best entry for given time tests" do 
    it "returns total reading time for entries" do
      diary = Diary.new 
      entry = DiaryEntry.new("title", "entry")
      entry1 = DiaryEntry.new("title1", "entry1 and this is more to")
      entry2 = DiaryEntry.new("title2", "entry2 even more to count")
      diary.add(entry)
      diary.add(entry1)
      diary.add(entry2)
      result = diary.find_best_entry_for_reading_time(2, 1)
      expect(result).to eq entry
    end 
    it "returns total reading time for entries" do
      diary = Diary.new 
      entry = DiaryEntry.new("title", "entry")
      entry1 = DiaryEntry.new("title1", "entry1 and this is more to")
      entry2 = DiaryEntry.new("title2", "entry2 even more to count")
      diary.add(entry)
      diary.add(entry1)
      diary.add(entry2)
      result = diary.find_best_entry_for_reading_time(6, 1)
      expect(result).to eq entry1
    end 
  end 
end 