require 'byebug'

require_relative 'super_useful'

# puts "'five' == #{convert_to_int('five')}"
# # rescue ArgumentError => e
# # end
#
# feed_me_a_fruit
begin
  # get user input
  sam = BestFriend.new('name', 6, '')
  # hi = gets.chomp
  # raise DescriptiveError if hi.length < 1
rescue DescriptiveError => error

  puts "#{error.message}"

end
# rescue
#   puts "friends for less than five years"
# end
# sam.talk_about_friendship#
# sam.do_friendstuff
# sam.give_friendship_bracelet
# «»
