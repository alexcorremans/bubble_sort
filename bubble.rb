def bubble_sort array
  last_index = array.length - 1 # index of the last element on the right to be compared
  # initializing some variables...
  swaps = 0
  no_swaps = false
  i = 0
  while no_swaps == false
    while i < last_index
      if (array[i] <=> array[i+1]) == 1
        array[i],array[i+1] = array[i+1],array[i]
        swaps += 1
      end
      i += 1
    end
    # if no swaps were done, quit the loop
    no_swaps = true if swaps == 0
    # reset values for next iteration...
    i = 0
    swaps = 0
    # no need to compare the n last elements after n iterations
    last_index -= 1
  end
  array
end
p bubble_sort([4,3,78,2,0,2])

def bubble_sort_by array
  last_index = array.length - 1 # index of the last element on the right to be compared
  # initializing some variables...
  swaps = 0
  no_swaps = false
  i = 0
  while no_swaps == false
    while i < last_index
      if yield(array[i], array[i+1]) > 0
        array[i],array[i+1] = array[i+1],array[i]
        swaps += 1
      end
      i += 1
    end
    # if no swaps were done, quit the loop
    no_swaps = true if swaps == 0
    # reset values for next iteration...
    i = 0
    swaps = 0
    # no need to compare the n last elements after n iterations
    last_index -= 1
  end
  array
end

sorted = bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end
p sorted
