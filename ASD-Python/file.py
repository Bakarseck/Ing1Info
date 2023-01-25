class Queue:

    def __init__(self):
        self.l = []

    def enqueue(self, item):
        self.l.append(item)

    def dequeue(self):
        if len(self.l) != 0:
            return self.l.pop(0)

    def Size(self):
        return len(self.l)

    def isEmpty(self):
        return len(self.l) == 0
    
f = Queue()
f.enqueue(2)
f.enqueue(7)
f.enqueue(1)
f.enqueue(3)
print(f.dequeue())
print(f.dequeue())