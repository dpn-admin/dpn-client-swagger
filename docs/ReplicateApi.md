# SwaggerClient::ReplicateApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**replicate_get**](ReplicateApi.md#replicate_get) | **GET** /replicate | List of replication requests
[**replicate_post**](ReplicateApi.md#replicate_post) | **POST** /replicate | Create a replication request
[**replicate_replication_id_get**](ReplicateApi.md#replicate_replication_id_get) | **GET** /replicate/{replication_id} | Returns the data for a single replication request.
[**replicate_replication_id_put**](ReplicateApi.md#replicate_replication_id_put) | **PUT** /replicate/{replication_id} | Update the replication request


# **replicate_get**
> ReplicationRequestResultList replicate_get(page, page_size, opts)

List of replication requests

Returns a list of replication transfer requests. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ReplicateApi.new

page = 56 # Integer | Page number to return, starting at 1.  For use  with page_size. 

page_size = 56 # Integer | Max results per page. 

opts = { 
  before: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with updated_at **earlier**  than this, inclusive. 
  after: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with updated_at **later**  than this, inclusive. 
  order_by: ["order_by_example"], # Array<String> | Comma separated list of string fields by which to order the response. 
  bag: "bag_example", # String | Filter by the associated bag's uuid 
  to_node: "to_node_example", # String | Filter by to_node namespace. 
  from_node: "from_node_example", # String | Filter by from_node namespace. 
  store_requested: true, # BOOLEAN | Filter by store_requested 
  stored: true, # BOOLEAN | Filter by stored 
  cancelled: true, # BOOLEAN | Filter by cancelled 
  cancel_reason: "cancel_reason_example" # String | Filter by cancel_reason.  Refer to the object definition for supported values. 
}

begin
  #List of replication requests
  result = api_instance.replicate_get(page, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReplicateApi->replicate_get: #{e}"
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
 **bag** | **String**| Filter by the associated bag&#39;s uuid  | [optional] 
 **to_node** | **String**| Filter by to_node namespace.  | [optional] 
 **from_node** | **String**| Filter by from_node namespace.  | [optional] 
 **store_requested** | **BOOLEAN**| Filter by store_requested  | [optional] 
 **stored** | **BOOLEAN**| Filter by stored  | [optional] 
 **cancelled** | **BOOLEAN**| Filter by cancelled  | [optional] 
 **cancel_reason** | **String**| Filter by cancel_reason.  Refer to the object definition for supported values.  | [optional] 

### Return type

[**ReplicationRequestResultList**](ReplicationRequestResultList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **replicate_post**
> ReplicationRequest replicate_post(body)

Create a replication request

This endpoint allows the creation of a single replication request through a post body.  The post body is the same as the data structure for the replication request.  If successful, the response will be identical to that of a GET request. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ReplicateApi.new

body = SwaggerClient::ReplicationRequest.new # ReplicationRequest | 


begin
  #Create a replication request
  result = api_instance.replicate_post(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReplicateApi->replicate_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ReplicationRequest**](ReplicationRequest.md)|  | 

### Return type

[**ReplicationRequest**](ReplicationRequest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **replicate_replication_id_get**
> ReplicationRequest replicate_replication_id_get(replication_id, )

Returns the data for a single replication request.

Returns the data for a single replication transfer request record matching the replication_id. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ReplicateApi.new

replication_id = "replication_id_example" # String | replication_id of the target record


begin
  #Returns the data for a single replication request.
  result = api_instance.replicate_replication_id_get(replication_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReplicateApi->replicate_replication_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **replication_id** | **String**| replication_id of the target record | 

### Return type

[**ReplicationRequest**](ReplicationRequest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **replicate_replication_id_put**
> ReplicationRequest replicate_replication_id_put(replication_id, body)

Update the replication request

Updates a single replication transfer request matching the replication_id.  The body of the put is the same as the data structure for the replication request.  If successful, the response will be identical to that of a GET request. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ReplicateApi.new

replication_id = "replication_id_example" # String | replication_id of the target record

body = SwaggerClient::ReplicationRequest.new # ReplicationRequest | 


begin
  #Update the replication request
  result = api_instance.replicate_replication_id_put(replication_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReplicateApi->replicate_replication_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **replication_id** | **String**| replication_id of the target record | 
 **body** | [**ReplicationRequest**](ReplicationRequest.md)|  | 

### Return type

[**ReplicationRequest**](ReplicationRequest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



