class Music_List 

def initialize 
  @count = 0 
  @songs = []
end 

def inp_songs(title)
  @count += 1 
  song =  "(#{@count}): #{title}"
  @songs << song 
  return song 
end 

def print_list  
  return @songs.join(" /n")
end 
end 