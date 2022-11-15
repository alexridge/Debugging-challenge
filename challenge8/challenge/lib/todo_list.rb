class TodoList
  def initialize
    @incompleted = []
    @completed = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
  if todo.include?("TODO:")
    @incompleted << todo
  elsif todo.include?("DONE:")
    @completed << todo 
  else 
    @incompleted << "TODO: #{todo}"
  end 
  end

  def incomplete
    # Returns all non-done todos
    @incompleted
  end

  def complete
    # Returns all complete todos
    @completed
  end

  def give_up!
    # Marks all todos as complete
    @incompleted.each do |task|
      task.gsub!("TODO:", "DONE:")
      @completed << task 
    end 
  end
end
