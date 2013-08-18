module Model
  class GraphModel
    def initialize(neo)
      @neo = neo
    end

    def to_s
      "graphs!"
    end
  end
end