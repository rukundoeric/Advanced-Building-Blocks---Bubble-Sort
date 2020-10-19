def bubble_sort(array)
  return array if array.empty?

  (0...array.length).each do |_index|
    (1...array.length).each do |y|
      array[y - 1], array[y] = array[y], array[y - 1] if array[y - 1] > array[y]
    end
  end
  array
end

puts bubble_sort([34, 64, 56, 78, 245, 78, 35, 35, 55, 1, 3, 5, 2])

def bubble_sort_by(array)
  array.each do |_item|
    (1...array.length).each do |i|
      array[i - 1], array[i] = array[i], array[i - 1] if yield(array[i - 1], array[i]).positive?
    end
  end
  array
end

sorted_string = bubble_sort_by(%w[apple hello hey not hahhs]) do |left, right|
  left.length - right.length
end

puts sorted_string
