# encoding: utf-8
# @note Свидетельство о рождении

class CertificateBirthMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'CertificateBirth'

  # @return [RequisitesPaperCertificateMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_certificate
  # @return [ActRecordToCertificateBirthMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :certificate_birth

end
