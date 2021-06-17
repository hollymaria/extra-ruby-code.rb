# extra-ruby-code.rb

# Accessing hash values

pets = Hash.new

pets["Nala"] = "cat"

puts pets["Nala"]

# Using the .each iterator to list the elements of an array

languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

languages.each { |element| puts element }

# Putting every element outside of the sub array, inside

s = [["Tomato sauce", "Cheddar"], ["Pepperoni", "Mozerella"], ["Peppers", "Jalepinos"]]

s.each { |sub_array| sub_array.each { |element| puts element }}

# Iterating over hashes

cocktail_matches = {
  "Manhattan" => "Vermouth",
  "Mimosa" => "Champagne",
  "Pornstar Martini" => "Vodka",
  "Pina Colada" => "Rum"
}
  
cocktail_matches.each do |style, liqour|
  puts "#{style}: #{liquor}"
end

# Multidimensional Arrays

my_array = [[1, 2, 3, 4, 5], ["Look!", " a multidimensional", "array!"], [false, true]]

# Iterating over a hash

online_orders = {
  "Gemma" => "Pioneer Headphones",
  "Joel" => "Apple Macbook pro",
  "Holly" => "iPhone 11",
  "Leo" => "Amazon Firestick",
  "Ken" => "Amazon echo"
}

online_orders.each do |person, orders| 
  puts orders
end

=begin
Next project will involve building a Histogram which is going to take a users input and build a hash onto their input
=end

# Creating the frequencies hash

puts "Enter your text here: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

# Iterating over the array

puts "Enter your text here: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each { |word| frequencies[word] += 1 }

# Using the .sort_by to sort the frequencies hash by wordcount and finally using .reverse to reverse the sorted frequencies array

puts "Enter your text here: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each { |word| frequencies[word] += 1 }

frequencies = frequencies.sort_by do |word, count|
  count
end

frequencies.reverse!

frequencies.each do |word, count|
  puts word + " " + count.to_s
end

# METHODS, BLOCKS and SORTING

# Using the def (define) method

def puts_1_to_10
  (1..10).each { |i| puts i }
end

puts_1_to_10


# Another example of using the define method, printing out a string

def greeting
puts "HELLO, BONJOUR, HOLA, GUTENTAG, HALLO, HOWDY, NAMASKAR, MERHABA"
end

# Calling an array

def array_of_10
  puts (1..10).to_a
end

array_of_10 # This line of code is calling the array

# Defining the greet method taking a parameter which is the name, returning a string greeting the user

# Then using the by_three method that take a single integer parameter and returns true if that number is evenly divisible by three and false if not

def greeter(name)
  return "Hello, #{name}!"
end

def by_three?(num)
  if num % 3 == 0
    return true
  else
    return false
  end
end
  
# Using code blocks 

# The block, {|i| puts i}, is passed the current
# array item each time it is evaluated. This block
# prints the item. 
[1, 2, 3, 4, 5].each { |i| puts i }

# This block prints the number 5 for each item.
# (It chooses to ignore the passed item, which is allowed.)
[1, 2, 3, 4, 5].each { |i| puts 5*i }


# Using the .sort! method to sort the values in my array

my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]


my_array.sort! # calling the array

puts my_array # puts array

# Using the .sort! method again to sort the values in my array, but using a string array instead of numbers

# library sorting code
albums = ["Kali Uchis", "Best Coast", "The Weeknd", "Banks", "Doja Cat"]


albums.sort! # calling the array to be sorted in alphabetical order

puts albums

# Using the combined comparison operator to compare album 1 and album 2

album_1 = "Kali Uchis"

album_2 = "Best Coast"

album_1 <=> album_2

# Adding code to sort albums in decsending order

albums = ["Kali Uchis", "Best Coast", "The Weeknd", "Banks", "Doja Cat"]

# To sort the albums in ascending order, in-place
albums.sort! { |firstAlbum, secondAlbum| firstAlbum <=> secondAlbum }

# Sorting the albums in descending order, in-place below
albums.sort! { |firstAlbum, secondAlbum| secondAlbum <=> firstAlbum }


# Using the arr (array) function to pass through the rev (reverse) boolean that defaults to false

def alphabetize(arr, rev = false)
end


# Adding the .sort! method to the arr, then adding another line of code using numbers array which calls the alphabetize method with the numbers array as the parameter

def alphabetize(arr, rev = false)
  arr.sort!
end

numbers = [3, 5, 1, 6]

puts alphabetize(numbers)

# Adding an if-else statement after the .sort method and saying that if the rev is true then call reverse! on arr otherwise use else to return arr

def alphabetize(arr, rev = false)
  arr.sort!
  if rev == true
    arr.reverse!
  else
  	arr
  end
end

numbers = [3, 5, 1, 6]

puts alphabetize(numbers)

# HASHES AND SYMBOLS

# Iterating over Hol and printing each value to the console using puts

 hol = { "First name" => "Holly",
  "Last name" => "Maria",
  "Age" => 25,
  "Nationality" => "British",
  "Nickname" => "Hol"
}

hol.each do |key, value|
  puts value
end






