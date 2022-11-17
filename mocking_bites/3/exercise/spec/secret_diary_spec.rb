require 'secret_diary'

RSpec.describe SecretDiary do

  context "initially" do
    it "raises error" do
      secret_diary = SecretDiary.new("this is contents")
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end

  context "diary is unlocked" do
    it "returns contents" do
      fake_diary = double :diary, read: "CONTENTS"
      secret_diary = SecretDiary.new(fake_diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "CONTENTS"
    end
  end

  context "if diary is relocked" do
    it "raises error" do
      fake_diary = double :diary, read: "CONTENTS"
      secret_diary = SecretDiary.new(fake_diary)
      secret_diary.unlock
      secret_diary.lock
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end

end