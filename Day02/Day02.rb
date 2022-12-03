file = File.open("Day02/input2.txt")
data = file.readlines.map(&:chomp)
file.close

########## Part 1
wins_1 = {
  values: ["A Y", "C X", "B Z"],
  points: 6
}

draws_1 = {
  values: ["A X", "B Y", "C Z"],
  points: 3
}

shapes_1 = {
  "X": 1,
  "Y": 2,
  "Z": 3
}

my_points_1 = 0
data.each do |line|
  my_points_1 += shapes_1.fetch(line[2].to_sym)
  if wins_1[:values].include?(line)
    my_points_1 += wins_1[:points]
  elsif draws_1[:values].include?(line)
    my_points_1 += draws_1[:points]
  end
  my_points_1
end


########## Part 2
turn = {
  "X": 0, # loose
  "Y": 3, # draw
  "Z": 6  # win
}

wins_2 = {
  "A": 2, # rock is beaten by paper, 2 pts
  "B": 3, # paper is beaten by scissors, 3 pts
  "C": 1 # scissors is beaten by rock, 1 pt
}

loss_2 = {
  "A": 3, # scissors loses to rock
  "B": 1, # rock loses to paper
  "C": 2  # paper loses to scissors
}

draws_2 = {
  "A": 1,
  "B": 2,
  "C": 3
}

my_points_2 = 0
data.each do |line|
  my_points_2 += turn[line[2].to_sym]

  case line[2]
  when "Z"
    my_points_2 += wins_2[line[0].to_sym]
  when "Y"
    my_points_2 += draws_2[line[0].to_sym]
  when "X"
    my_points_2 += loss_2[line[0].to_sym]
  end
end
