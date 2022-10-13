file1 = open("simpleFile.txt", "a")
file2 = open("parentIdMid.txt", "a")
type_options = [ "NULL", "section_head", "sub_section_head", "question_head", "question", "NULL"]
answer_type_options = [ "NULL", "manual", "auto", "NULL"]
max_words_options = ["NULL", "200", "300","400", "500"]
min_word_options = ["NULL", "1"]
level_options = ["1", "2", "3", "4", "5"]

template_id = '25'
role_area_id = '2'
display_in_report = '0'

# current_parent_id = -1
# previous_parent_id = -1
# parent_id_stack = []


def getOptions(option_list):
    print('-' * 45)
    for i, val in enumerate(option_list):
        print("{0} : {1}".format(i+1, val))

    print('-' * 45)


# previous_level = -1
# last_id = -1

id = 0
fields = []
con = 'yes'
while con != 'n':
    query1 = ""
    id = id + 1
    s_n = input('Sequence Number : ')
    fields.append(s_n)     # 0  s
    title = input('Title : ')
    fields.append(title)    #1   s
    guideline = input('Guideline : ')
    fields.append(guideline)   #2    s
    getOptions(level_options)
    level = level_options[int(input('level : '))-1]
    fields.append(level)     #3    i
    sort = input('sort : ')
    fields.append(sort)      #4   i
    getOptions(min_word_options)
    min_word = min_word_options[int(input('min_word : '))-1]
    fields.append(min_word)     #5   i
    getOptions(max_words_options)
    max_word = max_words_options[int(input('max_word : '))-1]
    fields.append(max_word)      #6   i
    getOptions(type_options)
    type = type_options[int(input('Type : '))-1]
    fields.append(type)       #7    s
    getOptions(answer_type_options)
    answer_type = answer_type_options[int(input('Answer Type : '))-1]
    fields.append(answer_type)       #8    s

    current_level = int(level)


    # Changing up the parent ids
    # if id == 1:
    #     current_parent_id = "NULL"
    #     previous_level = 1
    # elif current_level > previous_level:
    #     parent_id_stack.append(current_parent_id)
    #     current_parent_id = last_id
    # elif current_level < previous_level:
    #     current_parent_id = parent_id_stack.pop()

    display_in_report = '0'
    if answer_type == 'manual' or type == 'sub_section_head' or type == 'question_head':
        display_in_report = '1'

    query1 = "INSERT INTO public.ncf_question_master(sequence_number, title, guideline, level, sort, min_word, max_word, type, answer_type, role_area_id, template_id, display_in_report) VALUES ("

    for i, val in enumerate(fields):
        if val == "NULL" or val == "":
            query1 += "NULL"
        elif i in [3, 4, 5, 6]:
            query1 += str(int(val))
        else:
            query1 += "'{}'".format(val)

        query1 += ", "

    query1 += "{0}, {1}, {2});".format(role_area_id, template_id, display_in_report)

    file1.write("{} \n\n".format(query1));
    # file2.write("{0} : {1} \n\n".format(id,current_parent_id))

    fields.clear()


    # last_id = id;
    # previous_level = current_level
    con = input('Continue? : ')


file1.close()
file2.close()







