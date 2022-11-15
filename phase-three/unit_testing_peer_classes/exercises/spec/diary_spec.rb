require 'diary'

describe Diary do
  it "allows you to read diary contents" do
    diary = Diary.new('I am diary contents')
    expect(diary.read).to eq 'I am diary contents'
  end
end
