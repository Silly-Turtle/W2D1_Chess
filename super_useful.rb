class CoffeeError < StandardError; end
class DescriptiveError < StandardError; end
# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError
    nil
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise CoffeeError
  else
    raise StandardError
  end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
  rescue CoffeeError
    retry
  end
end

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
    raise DescriptiveError.new "frienship is not long enough" if yrs_known < 5
    raise DescriptiveError.new "You must put a name" if name.length <= 0
    raise DescriptiveError.new "You must identify pastime" if fav_pastime.length <= 0
  end

  def talk_about_friendship
    begin
      puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
    rescue DescriptiveError
      puts "Friendship is less than 5 years"
    end
  end

  def do_friendstuff
    begin
      puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
    rescue DescriptiveError => e
    end
  end

  def give_friendship_bracelet
    begin
      puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me."
    rescue
      puts ' someything '
    end
  end
end
