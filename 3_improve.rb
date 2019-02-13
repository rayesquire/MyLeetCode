def length_of_longest_substring(s)
    start = 0
    max = 0
    hash = Hash.new
    i = 0
    while i < s.length
        if hash.include?(s[i])
            start = [hash[s[i]] + 1, start].max
        end
        max = [i - start + 1, max].max
        hash.store(s[i], i)
        i += 1
    end
    max
end
puts length_of_longest_substring("abba")