@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Root RAP Incidents'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_C_INCIDENT_SET2
  as projection on Z_R_INCIDENT_SET2
{
  key IncIDenceID,
  key SapID,
  key EmployeeID,
      CreationDate,
      CreationDateX,
      Type,
      TypeX,
      Reason,
      ReasonX,
      /* Associations */
      _Files,
      _Signature
}
