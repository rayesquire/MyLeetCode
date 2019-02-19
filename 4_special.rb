def find_median_sorted_arrays(nums1, nums2)
  a, b = [nums1, nums2].sort_by(&:size)
  m, n = a.size, b.size
  after = (m + n - 1) / 2
  i = (0...m).bsearch { |i| after-i-1 < 0 || a[i] >= b[after-i-1] } || m
  puts "i:#{i}"
  nextfew = (a[i,2] + b[after-i,2]).sort
  puts nextfew
  (nextfew[0] + nextfew[1 - (m+n)%2]) / 2.0
end

nums1 = [2, 3, 6, 8]
nums2 = [1, 4, 5, 7, 9]
puts find_median_sorted_arrays(nums1, nums2)