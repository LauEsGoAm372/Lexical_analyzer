class Animal(object):
    makes_noise:bool = False
    
    def make_noise(self: "Animal") -> object:
        if (self.makes_noise):
            print(self.sound())
            
    def sound(self: "Animal") -> str:
        return "???"
    
class Cow(Animal):
    def __init__(self: "Cow"):
        self.makes_noise = True
        
    def sound(self: "Cow") -> str:
        return "moo"
        
c:Animal = None
c = Cow()
c.make_noise() # Prints "moo"
