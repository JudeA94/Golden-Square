class ToDo
  def initialize(todo)
    @todo = todo
    @done = false
  end

  def task
    @todo
  end

  def done?
    @done
  end

  def mark_done!
    @done = true
  end
end
