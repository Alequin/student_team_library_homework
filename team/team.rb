# Now we would like you to make a class that represents a sports
# team.
#
# Make a class to represent a Team that has the properties Team
# name (String), Players (Array of strings) and a Coach (String).
#
# For each property in the class make a Getter method than can
# return them.
#
# Create a setter method to allow the coach's name to be updated.
#
# Refactor the class to use attr_reader or attr_accessor instead of
# your own getter and setter methods.
#
# Create a method that adds a new player to the player's array.
#
# Add a method that takes in a string of a player's name and checks
# to see if they are in the players array.
#
# Add a points property into your class that starts at 0.
#
# Create a method that takes in whether the team has won or lost
# and updates the points property for a win.

class Team

  attr_reader :name, :players
  attr_accessor :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  def add_player(player_to_add)
    @players.push(player_to_add)
  end

end
