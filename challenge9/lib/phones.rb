class Phones 
def initialize(number, name)
  @number = number 
  @name = name
  @phone_num = ""
end 

def phone_num
#..stores phone numbers 
  @phone_num = "#{@name}: #{@number}"
  return @phone_num
end 
end 