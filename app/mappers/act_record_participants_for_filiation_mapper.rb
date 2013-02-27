# encoding: utf-8
# @note Участники установления отцовства (для АЗ и е-Заявления)

class ActRecordParticipantsForFiliationMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ActRecordParticipantsForFiliation'

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
