def sum_it_up(a, b)

  a.each_index.map do |i|
    a[i] = a[i] * b[i]
  end

  a.reduce(:+)

end

sum_it_up([1, 2, 3], [3, 4, 7])

