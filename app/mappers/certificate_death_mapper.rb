# encoding: utf-8
# @note Свидетельство о смерти

class CertificateDeathMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'CertificateDeath'

  # @return [RequisitesPaperCertificateMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_certificate
  # @return [ActRecordToCertificateDeathMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :certificate_death

end
