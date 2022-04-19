20000 avg 3 numbers
def avg(a, b, c)
    return (a + b + c)/3
end
puts avg(10,10,20)
puts

# function for reverse arry 

# def reversal(array)
#     array.each_with_index.map do |value, index|
#         array[array.count-index-1]
#     end
# end

def forRev(array)
    arr = []
    arr << array.pop until array.empty?
    arr
end

puts forRev(['raju','jonty','shyam','babu'])
puts

# find common element from array 
def common(arr1,arr2)
  return arr1 & arr2    
end

# arr1 = [20,10,30,55,75]
# arr2 = [45,47,6,10,20]

arr1 = ['raju','shyam','babu','totla','tiwari']
arr2 = ['raju','totla','tiwari']

puts common(arr1,arr2)  
puts

# adding, subtracting, multiplying, and dividing 
def total(a,b)
    return a + b, a - b, a * b, a / b
end
puts total(10,10)
puts

# true for even and false for odd
def odEv(val)
    if val / 2 != 0
        return "false"
    else
        return "true"
    end
end

puts odEv(2)
puts

# number and string arry sorting
def sorArr(numSor)
    if numSor != ''
        return numSor.sort! {|x, y| x <=> y}
    else
        return numSor.sort
    end   
end
# puts sorArr([1, 200, 900, 300, 1000, 5])
puts sorArr(['a','c','b'])
puts

# sum of odd & even number
def count(number)
  coNum = 0
  coNum2 = 0
  number.each do |num|
    if num.even?
      coNum += 1
    else num.odd?
      coNum2 +=1
    end
  end
  # puts count
  puts "even: #{coNum}"
  puts "odd: #{coNum2}"
end
puts count([12,2,6,4,10,8])
puts

# get the character at the given index
def strCount(sen)
  puts ("original string : #{sen}")
  index1 = sen.chars[0]
  index2 = sen.chars[-1]

  puts ("The character at position 0 is #{index1}")
  puts ("The character at position -1 is #{index2}")
end
  
puts strCount('Raju Don')

# current full date and time
time1 = Time.new
puts "Current Time : " + time1.inspect
puts

# Datatypes - Characters
def lenCount(value)
  letters =  numbers = spaces =	special = 0
  value.split('').each do |c|
    if c.gsub(/[^0-9A-Za-z]/, '').empty?
      if c == ' '
        spaces += 1
      else 
        special+=1
      end
    else
      if c.gsub(/[0-9]/, '').empty?
        numbers +=1
      else
        letters +=1
      end
    end
  end 
  puts "letters : #{letters}"
  puts "number : #{numbers}"
  puts "special : #{special}"
  puts "spaces : #{spaces}"
end
puts lenCount('uttam201 $%')
puts


def comDiv(n1,n2,n3)
  count22 = 0
  i = n1
  i < n2
  for i in (n1..n2).to_a
    if i % n3 == 0
       count22 += 1
       puts i
    end
  end
  puts count22
end 
puts comDiv(2,10,3)


# convert inches in meter 

puts "Please enter inches:"
 inches = gets.to_i
 meter = inches / 39.37
 puts "#{meter.ceil(3)} meters"



=begin
  some important exercise
=end


 contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
 ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# this is to merg array of hash and only hash 
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts ["Joe Smith"][:addr] = contact_data[0][1]
contacts ["Joe Smith"][:number] = contact_data[0][2]

contacts ["Sally Johnson"][:email] = contact_data[1][0]
contacts ["Sally Johnson"][:addr] = contact_data[1][1]
contacts ["Sally Johnson"][:number] = contact_data[1][2]

puts contacts

# this way to get specify things
puts "joe smith #{contacts["Joe Smith"][:email]}"
puts "sally #{contacts["Sally Johnson"][:number]}"


# this is how to get argument one or more 
def frnd(greeting,*friend)
  friend.each do |i|
      puts "#{greeting},#{i}"
  end
end
frnd("what's up","raju","shyam","babu")

# Delete from array 
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
# arr.delete_if_start_with == 's'
arr.delete_if do|i|
    i.start_with?("s",'w')
end
puts arr


# data alorting 
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fild = [:email, :add, :number]

contacts.each do |k,v|
    fild.each do |i|
        v[i] = contact_data.shift
    end
end
puts contacts

# where we can work with multiple entries in the contacts hash
cd = [["joe@email.com", "123 Main st.", "555-123-4567"],
        ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
con = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

con.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = cd[idx].shift
  end
end
puts con

# find prime number
puts "Enter the number:"
num = gets.chomp.to_i
count = 0
    if (num == 0)
        puts "0 is not prime"
    else
        # 
        i = 2
        while(i < num)
            if (num % i == 0)
                count += 1
            end
            i += 1
        end
    end
	if count > 1
		puts "#{num} is not a prime number"
	else
		puts "#{num} is a prime number"
	end


# Fibonacci Algorithm
def febo (count)
  n1 = 0
  n2 = 1
  seq = [n1,n2]

  while count > 2
    n3 = n1 + n2
    seq.push(n3)

    n1 = n2
    n2 = n3
    count = count - 1
  end
    return seq
end
puts febo(8)


# find missing number or string between two array
def find_missing(array1, array2)
  missing_elements = []
  array1.each do |e|  
      unless array2.include? e
          missing_elements << e
      end
    end
  return missing_elements
end

array1 = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
array2 = [1, 2, 4, 5, 6, 7, 9]

puts find_missing(array1, array2)

# for grep element 
manly = ['batman', 'manbot', 'mace', 'tulip', 'nah man, nah']
puts manly.grep /man/

# Hash convert in hash array 
def group_by_owners(files)
  new_hash = {}
  files.each do |file_name, person|
    if new_hash[person]
      new_hash[person] << file_name
    else
      new_hash[person] = [file_name]
    end
  end
  new_hash
end

files = {
  'Input.txt' => 'Randy',
  'Code.py' => 'Stan',
  'Output.txt' => 'Randy'
}
puts group_by_owners(files)


# for get current time and date
require 'date'
current_time = DateTime.now
cdt = current_time.strftime "%d/%m/%Y %H:%M"
puts "Current Date and Time: "+cdt
