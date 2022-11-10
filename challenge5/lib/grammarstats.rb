class GrammarStats
  def initialize
    # ...
    @count = 0
    @total = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    letter = text.split("")[0]
    if  letter == letter.upcase && text.split("")[-1] == "."
      @count += 1
      @total += 1
      return true 
    else
      @total += 1
      return false
    end  
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
   percentage = ((@count.to_f / @total) * 100).to_i 
  return percentage
  end
end