# encoding: utf-8
# @note Свидетельство об усыновлении (удочерении)

class CertificateAdoptionMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'CertificateAdoption'

  # @return [RequisitesPaperCertificateMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_certificate
  # @return [ActRecordToCertificateAdoptionMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :certificate_adoption

end
