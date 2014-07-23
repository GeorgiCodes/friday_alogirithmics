require_relative "vertex"
require 'awesome_print'

class Graph

  attr_accessor :vert_list, :num_verticies

  def initialize
    @vert_list = {}
    @num_verticies = 0
  end

  def add_vertex(key)
    @num_verticies += 1
    new_vertex = Vertex.new(key)
    vert_list[key] = new_vertex
    return new_vertex
  end

  def add_edge(from_vert, to_vert, weight = 0)
    if !@vert_list.include?(from_vert)
      add_vertex(from_vert)
    end
    if !@vert_list.include?(to_vert)
      add_vertex(to_vert)
    end
    @vert_list[from_vert].add_neighbour(@vert_list[to_vert], weight)
  end

  def get_vertex(key)
    graph_list[key]
  end

  def get_verticies
    @vert_list.keys()
  end

end

puts "Graph"
g = Graph.new
5.times do |i|
  g.add_vertex(i)
end

puts "num verticies #{g.num_verticies}"
list = g.vert_list

g.add_edge(0,1,5)
g.add_edge(0,5,2)
g.add_edge(1,2,4)
g.add_edge(2,3,9)
g.add_edge(3,4,7)
g.add_edge(3,5,3)
g.add_edge(4,0,1)
g.add_edge(5,4,8)
g.add_edge(5,2,1)

ap list

g.vert_list.each do |vertex|
  vertex.get_connections
end
