class Tree
  attr_accessor :children, :node_name

  def initialize(tree={})
    @children = tree.values.collect {|val| Tree.new(val)} if tree.is_a?(Hash)
    @node_name = tree.keys if tree.is_a?(Hash)
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block} if children
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new({'grandpa' => {'dad' => {'child 1' => [], 'child 2' => []}, 'uncle' => {'child 3' => [], 'child 4' => []}}})

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}

puts

puts "Visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}
