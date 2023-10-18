require 'pry'
require './lib/node'

class LinkedList
    attr_reader :array
    def initialize()
        @array = []
    end

    def head
        @array[0]
    end

    def append(data_input)
        new_node = Node.new(data_input)
        if count > 0
            @array[count-1].set_next_node(new_node)
        end
        @array.append(new_node)
    end

    def count
        @array.length
    end

    def to_string
        string = ""
        @array.each do |node|
            string = string + " " + node.data
        end
        string.lstrip
    end

    def prepend(data_input)
        new_node = Node.new(data_input)
        new_node.set_next_node(@array[0])
        @array.unshift(new_node)
    end

    def insert(index, data_input)
        new_node = Node.new(data_input)
        @array.insert(index, new_node)
        @array[index-1].set_next_node(@array[index])
        @array[index].set_next_node(@array[index+1])
    end

    def find(index, count)
        finalized = ""
        for x in 1..count do
            finalized = finalized + " " + @array[(index + x)].data
        end
        binding.pry
        finalized.lstrip
    end
end