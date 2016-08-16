=begin
#DPN API

#Digital Preservation Network

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::RestoreApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RestoreApi' do
  before do
    # run before each test
    @instance = SwaggerClient::RestoreApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RestoreApi' do
    it 'should create an instact of RestoreApi' do
      expect(@instance).to be_instance_of(SwaggerClient::RestoreApi)
    end
  end

  # unit tests for restore_get
  # List of restore requests
  # Returns a list of restore transfer requests. 
  # @param page Page number to return, starting at 1.  For use  with page_size. 
  # @param page_size Max results per page. 
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :before Only include records with updated_at **earlier**  than this, inclusive. 
  # @option opts [DateTime] :after Only include records with updated_at **later**  than this, inclusive. 
  # @option opts [Array<String>] :order_by Comma separated list of string fields by which to order the response. 
  # @option opts [String] :bag Filter by the associated bag&#39;s uuid 
  # @option opts [String] :to_node Filter by to_node namespace. 
  # @option opts [String] :from_node Filter by from_node namespace. 
  # @option opts [BOOLEAN] :accepted Filter by accepted 
  # @option opts [BOOLEAN] :finished Filter by finished 
  # @option opts [BOOLEAN] :cancelled Filter by cancelled 
  # @option opts [String] :cancel_reason Filter by cancel_reason.  Refer to the object definition for supported values. 
  # @return [RestoreRequestResultList]
  describe 'restore_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for restore_post
  # Create a restore request
  # This endpoint allows the creation of a single restore request through a post body.  The post body is the same as the data structure for the restore request.  If successful, the response will be identical to that of a GET request. 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [RestoreRequest]
  describe 'restore_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for restore_restore_id_get
  # Returns the data for a single restore request.
  # Returns the data for a single restore transfer request record matching the restore_id. 
  # @param restore_id restore_id of the target record
  # @param [Hash] opts the optional parameters
  # @return [RestoreRequest]
  describe 'restore_restore_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for restore_restore_id_put
  # Update the restore request
  # Updates a single restore transfer request matching the restore_id.  The body of the put is the same as the data structure for the restore request.  If successful, the response will be identical to that of a GET request. 
  # @param restore_id restore_id of the target record
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [RestoreRequest]
  describe 'restore_restore_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end