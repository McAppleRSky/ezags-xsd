# encoding: utf-8
# @note Обновление или добавление записи свидетельства

class UploadCertificatesObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'UploadCertificatesObj'

  # @return [RequisitesPaperCertificateWithActRecUIDMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :item

end
