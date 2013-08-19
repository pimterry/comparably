require './app/model/init'
require 'mocha/setup'

class NeoMock
  def self.mock_neo_in_model
    Model.expects(:neo).returns(NeoMock.new)
  end

  def method_missing(*args, &block)
    []
  end
end