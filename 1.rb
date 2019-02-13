def two_sum(nums, target)
    sol_array = []
    nums.each_with_index do |number, index|
        if sol_array.length > 0
            sol_array.each_with_index do |n, i|
                if n == number 
                    return [i, index]
                end
            end
        end
        sol_array.push(target - number)
    end
    []
end
array = [-3,4,3,90]
puts two_sum(array, 0)