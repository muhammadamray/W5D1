class MaxIntSet
  attr_reader :store
  def initialize(max)
    @max = max 
    @store = Array.new(@max)
  end

  def insert(num)
    if is_valid?(num)
      @store[num] = true
    else 
      raise 'Out of bounds'
    end
  end

  def remove(num)
    @store.delete_at(num)
  end

  def include?(num)
    @store[num]
  end

  private

  def is_valid?(num)
    return true if num < @max && num > 0
  end

  def validate!(num)
  end
end

class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def num_buckets
    @store.length
  end

  def resize!
  end

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end
end