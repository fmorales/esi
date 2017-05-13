=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::LoyaltyApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LoyaltyApi' do
  before do
    # run before each test
    @instance = SwaggerClient::LoyaltyApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LoyaltyApi' do
    it 'should create an instact of LoyaltyApi' do
      expect(@instance).to be_instance_of(SwaggerClient::LoyaltyApi)
    end
  end

  # unit tests for get_loyalty_points
  # Get loyalty points
  # Return a list of loyalty points for all corporations the character has worked for  ---  Alternate route: &#x60;/v1/characters/{character_id}/loyalty/points/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/loyalty/points/&#x60;  Alternate route: &#x60;/latest/characters/{character_id}/loyalty/points/&#x60; 
  # @param character_id ID for a character
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use, if preferred over a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetCharactersCharacterIdLoyaltyPoints200Ok>]
  describe 'get_loyalty_points test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_loyalty_store_by_id
  # List loyalty store offers
  # Return a list of offers from a specific corporation&#39;s loyalty store  ---  Alternate route: &#x60;/v1/loyalty/stores/{corporation_id}/offers/&#x60;  Alternate route: &#x60;/legacy/loyalty/stores/{corporation_id}/offers/&#x60;  Alternate route: &#x60;/latest/loyalty/stores/{corporation_id}/offers/&#x60;   ---  This route is cached for up to 3600 seconds
  # @param corporation_id ID of a corporation
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetLoyaltyStoresCorporationIdOffers200Ok>]
  describe 'get_loyalty_store_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
