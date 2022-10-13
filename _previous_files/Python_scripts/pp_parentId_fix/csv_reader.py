# importing csv module
import csv


def readCSVFile(filename=None):
    # initializing the titles and rows list
    fields = []
    rows = []
    id_index = -1
    parent_id_index = -1
    # Main -  reading csv file (looping over it)
    with open(filename, 'r') as csvfile:
        # 1. creating a csv reader object
        csvreader = csv.reader(csvfile)
        # 2. extracting field names through first row
        fields = next(csvreader)
        # 3. extracting each data row one by one
        for row in csvreader:
            rows.append(row)

        # get total number of rows
        # print("Total no. of rows: %d" % (csvreader.line_num))

    # printing the field names
    # print('Field names are:' + ', '.join(field for field in fields))

    for i, field in enumerate(fields):
        if id_index != -1 and parent_id_index != -1:
            break

        if field == 'id':
            id_index = i
        elif field == 'parent_id':
            parent_id_index = i


    for i, field in enumerate(fields):
        if id_index != -1 and parent_id_index != -1:
            break

        if field == 'id':
            id_index = i
        elif field == 'parent_id':
            parent_id_index = i


    return [fields, rows, id_index, parent_id_index]

