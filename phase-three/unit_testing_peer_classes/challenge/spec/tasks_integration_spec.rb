require "task_list"
require "task"

describe "tasks and task list integration" do
  it "adds tasks to a list" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all).to eq [task_1, task_2]
  end

  it "marks tasks as complete" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    task_list.add(task_1)
    task_list.add(task_2)
    task_1.mark_complete
    task_2.mark_complete
    expect(task_list.all_complete?).to eq true
  end
end

describe TaskFormatter do
  context 'incomplete tasks' do
    it "returns the task formatted as a string '- [ ] Task Title' " do
      task = Task.new('take out bins')
      formatter = TaskFormatter.new(task)
      expect(formatter.format).to eq "- [ ] take out bins"
    end
  end
  context 'complete tasks' do
    it "returns the task formatted as a string '- [x] Task Title' " do
      task = Task.new('take out bins')
      task.mark_complete
      formatter = TaskFormatter.new(task)
      expect(formatter.format).to eq "- [x] take out bins"
    end
  end
  
end
