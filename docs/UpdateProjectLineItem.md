# SamplifyAPIClient::UpdateProjectLineItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**country_iso_code** | **String** | ISO country code | [optional] 
**days_in_field** | **Integer** | Duration of the project in days. | [optional] 
**delivery_type** | **String** | Delivery type: SLOW, BALANCED, FAST or BURST. | [optional] 
**ext_line_item_id** | **String** | Unique line item Id | 
**indicative_incidence** | **Float** | Expected incidence of the survey | [optional] 
**language_iso_code** | **String** | ISO language code | [optional] 
**length_of_interview** | **Integer** | expected duration of the survey in minutes | [optional] 
**quota_plan** | [**QuotaPlanData**](QuotaPlanData.md) |  | [optional] 
**required_completes** | **Integer** | Number of complete required for the line item | [optional] 
**survey_test_url** | **String** | Entry link for the user. | [optional] 
**survey_test_url_params** | [**Array&lt;URLParam&gt;**](URLParam.md) | SurveyTestURL Params of the line item. | [optional] 
**survey_url** | **String** | Entry link for the user. | [optional] 
**survey_url_params** | [**Array&lt;URLParam&gt;**](URLParam.md) | SurveyURL Params of the line item. | [optional] 
**targets** | [**Array&lt;Target&gt;**](Target.md) | Data of completes/starts required for the line item | [optional] 
**title** | **String** | A title for the line item | [optional] 


