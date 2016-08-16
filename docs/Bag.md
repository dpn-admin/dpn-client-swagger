# SwaggerClient::Bag

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | DPN-formatted date-time when this record was first created. _(read only)_  | [optional] 
**updated_at** | **DateTime** | DPN-formatted date-time when this record was las updated.  | [optional] 
**uuid** | **String** | Unique UUIDv4 identifier for this bag. _(read only)_ | 
**local_id** | **String** | Primary local identifier. | 
**size** | **Integer** | Size of the bag in bytes. _(read only)_ | 
**first_version_uuid** | **String** | UUID of the first version of this bag. _(read only)_ | 
**ingest_node** | **String** | Namespace of the node that originally ingest this bag. _(read only)_ | 
**admin_node** | **String** | Namespace of the node that administers this bag. | 
**member** | **String** | UUIDv4 of the member who \&quot;owns\&quot; this bag. | 
**version** | **Integer** | This bag&#39;s version number, beginning with 1. _(read only)_ | 
**bag_type** | **String** | Single character specifying the type of this bag. &#39;D&#39;-&gt;Data, &#39;I&#39;-&gt;Interpretive, &#39;R&#39;-&gt;Rights.  | 
**interpretive** | **Array&lt;String&gt;** | Empty array or array of uuids of this bag&#39;s interpretive bags. | 
**rights** | **Array&lt;String&gt;** | Empty array or array of uuids of this bag&#39;s rights bags. | [optional] 
**replicating_nodes** | **Array&lt;String&gt;** | Empty array or array of namespaces of this bag&#39;s replicating nodes. | [optional] 


