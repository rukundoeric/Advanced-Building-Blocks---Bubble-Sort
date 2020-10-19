def bubble_sort(array)
  return array if array.empty?

  (0...array.length).each do |_index|
    (1...array.length).each do |y|
      array[y - 1], array[y] = array[y], array[y - 1] if array[y - 1] > array[y]
    end
  end
  array
end
