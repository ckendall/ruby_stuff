class House
  
  attr_reader :name
  
  def initialize(name = 'Jack')
    @name = name
  end
  
  def recite
    lyrics(data.count)
  end
  
  def lyrics(n)
    song = []
    1.upto(n) do |verse|
      song << lyric(verse)      
    end
    song.join("\n")
  end
  
  def lyric(n)
    "This is #{lines(n).join(' ')}" 
  end
  
  def lines(n)
    data(name).last(n)
  end
  
  private 
  
  def data(name = @name)
   ["the horse and the hound and the horn that belonged to",
    "the farmer sowing his corn that kept",
    "the rooster that crowed in the morn that woke",
    "the priest all shaven and shorn that married",
    "the man all tattered and torn that kissed",
    "the maiden all forlorn that milked",
    "the cow with the crumpled horn that tossed",
    "the dog that worried",
    "the cat that killed",
    "the rat that ate",
    "the malt that lay in",
    "the house that #{name} built."]
  end
  
end