require_relative './node.rb'

class Stack
    def initialize
        @first = nil
        @size = 0
        @sum = 0
    end
    
    # O(1) 
    def push(number)
        @sum =@sum+number
        @size=@size+1
        @first = Node.new(number, @first)
        @max = @first if @max.nil?
        @max = Node.new(number, @max) if number >= self.max
    end

    # O(1)
    def pop
        @size=@size-1
        @max = @max.next_node if @max.value == @first.value
        item = @first
        @sum =@sum- item.value
        @first = @first.next_node
        item.value
    end
    
    # O(1)
    def mean
        @sum.to_f/@size
    end

    # O(1)
    def max
        @max.value if !@max.nil?
    end

end


stack = Stack.new
stack.push(2)
stack.push(4)
stack.push(6)
stack.push(12)
stack.pop

p stack.max
p stack.mean