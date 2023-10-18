require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
    xit "prepend" do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        expect(list.to_string).to eq("dop plop suu")
        expect(list.count).to eq(3)
    end

    xit "insert" do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        list.insert(1, "woo")
        expect(list.to_string).to eq("dop woo plop suu")
    end

    xit "find" do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        list.insert(1, "woo")
        # "dop woo plop suu"
        expect(list.find(1,2)).to eq("woo plop")
    end

    xit "includes" do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        list.insert(1, "woo")
        # "dop woo plop suu"
        expect(list.includes?("dop")).to eq(true)
        expect(list.includes?("nope")).to eq(false)
    end
end