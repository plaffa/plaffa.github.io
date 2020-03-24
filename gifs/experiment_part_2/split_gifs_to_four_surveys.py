import numpy as np

nums = [2,6,11,15,16,18,19,20,21,28,29,30,31,38,45,48,52,54,56,57,60,62,69,70,71,73,75,77,78,81,95,103,110,114,116,117,120,125,127,130,134,142,150,159,160,161,166,169,174,177,180,189]
list = []

for i in nums:
    list.append(f'https://plaffa.github.io/gifs/experiment_part_2/rgb/gt/video_{i}.gif')
for i in nums:
    list.append(f'https://plaffa.github.io/gifs/experiment_part_2/rgb/pred/video_{i}.gif')
for i in nums:
    list.append(f'https://plaffa.github.io/gifs/experiment_part_2/seg/gt/video_{i}.gif')
for i in nums:
    list.append(f'https://plaffa.github.io/gifs/experiment_part_2/seg/pred/video_{i}.gif')

np.random.shuffle(list)
np.random.shuffle(list)
np.random.shuffle(list)
np.random.shuffle(list)

i = 0
for str in list:
    print(i, str)
    i += 1

    if i == 52:
        print('\n')
        i = 0
