file = File.open("Day04/input4.txt")
data = file.readlines.map(&:chomp)
file.close

### part 1
sum = 0
data.each do |line|
  elf1, elf2 = line.split(",")
  elf1_ids = elf1.split("-").map(&:to_i)
  elf2_ids = elf2.split("-").map(&:to_i)

  if ((elf1_ids[0] >= elf2_ids[0]) & (elf1_ids[1] <= elf2_ids[1])) || ((elf2_ids[0] >= elf1_ids[0]) & (elf2_ids[1] <= elf1_ids[1]))
    sum += 1
  end
  sum
end
puts sum