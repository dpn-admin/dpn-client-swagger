# SwaggerClient::IngestApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ingest_get**](IngestApi.md#ingest_get) | **GET** /ingest | List of ingest records
[**ingest_post**](IngestApi.md#ingest_post) | **POST** /ingest | Create an ingest


# **ingest_get**
> IngestResultList ingest_get(page, page_size, opts)

List of ingest records

Returns a list of ingest records 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IngestApi.new

page = 56 # Integer | Page number to return, starting at 1.  For use  with page_size. 

page_size = 56 # Integer | Max results per page. 

opts = { 
  before: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with created_at **earlier**  than this, inclusive. 
  after: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Only include records with created_at **later**  than this, inclusive. 
  bag: "bag_example", # String | Filter by the associated bag's uuid 
  ingested: true, # BOOLEAN | Filter results by the value of their ingested field. 
  latest: true, # BOOLEAN | For each set of results that differ only by timestamp, include only the most recent result. This filter is applied after other filters. 
  order_by: ["order_by_example"] # Array<String> | Comma separated list of string fields by which to order the response. 
}

begin
  #List of ingest records
  result = api_instance.ingest_get(page, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IngestApi->ingest_get: #{e}"
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
 **ingested** | **BOOLEAN**| Filter results by the value of their ingested field.  | [optional] 
 **latest** | **BOOLEAN**| For each set of results that differ only by timestamp, include only the most recent result. This filter is applied after other filters.  | [optional] 
 **order_by** | [**Array&lt;String&gt;**](String.md)| Comma separated list of string fields by which to order the response.  | [optional] 

### Return type

[**IngestResultList**](IngestResultList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ingest_post**
> Ingest ingest_post(body)

Create an ingest

This endpoint allows the creation of a single ingest record through a post body.  The body is the same as the data structure for the ingest record.  If successful, the response will contain the created record. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::IngestApi.new

body = SwaggerClient::Ingest.new # Ingest | 


begin
  #Create an ingest
  result = api_instance.ingest_post(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling IngestApi->ingest_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Ingest**](Ingest.md)|  | 

### Return type

[**Ingest**](Ingest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



