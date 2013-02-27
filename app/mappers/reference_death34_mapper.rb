# encoding: utf-8
# @note Справка о смерти формы 34

class ReferenceDeath34Mapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ReferenceDeath34'

  # @return [RequisitesPaperReferenceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_reference
  # @return [ActRecordToReferenceDeath34Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :reference_death34

end
