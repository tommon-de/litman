class Animal < ApplicationRecord
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


end
