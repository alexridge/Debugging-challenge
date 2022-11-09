class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title 
    @contents = contents
    @count = 0
  end

  def title
    return @title 
  end

  def contents
    # Returns the contents as a string
    return @contents
  end

  def count_words
    # Returns the number of words in the contents as an integer

    return @contents.split(" ").count
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
   timetoread = (count_words / wpm).to_i
    return timetoread
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    words = (wpm / minutes).to_i 
    count2 = @count + words 
    chunk = @contents.split(" ")[@count...count2].join(" ")
    @count += words 
    return chunk 
  end 
end