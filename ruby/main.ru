sum = 0
st = Time.now
for index in 0...100000000
    sum = sum + index 
end

ed = Time.now - st

puts "=========================="
puts "ruby 테스트"
puts sum
puts ed