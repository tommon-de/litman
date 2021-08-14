class Animal < ApplicationRecord
  after_save :push_remote
  require 'open-uri'
  include HTTParty

  def self.fetch
    response = HTTParty.get("https://axoltlapi.herokuapp.com/")
    response =  JSON.parse(response.to_json)
    animal = Animal.new(
      url:response['url'],
      facts:response['facts'],
      pics_repo:response['pics_repo'],
      api_repo:response['api_repo']
      )
    animal.save!
  end

  def push_remote
    # raise self.url
      data ={
        url:self.url,
        facts:self.facts,
        pics_repo:self.pics_repo,
        api_repo:self.api_repo
      }
    HTTParty.post("http://requestbin.net/r/6syxuf6i", body:{data: data})
  end

    
end

