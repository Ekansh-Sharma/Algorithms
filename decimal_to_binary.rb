class DecimalToBinary
  def initialize(val)
    @val = val
  end

  def binary
    bin = ''
    loop do
      bin.prepend((@val%2).to_s)
      @val = @val/2
      break if @val == 0
    end
    bin
  end
end
puts DecimalToBinary.new(gets.chomp.to_i).binary