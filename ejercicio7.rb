class Product
    attr_reader :name, *:sizes
  def initialize(name, *sizes)
    @name = name
    @sizes = sizes.map(&:to_i)
  end
  def metodofile(catalogo)
    file = File.open('catalogo2.txt', 'a')
    file.puts "#{name}, #{sizes[0]}, #{sizes[1]}, #{sizes[2]}"
    file.close

  end
end

data = []
file = File.open('catalogo.txt', 'r')
data = file.readlines.map(&:chomp)
file.close
productos = []
data.each do |prod|
   ls = prod.split(', ')
   productos << Product.new(*ls)
 end


productos.each do |line|
  line.metodofile(line)
end
