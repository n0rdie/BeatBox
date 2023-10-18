require 'pry'
require './lib/node'
require './lib/linked_list'

class BeatBox
    attr_reader :list
    def initialize()
        @list = LinkedList.new()
    end

    def count
        @list.count
    end

    def append(long_str)
        long_str.split.each do |short_str|
            list.append(short_str)
        end
    end
end