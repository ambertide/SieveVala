import math

target = 1000
integers_to_target = []

for i in range(2, target):
	integers_to_target.append(i)

for i in range(2, math.ceil(math.sqrt(target))):
	for j in range(2, math.floor(target/i)):
		integers_to_target[(i * j) - 2] = 0

for i in range(0, (target - 2)):
	if integers_to_target[i] != 0:
		print(integers_to_target[i])
