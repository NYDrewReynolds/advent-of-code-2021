file = File.read('./solutions/day_1_input.txt')
data = file.lines.map(&:to_i)

# Part 1 - How many measurements are larger than the previous measurement?
puts data.each_cons(2).count { |a, b| b > a }

# Part 2 - Consider sums of a three-measurement sliding window. How many sums are larger than the previous sum?
puts data.each_cons(3).map(&:sum).each_cons(2).count { |a, b| b > a }