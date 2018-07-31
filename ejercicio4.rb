propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
#Instanciar un nuevo perro a partir de las propiedades contenidas en el hash.
#Luego generar un método llamado ladrar que, mediante interpolación,
#imprima "Beethoven está ladrando!"

class Dog
  attr_accessor :name, :breed, :color
  def initialize(name = 'Beethoven', breed = 'San Bernardo', color = 'Café')
    @name = name
    @breed = breed
    @color = color
  end
  def ladrar
    puts "#{@name} esta ladrando!"
  end
end


new_dog = Dog.new('choli', 'poodle', 'negro')
puts new_dog.name

puts Dog.new.ladrar
