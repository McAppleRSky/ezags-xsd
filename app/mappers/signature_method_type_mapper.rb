# encoding: utf-8

class SignatureMethodTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'SignatureMethodType'

  # @return [HMACOutputLengthType]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :hmac_output_length

end
