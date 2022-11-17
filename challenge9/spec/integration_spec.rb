require "diary"
require "diary_entry"
require "todo"
require "phones"

RSpec.describe "integration" do 
  context "diary tests" do 
  it "shows entry input" do 
    diary = Diary.new 
    entry = Diary_Entry.new("18/2", "went to the shops")
    diary.add_diary(entry.entry_add)
    expect(diary.show_entries).to eq ["18/2: went to the shops"]
  end 
  it "shows both input entries" do 
    diary = Diary.new 
    entry = Diary_Entry.new("18/2", "went to the shops")
    entry1 = Diary_Entry.new("19/2", "went to the barber")
    diary.add_diary(entry.entry_add)
    diary.add_diary(entry1.entry_add)
    expect(diary.show_entries).to eq ["18/2: went to the shops", "19/2: went to the barber"]  
  end 
  it "given date returns entries on that date" do 
    diary = Diary.new 
    entry = Diary_Entry.new("18/2", "went to the shops")
    entry1 = Diary_Entry.new("19/2", "went to the barber")
    diary.add_diary(entry.entry_add)
    diary.add_diary(entry1.entry_add)
    expect(diary.on_date("18/2")).to eq "18/2: went to the shops"
  end 
  it "given date returns entries on that date" do 
    diary = Diary.new 
    entry = Diary_Entry.new("18/2", "went to the shops")
    entry1 = Diary_Entry.new("19/2", "went to the barber")
    entry2 = Diary_Entry.new("20/2", "went to the gym")
    diary.add_diary(entry.entry_add)
    diary.add_diary(entry1.entry_add)
    diary.add_diary(entry2.entry_add)
    expect(diary.on_date("20/2")).to eq "20/2: went to the gym"
  end 
 end
 context "todo tests" do 
   it "for 1 todo returns that todo" do 
    diary = Diary.new 
    todo = Todo.new("work hard")
    diary.add_todo(todo.ret_todos)
    expect(diary.show_todo).to eq ["TODO: work hard"]
   end 
   it "for 2 todo returns both todos" do 
    diary = Diary.new 
    todo = Todo.new("work hard")
    todo1 = Todo.new("work harder")
    diary.add_todo(todo.ret_todos)
    diary.add_todo(todo1.ret_todos)
    expect(diary.show_todo).to eq ["TODO: work hard", "TODO: work harder"]
   end 
   it "for 1 todo returns that todo as comp" do 
    diary = Diary.new 
    todo = Todo.new("work hard")
    diary.add_todo(todo.complete_todo)
    expect(diary.show_comp_todo).to eq ["DONE: work hard"]
   end 
   it "for 2 todo returns both todos as comp" do 
    diary = Diary.new 
    todo = Todo.new("work hard")
    todo1 = Todo.new("work harder")
    diary.add_todo(todo.complete_todo)
    diary.add_todo(todo1.complete_todo)
    expect(diary.show_comp_todo).to eq ["DONE: work hard", "DONE: work harder"]
   end 
 end 
  context "phone numb tests" do 
    it "for input phone number and name returns in format" do 
      diary = Diary.new 
      phone = Phones.new("07000000000", "Patrick")
      diary.add_phone(phone.phone_num)
      expect(diary.show_contacts).to eq ["Patrick: 07000000000"]
    end 
    it "for  2 input phone numbers and names returnsboth  in format" do 
      diary = Diary.new 
      phone = Phones.new("07000000000", "Patrick")
      phone1 = Phones.new("07000000001", "Charlie")
      diary.add_phone(phone.phone_num)
      diary.add_phone(phone1.phone_num)
      expect(diary.show_contacts).to eq ["Patrick: 07000000000", "Charlie: 07000000001"]
    end 
  end 
  it "given certain reading time returns readable entry" do 
     diary = Diary.new
     entry = Diary_Entry.new("10/10", "red lorry yellow lorry")
     diary.add_diary(entry.entry_add)
     result = diary.best_entry_readable(4, 1)
     expect(result).to eq "10/10: red lorry yellow lorry"
  end 
  it "given certain reading time returns best  readable entry" do 
     diary = Diary.new
     entry = Diary_Entry.new("10/10", "red lorry yellow lorry")
     diary.add_diary(entry.entry_add)
     entry1 = Diary_Entry.new("10/10", "racing cars are cool but sometimes too fast")
     diary.add_diary(entry1.entry_add)
     result = diary.best_entry_readable(4, 1)
     expect(result).to eq "10/10: red lorry yellow lorry"
  end 
  it "given certain reading time returns best  readable entry" do 
     diary = Diary.new
     entry = Diary_Entry.new("10/10", "red lorry yellow lorry")
     diary.add_diary(entry.entry_add)
     entry1 = Diary_Entry.new("10/10", "racing cars are cool but sometimes too fast")
     diary.add_diary(entry1.entry_add)
     result = diary.best_entry_readable(1, 1)
     expect(result).to eq "no readable entries"
  end 
end 
