require './app/model/init'
require 'mocha/setup'

class GraphModelMock
  def self.mock_model_in_app
    Model.expects(:graph_model).returns(GraphModelMock.new)
  end

  def method_missing(*args, &block)
    nil
  end
end