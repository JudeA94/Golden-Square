require 'Todo'

describe Todo do
  context 'when no items in list' do 
    it 'returns empty array' do 
      todo_list = Todo.new 
      expect(todo_list.display).to eq('')
    end 
  end 

  context 'shows 1 todo when 1 added' do 
    it '#display returns 1 todo' do 
      todo_list = Todo.new 
      todo_list.add('Walk the dog')
      expect(todo_list.display).to eq('Walk the dog')
    end 
  end

  context 'multiple todos added' do 
    it '#display returns multiple todos' do 
      todo_list = Todo.new 
      todo_list.add('Walk the dog')
      todo_list.add('Homework')
      expect(todo_list.display).to eq('Walk the dog, Homework')
    end 
  end

  context '2 todos added, 1 completed' do 
    it 'returns 1 todo' do 
      todo_list = Todo.new 
      todo_list.add('Walk the dog')
      todo_list.add('Homework')
      todo_list.completed('Homework')
      expect(todo_list.display).to eq('Walk the dog')
    end 
  end

  context 'when completing todo thats not on list' do 
    it 'fails' do 
      todo_list = Todo.new 
      todo_list.add('Walk the dog')
      expect{ todo_list.completed('Homework') }.to raise_error('Todo not on list')
    end 
  end
end 
