class LetterCounter
  def initialize(text)
    @text = text.downcase 
  end

  def calculate_most_common()
    counter = Hash.new(0)
    most_common = 0
    most_common_count = 0
    @text.split("").each do |char|
      next unless is_letter?(char)
      counter[char] = (counter[char] || 1 ) + 1
      if counter[char] > most_common_count
        most_common = char
        most_common_count = counter[char] 
      end
    end
     p counter
    return [most_common_count, most_common]
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-z]/
  end
end

counter = LetterCounter.new("Digital Punk")
p counter.calculate_most_common

# Intended output:
# [2, "i"]