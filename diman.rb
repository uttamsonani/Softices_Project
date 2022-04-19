# frozen_string_literal: true
class Dimansion
  def str
    puts "Enter image dimansion"
    @l = gets.chomp.to_i

    puts 'Enter how many images you have'
    @n = gets.chomp.to_i

    @hash_arr = []
    i = 0
    loop do
      i += 1
      puts 'Enter Height'
      @heihgt = gets.chomp.to_i

      puts 'Enter Width'
      @width = gets.chomp.to_i

      hewi = { heihgt: @heihgt, width: @width }
      @hash_arr.push(hewi)

      break if i == @n
    end
  end

  def display
    @hash_arr.each do |image|
      x = image[:heihgt]
      y = image[:width]
      if @l >= x && @l >= y
        puts 'Image not valid'
      elsif x == y
        puts 'Perfect'
      elsif @l <= x && @l <= y
        puts 'Crop and accept'
      else
        puts 'Image not valid'
      end
    end
  end
end

obj = Dimansion.new
obj.str
obj.display