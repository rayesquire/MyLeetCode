def find_median_sorted_arrays(nums1, nums2)
  array = nil
  if nums1.first() >= nums2.last()
    if (nums1.length + nums2.length) % 2 == 0
      return (nums1.first() + nums2.last()) / 2.0
    else
      return nums1.length > nums2.length ? nums1[((nums1.length - nums2.length) / 2) + 1] : nums2[((nums2.length - nums1.length) / 2) + 1]
    end
  elsif nums2.first() >= nums1.last()
    if (nums1.length + nums2.length) % 2 == 0
      return (nums2.first() + nums1.last()) / 2.0
    else
      return nums2.length > nums1.length ? nums2[((nums2.length - nums1.length) / 2) + 1] : nums1[((nums1.length - nums2.length) / 2) + 1]
    end
  end

  1..nums1.length
end

nums1 = [1, 2, 3]
nums2 = [4, 5, 5]
puts find_median_sorted_arrays(nums1, nums2)