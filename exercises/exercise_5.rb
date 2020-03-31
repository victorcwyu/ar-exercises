require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "The total revenue for the entire company is #{Store.sum("annual_revenue")}."

puts "The average annual revenue for all stores is #{Store.average("annual_revenue")}"

overMill = Store.where("annual_revenue > 1000000").count
puts "#{overMill} stores are generating $1M or more in annual sales."