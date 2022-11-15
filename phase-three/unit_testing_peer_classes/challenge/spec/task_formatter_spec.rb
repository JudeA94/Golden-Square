require 'task_formatter'

describe TaskFormatter do
  context 'incomplete tasks' do
    it "returns the task formatted as a string '- [ ] Task Title' " do
      task = double(:task, title: 'take out bins')
      expect(task).to receive(:complete?).and_return(false)
      formatter = TaskFormatter.new(task)
      expect(formatter.format).to eq "- [ ] take out bins"
    end
  end
  context 'complete tasks' do
    it "returns the task formatted as a string '- [x] Task Title' " do
      task = double(:task, title: 'take out bins')
      expect(task).to receive(:complete?).and_return(true)
      formatter = TaskFormatter.new(task)
      expect(formatter.format).to eq "- [x] take out bins"
    end
  end
end
