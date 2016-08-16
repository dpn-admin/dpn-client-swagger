# SwaggerClient::RestoreRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bag** | **String** | UUIDv4 of the associated bag. _(read only)_  | 
**created_at** | **DateTime** | DPN-formatted date-time when this record was first created. _(read only)_  | [optional] 
**updated_at** | **DateTime** | DPN-formatted date-time when this record was las updated.  | [optional] 
**restore_id** | **String** | UUIDv4 that uniquely identifies this restore transfer request. _(read only)_  | 
**from_node** | **String** | Namespace of the node sending the bag. _(read only)_  | 
**to_node** | **String** | Namespace of the node receiving the bag.  This is the node that generated this request. _(read only)_  | 
**protocol** | **String** | Name of the transfer protocol. _(read only)_  | 
**link** | **String** | null or URL of the bag to be transferred.  Set by the from_node. _(Once set, this field is read only.)_  | [optional] 
**accepted** | **BOOLEAN** | Set by the from_node to indicate that it has accept,ed the request. _(Once set to true, this field is read only.)_  | [default to false]
**finished** | **BOOLEAN** | Set by the to_node to indicate the transfer completed successfully.  _(Once set to true, the entire record is read-only.)_  | [default to false]
**cancelled** | **BOOLEAN** | Set by either node to immediately end the transaction. _(Once set to true, the entire record is read-only.)_  | [default to false]
**cancel_reason** | **String** | null or the reason for cancelling.  The cancel_reason must not be treated as an actionable field; it is only for debugging and analytics. Can only be set at the same time as cancelled.  | [optional] 


