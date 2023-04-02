# your code here
class Stack

    def initialize(limit = nil)
        @stack = []
        @limit = limit
    end

    def push(value)
        if self.full?
            raise 'Stack Overflow'
        else @stack.push(value)
        end
    end

    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end

    def size
        @stack.length
    end

    def empty?
        @stack.length == 0
    end

    def full?
        @stack.length == @limit
    end

    def search (value)
        spot = @stack.rindex(value)
        if spot
            self.size - spot -1
        else -1
        end
    end
end