class Dictionary

  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def keywords
    keywords = []
    @entries.each do |keyword, definitions|
      keywords << keyword
    end
    keywords.sort!
    return keywords
  end

  def add(entry)
    if entry.class == String
      @entrties[entry] = nil
      return true
    elsif entry.class == Hash
      @entries.merge!(entry)
      return true
    else
      puts "not a valid argument"
      return false
    end
  end

  def include?(word)
    @entries.keys.include?(word)
  end

  def find(word)
    match = @entries.select {|key, value| key.include?(word)}
    return match
  end

end
