# Integration
# add(todo) adds an instance of todo to the todo list
# list.incomplete returns list of incomplete tasks
# list.complete returns list of complete tasks
# .give_up! marks all todos as complete

require 'todo_list'
require 'todo'

describe ToDoList do
  context 'incomplete method' do
    it 'returns list of incomplete tasks' do
      list = ToDoList.new
      todo1 = ToDo.new('food shopping')
      list.add(todo1)
      expect(list.incomplete).to eq 'food shopping'
    end
  end
  context 'complete method' do
    it 'returns list of complete tasks' do
      list = ToDoList.new
      todo1 = ToDo.new('food shopping')
      todo1.mark_done!
      list.add(todo1)
      expect(list.complete).to eq 'food shopping'
    end
  end
  context 'give_up! method' do
    it 'marks all tasks as complete' do
      list = ToDoList.new
      todo1 = ToDo.new('food shopping')
      todo2 = ToDo.new('clean up')
      list.add(todo1)
      list.add(todo2)
      list.give_up!
      expect(list.complete).to eq "food shopping\nclean up"
    end
  end
  context 'add method' do
    it 'can add multiple ToDo instances' do
      list = ToDoList.new
      todo1 = ToDo.new('food shopping')
      todo2 = ToDo.new('clean up')
      list.add(todo1)
      list.add(todo2)
      expect(list.incomplete).to eq "food shopping\nclean up"
    end
  end
end
