import math
originalhistos = []
with open('histos.txt') as f:
    for lines in f.readlines():
        originalhistos.append(lines[:-1])

filterd_histo = []
for i in range(len(originalhistos)//2):
    histo = originalhistos[i*2].split(",")
    for j in range(len(histo)):
        histo[j] = int(histo[j])
    width = int(originalhistos[i*2+1])
    filterd_histo.append([histo,width])
print(filterd_histo)

if filterd_histo[0][1]>filterd_histo[1][1]:
    smallest = 1
    biggest = 0
else:
    smallest = 0
    biggest = 1

len1 = filterd_histo[0][1]*len(filterd_histo[0][0])
len2 = filterd_histo[1][1]*len(filterd_histo[1][0])

if len1>len2:
    join_count = [0 for i in range(len(filterd_histo[0][0]))]
else:
    join_count = [0 for i in range(len(filterd_histo[1][0]))]

for i in range(len(filterd_histo[smallest][0])):
    beg = i*filterd_histo[smallest][1]//filterd_histo[biggest][1]
    end = math.ceil((i+1)*filterd_histo[smallest][1]/filterd_histo[biggest][1])
