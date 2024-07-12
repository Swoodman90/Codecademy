movies = {Labyrinth: 10, LordoftheRings: 10}

puts "What would you like to do?\nYou can:"
puts "- add\n- update\n- display\n- delete\n"
choice = gets.chomp

case choice
  when "add"
    puts "What movie will you add?"
    title = gets.chomp.delete(" ").to_sym
    puts "Rating from 1-10:"
    rating = gets.chomp.to_i
    if movies[title.to_sym].nil?
      movies[title] = rating
    else
      puts "That movie already exists in this collection!"
    end
  when "update"
    puts "What movie's rating will you update?"
    title = gets.chomp.delete(" ").to_sym
    if movie[title.to_sym].nil?
      puts "That movie doesn't exist in this collection!"
    else
      puts "What is the new rating?"
      rating = gets.chomp.to_i
      movies[title] = rating
    end
  when "display"
    movies.each { |movie, rating| puts "#{movie}: #{rating}" }
  when "delete"
    puts "Which movie will you delete?"
    title = gets.chomp.to_sym
    if movies[title.to_sym].nil?
      puts "That movie doesn't exist in this collection!"
    else
      movies.delete(title.to_sym)
      puts "#{title} deleted!\n"
      movies.each { |title, rating| puts "#{title}: #{rating}" }
    end
  else
    puts "Not a valid option!"
end