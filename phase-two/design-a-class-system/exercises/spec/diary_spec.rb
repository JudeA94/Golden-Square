require 'diary'

describe Diary do
  it 'find_best_entry_for_reading_time raises error for an empty diary' do
    diary = Diary.new
    expect { diary.find_best_entry_for_reading_time(2, 2) }.to raise_error 'Diary empty'
  end
end
