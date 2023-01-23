class Stack():

    # The constructor of the class
    def __init__(self):
        self.l = []

    # The method Push that append an element at the end
    def Push(self, n):
        self.l.append(n)

    # The method pop that remove the last element
    def Pop(self):
        if len(self.l) != 0:
            return self.l.pop()
    
    # The method Peek that return the last element
    def Peek(self):
        if len(self.l) != 0:
            return self.l[-1]
    
    # The method size that return the size of the the stack
    def Size(self):
        return len(self.l)
    
    # The method isEmpty that verify if the stack is empty or not
    def isEmpty(self):
        if len(self.l) == 0:
            return True
        return False
