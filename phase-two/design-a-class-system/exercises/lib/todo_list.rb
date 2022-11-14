class ToDoList
  def initialize
    @list = Array.new
  end

  def add(todo)
    @list << todo
  end

  def view
    @list.map{|todo| todo.contents}.join(', ')
  end

  def mark_done(task)
    raise "That's not on your list!" unless @list.include?(task)
    @list.delete(task)
  end
end