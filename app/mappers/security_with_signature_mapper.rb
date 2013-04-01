# encoding: utf-8

class SecurityWithSignatureMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/retro/SecurityWithSignature.xsd', File.dirname(__FILE__))
  type 'SecurityWithSignature'

  # @return [SignatureTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :signature

end
