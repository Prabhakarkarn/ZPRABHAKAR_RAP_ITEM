@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Travel App(001)'
}
@Search.searchable: true
@ObjectModel: {
  sapObjectNodeType.name: 'ZPKRAP100_ATRAV000'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_PKRAP100_ATRAV000
  provider contract transactional_query
  as projection on ZR_PKRAP100_ATRAV000
  association [1..1] to ZR_PKRAP100_ATRAV000 as _BaseEntity on $projection.TravelID = _BaseEntity.TravelID
{
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.90
  key TravelID,
      @Search.defaultSearchElement: true
      @ObjectModel.text.element: ['AgencyName']
      @Consumption.valueHelpDefinition: [{ entity : {name: '/DMO/I_Agency', element: 'AgencyID' }, useForValidation: true }]

      AgencyID,
      _Agency.Name              as AgencyName,
      @Search.defaultSearchElement: true
      @ObjectModel.text.element: ['CustomerName']
      @Consumption.valueHelpDefinition: [{ entity : {name: '/DMO/I_Customer', element: 'CustomerID'  }, useForValidation: true }]

      CustomerID,
      _Customer.LastName        as CustomerName,
      BeginDate,
      EndDate,
      @Semantics: {
        amount.currencyCode: 'CurrencyCode'
      }
      BookingFee,
      @Semantics: {
        amount.currencyCode: 'CurrencyCode'
      }
      TotalPrice,
      @Consumption: {
        valueHelpDefinition: [ {
          entity.element: 'Currency',
          entity.name: 'I_CurrencyStdVH',
          useForValidation: true
        } ]
      }
      CurrencyCode,
      Description,
      OverallStatus,
      _OverallStatus._Text.Text as OverallStatusText : localized,
      Attachment,
      MimeType,
      FileName,
      @Semantics: {
        user.createdBy: true
      }
      CreatedBy,
      @Semantics: {
        systemDateTime.createdAt: true
      }
      CreatedAt,
      @Semantics: {
        user.localInstanceLastChangedBy: true
      }
      LocalLastChangedBy,
      @Semantics: {
        systemDateTime.localInstanceLastChangedAt: true
      }
      LocalLastChangedAt,
      @Semantics: {
        systemDateTime.lastChangedAt: true
      }
      LastChangedAt,
      _BaseEntity
}
