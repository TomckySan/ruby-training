prof_hash = {:name => 'taro', :old => 17, :sex => 'male'}
p prof_hash.keys
p prof_hash.values
p prof_hash.to_a

prof_array = [:name, 'hanako', :old, 15, :sex, 'female']
p Hash[*prof_array]

prof_arrays = [[:name, 'hanako'], [:old, 15], [:sex, 'female']]
p Hash[*prof_arrays.flatten]

prof_key_array = [:name, :old, :sex]
prof_val_array = ['ichiro', 30, 'male']
p Hash[*[prof_key_array,prof_val_array].transpose.flatten]

prof_hash.each {|key,val| puts "key:#{key}, value:#{val}."}
prof_hash.each_key {|key| puts "key is #{key}."}
prof_hash.each_value {|val| puts "value is #{val}."}
