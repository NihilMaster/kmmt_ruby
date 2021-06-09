name = %w(H I J K L)
# break
i=0
while i<name.length
  puts "#{i}. Nombre: #{name[i]}"
  i+=1
  if name[i]=="K"
    break
  end
end
puts

# next
name.each do |n|
  unless n!="K"
    next
  else
    puts "#{i}. Nombre: #{n}"
  end
end
puts
