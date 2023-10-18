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
    
    it "next_node empty" do
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

'Part 3'''''''''''''''''''''''''''''''''''''''''''''''''
RSpec.describe LinkedList do
    it "multi-node data" do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")
        expect(list.head.next_node.data).to eq("deep")
        expect(list.count).to eq(2)
        expect(list.to_string).to eq("doop deep")
    end
end