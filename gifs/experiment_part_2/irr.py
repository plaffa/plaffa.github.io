import numpy as np
from kupper_hafner import kupper_hafner

rater_A = [[44],[10],[5],[6],[7],[10],[1]]
rater_B = [[39],[9],[6],[5],[1],[9],[2]]

reliability = kupper_hafner(rater_A,rater_B)
print(reliability)
