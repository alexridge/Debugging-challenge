class ListMaker

  def initialize 
  @count = 0
  @todos = []
  end 
  
  def input_todo(inp_string) 
    #push string to array
    @count += 1
    @todos.push("Todo: #{inp_string}")
  end 
  
  def output_todo
    #..
    #   puts list of todo 
    #       todo.each |todo|
    #     "#{count}Todo: #{todo}"
    @todos.join(" /n")
  end 
  
  def remove_todo(number)
    # remove completed tasks
    # @count -= 1 
    @todos.delete_at(number -1)
  end 
end 