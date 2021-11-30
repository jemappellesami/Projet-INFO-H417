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
for i in list_range: #on cherche la valeur maximum qui determinera la longeur de notre histogram
    if int(i[1])>max:
        max = int(i[1])

nb_bin = 50 # nombre de bins qu'on souhaite avoir
width = int(1001/nb_bin) # largeur de nos bins
histo = [0 for i in range(1001+width-1)] # un histograme qui est initialisé comme une liste de 0 de la longueur du équivalent à la valeur maximal dans le ficher csv
for space in list_range:
    for j in range((int(space[0])-1)//width, math.ceil(int(space[1])/width)):
        for i in range(width):
            histo[j*width+i]+=1   #rempli l'histogram


# Affichage de l'histograme
plt.figure()
plt.plot(histo)
plt.title('histogram with widths of size : ' + str(width))
plt.show()

# Début del'equi-dept histograme :
# Malheureusement, cela s'est soldé par un écheque, je n'ai pas réussi à créer l'equi-dept histograme 
height = 400

equi_hist = [0 for i in range(1001)]

for i in range(len(equi_hist)):
    for j in range(1001):
        pass

def tri_selection(s):
    n = len(s)
    for i in range(n-1):
        k = i
        for j in range(i+1,n):
            if s[j][0] < s[k][0]:
                k = j
        s[k],s[i] = s[i],s[k]
    return s
tri_selection(list_range)


def build_equidept(l, h):
    lengt = len(l)
    equi_hist = [0 for i in range(len(l))]
    previous = 0
    for i in range(lengt):
        for j in range(l[i][0]-1, l[i][1]):
            equi_hist[j]+=1
        








