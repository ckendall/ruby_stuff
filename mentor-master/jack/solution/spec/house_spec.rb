require 'house' 

RSpec.describe 'House' do 
  
RAW_WHOLE_SONG = <<-HEREDOC
This is the house that Jack built.
This is the malt that lay in the house that Jack built.
This is the rat that ate the malt that lay in the house that Jack built.
This is the cat that killed the rat that ate the malt that lay in the house that Jack built.
This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
HEREDOC

WHOLE_SONG = RAW_WHOLE_SONG.chomp
    
  context "reciting" do 
    it "it should recite the whole 'House that Jack built' song" do 
      expect( House.new.recite ).to eq(WHOLE_SONG)
    end
  
    it 'should allow people other than Jack to build houses' do 
      name = 'Anna'
      recitation = House.new(name).recite.split("\n")
      expect(recitation.first.include?(name)).to eq(true)
      expect(recitation.last.include?(name)).to eq(true)    
    end    
  end  
  
  context 'getting lines' do 
    it "should show the first line of the song" do 
      line = House.new().lyric(1)
      expect(line).to eq(WHOLE_SONG.split("\n").first)
    end
    
    it "should show the second line of the song" do 
      lines = House.new().lyric(2)
      expect(lines).to eq( WHOLE_SONG.split("\n")[1] )
    end
  end
    
  
  
  
  
end

