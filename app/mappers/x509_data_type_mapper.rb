# encoding: utf-8

class X509DataTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'X509DataType'

  # @return [X509IssuerSerialTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :x509_issuer_serial
  # @return [Base64Binary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :x509_ski
  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :x509_subject_name
  # @return [Base64Binary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :x509_certificate
  # @return [Base64Binary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :x509_crl

end
