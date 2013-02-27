# encoding: utf-8
# @note Участники смерти

class ParticipantsForDeathMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ParticipantsForDeath'

  # Сведения об умершем (личность установлена)
  # @return [DeadPersonMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :dead
  # Сведения об умершем. личность которого НЕ установлена
  # @return [DeadPersonUnknownMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :dead_unknown

end
