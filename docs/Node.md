# SwaggerClient::Node

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | DPN-formatted date-time when this record was first created. _(read only)_  | [optional] 
**updated_at** | **DateTime** | DPN-formatted date-time when this record was las updated.  | [optional] 
**name** | **String** | Human readable name of this node  | [optional] 
**namespace** | **String** | Lowercase identifier to unambiguously reference this node.  | 
**api_root** | **String** | null or the root location of this node&#39;s server. This field MUST NOT be changed during normal operations; it should only change out of band.  | [optional] 
**ssh_pubkey** | **String** | null or the ssh public key of this node.  | [optional] 
**replicate_from** | **Array&lt;String&gt;** | Array of namespaces of the nodes that this node will replicate from.  | [optional] 
**replciate_to** | **Array&lt;String&gt;** | Array of namespaces of the nodes that this node will replicate to.  | [optional] 
**restore_from** | **Array&lt;String&gt;** | Array of namespaces of the nodes that this node will restore from.  | [optional] 
**restore_to** | **Array&lt;String&gt;** | Array of namespaces of the nodes that this node will restore to.  | [optional] 
**protocols** | **Array&lt;String&gt;** | Array of currently supported transfer protocols.  | [optional] 
**fixity_algorithms** | **Array&lt;String&gt;** | Array of currently supported fixity algorithms.  | [optional] 
**storage** | **Object** | Storage profile for this node. | [optional] 


