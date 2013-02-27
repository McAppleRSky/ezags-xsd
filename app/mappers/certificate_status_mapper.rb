# encoding: utf-8
# @note Статус свидетельства

class CertificateStatusMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'CERTIFICATE_STATUS'


end
