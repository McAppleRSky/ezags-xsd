# encoding: utf-8
# @note Обновление или добавление записи свидетельства

class UploadCertificatesObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'UploadCertificatesObj'

  # @return [RequisitesPaperCertificateWithActRecUIDMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :item

end
