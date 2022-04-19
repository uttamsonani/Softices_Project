# frozen_string_literal: true

class Order
  def initialize
    @order = {}
    puts '======================'
    puts 'Welcome to My Shop'
    puts '======================'
    puts '1 for creat new order'
    puts '2 for print day Details'
    puts '3 for print month details'
    puts 'Program will quit only when you type option Q or Quit.'
  end

  def tot(val)
    val = [] if val.nil?
    @total = val.sum
    @min = val.min
    @count = val.count
    @avg = @total / @count
    @max = val.max
    output
  end

  def output
    puts "Today's Details"
    puts '-----------------'
    puts "Total Order  : #{@count}"
    puts "Total Amount : #{@total}"
    puts "Minimum Order: #{@min}"
    puts "Maximum Order: #{@max}"
    puts "Average Order: #{@avg}"
    puts '======================'
  end

  def get_input
    loop do
      puts 'Enter your number'
      choice = gets.chomp
      case choice

      when '1'
        order

      when '2'
        day_sum

      when '3'
        month_sum

      when 'Quit', 'quit', 'Q', 'q'
        puts 'Program close'
        break

      else
        puts 'Enter valid input'
      end
    end
  end

  def order
    puts 'Creat new order enter date and amount'
    order_date = gets.chomp
    date, amount = order_date.split(' ')
    day, month, year = date.split('-')

    @order[year] = {} if @order[year].nil?
    @order[year][month] = {} if @order[year][month].nil?
    @order[year][month][day] = [] if @order[year][month][day].nil?
    @order[year][month][day] << amount.to_i
  end

  def day_sum
    puts 'Enter Order Date'
    date = gets.chomp
    day, month, year = date.split('-')
    day_details = @order[year][month][day] if @order[year] && @order[year][month] && @order[year][month][day]

    tot(day_details)
  end

  def month_sum
    puts 'Enter month and year (month year)'
    month_det = gets.chomp
    month, year = month_det.split(' ')
    month_det = @order[year][month].values.flatten if @order[year] && @order[year][month]

    tot(month_det)
  end
end

order = Order.new
order.get_input
