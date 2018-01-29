str = `ruby #{ARGV[0] || 'quine.rb'}`

puts str

while true do
  File.open('temp.rb', 'w') do |f|
    f.write str
  end
  sleep 0.5
  str = `ruby temp.rb`
  print "\e[#{str.split("\n").size}A"
  puts str
end
