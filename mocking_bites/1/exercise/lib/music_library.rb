class MusicLibrary
  def initialize
    @songs = []
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
    @songs << track
    return 
  end

  def all
    # Returns a list of track objects
    @songs 
  end
  
  def search(keyword) # keyword is a string
    @songs.each do |track| 
      if track.include?(keyword)
        return track 
      else 
        return "no tracks found"
      end
    end
  end
end 