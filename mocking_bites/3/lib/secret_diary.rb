class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    @lock = true
    @diary = diary
  end

  def read
    # Raises the error "Go away!" if the diary is locked
    # Returns the diary's contents if the diary is unlocked
    # The diary starts off locked

    if @lock == true
      fail "Go away!"
    elsif @lock == false
      @diary.read
    end

  end

  def lock
    # Locks the diary
    # Returns nothing
    @lock = true
  end

  def unlock
    # Unlocks the diary
    # Returns nothing
    @lock = false
  end
end
