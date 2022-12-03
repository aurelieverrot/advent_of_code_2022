file = File.open("Day02/input2.txt")
data = file.readlines.map(&:chomp)
file.close

wins = {
  values: ["A Y", "C X", "B Z"],
  points: 6
}

draws = {
  values: ["A X", "B Y", "C Z"],
  points: 3
}

shapes = {
  "X": 1,
  "Y": 2,
  "Z": 3
}
# Part 1
my_points = 0

data.each do |line|
  my_points += shapes.fetch(:"#{line[2]}")
  if wins[:values].include?(line)
    my_points += wins[:points]
  elsif draws[:values].include?(line)
    my_points += draws[:points]
  end
  my_points
end

