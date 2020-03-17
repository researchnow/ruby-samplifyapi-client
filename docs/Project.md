# SamplifyAPIClient::Project

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**category** | [**ProjectCategoryData**](ProjectCategoryData.md) |  | 
**devices** | **Array&lt;String&gt;** | List of emails to subscribe to notifications | [optional] 
**exclusions** | [**ExclusionData**](ExclusionData.md) |  | [optional] 
**ext_project_id** | **String** | Unique  external project ID  | 
**job_number** | **String** | Project job number | [optional] 
**line_items** | [**Array&lt;LineItemData&gt;**](LineItemData.md) | List of line items for the project. | 
**notification_emails** | **Array&lt;String&gt;** | List of emails to subscribe to notifications | [optional] 
**respondent_filters** | [**Array&lt;RespondentFilterData&gt;**](RespondentFilterData.md) | Inclusion/Exclusions on the project | [optional] 
**title** | **String** | Project title | 
**use_relevant_id** | **BOOLEAN** | set to true to dedupe using relevant id | [optional] 


