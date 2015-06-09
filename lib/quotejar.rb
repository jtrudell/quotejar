require 'yaml'
require_relative './quotejar/age.rb'
require_relative './quotejar/kids.rb'

  def load_kid(name) # loads kid object from .yaml file
    File.open("./#{name}.yaml", 'r') do |file|
    YAML::load(file.read)
    end
  end

  def create_kid(name)
    include Age
    puts "A file for this child doesn't exist. Do you want to add the child?"
    puts "Type 'Y' for yes or 'N' for no, which will return you to the beginning."
    puts "Type 'Q' to quit."
    prompt
    answer = gets.chomp.downcase
    if answer == 'y'
      birthday = kid_birthday(name) # retieves kid_birthday from Age module, to get user to input birthday
      kid = Kids.new(name, birthday)
      kid.save_kid
      puts "We've created a file for #{name}. Now what would you like to do?"
      kid.options
    elsif answer == 'n'
      start
    else
      puts "Goodbye!"    
    end
  end

  def start
    puts "Welcome! Please enter a child's name:"
    print ">> "
    name = gets.chomp
    if File.exists?("./#{name}.yaml")
      load_kid(name).options
    else 
    create_kid(name)
    end
  end
