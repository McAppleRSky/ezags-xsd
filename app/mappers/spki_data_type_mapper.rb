# encoding: utf-8

class SpkiDataTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SPKIDataType'

  # @return [Base64Binary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :spki_sexp

end
