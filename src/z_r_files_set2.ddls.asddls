@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Root RAP Files'
define root view entity Z_R_FILES_SET2
  as select from ZDD_FILES_SET2
{
  key FileUUID,
  key AttID,
  key OrderID,
  key SapID,
  key EmployeeID,
      FileName,
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
