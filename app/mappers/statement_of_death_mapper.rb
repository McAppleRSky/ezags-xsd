# encoding: utf-8
# @note e-Заявление о смерти

class StatementOfDeathMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'StatementOfDeath'

  # @return [StatementRequisitesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :statement_requisites
  # @return [ParticipantsForDeathMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :participants
  # @return [StatementContentOfDeathMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :statement_content_of_death
  # @return [DocumentsConfirmingDeathMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :documents_confirming_death
  # @return [DocumentsConfirmingPerinatalDeathMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :documents_confirming_perinatal_death
  # @return [OtherApplicantsMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :other_applicants

end
