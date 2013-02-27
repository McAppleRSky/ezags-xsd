# encoding: utf-8
# @note Сведения о справочниках в стандартном общем представлении

class NsiCommonReferenceMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'NSICommonReference'

  # Идентификатор
  # @return [Int]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :id
  # Значение
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :value

end
