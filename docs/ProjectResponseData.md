# SamplifyAPIClient::ProjectResponseData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**author** | [**Author**](Author.md) |  | [optional] 
**category** | [**ProjectCategoryData**](ProjectCategoryData.md) |  | 
**created_at** | **String** | Timestamp of when the project was created | 
**devices** | **Array&lt;String&gt;** | List of emails to subscribe to notifications | [optional] 
**exclusions** | [**ExclusionData**](ExclusionData.md) |  | 
**ext_project_id** | **String** | Unique external project ID | 
**line_items** | [**Array&lt;LineItemResponseData&gt;**](LineItemResponseData.md) | List of line items for the project. | 
**notification_emails** | **Array&lt;String&gt;** | List of emails to subscribe to notifications | 
**state** | **String** | Current state of the project | 
**state_last_updated_at** | **String** | Timestamp of when the project last changed its state | 
**title** | **String** | Project title | 
**updated_at** | **String** | Timestamp of when the project was updated | 


