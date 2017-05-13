=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::SkillsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SkillsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::SkillsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SkillsApi' do
    it 'should create an instact of SkillsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::SkillsApi)
    end
  end

  # unit tests for get_character_skill_queue
  # Get character&#39;s skill queue
  # List the configured skill queue for the given character  ---  Alternate route: &#x60;/v2/characters/{character_id}/skillqueue/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/skillqueue/&#x60;  Alternate route: &#x60;/latest/characters/{character_id}/skillqueue/&#x60;   ---  This route is cached for up to 120 seconds
  # @param character_id Character id of the target character
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use, if preferred over a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetCharactersCharacterIdSkillqueue200Ok>]
  describe 'get_character_skill_queue test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_character_skills
  # Get character skills
  # List all trained skills for the given character  ---  Alternate route: &#x60;/v3/characters/{character_id}/skills/&#x60;  Alternate route: &#x60;/latest/characters/{character_id}/skills/&#x60;   ---  This route is cached for up to 120 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use, if preferred over a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [GetCharactersCharacterIdSkillsOk]
  describe 'get_character_skills test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
