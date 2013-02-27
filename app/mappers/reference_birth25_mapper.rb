# encoding: utf-8
# @note Справка о рождении формы 25

class ReferenceBirth25Mapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ReferenceBirth25'

  # @return [RequisitesPaperReferenceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_reference
  # @return [ActRecordToReferenceBirth25Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :reference_birth25

end
