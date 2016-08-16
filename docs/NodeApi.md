# SwaggerClient::NodeApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**node_get**](NodeApi.md#node_get) | **GET** /node | List of nodes
[**node_namespace_get**](NodeApi.md#node_namespace_get) | **GET** /node/{namespace} | Show a specific node
[**node_namespace_put**](NodeApi.md#node_namespace_put) | **PUT** /node/{namespace} | Update the node


# **node_get**
> NodeResultList node_get(page, page_size, opts)

List of nodes

Return a list of node records. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::NodeApi.new

page = 56 # Integer | Page number to return, starting at 1.  For use  with page_size. 

page_size = 56 # Integer | Max results per page. 

opts = { 
  before: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with updated_at **earlier**  than this, inclusive. 
  after: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with updated_at **later**  than this, inclusive. 
  order_by: ["order_by_example"], # Array<String> | Comma separated list of string fields by which to order the response. 
}

begin
  #List of nodes
  result = api_instance.node_get(page, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NodeApi->node_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number to return, starting at 1.  For use  with page_size.  | 
 **page_size** | **Integer**| Max results per page.  | 
 **before** | **DateTime**| Only include records with updated_at **earlier**  than this, inclusive.  | [optional] 
 **after** | **DateTime**| Only include records with updated_at **later**  than this, inclusive.  | [optional] 
 **order_by** | [**Array&lt;String&gt;**](String.md)| Comma separated list of string fields by which to order the response.  | [optional] 

### Return type

[**NodeResultList**](NodeResultList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **node_namespace_get**
> Node node_namespace_get(namespace, )

Show a specific node

Returns the data for a single node matching the namespace.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::NodeApi.new

namespace = "namespace_example" # String | namespace of the target node


begin
  #Show a specific node
  result = api_instance.node_namespace_get(namespace, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NodeApi->node_namespace_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| namespace of the target node | 

### Return type

[**Node**](Node.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **node_namespace_put**
> Node node_namespace_put(namespace, body)

Update the node

Updates a single Node matching the namespace. The body of the put is the same as the data structure listed for a single record above. If successful, the response will be identical to that of a GET request. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::NodeApi.new

namespace = "namespace_example" # String | namespace of the target node

body = SwaggerClient::Node.new # Node | Body of the node


begin
  #Update the node
  result = api_instance.node_namespace_put(namespace, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NodeApi->node_namespace_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| namespace of the target node | 
 **body** | [**Node**](Node.md)| Body of the node | 

### Return type

[**Node**](Node.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



