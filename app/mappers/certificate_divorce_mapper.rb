# encoding: utf-8
# @note Свидетельство о расторжении брака

class CertificateDivorceMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'CertificateDivorce'

  # @return [RequisitesPaperCertificateMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_certificate
  # @return [ActRecordToCertificateDivorceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :certificate_divorce

end
