# encoding: utf-8

class SignatureWithCommentMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SignatureWithComment'

  # @return [SignatureTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :signature
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :comment

end
