require 'sinatra'
require 'test/unit'
require 'rack/test'

require './app/routes/index'
require_relative './graph_model_mock'

class IndexTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    GraphModelMock::mock_model_in_app
    Comparably
  end

  def test_index
    get '/'
    assert last_response.ok?
  end
end