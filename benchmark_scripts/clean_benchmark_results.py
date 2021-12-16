import os
os.chdir("/home/seb/Documents/Polytech/MA1/INFO-H417/Projet-INFO-H417/benchmark_scripts")

f = open("../benchmark_results/join.txt", "r")
content = f.read()

output_string = ""
average = 0
incr = 0
output_string += ("RESULTS FOR JOIN\n")
for line in content.splitlines() :
    if("Nested" in line) :

        line_split = line.split(" ")

        rows_field_counter = 0
        rows_number_comp = []
        for field in line_split :
            if field[:5] == "rows=" :
                rows_field_counter += 1
                rows_number_comp.append(int(field[5:]))
            if rows_field_counter == 2 :
                estim = rows_number_comp[0]
                real = rows_number_comp[1]
                if(real != 0) :
                    output_string += ("Comparison : {}\n".format(estim/real))
                    if estim/real > 1:
                        average += (real/estim)*100
                    else:
                        average += (estim/real)*100
                    incr += 1
                else :
                    output_string += ("Comparison : {}/0\n".format(estim))
                rows_field_counter = 0
if incr>0:
    average /= incr
    output_string += ("\nPrecision : {}%\n".format(average))

average = 0
incr = 0       

            
output_string += ("\n\nRESULTS FOR OVERLAPS\n")
f = open("../benchmark_results/overlaps.txt", "r")
content = f.read()

for line in content.splitlines() :
    if("Seq" in line) :

        line_split = line.split(" ")

        rows_field_counter = 0
        rows_number_comp = []
        for field in line_split :
            if field[:5] == "rows=" :
                rows_field_counter += 1
                rows_number_comp.append(int(field[5:]))
            if rows_field_counter == 2 :
                estim = rows_number_comp[0]
                real = rows_number_comp[1]
                if(real != 0) :
                    output_string += ("Comparison : {}\n".format(estim/real))
                    if estim/real > 1:
                        average += (real/estim)*100
                    else:
                        average += (estim/real)*100
                    incr += 1
                else :
                    output_string += ("Comparison : {}/0\n".format(estim))
                rows_field_counter = 0

if incr>0:
    average /= incr
    output_string += ("\nPrecision : {}%\n".format(average))

average = 0
incr = 0

output_string += ("\n\nRESULTS FOR LEFTOF\n")

f = open("../benchmark_results/leftof.txt", "r")
content = f.read()

for line in content.splitlines() :
    if("Seq" in line) :

        line_split = line.split(" ")

        rows_field_counter = 0
        rows_number_comp = []
        for field in line_split :
            if field[:5] == "rows=" :
                rows_field_counter += 1
                rows_number_comp.append(int(field[5:]))
            if rows_field_counter == 2 :
                estim = rows_number_comp[0]
                real = rows_number_comp[1]
                if(real != 0) :
                    output_string += ("Comparison : {}\n".format(estim/real))
                    if estim/real > 1:
                        average += (real/estim)*100
                    else:
                        average += (estim/real)*100
                    incr += 1
                else :
                    output_string += ("Comparison : {}/0\n".format(estim))
                rows_field_counter = 0
if incr>0:
    average /= incr
    output_string += ("\nPrecision : {}%\n".format(average))


from datetime import date, datetime
now = datetime.now().strftime("%H_%M_%S_results.txt")

output_file = open(now, "w")
print(output_string)
output_file.write(output_string)
output_file.close() 

