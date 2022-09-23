class MyList
  include MyEnumerable

  def initialize
      @list = [1, 2, 3, 4]
  end

  def each
    for list in @list do
      yield list
    end
  end
end

list = MyList.new(1, 2, 3, 4)
