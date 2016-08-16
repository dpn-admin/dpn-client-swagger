# SwaggerClient::FixityCheck

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bag** | **String** | UUIDv4 of the associated bag. _(read only)_  | 
**created_at** | **DateTime** | DPN-formatted date-time when this record was first created. _(read only)_  | [optional] 
**fixity_check_id** | **String** | UUIDv4 that uniquely identifies this fixity check. _(read only)_  | 
**node** | **String** | namespace of the node that performed the check. _(read only)_  | 
**success** | **BOOLEAN** | A check is successful if the bag remains unchanged, and is unsuccessful otherwise. _(read only)_  | 
**fixity_at** | **DateTime** | The time the actual check was completed, as opposed to when this record was created.  Must be less than or equal to created_at.  _(read only)_  | 


