# SamplifyAPIClient::DetailedLineItemReportData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cost** | [**Cost**](Cost.md) |  | 
**country_iso_code** | **String** | ISO country code | 
**ext_line_item_id** | **String** | A unique identifier for your Line Item | 
**language_iso_code** | **String** | ISO language code | 
**quota_groups** | [**Array&lt;DetailedQuotaGroupReportData&gt;**](DetailedQuotaGroupReportData.md) | quota group report details for the lineitem | [optional] 
**sources** | [**Array&lt;LineItemSource&gt;**](LineItemSource.md) | id of the source where is the sample coming from | 
**state** | **String** | The current state of the project: PROVISIONED, LAUNCHED, PAUSED, CLOSED | 
**state_reason** | **String** | The current state reason of the project | 
**stats** | [**DetailedStats**](DetailedStats.md) |  | 
**title** | **String** | LineItem title | 


