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

# Unit tests for SwaggerClient::NodeApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'NodeApi' do
  before do
    # run before each test
    @instance = SwaggerClient::NodeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NodeApi' do
    it 'should create an instact of NodeApi' do
      expect(@instance).to be_instance_of(SwaggerClient::NodeApi)
    end
  end

  # unit tests for node_get
  # List of nodes
  # Return a list of node records. 
  # @param page Page number to return, starting at 1.  For use  with page_size. 
  # @param page_size Max results per page. 
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :before Only include records with updated_at **earlier**  than this, inclusive. 
  # @option opts [DateTime] :after Only include records with updated_at **later**  than this, inclusive. 
  # @option opts [Array<String>] :order_by Comma separated list of string fields by which to order the response. 
  # @return [NodeResultList]
  describe 'node_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for node_namespace_get
  # Show a specific node
  # Returns the data for a single node matching the namespace.
  # @param namespace namespace of the target node
  # @param [Hash] opts the optional parameters
  # @return [Node]
  describe 'node_namespace_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for node_namespace_put
  # Update the node
  # Updates a single Node matching the namespace. The body of the put is the same as the data structure listed for a single record above. If successful, the response will be identical to that of a GET request. 
  # @param namespace namespace of the target node
  # @param body Body of the node
  # @param [Hash] opts the optional parameters
  # @return [Node]
  describe 'node_namespace_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
