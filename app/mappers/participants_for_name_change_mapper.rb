# encoding: utf-8
# @note Участники АЗ и Заявления

class ParticipantsForNameChangeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ParticipantsForNameChange'

  # Сведения о лице (до перемены имени)
  # @return [CitizenWithoutIdentDocMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :person_before

end
