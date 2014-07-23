class Vertex

  attr_accessor :key, :connected_to

  def initialize(key)
    @key = key
    @connected_to = {}
  end

  def add_neighbour(nbr_key, weight=0)
    @connected_to[nbr_key] = weight
  end

  def get_weight(nbr_key)
    @connected_to[nbr_key]
  end

  def get_connections
    @connected_to.keys()
  end

end