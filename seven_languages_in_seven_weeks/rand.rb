puts 'please input 0~9 number...'
num     = gets.to_i
randnum = rand(10)
text    = "your number is #{num}. randnum is #{randnum}. "
if num > randnum then puts text + "your number is big." else puts text + "your number is small." end
