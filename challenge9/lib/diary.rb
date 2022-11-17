class Diary 
def initialize 
  @entries = []
  @todos = []
  @comp_todos = []
  @phone_nums = []
end 

def add_diary(diary_entry)
#.. instance of Diary_Entry
#.. adds diary entry sorting by date 
  @entries << diary_entry 
  return 
end 

def show_entries 
#.. shows list of all entries
  @entries 
end 

def on_date(date)
#..shows entry on given date
  @entries.each do |entry| 
    if entry.include?(date)
      return entry 
    end 
  end 
end

def add_todo(todo)
##..adds todo 
  if todo.include?("TODO:")
    @todos << todo
  elsif todo.include?("DONE:")
    @comp_todos << todo 
  end 
  return 
end 

def show_todo
  @todos 
end 

def show_comp_todo
  @comp_todos
end 

def add_phone(contact)
  @phone_nums << contact 
  return 
end 

def show_contacts 
  @phone_nums
end

def best_entry_readable(wpm, minutes)
  words = wpm * minutes
  prevbest = 0
  @entries.each do |entry| 
    if entry.count(" ") <= words && entry.count(" ") > prevbest  
      prevbest += entry.count(" ")
      return entry 
    end
      if prevbest == 0 
        return "no readable entries"
      end 
  end 
end 
end 
