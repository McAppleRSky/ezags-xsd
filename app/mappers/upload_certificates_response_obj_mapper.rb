# encoding: utf-8

class UploadCertificatesResponseObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'UploadCertificatesResponseObj'

  # Список ответов по каждой выгруженной записи
  # @return [CertificateUploadResponseMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
