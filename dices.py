# Visualize the results of rolling two dice.
import matplotlib.pyplot as plt
from random import randint

results = {}
for i in range(10000):
    dice1 = randint(1, 6)
    dice2 = randint(1, 6)
    result = dice1 + dice2
    if result in results:
        results[result] += 1
    else:
        results[result] = 1

x = [] # Set of dice1 and dice2 values
y = [] # Number of times the dice1 and dice2 values were rolled

for key, value in results.items():
    x.append(key)
    y.append(value)

# Label each point on the graph
for i in range(len(x)):
    plt.annotate(y[i], (x[i], y[i]))

plt.scatter(x, y, s=10)
plt.show()

