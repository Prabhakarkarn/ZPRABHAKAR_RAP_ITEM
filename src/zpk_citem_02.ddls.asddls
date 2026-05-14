@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for Item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zpk_citem_02
  provider contract transactional_query as projection on zpk_dd_item02
{
    key ItemId,
    Name,
    Description,
    Price,
    StatusCode
    
//    LocalCreatedBy,
//    LocalCreatedAt,
//    LocalLastChangedBy,
//    LocalLastChangedAt,
//    LastChangedAt
}
