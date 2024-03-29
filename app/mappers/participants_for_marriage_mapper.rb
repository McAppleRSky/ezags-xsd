# encoding: utf-8
# @note Участники брака

class ParticipantsForMarriageMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ParticipantsForMarriage'

  # Сведения о НЕМ (до заключения брака)
  # @return [FullCitizenMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :groom
  # Сведения о НЕЙ (до заключения брака)
  # @return [FullCitizenMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :bride

end
