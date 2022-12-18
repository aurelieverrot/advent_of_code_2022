file = File.open("Day03/input3.txt")
data = file.readlines.map(&:chomp)
file.close

items = []
priority_list = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
priority_sum = 0

### part 1
data.each do |line|
  line_cut = (line.size / 2)
  compartments = [line[0...line_cut].split(''), line[line_cut..-1].split('')]

  items << (compartments[0] & compartments[1]).first

  items
end

items.each do |letter|
  priority_sum += priority_list.index(letter) + 1
end
# puts priority_sum


### part 2
new_items = []
new_priority_sum = 0

data.each_slice(3).to_a.inject(0) do |sum,group|
  elf1,elf2,elf3 = group.map { |elf| elf.split("") }
  shared = (elf1 & elf2 & elf3).first
  new_items << shared
end

new_items.each do |letter|
  new_priority_sum += priority_list.index(letter) + 1
end
# puts new_priority_sum