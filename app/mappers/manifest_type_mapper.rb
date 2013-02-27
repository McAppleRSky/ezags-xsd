# encoding: utf-8

class ManifestTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ManifestType'

  # @return [ReferenceTypeMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :reference

end
