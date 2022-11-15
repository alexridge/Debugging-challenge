require "todo"
require "todo_list"

RSpec.describe "integration" do 
  context "adds todo to list tests" do 
    it "for given input string returns same string" do 
      todo_list = TodoList.new 
      todo = Todo.new("keep working")
      todo_list.add(todo.task)
      expect(todo_list.incomplete).to eq ["TODO: keep working"]
    end 
    it "for given 2 input strings returns both" do 
      todo_list = TodoList.new 
      todo = Todo.new("hit the gym")
      todo1 = Todo.new("make some lunch")
      todo_list.add(todo.task)
      todo_list.add(todo1.task)
      expect(todo_list.incomplete).to eq ["TODO: hit the gym", "TODO: make some lunch"]
    end 
  end 
  context "moves todo from incomplete to completed task" do 
    it "returns all completed todos" do 
      todo_list = TodoList.new 
      todo = Todo.new("keep working")
      todo.mark_done!
      todo_list.add(todo.task)
    expect(todo_list.complete).to eq ["DONE: keep working"]
    end 
    it "when used give_up returns all todos as done" do 
      todo_list = TodoList.new 
      todo = Todo.new("keep working")
      todo_list.add(todo.task)
      expect(todo_list.give_up!).to eq ["DONE: keep working"]
    end 
  end
end 