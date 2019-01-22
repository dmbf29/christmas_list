def list(gift_list)
  puts "Your gift list:"
  if gift_list.empty?
    puts "Empty :("
  else
    counter = 0
    gift_list.each do |name, purchased|
      x_mark = purchased ? "X" : " "
      puts "#{counter += 1} - [#{x_mark}] #{name}"
    end
  end
  puts ""
end

def add_gift(gift_list)
  puts "What's the name of the item?"
  item = gets.chomp
  gift_list[item] = false
  puts "#{item.capitalize} was added to the list."
end

def mark_gift(gift_list)
  list(gift_list)
  puts "Which item # have you purchased?"
  index = gets.chomp.to_i - 1
  gift_to_mark = gift_list.keys[index] # => string / key
  gift_list[gift_to_mark] = !gift_list[gift_to_mark]
end

def get_idea(gift_list)
  puts "What would you like to search Etsy for?"
  keyword = gets.chomp
  etsy_items = scrape_etsy(keyword) # => returns a hash
  list(etsy_items)
  puts "Which item # would you like to add?"

  etsy_index = gets.chomp.to_i - 1
  gift_to_add = etsy_items.keys[etsy_index] # name of gift
  gift_list[gift_to_add] = false
  puts "#{gift_to_add} was added to your gift list."
end

def delete_gift(gift_list)
  list(gift_list)
  puts "Which item # would you like to delete?"
  index = gets.chomp.to_i - 1
  key_to_delete = gift_list.keys[index]
  gift_list.delete(key_to_delete)
  puts "#{key_to_delete} was removed from your gift_list"
end
