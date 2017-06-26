# class MergeSort
#   def ms(arr)
#     # break recursion
#     return arr if arr.length <=1
#
#     # split + merge
#     m = arr.length / 2
#     a, b = ms(arr[0...m]), ms(arr[m..-1])
#     require 'pry' ; binding.pry
#     # merge
#     rv = []
#     while [a, b].none?(&:empty?) do
#       rv << (a[0] < b[0] ? a.shift : b.shift)
#     end
#
#     # one of a/b is empty
#     rv.concat(a).concat(b)
#   end
# end
#
# m = MergeSort.new
# p m.ms([3,2,5,9,7,8,5,6,1])


def merge_sort(lst)
  if lst.length <= 1
    lst
  else
    mid = (lst.length / 2).floor
    left = merge_sort(lst[0..mid - 1])
    right = merge_sort(lst[mid..lst.length])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

p merge_sort([3, 2, 5, 9, 7, 8, 5, 6, 1])
