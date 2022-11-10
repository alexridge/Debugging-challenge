require "listmaker"

RSpec.describe ListMaker do 
  it "1 todo item(s) input" do 
    newlist = ListMaker.new 
    newlist.input_todo("Get groceries")
    expect(newlist.output_todo).to eq "Todo: Get groceries"
  end 
  
  it "2 todo item(s) input" do 
    newlist = ListMaker.new 
    newlist.input_todo("Get groceries")
    newlist.input_todo("Do homework")
    expect(newlist.output_todo).to eq "Todo: Get groceries /nTodo: Do homework" 
  end
  
  it "1 todo item(s) input and 1 todo item(s) removed returns ''" do 
    newlist = ListMaker.new 
    newlist.input_todo("Get groceries")
    newlist.remove_todo(1)
    expect(newlist.output_todo).to eq ""
  end 
  
  it "2 todo item(s) input and 1 todo item(s) removed returns remaining todo" do 
    newlist = ListMaker.new 
    newlist.input_todo("Get groceries")
    newlist.input_todo("Do homework")
    newlist.remove_todo(2)
    expect(newlist.output_todo).to eq "Todo: Get groceries"  
  end 
end 