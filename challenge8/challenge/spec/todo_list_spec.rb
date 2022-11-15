require "todo_list"

RSpec.describe TodoList do 
  it "for given input string returns in incompleted todos" do 
    todo = TodoList.new 
    todo.add("go to the shops")
    expect(todo.incomplete).to eq ["TODO: go to the shops"]
  end 
  it "given only incomplete todos returns empty completed list" do 
    todo = TodoList.new 
    todo.add("go to the shops")  
    expect(todo.complete).to eq []
  end 
  it "given multiple todos returns full completed list when given up" do 
    todo = TodoList.new 
    todo.add("go to the shops")
    todo.add("go to work")  
    todo.add("go to gym")
    expect(todo.give_up!).to eq ["DONE: go to the shops", "DONE: go to work", "DONE: go to gym"]
  end 
end 