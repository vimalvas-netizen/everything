# importing csv module
import csv


def readCSVFile(filename=None):
    # initializing the titles and rows list
    fields = []
    rows = []
    npos_id = -1
    pos_id = -1
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
    # print('Field names are:' + ', '.join(field for field in fields)

    for i, field in enumerate(fields):
        if npos_id != -1 and pos_id != -1:
            break

        if field == 'npos_id':
            npos_id = i
        elif field == 'pos_id':
            pos_id = i


    return [fields, rows, npos_id, pos_id]

