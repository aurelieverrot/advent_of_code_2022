file = File.open("Day01/input1.txt")
data = file.readlines.map(&:chomp)
file.close

start_calories = 0
current_elf = start_calories
stats = Hash.new
elf_number = 1

# part 1
data.each do |line|
  current_elf += line.to_i
  if line.empty?
    stats["elf#{elf_number}"] = current_elf
    current_elf = start_calories
    elf_number += 1
  end
  stats
end

# output part 1
puts stats.max_by { |key, value| value }

####################

# part 2
# output part 2
puts stats.values.sort.last(3).sum
