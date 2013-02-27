# encoding: utf-8

class SignatureMethodTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SignatureMethodType'

  # @return [HMACOutputLengthType]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :hmac_output_length

end
