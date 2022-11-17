require 'secret_diary'
require 'diary'

RSpec.describe "integration" do

  context "if the diary is locked" do
    it "returns raises an error" do
      diary = Diary.new("this is contents")
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end

  context "if diary is unlocked" do
    it "returns the contents" do
      diary = Diary.new("this is contents")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "this is contents"
    end
  end

  context "if diary is relocked" do
    it "raises error" do
      diary = Diary.new("this is contents")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      secret_diary.lock
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end

end