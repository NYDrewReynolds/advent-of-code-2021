data = File.read('./solutions/day_2_input.txt').lines.map{ |d| d.delete("\n").split(' ') }

# Part 1 - Calculate the horizontal position and depth you would have after following the planned course. What do you get if you multiply your final horizontal position by your final depth?
horizontal_part_1 = 0
depth_part_1 = 0
data.each do |direction, value|
  val = value.to_i
  case direction
  when 'forward'
    horizontal_part_1 += val
  when 'up'
    depth_part_1 -= val
  when 'down'
    depth_part_1 += val
  end
end
puts horizontal_part_1 * depth_part_1

# Part 2 - In addition to horizontal position and depth, you'll also need to track a third value, aim, which also starts at 0. Using this new interpretation of the commands, calculate the horizontal position and depth you would have after following the planned course. What do you get if you multiply your final horizontal position by your final depth?
horizontal_part_2 = 0
depth_part_2 = 0
aim = 0
data.each do |direction, value|
  val = value.to_i
  case direction
  when 'forward'
    horizontal_part_2 += val
    depth_part_2 += (aim * val)
  when 'up'
    aim -= val
  when 'down'
    aim += val
  end
end
puts horizontal_part_2 * depth_part_2