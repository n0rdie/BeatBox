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
        @array.append new_node
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
end