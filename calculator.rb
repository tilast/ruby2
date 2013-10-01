class Calculator
  attr_accessor :arr

  def initialize(*args)
    get(*args)
  end

  def clear()
    @arr.clear
  end

  def get(*args)
    @arr = []

    args.each { |item|
      if item.is_a? Array
        temp = item.flatten
        temp.each { |num|
          @arr << num.to_i
        }
      else
        @arr << item.to_i
      end
    }
  end

  def sum()
    @arr.inject(0) { |sum, x|
      sum += x
    }
  end

  def min()
    @arr.inject(0) { |sum, x|
      sum -= x
    }
  end

end