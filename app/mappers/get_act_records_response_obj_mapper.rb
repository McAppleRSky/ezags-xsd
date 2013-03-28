# encoding: utf-8

class GetActRecordsResponseObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/retro/GetResultsService.xsd', File.dirname(__FILE__))
  type 'GetActRecordsResponseObj'

  # Запись акта о рождении с ЭП
  # @return [SignedActRecordBirthMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :signed_act_record_birth
  # Запись акта о заключении брака с ЭП
  # @return [SignedActRecordMarriageMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :signed_act_record_marriage
  # Запись акта о расторжении брака с ЭП
  # @return [SignedActRecordDivorceMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :signed_act_record_divorce
  # Запись акта об усыновлении (удочерении) с ЭП
  # @return [SignedActRecordAdoptionMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :signed_act_record_adoption
  # Запись акта об устанновлении отцовства с ЭП
  # @return [SignedActRecordFiliationMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :signed_act_record_filiation
  # Запись акта о перемене имени с ЭП
  # @return [SignedActRecordNameChangeMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :signed_act_record_name_change
  # Запись акта о смерти с ЭП
  # @return [SignedActRecordDeathMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :signed_act_record_death
  # @return [String]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :fault_message

end
