file = open("./parentIdQueries.txt", "a")

def parentIdQueries(init=0):
    with open('./parentIdMid.txt', 'r') as fp:
        for line in fp:
            if(str.isdigit(line[0])):
                line_list = line.split(':')
                left = line_list[0].strip()
                if(str.isnumeric(left)):
                    left = init + int(left) - 1
                right = line_list[1].strip()
                if(str.isnumeric(right)):
                    right = init + int(right) - 1

                query2 = "UPDATE table SET parent_id = {0} WHERE id = {1} \n\n".format(right, left)
                file.write(query2)


parentIdQueries(3212)


