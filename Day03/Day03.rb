file = File.open("Day03/input3.txt")
# file = File.open("Day03/small_input.txt")
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
  # compartments[0].each_char do |letter|
  #   items << letter if compartments[1].include?(letter)
  # end

  items
end

items.each do |letter|
  priority_sum += priority_list.index(letter) + 1
end
puts priority_sum
