def cypher(integer, string)
  string.downcase!
  results = []
  string.split('').map do |move|
    shift = move.ord + integer 
    if shift > 122
      results << ((shift % 122) + 96).chr
    elsif shift >= 97 && shift <= 122
      results << shift.chr
    else 
      results << move
    end
  end
  puts results.join
end

cypher(15, "AL rode his bikez")