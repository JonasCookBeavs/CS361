class Person  
    def initialize(name)
            @name = name
    end

    def say_name
        puts("My name is "+@name)
    end
end

class AntiPerson < Person
    def say_name
        puts("My name is NOT "+@name)
    end
end

person1 = Person.new("James")
person2 = Person.new("Ethan")
anti1   = AntiPerson.new("Jabungus")

person1.say_name()
person2.say_name()
anti1.say_name()