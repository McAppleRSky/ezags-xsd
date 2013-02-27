# encoding: utf-8
# @note Свидетельство о заключении брака

class CertificateMarriageMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'CertificateMarriage'

  # @return [RequisitesPaperCertificateMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_certificate
  # @return [ActRecordToCertificateMarriageMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :certificate_marriage

end
