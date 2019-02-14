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
  elsif nums1[start_nums1] >= nums2[end_nums2]
    return get_medium_from_two_array(nums2, start_nums2, end_nums2, nums1, start_nums1, end_nums1)
  elsif nums2[start_nums2] >= nums1[end_nums1]
    return get_medium_from_two_array(nums1, start_nums1, end_nums1, nums2, start_nums2, end_nums2)
  end
end

def get_medium(array, x, y)
  if (y + x) % 2 == 0
    return array[(y + x) / 2]
  else
    return (array[(y + x) / 2] + array[(y + x) / 2 + 1]) / 2.0
  end
end

def get_medium_from_two_array(nums1, start1, end1, nums2, start2, end2)
  if (end2 - start2 + end1 - start1) % 2 == 0
    x = (end2 - start2 + 1 + end1 - start1 + 1) / 2
    y = x + 1
    if x <= end1 - start1 + 1
      x = nums1[start1 + x - 1]
    else
      x = nums2[start2 + x - (end1 - start1 + 1) - 1]
    end
    if y <= end1 - start1 + 1
      y = nums1[start1 + y - 1]
    else
      y = nums2[start2 + y - (end1 - start1 + 1) - 1]
    end
    return (x + y) / 2.0
  else
    index = (end2 - start2 + 1 + end1 - start1 + 1) / 2 + 1
    if index <= end1 - start1 + 1
      return nums1[start1 + index - 1]
    else
      return nums2[index - (end1 - start1 + 1) - 1 + start2]
    end
  end
end

nums1 = [1, 3]
nums2 = [2, 4, 5]
puts find_median_sorted_arrays(nums1, nums2)


