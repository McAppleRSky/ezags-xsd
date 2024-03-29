# encoding: utf-8

class SignedInfoTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SignedInfoType'

  # @return [CanonicalizationMethodTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :canonicalization_method
  # @return [SignatureMethodTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :signature_method
  # @return [ReferenceTypeMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :reference

end
