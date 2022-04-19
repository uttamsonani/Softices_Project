# frozen_string_literal: true

# @order  = {
#   2020 => {
#     1 => {
#       1 => [100, 30]
#     },
#     2 => {
#       10 => [101],
#       12 => [300,320,220]
#     },
#     3 => {
#       11 => [200,23,12],
#       13 => [400,234]
#     }
#   },
#   2021 => {
#     2 => {
#       23 => [43,234,123],
#       24 => [49,125,199,349]
#     },
#     3 => {
#       15 => [99,199,149],
#       16 => [499,99],
#       18 => [124,118]
#     }
#   }
# }
class Order
  def initialize
    @order = {}
  end

  puts '======================'
  puts 'Welcome to My Shop'
  puts '======================'
  puts '1 for creat new order'
  puts '2 for print day Details'
  puts '3 for print month details'
  puts 'Program will quit only when you type option Q or Quit.'

  def tot(val)
    # unless val.empty? || val == 0
    val = [] if val.nil?
    @count = val.count
    @total = val.sum
    @min = val.min
    @max = val.max
    @avg = val.sum / val.count
    # end
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
        puts 'Creat new order enter Date and amount'
        order_date = gets.chomp
        date, amount = order_date.split(' ')
        day, month, year = date.split('-')

        @order[year] = {} if @order[year].nil?
        @order[year][month] = {} if @order[year][month].nil?
        @order[year][month][day] = [] if @order[year][month][day].nil?
        @order[year][month][day] << amount.to_i

      when '2'
        puts 'Enter Order Date'
        date = gets.chomp
        day, month, year = date.split('-')
        day_det = @order[year][month][day] if @order[year] && @order[year][month] && @order[year][month][day]
        tot(day_det)

      when '3'
        puts 'Enter Month and Year(Ex.month year)'
        z = gets.chomp
        month, year = z.split(' ')
        month_det = @order[year][month].values.flatten if @order[year] && @order[year][month]
        tot(month_det)

      when 'Quit', 'quit', 'Q', 'q'
        puts 'Program close'
        break

      else
        puts 'Enter valid input'
      end
    end
  end
end

order = Order.new
order.get_input
