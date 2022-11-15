class Task
  def initialize(title)
    @title = title
    @complete = false
  end

  def title
    @title
  end

  def mark_complete
    @complete = true
  end

  def complete?
    @complete
  end
end
