require 'diary_entry'

describe DiaryEntry do
  it 'raises error with wpm<=0 for read time' do
    entry1 = DiaryEntry.new('14/11/22', 'i did stuff today')
    expect{entry1.reading_time(-4) }.to raise_error "wpm must be positive"
  end
  it 'can calculate read time' do
    entry1 = DiaryEntry.new('14/11/22', 'i did stuff today')
    expect(entry1.reading_time(2)).to eq 2
  end
end