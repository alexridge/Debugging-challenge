class Diary_Entry
 
def initialize(date, entry)
@date = date 
@entry = entry
end 

def entry_add
#.. returns entry
return "#{@date}: #{@entry}"
end 

def count_words
    # Returns the number of words in the contents as an integer
     @entry.count
end
end 