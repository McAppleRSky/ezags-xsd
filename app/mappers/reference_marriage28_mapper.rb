# encoding: utf-8
# @note Справка о заключении брака формы 28

class ReferenceMarriage28Mapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ReferenceMarriage28'

  # @return [RequisitesPaperReferenceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_reference
  # @return [ActRecordToReferenceMarriage28Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :reference_marriage28

end
