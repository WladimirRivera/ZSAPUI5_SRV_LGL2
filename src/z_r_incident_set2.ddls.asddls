@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Root RAP Incidents'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_R_INCIDENT_SET2
  as select from ZDD_INCIDENTS_SET2
{
  key IncUUID,
  key IncIDenceID,
  key SapID,
  key EmployeeID,
      CreationDate,
      CreationDateX,
      Type,
      TypeX,
      Reason,
      ReasonX,
      @Semantics.user.createdBy: true
      LocalCreatedBy,
      @Semantics.systemDateTime.createdAt
      LocalCreatedAt,
      @Semantics.user.localInstanceLastChangedBy
      LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      /* Associations */
      _Files,
      _Signature
}
