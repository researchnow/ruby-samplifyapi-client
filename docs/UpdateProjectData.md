# SamplifyAPIClient::UpdateProjectData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**category** | [**ProjectCategoryData**](ProjectCategoryData.md) |  | [optional] 
**devices** | **Array&lt;String&gt;** | List of emails to subscribe to notifications | [optional] 
**exclusions** | [**ExclusionData**](ExclusionData.md) |  | [optional] 
**job_number** | **String** | Project job number | [optional] 
**line_items** | [**Array&lt;UpdateProjectLineItem&gt;**](UpdateProjectLineItem.md) | List of line items for the project. | [optional] 
**notification_emails** | **Array&lt;String&gt;** | List of emails to subscribe to notifications | [optional] 
**respondent_filters** | [**Array&lt;RespondentFilterData&gt;**](RespondentFilterData.md) | Inclusion/Exclusions on the project | [optional] 
**title** | **String** | Project title | [optional] 
**use_relevant_id** | **BOOLEAN** | set to true to dedupe using relevant id | [optional] 


