class Comparably < Sinatra::Base
  get '/' do
    "Welcome to Comparably. Model = #{@graph_model}"
  end
end