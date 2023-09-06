# __init__포함 클래스 만들기
class FourCal :
    def __init__(self, num1, num2):
        self.num1 = num1
        self.num2 = num2

    def add(self):
        return self.num1 + self.num2

    def sub(self):
        return self.num1 - self.num2

    def mul(self):
        return self.num1 * self.num2

    def div(self):
        return self.num1 / self.num2

a = FourCal(10,20)
print(a.add())
print(a.sub())
print(a.mul())
print(a.div())

class MoreFourCal(FourCal):
    def div(self):
        if self.num2 == 0:
            return 0
        else:
            return self.num1 /self.num2