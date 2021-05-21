class StoreMenu
  def initialize(wallet)
    @wallet = wallet
  end

  def init_menu(store)
    case store
    when 1
      self.best_buy_menu
    when 2
      self.macys_menu
    else
      puts "Thanks for visiting the mall!"
      puts "Are you done shopping? y/n"
      answer = gets.strip
      if answer == "y"
        exit
      end
    end
  end

  def best_buy_menu
    cart = []
    options = [{product: "phone", price: 500 }, {product: "laptop", price: 800}, {product: "tv", price: 1500}, {product: "washer", price: 600}]
    puts "Welcome to Best Buy!".colorize(:yellow)
    puts "We have lots of electronics to shop from!"
    puts "Please select an option from our catalog of products:"
    options.each_with_index do |item, index|
      puts "#{index + 1}) #{item[:product]} price: $#{item[:price]}".colorize(:light_blue)
    end
    selected_option = gets.strip.to_i
    case selected_option
    when 1
      puts "you selected phone"
      validation = @wallet.validate_money(options[0][:price].to_f)
      if validation
        cart << options[0][:price]
      else
        puts "not enough money for this item :("
        self.best_buy_menu
      end
      puts "Are you done shopping? y/n"
      answer = gets.strip
      if answer == "y"
        total = 200
        @wallet.subtract_money(total)
        puts "Thanks for shopping at Best Buy!"
      elsif answer == "n"
        self.best_buy_menu
      else
        puts "that is an invalid option".colorize(:red)
        self.best_buy_menu
      end
    when 2
      puts "you selected laptop"
      cart << options[1]
      puts "Are you done shopping? y/n"
      answer = gets.strip
      if answer == "y"
        puts "Thanks for shopping at Best Buy!"
      elsif answer == "n"
        self.best_buy_menu
      else
        puts "that is an invalid option".colorize(:red)
        self.best_buy_menu
      end
    when 3
      puts "you selected tv"
      cart << options[2]
      puts "Are you done shopping? y/n"
      answer = gets.strip
      if answer == "y"
        puts "Thanks for shopping at Best Buy!"
      elsif answer == "n"
        self.best_buy_menu
      else
        puts "that is an invalid option".colorize(:red)
        self.best_buy_menu
      end
    when 3
      puts "you selected washer"
      cart << options[3]
      puts "Are you done shopping? y/n"
      answer = gets.strip
      if answer == "y"
        puts "Thanks for shopping at Best Buy!"
      elsif answer == "n"
        self.best_buy_menu
      else
        puts "that is an invalid option".colorize(:red)
        self.best_buy_menu
      end
    else
      puts "that is an invalid option \n".colorize(:red)
      puts "do you want to continue shopping? y/n"
      answer2 = gets.strip
      if answer2 == "y"
        self.best_buy_menu
      else
        puts "thanks for shopping at Best Buy!"
      end
    end
  end

  def macys_menu
    cart = []
    options = [{product: "dress shirt", price: 20 }, {product: "jeans", price: 20}, {product: "dress shoes", price: 40}, {product: "purse", price: 100}]
    puts "Welcome to Macy's!".colorize(:magenta)
    puts "We have lots of items to shop from!"
    puts "Please select an option from our catalog of products:"
    options.each_with_index do |item, index|
      puts "#{index + 1}) #{item[:product]} price: $#{item[:price]}".colorize(:light_blue)
    end
    selected_option = gets.strip.to_i
    case selected_option
    when 1
      puts "you selected dress shirt"
      cart << options[0]
      puts "Are you done shopping? y/n"
      answer = gets.strip
      if answer == "y"
        puts "Thanks for shopping at Macy's!"
      elsif answer == "n"
        self.macys_menu
      else
        puts "that is an invalid option".colorize(:red)
        self.macys_menu
      end
    when 2
      puts "you selected jeans"
      cart << options[1]
      puts "Are you done shopping? y/n"
      answer = gets.strip
      if answer == "y"
        puts "Thanks for shopping at Macy's!"
      elsif answer == "n"
        self.macys_menu
      else
        puts "that is an invalid option".colorize(:red)
        self.macys_menu
      end
    when 3
      puts "you selected dress shoes"
      cart << options[2]
      puts "Are you done shopping? y/n"
      answer = gets.strip
      if answer == "y"
        puts "Thanks for shopping at Macy's!"
      elsif answer == "n"
        self.macys_menu
      else
        puts "that is an invalid option".colorize(:red)
        self.macys_menu
      end
    when 3
      puts "you selected purse"
      cart << options[3]
      puts "Are you done shopping? y/n"
      answer = gets.strip
      if answer == "y"
        puts "Thanks for shopping at Macy's!"
      elsif answer == "n"
        self.macys_menu
      else
        puts "that is an invalid option".colorize(:red)
        self.macys_menu
      end
    else
      puts "that is an invalid option \n".colorize(:red)
       puts "do you want to continue shopping? y/n"
        answer2 = gets.strip
        if answer2 == "y"
          self.macys_menu
        else
          puts "thanks for shopping at Macy's!"
        end
    end
  end
end