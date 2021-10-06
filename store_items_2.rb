# class Apple
# def initialize(input_color, input_size, input_price)
#   @color = input_color
#   @size = input_size
#   @price = input_price
# end
# end

# apple1 = Apple.new("red", "large", 2.00)
# apple2 = Apple.new("greeen", "xtra large", 4.00)
# apple3 = Apple.new("yellow", "small", 1.00)

# p apple1
# p apple2
# p apple3

class Apple
    attr_reader :color, :size, :price
    attr_writer :color, :size, :price
  
    def initialize(input_options)
    @color = input_options[:color] 
    @size = input_options[:size] 
    @price = input_options[:price] 
  end

  def print_info
    p "#{@color} apple that is #{@size} for #{@price}."
  end
end

  apple1 = Apple.new(color: "red", size: "large", price: 2.00)
  apple2 = Apple.new(color: "greeen", size: "xtra large", price: 4.00)
  apple3 = Apple.new(color:"yellow", size:"small", price:1.00)
  
  p apple1.print_info
  p apple2.print_info
  p apple3.print_info
  
  
  