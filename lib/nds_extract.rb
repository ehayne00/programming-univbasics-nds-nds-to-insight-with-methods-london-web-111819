require 'directors_database'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  directors_database.each do |director|
    total = 0 
    director[:movies].each do |movie|
      total +=  movie[:worldwide_gross]
    end
   result[director[:name]] = total
  end
 result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(directors_totals)
  
  directors_totals do |director, total|
    directors_totals[director] = total
    
  end
  puts total
end
