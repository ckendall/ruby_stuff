class Bicycle
  def initialize( color, tire_size = nil)
    @color = color
    @tire_size = tire_size
  end
  
  def to_s    
    "Color : #{@color} | Object_id : #{self.object_id}"
  end
  
  def color
    @color
  end
  
  def tire_size
    @tire_size
  end
  
end


raise StandardError.new("Bikes should have colors")     unless Bicycle.new('Red').color == 'Red'
raise StandardError.new("Bikes should have tire sizes") unless Bicycle.new('Red', 50).tire_size == 50
