def length_of_longest_substring(s)
    if s.empty? 
        return 0
    elsif s.length == 1 
        return 1
    end
    max = 0
    s.length.times do |index|
        string = ''
        (index..s.length - 1).each do |i|
            if string.include?(s[i])
                break
            else 
                string += s[i]
            end
        end
        max = [max, string.length].max
    end
    max
end
puts length_of_longest_substring("abcabcbb")