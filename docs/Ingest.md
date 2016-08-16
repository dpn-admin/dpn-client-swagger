# SwaggerClient::Ingest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bag** | **String** | UUIDv4 of the associated bag. _(read only)_  | 
**created_at** | **DateTime** | DPN-formatted date-time when this record was first created. _(read only)_  | [optional] 
**ingest_id** | **String** | UUIDv4 that uniquely identifies this record. _(read only)_  | 
**ingested** | **BOOLEAN** | Whether the ingested criteria was met or lost _(read only)_  | 
**replicating_nodes** | **Array&lt;String&gt;** | The node namespaces of nodes that were storing the bag at the time this record was generated. Note that this list should include the state of the replicating nodes **after** the change. _(read only)_  | 


