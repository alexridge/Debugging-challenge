require "todo"

RSpec.describe "todo method" do 
  it "given string not containing any TODO" do 
    result = todo("make a cup of coffee")
    expect(result).to eq ""
  end 
  
  it "given a string containing TODO returns string" do 
    result = todo("TODO make cup of coffee")
    expect(result).to eq "TODO make cup of coffee"
  end 
end 