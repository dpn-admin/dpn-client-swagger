# SwaggerClient::RestoreApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**restore_get**](RestoreApi.md#restore_get) | **GET** /restore | List of restore requests
[**restore_post**](RestoreApi.md#restore_post) | **POST** /restore | Create a restore request
[**restore_restore_id_get**](RestoreApi.md#restore_restore_id_get) | **GET** /restore/{restore_id} | Returns the data for a single restore request.
[**restore_restore_id_put**](RestoreApi.md#restore_restore_id_put) | **PUT** /restore/{restore_id} | Update the restore request


# **restore_get**
> RestoreRequestResultList restore_get(page, page_size, opts)

List of restore requests

Returns a list of restore transfer requests. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RestoreApi.new

page = 56 # Integer | Page number to return, starting at 1.  For use  with page_size. 

page_size = 56 # Integer | Max results per page. 

opts = { 
  before: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with updated_at **earlier**  than this, inclusive. 
  after: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with updated_at **later**  than this, inclusive. 
  order_by: ["order_by_example"], # Array<String> | Comma separated list of string fields by which to order the response. 
  bag: "bag_example", # String | Filter by the associated bag's uuid 
  to_node: "to_node_example", # String | Filter by to_node namespace. 
  from_node: "from_node_example", # String | Filter by from_node namespace. 
  accepted: true, # BOOLEAN | Filter by accepted 
  finished: true, # BOOLEAN | Filter by finished 
  cancelled: true, # BOOLEAN | Filter by cancelled 
  cancel_reason: "cancel_reason_example" # String | Filter by cancel_reason.  Refer to the object definition for supported values. 
}

begin
  #List of restore requests
  result = api_instance.restore_get(page, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RestoreApi->restore_get: #{e}"
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
 **accepted** | **BOOLEAN**| Filter by accepted  | [optional] 
 **finished** | **BOOLEAN**| Filter by finished  | [optional] 
 **cancelled** | **BOOLEAN**| Filter by cancelled  | [optional] 
 **cancel_reason** | **String**| Filter by cancel_reason.  Refer to the object definition for supported values.  | [optional] 

### Return type

[**RestoreRequestResultList**](RestoreRequestResultList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **restore_post**
> RestoreRequest restore_post(body)

Create a restore request

This endpoint allows the creation of a single restore request through a post body.  The post body is the same as the data structure for the restore request.  If successful, the response will be identical to that of a GET request. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RestoreApi.new

body = SwaggerClient::RestoreRequest.new # RestoreRequest | 


begin
  #Create a restore request
  result = api_instance.restore_post(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RestoreApi->restore_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RestoreRequest**](RestoreRequest.md)|  | 

### Return type

[**RestoreRequest**](RestoreRequest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **restore_restore_id_get**
> RestoreRequest restore_restore_id_get(restore_id, )

Returns the data for a single restore request.

Returns the data for a single restore transfer request record matching the restore_id. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RestoreApi.new

restore_id = "restore_id_example" # String | restore_id of the target record


begin
  #Returns the data for a single restore request.
  result = api_instance.restore_restore_id_get(restore_id, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RestoreApi->restore_restore_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **restore_id** | **String**| restore_id of the target record | 

### Return type

[**RestoreRequest**](RestoreRequest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **restore_restore_id_put**
> RestoreRequest restore_restore_id_put(restore_id, body)

Update the restore request

Updates a single restore transfer request matching the restore_id.  The body of the put is the same as the data structure for the restore request.  If successful, the response will be identical to that of a GET request. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RestoreApi.new

restore_id = "restore_id_example" # String | restore_id of the target record

body = SwaggerClient::RestoreRequest.new # RestoreRequest | 


begin
  #Update the restore request
  result = api_instance.restore_restore_id_put(restore_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RestoreApi->restore_restore_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **restore_id** | **String**| restore_id of the target record | 
 **body** | [**RestoreRequest**](RestoreRequest.md)|  | 

### Return type

[**RestoreRequest**](RestoreRequest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



