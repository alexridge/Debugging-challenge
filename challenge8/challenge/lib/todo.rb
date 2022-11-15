class Todo
  def initialize(task) # task is a string
    @task = "TODO: #{task}"
  end

  def task
    # Returns the task as a string
    @task
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
    @task.gsub!("TODO:", "DONE:")
    return 
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
      if @task.include?("TODO:")
        return false
      else 
        return true
      end 
  end
end