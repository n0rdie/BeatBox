pry(main)> require "./lib/linked_list"
#=> true

pry(main)> require "./lib/node"
#=> true

pry(main)> list = LinkedList.new
#=> #<LinkedList:0x000000010d670c88 @head=nil>

pry(main)> list.append("plop")

pry(main)> list.to_string
#=> "plop"

pry(main)> list.append("suu")

pry(main)> list.to_string
# "plop suu"

pry(main)> list.prepend("dop")

pry(main)> list.to_string
#=> "dop plop suu"

pry(main)> list.count
#=> 3

pry(main)> list.insert(1, "woo")

pry(main)> list.to_string
#=> "dop woo plop suu"