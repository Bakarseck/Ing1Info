class Node():

    def __init__(self, data):
        self.data = data
        self.next_node = None

    def getData(self):
        return self.data
    
    def getNext(self):
        return self.next_node
    
    def setData(self, value):
        self.value = value

    def setNext(self, next_node):
        self.next_node = next_node

