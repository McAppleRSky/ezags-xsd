# encoding: utf-8
# @note Свидетельство о перемене имени

class CertificateNameChangeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'CertificateNameChange'

  # @return [RequisitesPaperCertificateMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_certificate
  # @return [ActRecordToCertificateNameChangeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :certificate_name_change

end
