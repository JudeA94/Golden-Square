# .new creates instance of TodoList
# .new creates an empty list
# .incomplete raises error with message if no tasks
# .complete raises error with message if no tasks
# .give_up raises error with message if no tasks
# require 'todo_list'


describe ToDoList do
  context "on construction" do
    it "creates an instance of ToDoList" do
      list = ToDoList.new
      expect(list).to be_a ToDoList
    end
    it "complete raises error if no todos added" do
      list = ToDoList.new
      expect{ list.complete }.to raise_error "No tasks have been added!"
    end
    it "incomplete raises error if no todos added" do
      list = ToDoList.new
      expect{ list.incomplete }.to raise_error "No tasks have been added!"
    end
    it "give_up raises error with message if no todos added" do
      list = ToDoList.new
      expect{ list.give_up! }.to raise_error "No tasks have been added!"
    end
  end
end