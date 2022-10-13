class FileData:
    def __init__(self, url, jsonRequest={},headers={}):
        self.url = url
        self.requestBody = jsonRequest
        self.headers = headers

    def setUrl(self, changedUrl):
        self.url = changedUrl
        return changedUrl

    def getUrl(self):
        return self.url

    def getRequestBody(self):
        return self.requestBody

    def setRequestBody(self, changedRequest):
        self.requestBody = changedRequest
        return changedRequest

    def getHeaders(self):
        return self.headers

    def setHeaders(self, changedHeaders):
        self.headers = changedHeaders
        return changedHeaders