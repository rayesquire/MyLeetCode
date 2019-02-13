def length_of_longest_substring(s)
    start = 0
    max = 0
    hash = Hash.new
    i = 0
    while i < s.length
        if hash.include?(s[i])
            max = [i - start, max].max
            index_to_clear = hash[s[i]]
            start = index_to_clear + 1
            hash.delete_if do |key, value| 
                value <= index_to_clear
            end
        end
        hash.store(s[i], i)
        i += 1
        if i == s.length
            max = [i - start, max].max
        end
    end
    max
end
puts length_of_longest_substring("abcabcbb")