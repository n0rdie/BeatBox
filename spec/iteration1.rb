'Part 1'''''''''''''''''''''''''''''''''''''''''''''''''
require "./lib/node"
require "pry"
#=> true

RSpec.describe Node do
    xit "has data" do
        node = Node.new("plop")
        expect(node.data).to eq("plop")
        #=> "plop".
    end

    xit "has next node"do
        node = Node.new("plop")
        expect(node.next_node).to eq(nil)
        #=> nil
    end
end



'Part 2'''''''''''''''''''''''''''''''''''''''''''''''''
require "./lib/linked_list"
#=> true

RSpec.describe LinkedList do
    xit "can initalize" do
        list = LinkedList.new
        expect(list.head).to eq(nil)
    end

    xit "can add data" do
        list = LinkedList.new
        list.append("doop")
        expect(list.head.data).to eq("doop")
    end
    
    xit "next_node empty" do
        list = LinkedList.new
        list.append("doop")
        expect(list.head.next_node).to eq(nil)
    end
   

    xit "list count" do
        list = LinkedList.new
        list.append("doop")
        expect(list.count).to eq(1)
    end

    xit "list to string" do
        list = LinkedList.new
        list.append("doop")
        expect(list.to_string).to eq("doop")
    end
end

'Part 3''''''''''''''''''''''''''''''''''''''''''''''''''
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