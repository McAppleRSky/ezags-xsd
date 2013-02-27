# encoding: utf-8

class PaymentStatusMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'PAYMENT_STATUS'


end
