# frozen_string_literal: true

puts(
  <<~EOS
    Sample string :
    a string that you "don't" have to escape
    This
    is a ....... multi-line
    heredoc string --------> example
EOS
)

class Celcius
  def initialize(temp)
    @temp = temp
  end

  def fernhit
    @temp * 1.8 + 32
  end
end

celcius = Celcius.new(54)
puts celcius.fernhit

people = [['Lebron', 'cool dude'], ['Bieber', 'jerk face']]
people.each do |first_name, description|
  puts "#{first_name} is a #{description}"
end

planets = { earth: [:luna], mars: %i[deimos phobos], jupiter: %i[callisto io europa] }
puts planets[:mars].join(',')

baseball_players = [[:babe_ruth, [2873, 714, 474]], [:barry_bonds, [2935, 762, 444]]]
puts baseball_players[0][1][1]

module HappyHappy
  def say
    'Good morning'
  end
end

module HappyHappy2
  def say2
    'good afternoon'
  end

  def say3
    'Good night'
  end
end

class Person
  include HappyHappy
end

class Alice
  include HappyHappy2
end

d = Person.new
puts d.say
f = Alice.new
puts f.say3
puts f.say2

module MathHelper
  def div(num)
    num * 2
  end
end

class Homework
  include MathHelper
end

g = Homework.new
puts g.div(4)

class Mammal
  def heartbeat?
    true
  end
end

class Dog < Mammal
end
dog = Dog.new
puts dog.heartbeat?

blockbusters = [['will smith', 'i am legend'], ['brad pitt', 'fight club'], ['frodo', 'the hobbit']]
puts Hash[blockbusters]

players = [%w[r kelly], %w[50 cent], %w[miley cyrus]]
ty = []
players.map do |_t, l|
  ty << l
end
puts ty.join(',')

numbers = [1, 2, 3, 4]
tot = 0
numbers.each do |j|
  tot += j
end
puts tot

nums = [1, 2, 3]
letters = %w[a b c]
re = []
nums.each do |k|
  letters.each do |y|
    re << [k, y]
  end
end
puts re

sports = {
  hockey: {
    benefits: %i[fun teamwork],
    costs: {
      financial: ['mad money'],
      physical: [:concussions]
    }
  }
}

puts sports[:hockey][:benefits][0]

movie = {
  'dude' => [],
  "where's" => '',
  'my' => {},
  'car' => Object.new
}
puts movie.keys.join(' ')

videos = { yoga: 'stretch it out' }
puts videos[:dumb_and_dumber] || "no one's home"

singers = {
  kesha: 'fun',
  pitbull: 'how is this dude famous?',
  missy_elliot: 'really smart'
}
puts singers.values_at(:kesha, :missy_elliot)

people = [['bob', 320], ['edgar', 152], ['maria', 125]]
puts Hash[people]

class Chair
  AGE = 'been around the block'
  def about
    "I'm old and I've #{AGE}"
  end
end

tea_cup = Chair.new
p tea_cup.about

class Calculator
  def add(x, y)
    x + y
  end
end

my_calculator = Calculator.new
puts my_calculator.send(:add, 3, 4)

module Machine
  class Crane
    def self.about
      'Equipment for hoisting'
    end
  end
end

module Bird
  class Crane
    def self.about
      'Long neck'
    end
  end
end

p Bird::Crane.about

nam1 = ['raju', 'shyam', 'babu bhaiya']
nam2 = %w[shyam tiwari totla]

c = (nam1 + nam2).uniq!

puts c

class Person
  def full_name(first_name, last_name)
    "#{first_name} #{last_name}"
  end
end

class HockeyPlayer < Person
end

player = HockeyPlayer.new
p player.full_name('joe', 'sakic')

def front(str)
  str[-1] << str[1...-1] << str[0]
end
puts front('raju')
