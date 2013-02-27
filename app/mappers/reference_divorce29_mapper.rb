# encoding: utf-8
# @note Справка о расторжении брака формы 29

class ReferenceDivorce29Mapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ReferenceDivorce29'

  # @return [RequisitesPaperReferenceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_reference
  # @return [ActRecordToReferenceDivorce29Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :reference_divorce29

end
