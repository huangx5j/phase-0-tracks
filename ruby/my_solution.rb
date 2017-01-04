# Virus Predictor

# I worked on this challenge with [Katy Lee].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# Require takes data from a file from the current directory or PATH
# Require_relative access data from a file that is relative to the file containting the require_relative statement

# Taking data from state_data.rb
require_relative 'state_data'

class VirusPredictor

  # initialize method that takes three parameters
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Passes results from methods predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # Cannot use methods outside of the class
  private

  # Takes three parameters and return # of deaths for a state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Takes two parameters to return speed of disease spread in months
  def speed_of_spread
    # in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# Loop through STATE_DATA to get all the information for each individual state and print it out
STATE_DATA.each do |state, data| 
  all_states = VirusPredictor.new(state, data[:population_density], data[:population])
  all_states.virus_effects
end



#=======================================================================
# Reflection Section
# The container hash has strings as keys using => and the inner hash has symbols for keys using :.
# Require takes data from a file from the current directory or PATH.
# Require_relative access data from a file that is relative to the file containting the require_relative statement
# There are each_pair with is similar to each but can be used for more complicated manipulation with key values. There is also select to choose a particular data set.
# Virus_effects just needed to call the other methods and it was not necessary to pass in parameters since the other methods already has parameters.
# I solidify the concept of looking where parameters are needed/not needed and for ways to make code more efficient.
