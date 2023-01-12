# import pyautogui as pg
# import time
#
# time.sleep(5)
#
# for i in range(100):
#     pg.write("Tur jala, zayob qildin")
#     pg.press("enter")


class Stack:
    def __init__(self):
        self.items = []

    def push(self, item):
        self.items.append(item)

    def pop(self):
        return self.items.pop()

    def peek(self):
        if not self.is_empty():
            return self.items[-1]

    def is_empty(self):
        return len(self.items) == 0

    def get_stack(self):
        return self.items


s = Stack()


def is_balanced(text, lsym, rsym):
    for i in text:
        if i == lsym:
            s.push(i)
        elif i == rsym:
            if s.is_empty():
                return False
            s.pop()
    return s.is_empty()
