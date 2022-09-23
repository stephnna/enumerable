require_relative 'my_enumerable'

class MyList
  def initialize(*enumerable)
    @list = enumerable
  end

  include MyEnumerable

  def each
    @list.each { |e| yield e if block_given? }
  end
end

# Test #all?
list = MyList.new(1, 2, 3, 4)
list.all? { |e| e < 5 }
# => true
list.all? { |e| e > 5 }
# => false

# # Test #any?
list.any? { |e| e == 2 }
# => true
list.any? { |e| e == 5 }
# => false

# # Test #filter
list.filter(&:even?)
# => [2, 4]
