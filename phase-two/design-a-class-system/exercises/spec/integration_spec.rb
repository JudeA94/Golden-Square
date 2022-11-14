require 'contacts'
require 'todo_list'
require 'todo'
require 'diary'
require 'diary_entry'

describe 'Diary and DiaryEntry classes' do
  it 'instances of DiaryEntry can be added and viewed in Diary' do
    diary = Diary.new
    entry1 = DiaryEntry.new('14/11/22', 'today i did stuff')
    diary.add(entry1)
    expect(diary.read(entry1)).to eq 'today i did stuff'
  end
  it 'finds the best entry to read given a time and wpm' do
    diary = Diary.new
    entry1 = DiaryEntry.new('14/11/22', 'today i did stuff')
    entry2 = DiaryEntry.new('15/11/22', 'today i did even more stuff')
    diary.add(entry1)
    diary.add(entry2)
    expect(diary.find_best_entry_for_reading_time(2, 2)).to eq '14/11/22: today i did stuff'
  end
end

describe Contacts do
  it 'can return all phone numbers in diary entries' do
    diary = Diary.new
    contact_list = Contacts.new(diary)
    entry1 = DiaryEntry.new('14/11/22', 'today i met Bob, his number is 07800000000')
    entry2 = DiaryEntry.new('15/11/22', 'today i met Jill her number is 07900000000')
    diary.add(entry1)
    diary.add(entry2)
    expect(contact_list.view).to eq '07800000000, 07900000000'
  end
  it "doesn't extract invalid numbers" do
    diary = Diary.new
    contact_list = Contacts.new(diary)
    entry1 = DiaryEntry.new('14/11/22', 'today i met Bob, his number is 078000000')
    entry2 = DiaryEntry.new('15/11/22', 'today i met Jill her number is 07900000000')
    diary.add(entry1)
    diary.add(entry2)
    expect(contact_list.view).to eq '07900000000'
  end
end

describe 'ToDo and ToDoList classes' do
  it 'can view added todos' do
    list = ToDoList.new
    todo1 = ToDo.new('food shopping')
    todo2 = ToDo.new('take out bins')
    list.add(todo1)
    list.add(todo2)
    expect(list.view).to eq 'food shopping, take out bins'
  end
  it 'can add and remove todos' do
    list = ToDoList.new
    todo1 = ToDo.new('food shopping')
    todo2 = ToDo.new('take out bins')
    list.add(todo1)
    list.add(todo2)
    list.mark_done(todo1)
    expect(list.view).to eq 'take out bins'
  end
end
