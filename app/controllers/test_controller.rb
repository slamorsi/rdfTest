#require 'rdf'
#require 'rdf/ntriples'
#require 'rdf/rdfa'
class TestController < ApplicationController
  def index
    @t = Test.new

    RDF::RDFa::Reader.open("http://www.tripadvisor.com/Hotel_Review-g186525-d280839-Reviews-Gerald_s_Place-Edinburgh_Scotland.html") do |r|
      r.each_statement do |s|
         Rails.logger.debug(s)
      end
    end
    #graph = RDF::Graph.load("http://www.tripadvisor.com/Hotel_Review-g186525-d280839-Reviews-Gerald_s_Place-Edinburgh_Scotland.html") #do |r|
    #
    #graph.each do |s|
    #  Rails.logger.debug(s)
    #end
    respond_to do |format|
     format.html
    end
  end
end
