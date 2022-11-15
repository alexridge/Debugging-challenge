require "todo"

RSpec.describe Todo do 
  it "returns task as todo: string" do 
    todo = Todo.new("go to work")
    expect(todo.task).to eq "TODO: go to work"
  end 
  it "returns true or false depeding on if task is done" do
    todo = Todo.new("go to work")
    expect(todo.done?).to eq false
  end 
  it "returns true or false depeding on if task is done" do 
    todo = Todo.new("go to work")
    todo.mark_done!
    expect( todo.done?).to eq true
  end 
end 