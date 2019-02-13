def two_sum(nums, target)
    hash = Hash.new
    nums.each_with_index do |number, index|
        if hash.include?(target - number)
            return [hash[target - number] ,index]
        end
        hash.store(number, index)
    end
    []
end
array = [-3,4,3,90]
puts two_sum(array, 0)