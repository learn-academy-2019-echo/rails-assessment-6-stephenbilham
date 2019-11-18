# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'

def hello_you (language)
    if language == "es"
        return 'Hola Mundo'
    end
    if language == "de"
        return 'Hallo Welt'
    end
        return "Hello World"
end

p hello_you("es")
p hello_you("de")
p hello_you("f2")
# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'
def assign_grade(score)
    if(score < 0 || score > 100)
        return "Please enter a number between 0 and 100"
    end
    if(score > 90)
        return "A"
    end
    if(score > 80)
        return "B"
    end
    if(score > 70)
        return "C"
    end
    if(score > 60)
        return "D"
    end
    return "F"
end

p assign_grade(91)
p assign_grade(-4)
p assign_grade(63)

# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.



# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'

def pluarlizer (num, noun) 
    if (num === 1) 
        return num.to_s + " " + noun
    end 
    if (noun.downcase === "sheep")
        return num.to_s + " sheep"
    end 
    if (noun.downcase === "child")
    return num.to_s + " children"
    end
    if (noun.downcase === "fish")
        return num.to_s + " fish"
    end
    return num.to_s + " " + noun + "s"
end

p pluarlizer(4, "sheep")
p pluarlizer(20, "fish")
p pluarlizer(1, "gorilla")
p pluarlizer(3, "child")


# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.
