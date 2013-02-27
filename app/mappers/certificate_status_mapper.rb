# encoding: utf-8
# @note Статус свидетельства

class CertificateStatusMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'CERTIFICATE_STATUS'


end
