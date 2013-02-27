# encoding: utf-8
# @note Справка о заключении брака формы 27

class ReferenceMarriage27Mapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ReferenceMarriage27'

  # @return [RequisitesPaperReferenceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_reference
  # @return [ActRecordToReferenceMarriage27Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :reference_marriage27

end
