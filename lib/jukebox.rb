# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays the help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(array)
  array.map do |n|
    num = array.index(n) + 1
    puts "#{num}. #{n}"
  end
end

def play(array)
  puts "Please enter a song or number: "
  song_request = gets.strip
  if array.include?(song_request)
    puts "Playing #{song_request}"
  elsif (1..9).include?(song_request.to_i)
    song_index = (song_request.to_i - 1)
    puts "Playing #{array[song_index]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.strip
  if command == "exit"
    exit_jukebox
  elsif command == "help"
    help
  elsif command == "list"
    list(songs)
  elsif command == "play"
    play(songs)
  else
    puts "Not a valid command"
  end
end
