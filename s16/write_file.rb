if File.exist?("s16/files")
  File.open("s16/files/firstFile.txt", "w") do |file|
    file.puts "Time: #{Time.now}"
    file.write "No line break here! "
    file.puts "Great!"
    file.print "Attention: "
    file.puts 'Test'
  end
else
  puts "There is no valid route."
end
