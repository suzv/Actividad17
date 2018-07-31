
class Product
    attr_reader :name
  def initialize(name, *sizes)
    @name = name
    @sizes = sizes.map(&:to_i)
  end
  def average
    @sizes.inject(&:+) / @sizes.size

  end
end

products_list = []
data = []
file = File.open('catalogo.txt', 'r')
data = file.readlines
file.close
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)

end
#print products_list


products_list.each do |pro|
   puts "#{pro.name}: #{pro.average}"
 end



#  print products_list.map {|pro| pro.average}
# cosas = products_list.map {|pro| pro.average}
# print "#{products_list.name}: #{cosas[0]}"
#averages = products_list.map(&:average)
#print averages.inject(&:+) / averages.size
