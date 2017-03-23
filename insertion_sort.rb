class InsertionSort
  def initialize(arr)
    @arr = arr
  end

  def sort
    size = @arr.size
    1.step(size-1, 1) do |i|
      (i-1).downto(0) do |j|
        if @arr[i] < @arr[j]
          temp = @arr[i]
          @arr[i] = @arr[j]
          @arr[j] = temp
        end
        i = j
      end
    end
    @arr
  end
end

p InsertionSort.new([100,-12,3,5,1,2,7,-23,34]).sort