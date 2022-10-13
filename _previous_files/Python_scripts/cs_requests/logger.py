import datetime

def log(filename='newFile.txt', message='Random message', event='random event', timetaken=''):
    x = datetime.datetime.now()
    append = '-' * 25
    new_message = f"{append}\n{x} :: {event}\nResponse recieved : {message}\nTime taken : {timetaken}\n{append} \n\n\n";
    f = open(filename, "a")
    f.write(new_message)
    f.close()


