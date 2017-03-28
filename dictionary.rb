require 'set'

class Dictionary

  attr_accessor :dictionary

  def initialize()
    @dictionary = Hash.new { |h, k| h[k] = {definition:''} }
  end

  def addWord(word, definition)
    @dictionary[word][:definition] = definition
    return nil
  end

  def addSynonym(word, synonym)
    if !@dictionary[word][:synonyms]
      set = Set.new [word, synonym]
      @dictionary[word][:synonyms]=set
      @dictionary[synonym][:synonyms]=set
    else
      @dictionary[word][:synonyms].merge(@dictionary[synonym][:synonyms])
      @dictionary[synonym][:synonyms].merge(@dictionary[word][:synonyms])
    end
  end

  def lookupWord(word)
    puts "#{word}:#{@dictionary[word][:definition]}"
    return "#{word}:#{@dictionary[word][:definition]}"
  end

  def lookupSynonyms(word)
    strArray = getSyns(word)
    string = strArray.join(',')
    puts "#{word}:#{string}"
    return "#{word}:#{string}"
  end

  private

  def getSyns(word)
    strArray = []
    @dictionary[word][:synonyms].each do |key, _|
      if key != word
        strArray.push(key)
      end
    end
    strArray
  end


end
