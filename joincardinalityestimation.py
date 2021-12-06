import math
from math import log, e
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


if filterd_histo[0][1]>filterd_histo[1][1]:
    smallest = 1
    biggest = 0
    option = 1
elif filterd_histo[0][1]<filterd_histo[1][1]:
    smallest = 0
    biggest = 1
    option = 1
else:
    smallest = 0
    biggest = 1
    option = 0

len1 = filterd_histo[0][1]*len(filterd_histo[0][0]) ## pour le moment on travail avec des list qui on une meme taille
len2 = filterd_histo[1][1]*len(filterd_histo[1][0])

join_count = 0

for i in range(len(filterd_histo[smallest][0])):
    beg = i*filterd_histo[smallest][1]//filterd_histo[biggest][1]
    end = (i+1)*filterd_histo[smallest][1]//filterd_histo[biggest][1]
    for j in range(beg, end+option):
        join_count += filterd_histo[smallest][0][i]*filterd_histo[biggest][0][j]

moyennes = []
for i in range(len(filterd_histo)):
    moy = 0
    for j in range(len(filterd_histo[i][0])):
        moy+=filterd_histo[i][0][j]
    moyennes.append(moy/len(filterd_histo[i][0]))

print(moyennes)
add_moyenne = 1
for i in moyennes:
    add_moyenne+=i
loge = log(add_moyenne)#/log(e)

print(round(join_count/loge))
