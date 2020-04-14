# def say_hello(name)
#   "Hi #{name}!"
# end
#  
# puts "Enter your name:"
# users_name = gets.strip
#  
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play (array)
  puts "Please enter a song name or number:"
  input = gets.strip
  array.each_with_index do | s , i |
    if input == s 
      puts "Playing #{s}"
    elsif input.to_i == (i + 1)
      puts "Playing #{s}"
    end
  end
  if array.include?("#{input}") == false
      puts "Invalid input, please try again"
    end
end

def list (array)
  array.each_with_index do | s , i |
    puts "#{i + 1}. #{s}"
  end
end

def exit_jukebox 
  puts "Goodbye"
end

def run(array)
  puts "Please enter a command:"
  input = gets.strip
  if input == "help"
    help
  elsif input == "play"
    play(array)
  elsif input == "list"
    list(array)
  elsif input == "exit"
    exit_jukebox
  end
end 