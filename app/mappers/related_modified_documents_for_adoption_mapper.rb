# encoding: utf-8
# @note Связанные измененные документы в услуге усыновления

class RelatedModifiedDocumentsForAdoptionMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'RelatedModifiedDocumentsForAdoption'

  # Реквизиты актовой записи о рождении (до усыновления)
  # @return [OldActRecordRequisitesMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :birth_act_record_requisites_before_act
  # Реквизиты актовой записи о рождении (после усыновления)
  # @return [OldActRecordRequisitesMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :birth_act_record_requisites_after_act

end
