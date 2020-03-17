# SamplifyAPIClient::DetailedStats

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actual_median_loi** | **Integer** | Calculated median length of interview from actual panelists | [optional] 
**attempts** | **Integer** | Total number of panelists that entered the project | 
**completes** | **Integer** | Total number of panelists that completed the project | 
**completes_refused** | **Integer** | Total number of panelists that refused to complete the project | 
**completes_refused_percentage** | **Float** | Percentage of completes refused over attempts. | 
**conversion** | **Float** | Ratio of completes over attempts. (ranges from 0-1) | 
**incidence_rate** | **Float** | Incidence rate | 
**incompletes** | **Integer** | Total number of panelists that dropped the project | 
**incompletes_percentage** | **Float** | Percentage of incompletes over attempts. | 
**last_accepted_incidence_rate** | **Float** | Last accepted incidence rate | [optional] 
**last_accepted_loi** | **Integer** | Last accepted length of interview | [optional] 
**overquotas** | **Integer** | Total number of panelists that triggered an overquota for the project | 
**overquotas_percentage** | **Float** | Percentage of overquotas over attempts. | 
**remaining_completes** | **Integer** | Total remaining completes for the project | 
**screenouts** | **Integer** | Total number of panelists that got screened out of the project | 
**screenouts_percentage** | **Float** | Percentage of screenouts over attempts. | 


