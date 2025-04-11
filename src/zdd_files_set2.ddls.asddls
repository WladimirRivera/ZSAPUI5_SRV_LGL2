@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS  - Files Set'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDD_FILES_SET2
  as select from zfilesset2
{
  key file_uuid             as FileUUID,
  key att_id                as AttID,
  key order_id              as OrderID,
  key sap_id                as SapID,
  key employee_id           as EmployeeID,
      file_name             as FileName,
      mime_type             as MimeType,
      media_content         as MediaContent,
      local_created_by      as LocalCreatedBy,
      local_created_at      as LocalCreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt
}
