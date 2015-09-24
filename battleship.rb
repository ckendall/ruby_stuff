require 'test/unit'

class GameLoop
  # entry point into the game.
  # return whether we won or lost
  
  def make_game
    @player_one_grid = Grid.new.make_grid
    @player_two_grid = Grid.new.make_grid
  end
end

class Grid
  # where ships are
  # Location cooridingate plane
  # displaying information to user about what's happening in the grid
  
  def make_grid
    ships = []
    5.times do
    ships <<  Ship.make_random_size
   end
  end
end

class Ship
  
  def self.ship_data
    [{ name: 'battleship', length: 5 },
     { name: 'courier', length: 3 }
    ]
  end
  
  def self.make_ships
    ship_data.map do |data|
      new(data[:length], data[:name])
    end
  end
  
  def initialize(length, name)
    @length = length
    @name = name
  end
  
  # length
  # what parts have been hit
  # whther or not the ship is 'sunk'
end

class Player
  #common functionality for both computer player and human player
  # maybe define interfaces for what a player does. 
end

class ComputerPlayer < Player
  # decide 'intelligently' what to do
  # make moves
end

class HumanPlayer < Player
  # get info from player about what move they want to do
end

class Location
  def initialize(x, y)
    @x = x
    @y = y
  end
end

# TESTS
# Locations have x and y
# computer players pick locations
# computer plyaers don't pick repeat locations
# Ships have length
# Ships can be sunk!
# The game has two grids, per player
# Grids...




