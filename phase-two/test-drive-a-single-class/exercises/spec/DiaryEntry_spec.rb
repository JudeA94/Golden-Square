require 'DiaryEntry'
describe DiaryEntry do
  context 'on creation' do
    it 'creates a title when initialised' do
      entry = DiaryEntry.new('Nov 10', "I'm test driving classes")
      expect(entry.title).to eq 'Nov 10'
    end
    it 'creates a contents when initialised' do
      entry = DiaryEntry.new('Nov 10', "I'm test driving classes")
      expect(entry.contents).to eq "I'm test driving classes"
    end
  end

  describe @count_words do
    it 'counts the number of words in the contents of an entry' do
      entry = DiaryEntry.new('Nov 10', "I'm test driving classes")
      expect(entry.count_words).to eq 4
    end
  end

  describe @reading_time do
    context 'given a positive wpm' do
      it 'returns the time it would take to read the contents of the entry at a given read speed' do
        entry = DiaryEntry.new('Nov 10', 'hello ' * 300)
        expect(entry.reading_time(200)).to eq '1 minutes 30 seconds'
      end
    end
    context ' given a wpm <= 0' do
      it 'fails with error message' do
        entry = DiaryEntry.new('Nov 10', 'hello ' * 300)
        expect { entry.reading_time(0) }.to raise_error 'Reading speed must be positive!'
      end
    end
  end

  describe @reading_chunk do
    context 'given a positive wpm' do
      it 'returns the whole of contents if enough minutes to read it all' do
        entry = DiaryEntry.new('Nov 10', 'hello .' * 300)
        expect(entry.reading_chunk(200, 2)).to eq 'hello .' * 300
      end
      it 'returns the the right amount of contents if not enough minutes to read it all' do
        entry = DiaryEntry.new('Nov 10', 'hello there my name is Jude')
        expect(entry.reading_chunk(1, 2)).to eq 'hello there'
      end
    end
    context 'not given a positive wpm' do
      it 'fails with error message' do
        entry = DiaryEntry.new('Nov 10', 'hello ' * 300)
        expect { entry.reading_time(0) }.to raise_error 'Reading speed must be positive!'
      end
    end
    context "when called multimple times" do
      it "returns the correct next chunk if not reaching the end (called twice)" do
        entry = DiaryEntry.new('Nov 10', 'hello there my name is Jude and I really like sandwiches')
        entry.reading_chunk(3,2)
        expect(entry.reading_chunk(2, 2)).to eq 'and I really like'
      end
      it "returns the correct next chunk if not reaching the end (called three times)" do
        entry = DiaryEntry.new('Nov 10', 'hello there my name is Jude and I really like sandwiches')
        entry.reading_chunk(3,2)
        entry.reading_chunk(1,1)
        expect(entry.reading_chunk(2, 2)).to eq 'I really like sandwiches'
      end
      it "returns the correct next chunk and stops at the end if given enough time" do
        entry = DiaryEntry.new('Nov 10', 'hello there my name is Jude and I really like sandwiches')
        entry.reading_chunk(3,2)
        entry.reading_chunk(1,2)
        expect(entry.reading_chunk(2, 3)).to eq 'really like sandwiches'
      end
      it "starts back to the beginning once the whole contents is read" do
        entry = DiaryEntry.new('Nov 10', 'hello there my name is Jude and I really like sandwiches')
        entry.reading_chunk(3,2)
        entry.reading_chunk(1,6)
        expect(entry.reading_chunk(2, 2)).to eq 'hello there my name'
      end



    end
  end
end
