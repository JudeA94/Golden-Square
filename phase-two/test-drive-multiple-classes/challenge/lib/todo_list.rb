class ToDoList
  def initialize
    @tasks = Array.new
  end

  def add(todo)
    @tasks << todo
  end

  def complete
    raise "No tasks have been added!" if @tasks.empty?
    completed = @tasks.select{|task| task.done?}
    completed.map{|todo| todo.task}.join("\n")
  end

  def incomplete
    raise "No tasks have been added!" if @tasks.empty?
    not_completed = @tasks.select{|task| !task.done?}
    not_completed.map{|todo| todo.task}.join("\n")
  end

  def give_up!
    raise "No tasks have been added!" if @tasks.empty?
    @tasks.each{|todo| todo.mark_done!}
  end
end