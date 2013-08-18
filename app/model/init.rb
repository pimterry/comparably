require 'neography'
require_relative 'graph_model'

module Model
  def graph_model
    neo4j_url = ENV['NEO4J_URL'].to_s
    GraphModel.new(Neography::Rest.new(neo4j_url))
  end

  extend self
end