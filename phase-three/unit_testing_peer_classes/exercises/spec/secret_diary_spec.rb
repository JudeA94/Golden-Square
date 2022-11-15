require 'secret_diary'

describe SecretDiary do
  it "initially doesn't let you read a diary, as it's locked" do
    fake_diary = double :diary
    secret_diary = SecretDiary.new(fake_diary)
    expect{ secret_diary.read }.to raise_error "Go away!"
  end
  it "allows you to read an unlocked diary" do
    fake_diary = double(:diary, read: 'I keep my secrets in here')
    secret_diary = SecretDiary.new(fake_diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq 'I keep my secrets in here'
  end
  it "allows you to unlock then lock a diary" do
    fake_diary = double :diary
    secret_diary = SecretDiary.new(fake_diary)
    secret_diary.unlock
    secret_diary.lock
    expect{ secret_diary.read }.to raise_error "Go away!"
  end
end