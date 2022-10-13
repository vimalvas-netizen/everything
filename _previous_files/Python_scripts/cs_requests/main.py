from MakeRequest import makePostRequest
from api_data import FileData

# URL to send request....
url = 'https://api-gateway-cs.azure-api.net/messages/put'

# Request headers...
headers = {
    'Ocp-Apim-Subscription-Key': '60232ea529144f26904db6c897d5293e',
    'Ocp-Apim-Trace' : 'true',
    'timestamp' : '1657013382110',
    'signature' : 'qUf+Q+GMaIEID+TIlhGgbfMLjwqlnVftN22qwQkMzS8=',
    'Content-Type' : 'application/json',
    'Accept': 'application/json',
    'Accept-Language' : ''
}

# Request body having maximum response as it can be expected.
data = {
  "source": "facebook",
  "channel": "web",
  "prefferedLang": "hin",
  "state": "Uttar Pradesh",
  "DateTime" : "2022/06/09  04:58:52 PM",
  "questionAnswer": [
    { "questionId": 1, "answer": "A, B, C, D" },
    { "questionId": 2, "answer": "A, B, C, D" },
    { "questionId": 3, "answer": "A, B, C, D" },
    { "questionId": 4, "answer": "A, B, C, D" },
    { "questionId": 5, "answer": "A, B, C, D" },
    { "questionId": 6, "answer": "A, B, C, D" },
    { "questionId": 7, "answer": "A, B, C, D" },
    { "questionId": 8, "answer": "A, B, C, D" },
    { "questionId": 9, "answer": "A, B, C, D" },
    { "questionId": 10, "answer": "A, B, C, D" },
    {
        "questionId" : 11, "answer" : "wBqDtenk2U6uzfOBR89KrJ0IeAfwHawex9ZKJN1S0jRfUdN5lCBLXM2P3OaOgLfdfbFzNPUoK7cFyATjHdroE195nNA3j2EZftDRodTLrTc6cfN0umFYrJo6KW30Cg9sa9JQF7xGFGGJzDr5IZ0j65SE9ffNQlykH2VrIJmYlqGiTphvXPQXB5gRzVgTWm2FKQ6vZcGwNBXdQHFiqfxuQOs8qMgUedSSrPUpg5D7DulFtLk9eQvsFsd7CfHaIPXS54vcSLnmI5LUGkcGu8NmWm8FntvyOaGrTnhs8hMWX997lbZzNHyECL0noAo7ypOhLyMG4UxCvf4llG0pqAiatsoj81anvgQlA4bEwpaZ4BqCrbjJUKCBR0IGh1VlmXn2IKvfIsKSL6XYqELtGAwKZlEvcg2fGzWmPUdaaLPIMvSbWeatMtcb8UXr8wGH6w6bgqXGpDdeMEnGLdW6KNXWaMFvDulzd5KoKFho6pMPpOcRUQgdVRwfWEL7RPsncsc57aqVR9ctAK0bB05ROi5Ssf1bjxqkdS5TXHAAwvoT1CULftHZ3jiN05PLj8NMT9dq0D8EQQbzHuHNnbeMOmZL4Zzmxjn4AuuagSkeShp0aPklPHLmV7eZ2fvrjsBGmlIVLatmHEReIvnwuBtdUf80X9UiKdpD59JlZFbqramIQSktoB9lPFXn2XibgeVtPypaEhpcpla967hz7Sdm1YDPtHebDMlxanzTRMUwLLiXG4G2lk3CAsWx4jzkQ4bo8JwCsND0DCO29eaasyJKuCqjKv6bdxOLWql6nsyYjjDbUViM2zP4l6IiUCRnXxng4QzfqTYRoCBSPcn5bmH6yYJV9W4D5PgO3QfYk7scrQNRqWlh9Z5GB1Ru7Frsu1DGY3LNgtVKemSNNFBd6rHJoq8Rxfrf8W5b7slpoqlD5EnXnLWn5h32Orhm4ETo2aXWmeVhxV3i4IQn2QZHdIjv1PtcverxAlegJvtSEW4ytGJHJckHUj5psJ5ZmezPyyKY7HcWTFUB4AFVbPPMhRsJb5s1qH37vDIyDq03dhuQeiZFNtjX8J8xVL3mt0txAM7tTu6zuUpINr2GH7psB8Fwa5wjSsejB2GwYlGiqkUVnJoYB9wgmRnwHsqCXGOYndImmtf5P6GtMZLhezUaDh36FV9GCd1eFYRd6mj38NPuIZE9NOvihODFFDMj0UuqhvSRAZrIl0Sz53UU7hwji3Vst535FSRhOiK7R7ypM2EYItUNeSumOZlantgAk7vC77D4zX9UeS87hIvOAxeAUmXjcuVIv7NGsbSLKhwPkb6vSKyjLFHeoV255HztSMYHHr1FAEbq4YRu6g4LoTiXR8PwBvqNBLAz7Kph5YP9yrGubpPpOpvf6SyJJG4DACmCRpIjIt3MmoGIqY6IkD0Gg0EzLjSef6EVstlsVt1CGkqdTgRwMIw08p3HGBovasiX90DVHmpx4QIZ5Weo9Hri79nGLcK8TFkrmFegdrSHLnhRoji2gpJrpVF0weZH9P1JzmJL5LgpAwM4t9j7bXw9QYNwqOpH9j00fTcKXeFkpdlrwCqmRx997IMxfKqITOqeHGRYQ9ABiA6Z5EHrkv7D4AYZJ4Ydzcig2YIPNc4GO7DWpvQvd5V2MvCFNDhXsyJ48UIkhzlzmvQH6eSEXlY9wGxV9U2sQuSDQLYKfRQKhZqP8INC22jQGteOWpWj7z8nvtaIV6P751S0XrabOroFNDETRGwRD3X3lSOUVpdbYNwjTSKSjjJBmWGNzqjFyuZ1mXqhqY0lFGgOeqOwD6R9uVSPWYYnKrf0pjesjFrHk4UzgA2NtN6DLvzw41U3UGOdAvfq0wqjIGCO8u8LhG2luWOVMnKsQMRjwCfSdwqeAZEEosytDvCigquCRg7GH6zPVvgEYcPLX0Bgp2MLu2O5MYEt8BqrYaKbENrDpfgykaxFqlXrTJkfFsXiltcs3hC0fA71nsOKxO8GlHxPCCn7nxhd"
    }]
}


fileData = FileData(url, data, headers)

def main():
    r = makePostRequest(fileData)


for i in range(0, 2000):
    main()
