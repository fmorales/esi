=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.4

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::GetSovereigntyStructuresInternalServerError
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetSovereigntyStructuresInternalServerError' do
  before do
    # run before each test
    @instance = SwaggerClient::GetSovereigntyStructuresInternalServerError.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetSovereigntyStructuresInternalServerError' do
    it 'should create an instact of GetSovereigntyStructuresInternalServerError' do
      expect(@instance).to be_instance_of(SwaggerClient::GetSovereigntyStructuresInternalServerError)
    end
  end
  describe 'test attribute "error"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
