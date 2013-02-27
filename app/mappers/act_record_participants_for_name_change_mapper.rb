# encoding: utf-8
# @note Участники АЗ и Заявления

class ActRecordParticipantsForNameChangeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ActRecordParticipantsForNameChange'

  # Сведения о лице (до перемены имени)
  # @return [CitizenWithoutIdentDocMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :person_before

end
