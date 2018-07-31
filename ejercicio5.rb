
class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
       nuevo_hash = { 1 =>'-----',
                      2 =>'.----',
                      3 =>'..---',
                      4 =>'....-',
                      5 =>'.....',
                      6 =>'-....',
                      7 =>'--...',
                      8 =>'---..',
                      9 =>'----.'}
        return nuevo_hash[number]
  end

  def to_morse
    generate_hash(@number)
  end
end

m = Morseable.new(9)
puts m.to_morse
