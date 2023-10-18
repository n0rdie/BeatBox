require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
    it "prepend" do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        expect(list.to_string).to eq("dop plop suu")
        expect(list.count).to eq(3)
    end
end

#list.insert(1, "woo")

#list.to_string
#=> "dop woo plop suu"