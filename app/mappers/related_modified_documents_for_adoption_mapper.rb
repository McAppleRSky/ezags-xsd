# encoding: utf-8
# @note Связанные измененные документы в услуге усыновления

class RelatedModifiedDocumentsForAdoptionMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'RelatedModifiedDocumentsForAdoption'

  # Реквизиты АЗ о рождении ребёнка (до усыновления)
  # @return [OldActRecordRequisitesMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :birth_act_record_requisites_before_act
  # Реквизиты АЗ о рождении ребёнка (после усыновления)
  # @return [OldActRecordRequisitesMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :birth_act_record_requisites_after_act

end
