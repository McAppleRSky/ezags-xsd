# encoding: utf-8
# @note Список причин смерти в АЗ

class ListOfCausesOfDeathMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ListOfCausesOfDeath'

  # @return [CauseOfDeathMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
