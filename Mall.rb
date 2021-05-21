require 'colorize'
require_relative 'StoreMenu.rb'
require_relative 'Wallet.rb'

def mall_menu(wallet)
  puts "We have a couple of stores which would you like to visit? Type in the number which store..."
  puts "or type any key to leave the mall"
  puts "1. Best Buy".colorize(:light_blue)
  puts "2. Macy's".colorize(:light_blue)
  store = gets.strip.to_i
  store_menu = StoreMenu.new(wallet)
  store_menu.init_menu(store)
  mall_menu
end

def greeting
  puts "Welcome to the Ruby Mall\n".colorize(:light_green)
  puts "How much money do you have to spend today?"
  budget = gets.strip.to_f
  wallet = Wallet.new(budget)
  wallet.print_balance
  mall_menu(wallet)
end

greeting
