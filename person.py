class Person:
    def __init__(self, name, age, occupation):
        self.name = name
        self.age = age
        self.occupation = occupation

    def greet(self):
        print(f"Hello,my name is {self.name} and i am {self.age} years old")
        print(f"I am working as a {self.occupation}")


class Main:
    def __init__(self):
        self.create_person()

    def create_person(self):
        name = input("What is your name?")
        age = input("How old are you?")
        occupation = input("What do you do for a living?")

        person = Person(name, age, occupation)
        self.show_person_info(person)

    def show_person_info(self, person):
        print(f"\nName: {person.name}")
        print(f"Age: {person.age}")
        print(f"Occupation: {person.occupation}")
        person.greet()

main = Main()
