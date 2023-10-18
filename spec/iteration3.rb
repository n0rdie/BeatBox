require "./lib/linked_list"
require "./lib/node"
require "./lib/beat_box"

RSpec.describe BeatBox do
    it "append" do
        bb = BeatBox.new
        bb.append("deep doo ditt")
        expect(bb.list.to_string).to eq("deep doo ditt")
        expect(bb.count).to eq(3)
    end
    it "plays" do
        bb = BeatBox.new
        bb.append("deep doo ditt")
        bb.append("woo hoo shu")
        expect(bb.plays).to eq("plays the sounds deep doo ditt woo hoo shu")
    end
end