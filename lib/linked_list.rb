require 'pry'
require './lib/node'

class linked_list
    attr_reader :array
    def initialize()
        @array = []
    end

    def head
        @array[0]
    end

    def append(data_input)
        new_node = Node.new(data_input)
        @array.append new_node
    end
end