def find_median_sorted_arrays(nums1, nums2)
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
    return end_nums2 - start_nums2 + 1 + end_nums1 - start_nums1 + 1
  elsif nums2[start_nums2] >= nums1[end_nums1]
    return 
  end
end

def get_medium(array, x, y)
  if (y - x) % 2 == 0
    return array[(y - x) / 2]
  else
    return (array[(y - x) / 2] + array[(y - x) / 2 + 1]) / 2
  end
end

def get_medium_from_two_array(nums1, start1, end1, nums2, start2, end2)
  if (end2 - start2 + 1 + end1 - start1 + 1) % 2 == 0
    x = (end2 - start2 + 1 + end1 - start1 + 1) / 2
    y = x + 1
    
  else
    index = (end2 - start2 + 1 + end1 - start1 + 1) / 2 + 1
    if index > end2 - start2 + 1
      return nums1[index - (end2 - start2 + 1) - 1 + start1]
    else
      return nums2[start2 + index - 1]
    end
  end
end

nums1 = [1, 18, 24]
nums2 = [2, 9, 12]
puts find_median_sorted_arrays(nums1, nums2)


