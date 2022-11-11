class Todo 
  def initialize
    @todos = []
  end

  def display
    @todos.join(', ')
  end

  def add(todo)
    @todos << todo
  end

  def completed(todo)
    raise 'Todo not on list' if !@todos.include? todo
    @todos.delete(todo)
  end
end