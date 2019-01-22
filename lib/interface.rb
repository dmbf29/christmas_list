require_relative 'scraper'
require_relative 'xmas_list'

puts "--------------------------------------"
puts "-🎄-Welcome to Christmas gift list-🎄-"
puts "--------------------------------------"

gift_list = {}

action = 'starts the loop'
until action == 'quit'
  puts 'Which action [list|add|mark|idea|delete|quit]?'
  print '> '
  action = gets.chomp
  system('clear')

  case action
  when 'list'
    list(gift_list)
  when 'add'
    add_gift(gift_list)
  when 'mark'
    mark_gift(gift_list)
  when 'idea'
    get_idea(gift_list)
  when 'delete'
    delete_gift(gift_list)
  when 'quit' then puts "Goodbye"
  else
    puts 'Invalid action, please try again.'
  end
end
