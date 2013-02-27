# encoding: utf-8
# @note Список причин смерти в АЗ

class ListOfCausesOfDeathMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ListOfCausesOfDeath'

  # @return [CauseOfDeathMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
