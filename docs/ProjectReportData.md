# SamplifyAPIClient::ProjectReportData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actual_median_loi** | **Integer** | Calculated median length of interview from actual panelists | 
**attempts** | **Integer** | Total number of panelists that entered the project | 
**completes** | **Integer** | Total number of panelists that completed the project | 
**conversion** | **Float** | Ratio of completes over attempts. (ranges from 0-1) | 
**currency** | **String** | Currency ISO code | 
**estimated_cost** | **Float** | Total estimated cost | 
**ext_project_id** | **String** | A unique identifier for your project | 
**incurred_cost** | **Float** | Total incurred cost | 
**line_items** | [**Array&lt;LineItemReportData&gt;**](LineItemReportData.md) |  | [optional] 
**overquotas** | **Integer** | Total number of panelists that triggered an overquota for the project | 
**remaining_completes** | **Integer** | Total remaining completes for the project | 
**screenouts** | **Integer** | Total number of panelists that got screened out of the project | 
**state** | **String** | The current state of the project: PROVISIONED, LAUNCHED, PAUSED, CLOSED | 
**title** | **String** | Project Title | 


