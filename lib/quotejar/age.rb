module Age
require 'time'

  def prompt
    print ">> "
  end

  def kid_birthday(name)
    puts "What is #{name}'s birthday?"
    puts "Enter the year:" 
    prompt 
    year = gets.chomp
    puts "Enter the month as a two digit number:"
    prompt
    month = gets.chomp
    puts "Enter the day as a two digit number:"
    prompt
    day = gets.chomp 
    Time.new(year, month, day)
  end

  def quote_date
    puts "What's the date? If you want to enter a day, enter 'Y'. Enter 'N' for today's date."
    prompt
    answer = gets.chomp.downcase
    if answer == 'y'
      puts "Enter the year:" 
      prompt
      year = gets.chomp
      puts "Enter the month as a two digit number:"
      prompt
      month = gets.chomp
      puts "Enter the day as a two digit number:"
      prompt
      day = gets.chomp 
      Time.new(year, month, day)
    else
      Time.new
    end
  end

  def quote_age(date, birth_date)
    (date - birth_date) / 31557600 # divided by seconds in a year to get age
  end

end
