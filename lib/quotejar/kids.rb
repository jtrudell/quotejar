class Kids
include Age
  attr_reader :name, :birth_date
  attr_accessor :quotes

  def initialize(name, birth_date)
    @name = name
    @birth_date = birth_date
    @quotes ||= Hash.new
  end

  def prompt
    print ">> "
  end

  def save_kid # creates kid.file if the kid is new, or saves to the existing file if the kid exists
    File.open("./#{@name}.yaml", 'w+') do |file|  
      file.puts YAML::dump(self)
    end
  end 

  def new_entry
    puts "What did #{@name} say?"
    prompt
    quote = gets.chomp
    date = quote_date # retrieves quote_date from Age module, to get date from user
    age = quote_age(date, @birth_date) # calculates age of kid when quoted
    entry_hash = {date => [quote, age]}
    @quotes.merge!(entry_hash)
    save_kid
    options
  end

  def retrieve_entries
    if @quotes.empty? 
      puts "Sorry, no quotes yet for this child."
    else
      @quotes.each_pair do |date, quote|
        date_shorten = date.strftime("%m/%d/%y")
        puts "On #{date_shorten} when #{@name} was #{quote[1].to_i} years-old, #{@name} said: #{quote[0]}"
      end
    end
    options
  end

  def options
    puts "Do you want to enter a new quote, or see a list of all quotes for #{@name}?"
    puts "Type 'N' for new entry, 'L' for a list of all quotes, or 'Q' to quit."
    prompt
    answer = gets.chomp.downcase
    if answer == 'n'
      new_entry
    elsif answer == 'l'
      retrieve_entries
    elsif answer == 'q'
      good_bye
    else 
      puts "Sorry, that wasn't an option."
      options
    end
  end

  def good_bye
    puts "See you soon!"
  end
end
