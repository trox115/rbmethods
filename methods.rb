module Enumerable
  def my_each
    i = 0
    until self[i]==nil
      yield(self[i])
      i += 1
    end
  end

  def my_each_with_index
    i=0
    until self[i]==nil
        yield(self[i],i)
        i+=1
    end
end

end

myarray = [0, 1, 3, 10, 5]
#myarray.each{ |x| puts x }
myarray.my_each { |x| puts x }

#myarray.each_with_index{|x, i| puts i.to_s+" "+x.to_s}
myarray.my_each_with_index{|x,i| puts i.to_s+" "+x.to_s}