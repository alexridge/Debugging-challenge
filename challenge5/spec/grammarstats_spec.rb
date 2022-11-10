require "grammarstats"

RSpec.describe GrammarStats do 
 #'Checks' tests::
  it "returns true if starting with a capital." do 
    grammar = GrammarStats.new 
    expect(grammar.check("I love to listen to the guitar.")).to eq true 
  end 
  it "returns true if ending with a punctuation." do 
   grammar = GrammarStats.new 
    expect(grammar.check("I love to listen to the guitar.")).to eq true
  end 
  it "returns false if not starting with a capital." do 
    grammar = GrammarStats.new 
    expect(grammar.check("i love to listen to the guitar.")).to eq false 
  end 
  it "returns false if not ending with a punctuation." do 
   grammar = GrammarStats.new 
    expect(grammar.check("I love to listen to the guitar")).to eq false
  end
 #'Percentage_good' tests::
  it "returns percentage of successful texts checked" do 
    grammar = GrammarStats.new
    grammar.check("I love to listen to the guitar.") 
    expect(grammar.percentage_good).to eq 100
  end 
  it "returns percentage of successful texts checked" do 
    grammar = GrammarStats.new
    grammar.check("i love to listen to the guitar") 
    expect(grammar.percentage_good).to eq 0
  end 
  it "returns percentage of successful texts checked" do 
    grammar = GrammarStats.new
    grammar.check("I love to listen to the guitar.") 
    grammar.check("i love to listen to the guitar")
    expect(grammar.percentage_good).to eq 50
  end 
  it "returns percentage of successful texts checked" do 
    grammar = GrammarStats.new
    grammar.check("I love to listen to the guitar.") 
    grammar.check("i love to listen to the guitar")
    grammar.check("I love to listen to the guitar.") 
    expect(grammar.percentage_good).to eq 66
  end 
  it "returns percentage of successful texts checked" do 
    grammar = GrammarStats.new
    grammar.check("I love to listen to the guitar") 
    grammar.check("i love to listen to the guitar")
    grammar.check("I love to listen to the guitar.") 
    expect(grammar.percentage_good).to eq 33
  end
end 
    