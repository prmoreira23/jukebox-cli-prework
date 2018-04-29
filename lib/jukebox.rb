require_relative "../lib/jukebox"
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
    puts "I accept the following commands:\n- help : displays this help message" +
    "\n- list : displays a list of songs you can play" +
    "\n- play : lets you choose a song to play" +
    "\n- exit : exits this program"
end

def list(arr)
    arr.each_with_index do |item, index|
        puts "#{index + 1}. #{item}"
    end
end

def play(songs)
    puts "Please enter a song name or number:"
    input = gets.chomp
    song_index = nil
    begin
        song_index = Integer(input) - 1
    rescue
        song_index = songs.index(input)
    end

    if !song_index.nil? && !songs[song_index].nil?
        puts "Playing #{songs[song_index]}"
    else
        puts "Invalid input, please try again"
    end
end

def exit
    puts "goodbye!"
end

def run(songs)
    loop do
        puts "Please enter a command:"
        command = gets.chomp
        case command
            when "help"
                help
            when "list"
                list(songs)
            when "play"
                play(songs)
            when "exit"
                exit
                break
            else
                puts "Try another command"
            end
    end
end
run(songs)
