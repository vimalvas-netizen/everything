from csv_reader import readCSVFile

file = open("parent_id_fix_query.txt", "a")

template_id = '70'
target = 'target.csv'
source = 'source.csv'
queryPlaceholder = "UPDATE public.ncf_question_master SET parent_id = {0} WHERE id = {1} AND template_id = {2};"
parent_list = []


s_t_map = {}
csvDataOne = readCSVFile(source)
field_one, rows_one, id_index_one, parent_id_index_one = csvDataOne


print(rows_one)

csvDataTwo = readCSVFile(target)
field_two, rows_two, id_index_two, parent_id_index_two = csvDataTwo


print(rows_two, id_index_two)



#1. Map the source_ids with the target_ids
#2. Iterate over the source CSV to build queries using the same map

if(len(rows_one) == len(rows_two)):
    for i, row in enumerate(rows_one):
        s_t_map[rows_one[i][id_index_one]] = rows_two[i][id_index_two]
        print(rows_two[i][id_index_two])

# Now we have a map
for row in rows_one:
    if row[parent_id_index_one] != 'NULL':
        # print(s_t_map[row[id_index_one]])
        id = s_t_map[row[id_index_one]]
        parent_id = s_t_map[row[parent_id_index_one]]
        file.write("\n\n {0}".format(queryPlaceholder.format(parent_id, id, template_id)))



# The above code is working fine and can be used to fix parent_ids of duplicate entries in db.


