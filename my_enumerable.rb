module MyEnumerable
  def all?
    res = true
    each { |x| res = false unless yield x }
    res
  end

  def any?
    res = false
    each { |x| res = true if yield x }
    res
  end

  def filter
    arr = []
    each { |x| arr.push(x) if yield x }
    arr
  end
end
