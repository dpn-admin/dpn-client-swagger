# SwaggerClient::ReplicationRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bag** | **String** | UUIDv4 of the associated bag. _(read only)_  | 
**created_at** | **DateTime** | DPN-formatted date-time when this record was first created. _(read only)_  | [optional] 
**updated_at** | **DateTime** | DPN-formatted date-time when this record was las updated.  | [optional] 
**replication_id** | **String** | UUIDv4 that uniquely identifies this replication transfer request. _(read only)_  | 
**from_node** | **String** | Namespace of the node sending the bag. This is the node that generated this request. _(read only)_  | 
**to_node** | **String** | Namespace of the node receiving the bag. Must not be a replicating_node for the bag being transferred.  | 
**fixity_algorithm** | **String** | Name of the fixity algorithm expected for the receipt. _(read only)_  | 
**fixity_nonce** | **String** | null or the nonce to be used for verification. _(read only)_  | [optional] 
**fixity_value** | **String** | null or the string of the fixity value calculated by the to_node after transferring the bag to its staging area.  _(Once set to a value, this field is read only.)_  | [optional] 
**protocol** | **String** | Name of the transfer protocol. _(read only)_  | 
**link** | **String** | URL of the bag to be transferred. _(read only)_  | 
**store_requested** | **BOOLEAN** | Set by the from_node after it receives a correct fixity_value to instruct the to_node to complete the replication.  _(Once set to true, this field is read only.)_  | [default to false]
**stored** | **BOOLEAN** | Set by the to_node to indicate the bag has been transferred into its storage repository from the staging area.  The to_node promises to fulfill replicating node duties by setting this field.  Must not be set before store_requested. _(Once set to true, this field is read only.)_  | [default to false]
**cancelled** | **BOOLEAN** | Set by either node to immediately end the transaction. _(Once set to true, the entire record is read-only)_  | [default to false]
**cancel_reason** | **String** | null or the reason for cancelling.  The cancel_reason must not be treated as an actionable field; it is only for debugging and analytics. Can only be set at the same time as cancelled.  | [optional] 


