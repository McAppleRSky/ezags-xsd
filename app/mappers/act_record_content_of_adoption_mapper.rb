# encoding: utf-8
# @note Актовая запись об усыновлении

class ActRecordContentOfAdoptionMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ActRecordContentOfAdoption'

  # Признак того, что усыновители (усыновитель) записаны родителями (родителем) ребенка
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :is_adoptive_parents

end
