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

require "uri"

module SwaggerClient
  class NodeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List of nodes
    # Return a list of node records. 
    # @param page Page number to return, starting at 1.  For use  with page_size. 
    # @param page_size Max results per page. 
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :before Only include records with updated_at **earlier**  than this, inclusive. 
    # @option opts [DateTime] :after Only include records with updated_at **later**  than this, inclusive. 
    # @option opts [Array<String>] :order_by Comma separated list of string fields by which to order the response. 
    # @return [NodeResultList]
    def node_get(page, page_size, opts = {})
      data, _status_code, _headers = node_get_with_http_info(page, page_size, opts)
      return data
    end

    # List of nodes
    # Return a list of node records. 
    # @param page Page number to return, starting at 1.  For use  with page_size. 
    # @param page_size Max results per page. 
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :before Only include records with updated_at **earlier**  than this, inclusive. 
    # @option opts [DateTime] :after Only include records with updated_at **later**  than this, inclusive. 
    # @option opts [Array<String>] :order_by Comma separated list of string fields by which to order the response. 
    # @return [Array<(NodeResultList, Fixnum, Hash)>] NodeResultList data, response status code and response headers
    def node_get_with_http_info(page, page_size, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NodeApi.node_get ..."
      end
      # verify the required parameter 'page' is set
      fail ArgumentError, "Missing the required parameter 'page' when calling NodeApi.node_get" if page.nil?
      # verify the required parameter 'page_size' is set
      fail ArgumentError, "Missing the required parameter 'page_size' when calling NodeApi.node_get" if page_size.nil?
      if opts[:'order_by'] && !['updated_at', 'created_at'].include?(opts[:'order_by'])
        fail ArgumentError, 'invalid value for "order_by", must be one of updated_at, created_at'
      end
      # resource path
      local_var_path = "/node".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'page'] = page
      query_params[:'page_size'] = page_size
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'order_by'] = @api_client.build_collection_param(opts[:'order_by'], :multi) if !opts[:'order_by'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NodeResultList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NodeApi#node_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a specific node
    # Returns the data for a single node matching the namespace.
    # @param namespace namespace of the target node
    # @param [Hash] opts the optional parameters
    # @return [Node]
    def node_namespace_get(namespace, opts = {})
      data, _status_code, _headers = node_namespace_get_with_http_info(namespace, opts)
      return data
    end

    # Show a specific node
    # Returns the data for a single node matching the namespace.
    # @param namespace namespace of the target node
    # @param [Hash] opts the optional parameters
    # @return [Array<(Node, Fixnum, Hash)>] Node data, response status code and response headers
    def node_namespace_get_with_http_info(namespace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NodeApi.node_namespace_get ..."
      end
      # verify the required parameter 'namespace' is set
      fail ArgumentError, "Missing the required parameter 'namespace' when calling NodeApi.node_namespace_get" if namespace.nil?
      # resource path
      local_var_path = "/node/{namespace}".sub('{format}','json').sub('{' + 'namespace' + '}', namespace.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Node')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NodeApi#node_namespace_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the node
    # Updates a single Node matching the namespace. The body of the put is the same as the data structure listed for a single record above. If successful, the response will be identical to that of a GET request. 
    # @param namespace namespace of the target node
    # @param body Body of the node
    # @param [Hash] opts the optional parameters
    # @return [Node]
    def node_namespace_put(namespace, body, opts = {})
      data, _status_code, _headers = node_namespace_put_with_http_info(namespace, body, opts)
      return data
    end

    # Update the node
    # Updates a single Node matching the namespace. The body of the put is the same as the data structure listed for a single record above. If successful, the response will be identical to that of a GET request. 
    # @param namespace namespace of the target node
    # @param body Body of the node
    # @param [Hash] opts the optional parameters
    # @return [Array<(Node, Fixnum, Hash)>] Node data, response status code and response headers
    def node_namespace_put_with_http_info(namespace, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NodeApi.node_namespace_put ..."
      end
      # verify the required parameter 'namespace' is set
      fail ArgumentError, "Missing the required parameter 'namespace' when calling NodeApi.node_namespace_put" if namespace.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling NodeApi.node_namespace_put" if body.nil?
      # resource path
      local_var_path = "/node/{namespace}".sub('{format}','json').sub('{' + 'namespace' + '}', namespace.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Node')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NodeApi#node_namespace_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end