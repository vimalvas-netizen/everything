from csv_reader import readCSVFile

textFile = open("update_queries.txt", "a")


file = 'snm.csv'
fileTwo = 'spp_t_q.csv'
fileThree =  'sfg_nfg_question_mappings.csv'

csvDataOne = readCSVFile(file)
field_one, rows_one, npos_id, pos_id = csvDataOne


csvDataTwo = readCSVFile(fileTwo)
fields_two, rows_two, ye, wo = csvDataTwo


csvDataThree = readCSVFile(fileThree)
fields_three, rows_three, yeTwo, woTwo = csvDataThree

spp_npp_mappings = {}
spp_npp_mappings_ques = {}

for row in rows_one:
    spp_npp_mappings[row[pos_id]] = row[npos_id]


for row in rows_three:
    spp_npp_mappings_ques[row[0]] = row[1]


insert_string = "UPDATE public.ncf_question_template_mappings SET question_id = {0} WHERE question_id = {1} AND template_id = {2};"

count = 0
for row in rows_two:
    count += 1
    spp_id = row[0]
    npp_id = spp_npp_mappings[spp_id]
    ques_id = row[1]
    final_ques_id = spp_npp_mappings_ques[ques_id]
    textFile.write("\n\n {0}".format(insert_string.format(final_ques_id, ques_id, npp_id)))


print("{} Entries Exported Successfully.".format(count))