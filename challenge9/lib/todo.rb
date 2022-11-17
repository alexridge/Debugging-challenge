class Todo
def initialize(todo)
@todo = "TODO: #{todo}"
end 

def ret_todos 
#..returns todos
  @todo
end 

def complete_todo
#..
  @todo.gsub("TODO:","DONE:")
end 
end 