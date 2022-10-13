from csv_reader import readCSVFile

dataFile = 'data_core.csv'
beginning_id = 5715

f_write = open('file_response.txt', 'a')

integerAr = ['display_in_report']

fields, rows,_1, _2 = readCSVFile(dataFile)

placeholderQuery = "UPDATE public.ncf_question_master SET "
valueQuery = "( "

i = 0

for j in range(0, len(rows)):
    append = ""
    new_string = f" WHERE id = {beginning_id};"
    beginning_id += 1
    for i in range(0, len(fields)):
        if i == len(fields) - 1:
            append += "{0}='{1}' ".format(fields[i], rows[j][i])
        else:
            if fields[i] in integerAr:
                append += "{0}={1},".format(fields[i], rows[j][i])
            else:
                append += "{0}='{1}',".format(fields[i], rows[j][i])

    final_query_string = placeholderQuery+append+new_string
    f_write.write("\n{0}".format(final_query_string))

    # new_string = f" WHERE id = {beginning_id};"
    # beginning_id += 1
    # final_query_string = final_string+new_string
    # print(final_query_string)
    # final_query_string.format(rows[j][0], rows[j][1], rows[j][2], rows[j][3], rows[j][4], rows[j][5], rows[j][6], rows[j][7], rows[j][8], rows[j][9],rows[j][10], rows[j][11])
    # f_write.write("\n{0}".format(final_query_string))


# print(final_string)
