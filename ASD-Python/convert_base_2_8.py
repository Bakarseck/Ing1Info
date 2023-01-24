from Stack import Stack

def convert_base_2(number):
    s = Stack()
    while number != 0:
        s.Push(number % 2)
        number = number // 2
    
    size = s.Size()

    while size > 0:
        print(s.Pop(), end="")
        size -= 1

def convert_base_8(number):
    s = Stack()
    while number != 0:
        s.Push(number % 8)
        number = number // 8
    
    size = s.Size()

    while size > 0:
        print(s.Pop(), end="")
        size -= 1
