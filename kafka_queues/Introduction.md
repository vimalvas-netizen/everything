*taken on* 11 Oct, 2022 | 02:37 PM

---

## Introduction


### What is kafka-queue?

Kafka helps us with event streaming. *Event streaming is the practice of capturing data in real-time from event sources like databases, sensors, mobile devices, cloud services, and software applications in the form of streams of events; storing these event streams durably for later retrieval; manipulating, processing, and reacting to the event streams in real-time as well as retrospectively; and routing the event streams to different destination technologies as needed. Event streaming thus ensures a continuous flow and interpretation of data so that the right information is at the right place, at the right time.*


Hence, Kafka  can be used to do following things : 

1.  To **publish** (write) and **subscribe to** (read) streams of events, including continuous import/export of your data from other systems.
2.  To **store** streams of events durably and reliably for as long as you want.
3.  To **process** streams of events as they occur or retrospectively.


An **event** records the fact that "something happened" in the world or in your business. 

EventDescription has following fields :

```js
const EventDescription = {
	"WhatHappened" : "",
	"WhyHappens" : "",
	"AffectsOn" : {
		
	}
}
```


See problem it solves : 
![[Pasted image 20221012161608.png]]


























---
## Links
---

1. 