require 'test/unit'
require 'mocha/setup'
require './app/model/graph_model'

module Model
  class GraphModelTest < Test::Unit::TestCase
    def test_creation
      mock_neo = mock()
      graph_model = GraphModel.new(mock_neo)
      assert_not_nil graph_model
    end
  end
end