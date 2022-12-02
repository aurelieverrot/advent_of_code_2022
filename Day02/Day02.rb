file = File.open("Day02/input2.txt")
data = file.readlines.map(&:chomp)
file.close


# example data
# A Y
# B Y
# B Z
# B Z
# B X
# B Z
# C Y

# A Rock     X   1
# B Paper    Y   2
# C Scissors Z   3

# paper wins rock
# rock wins scissors
# scissors wins paper
