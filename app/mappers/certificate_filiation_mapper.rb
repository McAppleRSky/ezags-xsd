# encoding: utf-8
# @note Свидетельство об установлении отцовства

class CertificateFiliationMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'CertificateFiliation'

  # @return [RequisitesPaperCertificateMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_certificate
  # @return [ActRecordToCertificateFiliationMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :certificate_filiation

end
