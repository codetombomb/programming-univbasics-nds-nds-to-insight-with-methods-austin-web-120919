require 'directors_database'
require "pry"

# [{:name=>"Test Director", :movies=>[]}]
def directors_totals(nds)
  #iterate over each directors information to grab name and set it to nds
  # director :name placeholder
  directors_database.each do |dir_name|

    # update name in nds
    nds[0][:name] = dir_name[:name]
    dir_name[:movies].each do |movie|
      movie.each do |el,gross|
        if el == :worldwide_gross

        end
        # binding.pry
      end
    end
  end
end

# directors_database[0][:movies][0][:worldwide_gross]--- ww gross




def gross_for_director(director_data)
director_total = 0
  element_index = 0
  while element_index < director_data[:movies].length do
    director_total += director_data[:movies][element_index][:worldwide_gross]
  element_index += 1
  end
director_total
end





#
# # select director with             var
# director_sel = directors_database[0]
#
# # director list length = 9
# directors_database.length


# [{:name=>"Stephen Spielberg",
#   :movies=>
#    [{:title=>"Jaws",
#      :studio=>"Universal",
#      :worldwide_gross=>260000000,
#      :release_year=>1975},
#     {:title=>"Close Encounters of the Third Kind",
#      :studio=>"Columbia",
#      :worldwide_gross=>135189114,
#      :release_year=>1977},
#      {:title=>"Raiders of the Lost Ark",
#      :studio=>"Paramount",
#      :worldwide_gross=>248159971,
#      :release_year=>1981},
#     {:title=>"E.T. the Extra-terrestrial",
#      :studio=>"Universal",
#      :worldwide_gross=>435110554,
#      :release_year=>1982},
#     {:title=>"Schindler's List",
#      :studio=>"Universal",
#      :worldwide_gross=>96898818,
#      :release_year=>1993},
#     {:title=>"Lincoln",
#      :studio=>"Buena Vista",
#      :worldwide_gross=>182207973,
#      :release_year=>2012}]},


# require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
#
# def directors_totals(nds)
#   result = {}
#   nil
# end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
# def gross_for_director(director_data)
# end
