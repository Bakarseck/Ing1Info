class Stack():

    def __init__(self):
        self.l = []

    def Push(self, n):
        self.l.append(n)

    def Pop(self):
        return self.l.pop()
    
    def Peek(self):
        return self.l[-1]
    
    def Size(self):
        return len(self.l)
    
    def isEmpty(self):
        if len(self.l) == 0:
            return True
        return False
    

        
        
    

s = Stack()
s.Push(2)
s.Push(3)
s.Push(4)
s.Push(7)
s.Push(6)
s.Pop()
s.Pop()
s.Pop()
s.Pop()
s.Pop()
print(s.Size())
print(s.isEmpty())