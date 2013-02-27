# encoding: utf-8

class ManifestTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ManifestType'

  # @return [ReferenceTypeMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :reference

end
