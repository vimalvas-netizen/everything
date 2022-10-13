import requests
from api_data import FileData
from logger import log
import datetime

def makePostRequest(filedata:FileData):
    print(filedata.getUrl(), filedata.getRequestBody(), filedata.getHeaders())
    r = requests.post(filedata.getUrl(), json=filedata.getRequestBody(), headers=filedata.getHeaders())
    log(f'logs_{datetime.date.today()}.txt', r.text, 'Hitting Azure API ', r.elapsed.total_seconds())