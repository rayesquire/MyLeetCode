class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

def add_two_numbers(l1, l2)
    a = get_value_from_list(l1)
    b = get_value_from_list(l2)
    value = a + b
    list_node = ListNode.new(value % 10)
    last_node = list_node
    value = value / 10
    until value == 0
        node = value % 10
        value = value / 10
        last_node.next = ListNode.new(node)
        last_node = last_node.next
    end
    list_node
end

def get_value_from_list(list)
    sum = 0
    mul = 1
    until list == nil
        sum = sum + list.val * mul
        mul = mul * 10
        list = list.next
    end
    sum
end