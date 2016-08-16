# SwaggerClient::MemberApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**member_get**](MemberApi.md#member_get) | **GET** /member | List of members
[**member_member_id_bags_get**](MemberApi.md#member_member_id_bags_get) | **GET** /member/{member_id}/bags | Returns the member&#39;s bags
[**member_member_id_get**](MemberApi.md#member_member_id_get) | **GET** /member/{member_id} | Returns the data for a single member record matching the member_id.
[**member_member_id_put**](MemberApi.md#member_member_id_put) | **PUT** /member/{member_id} | Update the member
[**member_post**](MemberApi.md#member_post) | **POST** /member | Create a member


# **member_get**
> MemberResultList member_get(page, page_size, opts)

List of members

Returns a list of members. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MemberApi.new

page = 56 # Integer | Page number to return, starting at 1.  For use  with page_size. 

page_size = 56 # Integer | Max results per page. 

opts = { 
  before: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with updated_at **earlier**  than this, inclusive. 
  after: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with updated_at **later**  than this, inclusive. 
  order_by: ["order_by_example"], # Array<String> | Comma separated list of string fields by which to order the response. 
}

begin
  #List of members
  result = api_instance.member_get(page, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberApi->member_get: #{e}"
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

[**MemberResultList**](MemberResultList.md)

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

api_instance = SwaggerClient::MemberApi.new

member_id = "member_id_example" # String | member_id of the member


begin
  #Returns the member's bags
  result = api_instance.member_member_id_bags_get(member_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberApi->member_member_id_bags_get: #{e}"
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



# **member_member_id_get**
> Member member_member_id_get(member_id)

Returns the data for a single member record matching the member_id.

Returns the data for a single member record matching the member_id.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MemberApi.new

member_id = "member_id_example" # String | member_id of the member


begin
  #Returns the data for a single member record matching the member_id.
  result = api_instance.member_member_id_get(member_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberApi->member_member_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **member_id** | **String**| member_id of the member | 

### Return type

[**Member**](Member.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **member_member_id_put**
> Member member_member_id_put(member_idbody)

Update the member

Updates a single member matching the member_id.  The body of the put is the same as the data structure for the member.  If successful, the response will be identical to that of a GET request. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MemberApi.new

member_id = "member_id_example" # String | member_id of the member

body = SwaggerClient::Member.new # Member | 


begin
  #Update the member
  result = api_instance.member_member_id_put(member_idbody)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberApi->member_member_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **member_id** | **String**| member_id of the member | 
 **body** | [**Member**](Member.md)|  | 

### Return type

[**Member**](Member.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **member_post**
> Member member_post(body)

Create a member

This endpoint allows the creation of a single member through a post body.  The body is the same as the data structure for the Member. If successful, the response will be identical to that of a GET request. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MemberApi.new

body = SwaggerClient::Member.new # Member | 


begin
  #Create a member
  result = api_instance.member_post(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberApi->member_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Member**](Member.md)|  | 

### Return type

[**Member**](Member.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



