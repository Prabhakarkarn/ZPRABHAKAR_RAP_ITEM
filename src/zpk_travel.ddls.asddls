@ClientHandling.type: #CLIENT_DEPENDENT
@AbapCatalog.deliveryClass: #APPLICATION_DATA
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel information'
define root table entity zpk_travel
{
  key travel_id : /dmo/travel_id;
      description     : /dmo/description;
      status          : /dmo/travel_status;
      lastchangedat : timestampl;
      
}
