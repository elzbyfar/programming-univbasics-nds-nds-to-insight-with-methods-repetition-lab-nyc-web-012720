$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def gross_for_director(d)
  total = 0
  index = 0
  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end
  total
end

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def list_of_directors(source)
  list = []
  i = 0 
  while i < source.length do 
    list << source[i][:name]
    i+=1 
  end 
  list
end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  
  collective_total = 0
  dir_arr = list_of_directors(source)
  dir_hash = directors_totals(source)
  
  
  
  
  
  i = 0 
  while i < dir_arr.length do 
    collective_total = collective_total + dir_hash[dir_arr[i]]
  i+=1 
  end
  puts collective_total
  collective_total
end

total_gross(directors_database)
