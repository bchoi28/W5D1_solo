# Phase1 IntSet

# An ADT can be thought of as a high-level description of a structure 
# and an API (i.e., a specific set of methods). 

class MaxIntSet

    attr_reader :store, :size

    def initialize(max)
        @store = Array.new(max, false)
        @size = max
    end

    def insert(item)
        raise "number is out of bounds" if item > size - 1
        if store[item] == false
            store[item] = true
        else 
            raise "item already exists #{store}"
        end
        store
    end

    def remove(item)
        raise "number is out of bounds" if item > size - 1
        if store[item] == true
            store[item] = false
        else
            raise "item does not exist #{store}"
        end
        store
    end

    def include?(item)
        raise "number is out of bounds" if item > size - 1
        return true if store[item] == true
        false
    end

end

class IntSet

    attr_reader :store, :size

    def initialize
        @store = Array.new(20) {[]}
        @size = 20
    end

    def [](item)
        i = item % 20
        @store[i]
    end

    def include?(item)
        if self[item].include?(item)
            return true
        else
            return false
        end
    end

    def insert(item)
        if !self[item].include?(item)
            self[item] << item
        else
            raise "item already exists"
        end
        store
    end

    def remove(item)
        if self[item].include?(item)
            self[item].delete(item)
        else
            raise "item does not exist"
        end
        store
    end

end


class ResizingIntSet

    def initialize(n)
        @store = Array.new(2n) {Array.new}
        @size = size
    end

     def [](item)
        i = item % 
        @store[i]
    end

    def include?(item)
        if self[item].include?(item)
            return true
        else
            return false
        end
    end

    def insert(item)
        if !self[item].include?(item)
            self[item] << item
        else
            raise "item already exists"
        end
        store
    end

    def remove(item)
        if self[item].include?(item)
            self[item].delete(item)
        else
            raise "item does not exist"
        end
        store
    end


end
