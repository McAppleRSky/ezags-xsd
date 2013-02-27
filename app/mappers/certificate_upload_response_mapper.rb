# encoding: utf-8
# @note Ответ сервиса ЕЗАГС при получении сведений о сертификате (свидетельстве)

class CertificateUploadResponseMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'CertificateUploadResponse'

  # Внешний ключ свидетельства и его UID из еЗАГС                    
  # @return [KeyPaperCertificateMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :certificate_key
  # @return [FaultBaseObjMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :base_fault_obj

end
