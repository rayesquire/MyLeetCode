def find_median_sorted_arrays(nums1, nums2)
  if nums1.empty? 
    return get_medium(nums2, 0, nums2.length - 1)
  elsif nums2.empty?
    return get_medium(nums1, 0 ,nums1.length - 1)
  end
  start_nums1 = 0
  start_nums2 = 0
  end_nums1 = nums1.length - 1
  end_nums2 = nums2.length - 1
  until start_nums1 > end_nums1 || start_nums2 > end_nums2 || nums1[start_nums1] >= nums2[end_nums2] || nums2[start_nums2] >= nums1[end_nums1]
    if nums1[start_nums1] < nums2[start_nums2]
      start_nums1 += 1
    else
      start_nums2 += 1
    end
    if nums1[end_nums1] > nums2[end_nums2]
      end_nums1 -= 1
    else
      end_nums2 -= 1
    end
  end
  if start_nums1 > end_nums1
    return get_medium(nums2, start_nums2, end_nums2)
  elsif start_nums2 > end_nums2
    return get_medium(nums1, start_nums1, end_nums1)
  elsif nums1[start_nums1] >= nums2[end_nums2] || nums2[start_nums2] >= nums1[end_nums1]
    return get_medium_from_two_array(nums1[start_nums1..end_nums1], nums2[start_nums2..end_nums2])
  end
end

def get_medium(array, x, y)
  if (y + x) % 2 == 0
    return array[(y + x) / 2]
  else
    i = (x + y) / 2
    return (array[i] + array[i+1]) / 2.0
  end
end

def get_medium_from_two_array(nums1, nums2)
  array = (nums1 + nums2).sort
  return get_medium(array, 0, array.length - 1)
end

nums1 = [1, 1]
nums2 = [1, 2]
puts find_median_sorted_arrays(nums1, nums2)