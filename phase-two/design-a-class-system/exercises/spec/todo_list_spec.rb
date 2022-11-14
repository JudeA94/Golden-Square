require 'todo_list'
describe ToDoList do
  it 'deleting a non-existent todo raises error' do
    list = ToDoList.new
    todo1 = ToDo.new('take out bins')
    expect{ list.mark_done(todo1) }.to raise_error "That's not on your list!"
  end
end
