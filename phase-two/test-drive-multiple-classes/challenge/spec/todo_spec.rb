# Todo
# .new creates an instance of todo
# .task returns the task as a string
# .mark_done! marks todo as done
# .done? returns true if task is done, false otherwise


require 'todo'
describe ToDo do
  context "on construction" do
    it "creates an instance of ToDo" do
      todo = ToDo.new('food shopping')
      expect(todo).to be_a ToDo
    end
  end
  context "after a task has been added" do
    it "returns task when task method called" do
      todo = ToDo.new('food shopping')
      expect(todo.task).to eq 'food shopping'
    end
  end
  context "done? method" do
    it "returns true if task is done, false otherwise" do
      todo = ToDo.new('food shopping')
      expect(todo.done?).to eq false
    end
  end
  context "mark_done! method" do
    it "marks todos as done" do
      todo = ToDo.new('food shopping')
      todo.mark_done!
      expect(todo.done?).to eq true
    end
  end
end
