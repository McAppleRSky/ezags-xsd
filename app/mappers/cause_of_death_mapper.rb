# encoding: utf-8
# @note Причина смерти

class CauseOfDeathMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'CauseOfDeath'

  # код причины смерти по классификатору МКБ-10
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :code_in_icd10
  # текст причины смерти (для значений не из МКБ-10)
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :value

end
