arr1 = [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]

counter = 0
a = []
arr1.each do |val|
  a.push(val)
  counter += 1
  if counter % 4 === 0 then
    p a
    a = []
  end
end

p arr1.each_slice(4) {|arr| p arr}
