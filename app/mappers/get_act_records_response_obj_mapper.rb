# encoding: utf-8

class GetActRecordsResponseObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/retro/public/GetResultsService.xsd', File.dirname(__FILE__))
  type 'GetActRecordsResponseObj'

  # @return [SignedActRecordBirthMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :signed_act_record_birth
  # @return [SignedActRecordMarriageMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :signed_act_record_marriage
  # @return [SignedActRecordDivorceMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :signed_act_record_divorce
  # @return [SignedActRecordAdoptionMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :signed_act_record_adoption
  # @return [SignedActRecordFiliationMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :signed_act_record_filiation
  # @return [SignedActRecordNameChangeMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :signed_act_record_name_change
  # @return [SignedActRecordDeathMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :signed_act_record_death
  # @return [String]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :fault_message

end
