# encoding: utf-8

class UploadCertificatesResponseObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'UploadCertificatesResponseObj'

  # Список ответов по каждой выгруженной записи
  # @return [CertificateUploadResponseMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
