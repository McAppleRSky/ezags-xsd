# encoding: utf-8
# @note Справка о смерти формы 33

class ReferenceDeath33Mapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ReferenceDeath33'

  # @return [RequisitesPaperReferenceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_reference
  # @return [ActRecordToReferenceDeath33Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :reference_death33

end
