@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Root RAP signature'
define root view entity Z_R_SIGNATURE_SET2
  as select from ZDD_SIGNATURE_SET2
{
  key SigUUID,
  key OrderID,
  key SapID,
  key EmployeeID,
      MimeType,
      MediaContent,
      @Semantics.user.createdBy: true
      LocalCreatedBy,
      @Semantics.systemDateTime.createdAt
      LocalCreatedAt,
      @Semantics.user.localInstanceLastChangedBy
      LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt
}
