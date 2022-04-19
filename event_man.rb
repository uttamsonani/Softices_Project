# require 'csv'

# def clean_zipcode(zipcode)
#   if zipcode.nil?
#     '00000'
#   elsif zipcode.length < 5
#     zipcode.rjust(5, '0')
#   elsif zipcode.length > 5
#     zipcode[0..4]
#   else
#     zipcode
#   end
# end

# puts 'EventManager initialized.'

# contents = CSV.open(
#   'event_attendees.csv',
#   headers: true,
#   header_converters: :symbol
# )

# contents.each do |row|
#   name = row[:first_name]

#   zipcode = clean_zipcode(row[:zipcode])

#   puts "#{name} #{zipcode}"
# end

# BEGIN {
#     puts "Your program is runnig now"
# }
# END {
#     puts "And now your program is going to off thanks for being us"
# }

# def test 
#     puts "Enter your name"
#     yield gets.chomp.capitalize
#      puts "Enter your mail"
# end
 
# test { |i| puts "my name is #{i}" }


# Get only file ext from given array

# def get_extension(arr)
#     arr.map {|x| puts x.split(".").last }
# end
# get_extension(["project1.jpg", "project1.pdf", "project1.mp3"])

# evens = (1..10).each {|c| print c * 2}

# p = Proc.new {|x,y| puts "From PROC"}
# l = lambda{ |a,b,c,d| puts "From LAMBDA"}

# p.call(2,3,4,5,7)
# l.call(3,4,4,1)

# Diffrence between PROC and LAMBDA 
# PROC don't care about the argument or number of arguments passed to it
# LAMBDA strict on number of arguments

# x = 11
# until  x == -1
#     puts 100/x
#     x = x -1
# end


# class GetterSetter
#     attr_accessor :name, :email, :contact
#     def initialize(name,email,contact)
#         @name = name
#         @email = email
#         @contact = contact
#     end

#     # def name=(name)
#     #     @name = name
#     # end

#     # def email=(email)
#     #     @email = email
#     # end

#     # def contact=(contact)
#     #     @contact = contact
#     # end

#     def print_all
#         p "Name     : #{@name}"
#         p "Email    : #{@email}"
#         p "Contact  : #{@contact}"
#     end
# end

# obj = GetterSetter.new("raju", "raju@example.com", 144743)
# obj.name = gets.chomp
# obj.email = gets.chomp
# obj.contact = gets.chomp
# obj.print_all
