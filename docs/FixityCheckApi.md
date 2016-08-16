# SwaggerClient::FixityCheckApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fixity_check_get**](FixityCheckApi.md#fixity_check_get) | **GET** /fixity_check | List of fixity checks
[**fixity_check_post**](FixityCheckApi.md#fixity_check_post) | **POST** /fixity_check | Create a fixity check


# **fixity_check_get**
> FixityCheckResultList fixity_check_get(page, page_size, opts)

List of fixity checks

Returns a list of fixity checks 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FixityCheckApi.new

page = 56 # Integer | Page number to return, starting at 1.  For use  with page_size. 

page_size = 56 # Integer | Max results per page. 

opts = { 
  before: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with created_at **earlier**  than this, inclusive. 
  after: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with created_at **later**  than this, inclusive. 
  bag: "bag_example", # String | Filter by the associated bag's uuid 
  latest: true, # BOOLEAN | For each set of results that differ only by timestamp, include only the most recent result. This filter is applied after other filters. 
  order_by: ["order_by_example"] # Array<String> | Comma separated list of string fields by which to order the response. 
  node: "node_example" # String | Filter by the namespace of the node that performed the check. 
}

begin
  #List of fixity checks
  result = api_instance.fixity_check_get(page, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FixityCheckApi->fixity_check_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number to return, starting at 1.  For use  with page_size.  | 
 **page_size** | **Integer**| Max results per page.  | 
 **before** | **DateTime**| Only include records with created_at **earlier**  than this, inclusive.  | [optional] 
 **after** | **DateTime**| Only include records with created_at **later**  than this, inclusive.  | [optional] 
 **bag** | **String**| Filter by the associated bag&#39;s uuid  | [optional] 
 **latest** | **BOOLEAN**| For each set of results that differ only by timestamp, include only the most recent result. This filter is applied after other filters.  | [optional] 
 **order_by** | [**Array&lt;String&gt;**](String.md)| Comma separated list of string fields by which to order the response.  | [optional] 
 **node** | **String**| Filter by the namespace of the node that performed the check.  | [optional] 

### Return type

[**FixityCheckResultList**](FixityCheckResultList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fixity_check_post**
> FixityCheck fixity_check_post(body)

Create a fixity check

This endpoint allows the creation of a single fixity check record through a post body.  The body is the same as the data structure for the fixity check.  If successful, the response will contain the created record. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::FixityCheckApi.new

body = SwaggerClient::FixityCheck.new # FixityCheck | 


begin
  #Create a fixity check
  result = api_instance.fixity_check_post(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FixityCheckApi->fixity_check_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FixityCheck**](FixityCheck.md)|  | 

### Return type

[**FixityCheck**](FixityCheck.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



