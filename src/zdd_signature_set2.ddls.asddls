@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS  - Signature Set'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDD_SIGNATURE_SET2
  as select from zsignatureset2
{
  key sig_uuid              as SigUUID,
  key order_id              as OrderID,
  key sap_id                as SapID,
  key employee_id           as EmployeeID,
      mime_type             as MimeType,
      media_content         as MediaContent,
      local_created_by      as LocalCreatedBy,
      local_created_at      as LocalCreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt
}
