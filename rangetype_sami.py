import csv
import matplotlib.pyplot as plt
import math

CSV_FILE = "random_ranges.csv"
list_range = []
"""
Permet d'ouvrir un ficher cvs et de le stocker dans une liste passer en paramètre.
"""
def open_folder_csv(file, list):
    with open(file, "r") as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        for line in csv_reader:
            list.append(line)

open_folder_csv(CSV_FILE,list_range)
list_range.pop(0) # retire le from et to (première ligne du fichier csv)

max = 0
minn = 9999
for i in list_range: #on cherche la valeur maximum qui determinera la longeur de notre histogram
    if int(i[1])>max:
        max = int(i[1])
    if int(i[0])<minn:
        minn = int(i[0])
print("min :", minn)
print("max :", max)

nb_bin = 4 # nombre de bins qu'on souhaite avoir
width = int((max-minn)/nb_bin) # largeur de nos bins


print("width :", width)


histo = [0 for i in range(nb_bin+1)]
for space in list_range:
    for j in range((int(space[0]))//width, math.ceil(int(space[1])/width)):
        histo[j]+=1

print(histo)

for bincount in range(nb_bin+1) :
    print("From {} to {} : {}".format(minn + bincount*width, min(max, minn + (bincount+1)*width), histo[bincount]))