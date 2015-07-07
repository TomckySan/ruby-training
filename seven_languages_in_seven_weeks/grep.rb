keyword = gets.chomp
puts keyword
f=open("test.txt")
counter = 0
f.each { |line|
  counter += 1
  puts line.chomp + ":" + counter.to_s if line =~ /#{keyword}/
}
f.close
