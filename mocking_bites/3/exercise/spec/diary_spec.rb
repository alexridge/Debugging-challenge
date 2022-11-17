require 'diary'

RSpec.describe Diary do

  context "constructs" do
    it "diary" do
      diary = Diary.new("this is contents")
      expect(diary.read).to eq "this is contents"
    end
  end

end