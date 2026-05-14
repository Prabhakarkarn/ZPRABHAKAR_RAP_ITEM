@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for travel table entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zpk_ctravel
  provider contract transactional_query as projection on zpk_travel
{
    @UI.facet: [{ label: 'Travel Info', type: #IDENTIFICATION_REFERENCE }]
@UI.lineItem: [{ position: 10 }]
@UI.identification: [{ position: 10 }]
    key travel_id,
    @UI.lineItem: [{ position: 20 }]
@UI.identification: [{ position: 20 }]
    
    description,
    @UI.lineItem: [{ position: 30 }]
@UI.identification: [{ position: 30 }]
    
    status
}
