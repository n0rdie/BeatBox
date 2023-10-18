'Part 1'''''''''''''''''''''''''''''''''''''''''''''''''
require "./lib/node"
require "pry"
#=> true

RSpec.describe Node do
    it "has data" do
        node = Node.new("plop")
        expect(node.data).to eq("plop")
        #=> "plop".
    end

    it "has next node"do
        node = Node.new("plop")
        expect(node.next_node).to eq(nil)
        #=> nil
    end
end



'Part 2''''''''''''''''''''''''''''''''''''''''''''''''''
require "./lib/linked_list"
#=> true

list = LinkedList.new
#=> #<LinkedList:0x000000010d670c88 @head=nil>

list.head
#=> nil

list.append("doop")

list
#=> #<LinkedList:0x0000000110e383a0 @head=#<Node:0x0000000110e382d8 @data="doop", @next_node=nil>>

list.head.data
#=> "doop"

list.head.next_node
#=> nil

list.count
#=> 1

list.to_string
#=> "doop"
'''

'''
list = LinkedList.new
#=> #<LinkedList:0x000000010d670c88 @head=nil>

list.head
#=> nil

list.append("doop")
#=> "doop"

list
#=> #<LinkedList:0x0000000110e383a0 @head=#<Node:0x0000000110e382d8 @data="doop", @next_node=nil>>

list.head
#=> #<Node:0x0000000110e382d8 @data="doop", @next_node=nil>

list.head.next_node
#=> nil

list.append("deep")

list
#=> #<LinkedList:0x00000001116213a0 @head=#<Node:0x00000001116212b0 @data="doop" @next_node=#<Node:0x00000001116210f8 @data="deep", @next_node=nil>>>

list.head.next_node
#=> #<Node:0x00000001116210f8 @data="deep", @next_node=nil>

list.count
#=> 2

list.to_string
#=> "doop deep"
'''