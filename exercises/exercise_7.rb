require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Please provide a name for a new store"
storeName = gets.chomp
anotherStore = Store.create(name: storeName)
puts anotherStore.errors.messages