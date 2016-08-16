# SwaggerClient::BagApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bag_get**](BagApi.md#bag_get) | **GET** /bag | List of bags
[**bag_post**](BagApi.md#bag_post) | **POST** /bag | Create a bag
[**bag_uuid_get**](BagApi.md#bag_uuid_get) | **GET** /bag/{uuid} | Returns the data for a single bag record matching the uuid.
[**bag_uuid_put**](BagApi.md#bag_uuid_put) | **PUT** /bag/{uuid} | Update the bag
[**member_member_id_bags_get**](BagApi.md#member_member_id_bags_get) | **GET** /member/{member_id}/bags | Returns the member&#39;s bags


# **bag_get**
> BagResultList bag_get(page, page_size, opts)

List of bags

Returns a list of Bag records. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BagApi.new

page = 56 # Integer | Page number to return, starting at 1.  For use  with page_size. 

page_size = 56 # Integer | Max results per page. 

opts = { 
  before: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with updated_at **earlier**  than this, inclusive. 
  after: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with updated_at **later**  than this, inclusive. 
  bag_type: "bag_type_example", # String | Filter by bag type. Consult the Bag definitions for the supported values. 
  admin_node: "admin_node_example", # String | Filter by admin_node namespace 
  ingest_node: "ingest_node_example", # String | Filter by ingest_node namespace 
  member: "member_example", # String | Filter by member_id
  replicated_by: "replicated_by_example", # String | The namespace of the replicating node on which  to filter.  Multiple filters can be used, separated by comma.  The result will include the union (OR)  of the filtered results. 
  order_by: ["order_by_example"], # Array<String> | Comma separated list of string fields by which to order the response. 
  first_version_uuid: "first_version_uuid_example" # String | Filter by first_version_uuid. 
}

begin
  #List of bags
  result = api_instance.bag_get(page, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BagApi->bag_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number to return, starting at 1.  For use  with page_size.  | 
 **page_size** | **Integer**| Max results per page.  | 
 **before** | **DateTime**| Only include records with updated_at **earlier**  than this, inclusive.  | [optional] 
 **after** | **DateTime**| Only include records with updated_at **later**  than this, inclusive.  | [optional] 
 **bag_type** | **String**| Filter by bag type. Consult the Bag definitions for the supported values.  | [optional] 
 **admin_node** | **String**| Filter by admin_node namespace  | [optional] 
 **ingest_node** | **String**| Filter by ingest_node namespace  | [optional] 
 **member** | **String**| Filter by member_id | [optional] 
 **replicated_by** | **String**| The namespace of the replicating node on which  to filter.  Multiple filters can be used, separated by comma.  The result will include the union (OR)  of the filtered results.  | [optional] 
 **order_by** | [**Array&lt;String&gt;**](String.md)| Comma separated list of string fields by which to order the response.  | [optional] 
 **first_version_uuid** | **String**| Filter by first_version_uuid.  | [optional] 

### Return type

[**BagResultList**](BagResultList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bag_post**
> Bag bag_post(body)

Create a bag

This endpoint allows the creation of a single bag through a post body. The post body is the same as the data structure for the bag.  If successful, the response will be identical to that of a GET request. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BagApi.new

body = SwaggerClient::Bag.new # Bag | 


begin
  #Create a bag
  result = api_instance.bag_post(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BagApi->bag_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Bag**](Bag.md)|  | 

### Return type

[**Bag**](Bag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bag_uuid_get**
> Bag bag_uuid_get(uuid, )

Returns the data for a single bag record matching the uuid.

Returns the data for a single bag record matching the uuid.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BagApi.new

uuid = "uuid_example" # String | UUIDv4 of the target bag


begin
  #Returns the data for a single bag record matching the uuid.
  result = api_instance.bag_uuid_get(uuid, )
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BagApi->bag_uuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUIDv4 of the target bag | 

### Return type

[**Bag**](Bag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **bag_uuid_put**
> Bag bag_uuid_put(uuid, body)

Update the bag

Updates a single bag matching the uuid.  The body of the put is the same as the data structure for the bag.  If successful, the response will be identical to that of a GET request. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BagApi.new

uuid = "uuid_example" # String | UUIDv4 of the target bag

body = SwaggerClient::Bag.new # Bag | 


begin
  #Update the bag
  result = api_instance.bag_uuid_put(uuid, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BagApi->bag_uuid_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUIDv4 of the target bag | 
 **body** | [**Bag**](Bag.md)|  | 

### Return type

[**Bag**](Bag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **member_member_id_bags_get**
> BagResultList member_member_id_bags_get(member_id)

Returns the member's bags

Returns the member's bags.  Behavior should match that of ```/bags/?member=<member:member_id>```, including querystring options except for ```member```. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BagApi.new

member_id = "member_id_example" # String | member_id of the member


begin
  #Returns the member's bags
  result = api_instance.member_member_id_bags_get(member_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BagApi->member_member_id_bags_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **member_id** | **String**| member_id of the member | 

### Return type

[**BagResultList**](BagResultList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



