from csv_reader import readCSVFile

textFile = open("insert_queries.txt", "a")


file = 'snm.csv'
fileTwo = 'spp_t_q.csv'

csvDataOne = readCSVFile(file)
field_one, rows_one, npos_id, pos_id = csvDataOne


csvDataTwo = readCSVFile(fileTwo)
fields_two, rows_two, ye, wo = csvDataTwo

spp_npp_mappings = {}

for row in rows_one:
    spp_npp_mappings[row[pos_id]] = row[npos_id]


insert_string =  "INSERT INTO public.ncf_question_template_mappings(question_id, template_id) VALUES({0}, {1});"

count = 0
for row in rows_two:
    count += 1
    spp_id = row[0]
    npp_id = spp_npp_mappings[spp_id]
    ques_id = row[1]
    textFile.write("\n\n {0}".format(insert_string.format(ques_id, npp_id)))


print("{} Entries Exported Successfully.".format(count))