module Enumerable
  def my_each
    i = 0
    while i < size
      yield(self[i])
      i += 1
    end
  end
end

myarray = [0, 1, 3, 10, 5]

myarray.my_each { |x| puts x }
