f = open("benchmark_results.txt", "r")
content = f.read()

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
                    print("Comparison : {}".format(estim/real))
                rows_field_counter = 0