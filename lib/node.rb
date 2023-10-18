require 'pry'

class Node
    attr_reader :data, :next_node

    def initialize(data_input)
        @data = data_input
        @next_node = nil
    end

    def set_next_node(input_node)
        @next_node = input_node
    end
end