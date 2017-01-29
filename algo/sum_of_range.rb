# Complete the method called sum_of_range, which will accept an array containing
# two numbers, and return the sum of all of the whole numbers within the range of those
# numbers, inclusive.

def sum_of_range(array)
  i = 0
  if array[0] > array [1]
    i = array[0]
    sum = 0
    while i >= array[1] do
      sum = sum + i
      i -= 1
    end
    return sum
  else
    i = array[0]
    sum = 0
    while i <= array[1] do
      sum = sum + i
      i += 1
    end
    return sum
  end 
end

# Driver code - don't touch anything below this line.
puts "TESTING sum_of_range..."
puts

result = sum_of_range([1, 4])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end

result = sum_of_range([4, 1])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end