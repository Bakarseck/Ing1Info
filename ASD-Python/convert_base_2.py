from Stack import Stack

def convert_base_2(n):
    s = Stack()
    while n != 0:
        r = n % 2
        s.Push(r)
        n = n // 2
    
    size = s.Size()

    while size > 0:
        print(s.Peek(), end="")
        s.Pop()
        size -= 1

convert_base_2(10)
