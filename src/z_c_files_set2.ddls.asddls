@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Consumption RAP Files'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_C_FILES_SET2
  as projection on Z_R_FILES_SET2
{
  key FileUUID,
  key AttID,
  key OrderID,
  key SapID,
  key EmployeeID,
      FileName,
      @Semantics.mimeType: true
      MimeType,
      @Semantics.largeObject:
      { mimeType: 'MimeType',
      fileName: 'FileName',
      contentDispositionPreference: #INLINE }
      MediaContent,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt
}
