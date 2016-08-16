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

# Unit tests for SwaggerClient::FixityCheckApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FixityCheckApi' do
  before do
    # run before each test
    @instance = SwaggerClient::FixityCheckApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FixityCheckApi' do
    it 'should create an instact of FixityCheckApi' do
      expect(@instance).to be_instance_of(SwaggerClient::FixityCheckApi)
    end
  end

  # unit tests for fixity_check_get
  # List of fixity checks
  # Returns a list of fixity checks 
  # @param page Page number to return, starting at 1.  For use  with page_size. 
  # @param page_size Max results per page. 
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :before Only include records with created_at **earlier**  than this, inclusive. 
  # @option opts [DateTime] :after Only include records with created_at **later**  than this, inclusive. 
  # @option opts [String] :bag Filter by the associated bag&#39;s uuid 
  # @option opts [BOOLEAN] :latest For each set of results that differ only by timestamp, include only the most recent result. This filter is applied after other filters. 
  # @option opts [Array<String>] :order_by Comma separated list of string fields by which to order the response. 
  # @option opts [String] :node Filter by the namespace of the node that performed the check. 
  # @return [FixityCheckResultList]
  describe 'fixity_check_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fixity_check_post
  # Create a fixity check
  # This endpoint allows the creation of a single fixity check record through a post body.  The body is the same as the data structure for the fixity check.  If successful, the response will contain the created record. 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [FixityCheck]
  describe 'fixity_check_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
