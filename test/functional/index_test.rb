require 'sinatra'
require 'test/unit'
require 'rack/test'

require './app/routes/index'

class IndexTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Comparably
  end

  def test_index
    get '/'
    assert last_response.ok?
  end
end