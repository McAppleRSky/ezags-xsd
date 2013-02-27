# encoding: utf-8
# @note Участники установления отцовства

class ParticipantsForFiliationMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ParticipantsForFiliation'

  # Сведения о ребёнке (до установления отцовства)
  # @return [ChildMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :child_before
  # Сведения о лице, признаном отцом ребенка
  # @return [CitizenWithoutIdentDocMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :father
  # Сведения о матери
  # @return [CitizenWithoutIdentDocMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :mother

end
