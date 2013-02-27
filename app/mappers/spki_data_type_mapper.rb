# encoding: utf-8

class SpkiDataTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'SPKIDataType'

  # @return [Base64Binary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :spki_sexp

end
