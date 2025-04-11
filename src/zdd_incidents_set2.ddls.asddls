@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS  - IncIDents Set'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDD_INCIDENTS_SET2
  as select from zincidentsset2
  association [0..1] to ZDD_SIGNATURE_SET2 as _Signature on  _Signature.SapID = $projection.SapID
  association [1..*] to ZDD_FILES_SET2     as _Files     on  _Files.SapID      = $projection.SapID
                                                         and _Files.EmployeeID = $projection.EmployeeID
{
  key zincidentsset2.inc_uuid              as IncUUID,
  key zincidentsset2.incidence_id          as IncIDenceID,
  key zincidentsset2.sap_id                as SapID,
  key zincidentsset2.employee_id           as EmployeeID,
      zincidentsset2.creation_date         as CreationDate,
      zincidentsset2.creation_date_x       as CreationDateX,
      zincidentsset2.type                  as Type,
      zincidentsset2.type_x                as TypeX,
      zincidentsset2.reason                as Reason,
      zincidentsset2.reason_x              as ReasonX,
      zincidentsset2.local_created_by      as LocalCreatedBy,
      zincidentsset2.local_created_at      as LocalCreatedAt,
      zincidentsset2.local_last_changed_by as LocalLastChangedBy,
      zincidentsset2.local_last_changed_at as LocalLastChangedAt,
      zincidentsset2.last_changed_at       as LastChangedAt,
      _Signature,
      _Files
}
