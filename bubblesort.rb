def bubble_sort(array)
  return array if array.empty?

  (0...array.length).each do |_index|
    (1...array.length).each do |y|
      array[y - 1], array[y] = array[y], array[y - 1] if array[y - 1] > array[y]
    end
  end
  array
end

def bubble_sort_by(array)
  array.each do |_item|
    (1...array.length).each do |i|
      array[i - 1], array[i] = array[i], array[i - 1] if yield(array[i - 1], array[i]).positive?
    end
  end
  array
end

bubble_sort_by(%w[apple hello hey not hahhs]) do |left, right|
  left.length - right.length
end
