# SamplifyAPIClient::ProjectResponseData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**author** | [**Author**](Author.md) |  | [optional] 
**billing** | [**Billing**](Billing.md) |  | [optional] 
**category** | [**ProjectCategoryData**](ProjectCategoryData.md) |  | 
**closed_at** | **String** | Timestamp of when the project was closed | [optional] 
**created_at** | **String** | Timestamp of when the project was created | 
**devices** | **Array&lt;String&gt;** | List of emails to subscribe to notifications | [optional] 
**dynata_line_item_reference_id** | **String** | Sales Order Detail ID of the line item. | [optional] 
**exclusions** | [**ExclusionData**](ExclusionData.md) |  | [optional] 
**ext_project_id** | **String** | Unique external project ID | 
**job_number** | **String** | Project job number | [optional] 
**launched_at** | **String** | Timestamp of when the project was launched | [optional] 
**line_items** | [**Array&lt;LineItemResponseData&gt;**](LineItemResponseData.md) | List of line items for the project. | 
**notification_emails** | **Array&lt;String&gt;** | List of emails to subscribe to notifications | 
**respondent_filters** | [**Array&lt;RespondentFilterData&gt;**](RespondentFilterData.md) | Inclusion/Exclusions on the project | [optional] 
**state** | **String** | Current state of the project | 
**state_last_updated_at** | **String** | Timestamp of when the project last changed its state | 
**title** | **String** | Project title | 
**updated_at** | **String** | Timestamp of when the project was updated | 
**use_relevant_id** | **BOOLEAN** | set to true to dedupe using relevant id | [optional] 


