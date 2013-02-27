# encoding: utf-8
# @note Свидетельство о заключении брака

class CertificateMarriageMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'CertificateMarriage'

  # @return [RequisitesPaperCertificateMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_certificate
  # @return [ActRecordToCertificateMarriageMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :certificate_marriage

end
