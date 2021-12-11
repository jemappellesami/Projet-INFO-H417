import csv
import matplotlib.pyplot as plt
import math

CSV_FILE = "random_ranges.csv"
CSV_FILE2 = "random_ranges2.csv"
list_range = []
list_range2 = []


"""
Permet d'ouvrir un ficher cvs et de le stocker dans une liste passer en paramètre.
"""
def open_folder_csv(file, list):
    with open(file, "r") as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        for line in csv_reader:
            list.append(line)

open_folder_csv(CSV_FILE,list_range)
open_folder_csv(CSV_FILE2, list_range2)
list_range.pop(0) # retire le from et to (première ligne du fichier csv)
list_range2.pop(0)

allListRanges = [list_range,list_range2]
result = []

for lrange in allListRanges:
    max = 0
    min = 9999
    for i in lrange: #on cherche la valeur maximum qui determinera la longeur de notre histogram
        if int(i[1])>max:
            max = int(i[1])
        if int(i[0])<min:
            min = int(i[0])
    print("min :", min)
    print("max :", max)

    nb_bin = 24 # nombre de bins qu'on souhaite avoir
    width = math.ceil(max/nb_bin) # largeur de nos bins
    print("width :", width)

    
    # histo = [0 for i in range(1001+width-1)] # un histograme qui est initialisé comme une liste de 0 de la longueur du équivalent à la valeur maximal dans le ficher csv
    histo = [0 for i in range(nb_bin)]
    for space in lrange:
        for j in range((int(space[0]))//width, math.ceil(int(space[1])/width)):
            histo[j]+=1
        #for j in range((int(space[0])-1)//width, math.ceil(int(space[1])/width)):
            # for i in range(width):
            #     histo[j*width+i]+=1   #rempli l'histogram
    print(histo)
    result.append(histo)
    result.append(width)

count =0
for elem in range(0, len(list_range)):
    for scd_elem in range(0, len(list_range2)):
        if list_range[elem][1] < list_range2[scd_elem][0] or list_range[elem][0] > list_range2[scd_elem][1]:
            pass
        else:
            count += 1        
print("The estimation value that the join cardinality has to tend to: " + str(count))


with open('histos.txt', 'w') as f:
    for i in result:
        if type(i) is int:
            f.write(str(i)+'\n')
        else:
            f.write(str(i)[1:-1]+'\n')


# Affichage de l'histograme
# plt.figure()
# plt.plot(histo)
# plt.title('histogram with widths of size : ' + str(width))
# plt.show()