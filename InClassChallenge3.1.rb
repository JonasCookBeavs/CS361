class Node
    attr_accessor :value, :left_child, :right_child
    def initialize(value)
        @value = value
        @left_child = nil
        @right_child = nil
    end
end
  
class BST
    attr_accessor :parent_node

    def initialize
        @parent_node = nil
    end

    def initial_search(value)
        @parent_node = create_node(@parent_node, value)
    end

    def has_node(value)
        search(@parent_node, value)
    end

    def ordered
        print_ordered_tree(@parent_node)
        puts
    end

    private

    def create_node(node, value)
        return Node.new(value) if node.nil?
        if value < node.value
            node.left_child = create_node(node.left_child, value)
        elsif value > node.value
            node.right_child = create_node(node.right_child, value)
        end
        node
    end

    def search(node, value)
        return false if node.nil?
        return true if node.value == value
        if value < node.value
            search(node.left_child, value)
        else
            search(node.right_child, value)
        end
    end

    def print_ordered_tree(node)
        return if node.nil?
        print_ordered_tree(node.left_child)
        print "#{node.value} "
        print_ordered_tree(node.right_child)
    end
end

tree = BST.new

[5, 3, 7, 2, 4, 6, 8].each { |n| tree.initial_search(n) }
puts "Find 4 #{tree.has_node(4)}"
puts "Find 10 #{tree.has_node(10)}"
print "Graze: "
tree.ordered