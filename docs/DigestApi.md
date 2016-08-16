# SwaggerClient::DigestApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bag_uuid_digest_algorithm_get**](DigestApi.md#bag_uuid_digest_algorithm_get) | **GET** /bag/{uuid}/digest/algorithm | Show a specific digest record.
[**bag_uuid_digest_get**](DigestApi.md#bag_uuid_digest_get) | **GET** /bag/{uuid}/digest | List of digests for the specified bag
[**bag_uuid_digest_post**](DigestApi.md#bag_uuid_digest_post) | **POST** /bag/{uuid}/digest | Create a digest for the specified bag
[**digest_get**](DigestApi.md#digest_get) | **GET** /digest | List of digests


# **bag_uuid_digest_algorithm_get**
> Digest bag_uuid_digest_algorithm_get(uuid, algorithm)

Show a specific digest record.

Returns the data for the specific digest record matching the bag's uuid and the digest algorithm.  These two values always uniquely identify a digest. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DigestApi.new

uuid = "uuid_example" # String | UUIDv4 of the target bag

algorithm = "algorithm_example" # String | Name of the algorithm used


begin
  #Show a specific digest record.
  result = api_instance.bag_uuid_digest_algorithm_get(uuid, algorithm)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DigestApi->bag_uuid_digest_algorithm_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUIDv4 of the target bag | 
 **algorithm** | **String**| Name of the algorithm used | 

### Return type

[**Digest**](Digest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bag_uuid_digest_get**
> DigestResultList bag_uuid_digest_get(uuid, page, page_size, opts)

List of digests for the specified bag

Return a list of message digests for the specified bag. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DigestApi.new

uuid = "uuid_example" # String | UUIDv4 of the target bag

page = 56 # Integer | Page number to return, starting at 1.  For use  with page_size. 

page_size = 56 # Integer | Max results per page. 

opts = { 
  before: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with created_at **earlier**  than this, inclusive. 
  after: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with created_at **later**  than this, inclusive. 
  order_by: ["order_by_example"] # Array<String> | Comma separated list of string fields by which to order the response. 
}

begin
  #List of digests for the specified bag
  result = api_instance.bag_uuid_digest_get(uuid, page, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DigestApi->bag_uuid_digest_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUIDv4 of the target bag | 
 **page** | **Integer**| Page number to return, starting at 1.  For use  with page_size.  | 
 **page_size** | **Integer**| Max results per page.  | 
 **before** | **DateTime**| Only include records with created_at **earlier**  than this, inclusive.  | [optional] 
 **after** | **DateTime**| Only include records with created_at **later**  than this, inclusive.  | [optional] 
 **order_by** | [**Array&lt;String&gt;**](String.md)| Comma separated list of string fields by which to order the response.  | [optional] 

### Return type

[**DigestResultList**](DigestResultList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bag_uuid_digest_post**
> Digest bag_uuid_digest_post(uuid, body)

Create a digest for the specified bag

This endpoint allows the creation of a single digest through a post body.  The body is the same as the data structure for the Digest. If successful, the response will be identical to that of a GET request. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DigestApi.new

uuid = "uuid_example" # String | UUIDv4 of the target bag

body = SwaggerClient::Digest.new # Digest | 


begin
  #Create a digest for the specified bag
  result = api_instance.bag_uuid_digest_post(uuid, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DigestApi->bag_uuid_digest_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUIDv4 of the target bag | 
 **body** | [**Digest**](Digest.md)|  | 

### Return type

[**Digest**](Digest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **digest_get**
> DigestResultList digest_get(page, page_size, opts)

List of digests

This endpoint is meant to facilitate synchronizing of data.  It returns a list of digests. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DigestApi.new

page = 56 # Integer | Page number to return, starting at 1.  For use  with page_size. 

page_size = 56 # Integer | Max results per page. 

opts = { 
  before: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with created_at **earlier**  than this, inclusive. 
  after: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with created_at **later**  than this, inclusive. 
  order_by: ["order_by_example"] # Array<String> | Comma separated list of string fields by which to order the response. 
}

begin
  #List of digests
  result = api_instance.digest_get(page, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DigestApi->digest_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number to return, starting at 1.  For use  with page_size.  | 
 **page_size** | **Integer**| Max results per page.  | 
 **before** | **DateTime**| Only include records with created_at **earlier**  than this, inclusive.  | [optional] 
 **after** | **DateTime**| Only include records with created_at **later**  than this, inclusive.  | [optional] 
 **order_by** | [**Array&lt;String&gt;**](String.md)| Comma separated list of string fields by which to order the response.  | [optional] 

### Return type

[**DigestResultList**](DigestResultList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



