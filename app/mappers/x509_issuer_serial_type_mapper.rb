# encoding: utf-8

class X509IssuerSerialTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'X509IssuerSerialType'

  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :x509_issuer_name
  # @return [Integer]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :x509_serial_number

end
