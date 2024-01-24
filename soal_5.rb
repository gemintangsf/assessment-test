class Dog
    def speak
        "Woof!"
    end

    def make_animal_speak
        cat = "\"#{Cat.new.speak}\""
        duck = "\"#{Duck.new.speak}\""
        dog = "\"#{speak}\""
        puts "#{dog}, #{cat}, #{duck}"
    end
end

class Cat
    def speak
        "Meow!"
    end
end

class Duck
    def speak
        "Quack!"
    end
end

dog = Dog.new
puts dog.make_animal_speak