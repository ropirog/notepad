require_relative 'post'
require_relative 'link'
require_relative 'task'
require_relative 'memo'

puts "Привет, я твой блокнот!"
puts "Что хотите записать в блокнот?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size

  choices.each_with_index { |type, index| puts "\t#{index}. #{type}" }

  choice = $stdin.gets.to_i
end

entry = Post.create(choice)

entry.read_from_console

entry.save

puts "Ура, запись сохранена!"