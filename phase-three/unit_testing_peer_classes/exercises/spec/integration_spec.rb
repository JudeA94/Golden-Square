require 'secret_diary.rb'
require 'diary'

describe SecretDiary do
  it "initially doesn't let you read a diary, as it's locked" do
    diary = Diary.new('I keep my secrets in here')
    secret_diary = SecretDiary.new(diary)
    expect{ secret_diary.read }.to raise_error "Go away!"
  end
  it "allows you to read an unlocked diary" do
    diary = Diary.new('I keep my secrets in here')
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq 'I keep my secrets in here'
  end
  it "allows you to unlock then lock a diary" do
    diary = Diary.new('I keep my secrets in here')
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    expect{ secret_diary.read }.to raise_error "Go away!"
  end
end
