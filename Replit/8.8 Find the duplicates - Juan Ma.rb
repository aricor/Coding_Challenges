def duplicates(arr1, arr2)
    h1 = Hash.new(0)
    res = []
    arr1.each do |i|
      h1[i] += 1
    end
    arr2.each do |i|
      h1[i] -= 1
      res << i if h1[i] == -1
    end
    res.sort
  end

  p duplicates([203, 204, 205, 206, 207, 208, 203, 204, 205, 206], [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 204, 205, 206])
# => [204, 205, 206]