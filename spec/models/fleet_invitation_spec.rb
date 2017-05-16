=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Esi::FleetInvitation
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FleetInvitation' do
  before do
    # run before each test
    @instance = Esi::FleetInvitation.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FleetInvitation' do
    it 'should create an instact of FleetInvitation' do
      expect(@instance).to be_instance_of(Esi::FleetInvitation)
    end
  end
  describe 'test attribute "character_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "role"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["fleet_commander", "wing_commander", "squad_commander", "squad_member"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.role = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "squad_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "wing_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
