f=open("test.txt")
while line = f.gets
  print line
end
f.close

f=open("test.txt")
f.each {|line| print line}
f.close
