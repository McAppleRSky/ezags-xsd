# encoding: utf-8
# @note Свидетельство об установлении отцовства

class CertificateFiliationMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'CertificateFiliation'

  # @return [RequisitesPaperCertificateMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_certificate
  # @return [ActRecordToCertificateFiliationMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :certificate_filiation

end
