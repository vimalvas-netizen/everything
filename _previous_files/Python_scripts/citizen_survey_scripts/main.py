import json

# Opening JSON file
f = open('states.json')
fr = open('queries_state.txt', "a")
query = "INSERT INTO cs_state_master(state_id, state_name, state_code) VALUES "
values = "({0}, '{1}', '{2}'),\n"
# returns JSON object as
# a dictionary
data = json.load(f)
print(data)

data_sorted = sorted(data, key=lambda i: i["state_id"])

for obj in data_sorted:
    state_id = obj["state_id"]
    state_name = obj["state_name"]
    state_code = obj["state_code"]
    fr.write(values.format(state_id, state_name, state_code))


# Closing file
fr.close()
f.close()