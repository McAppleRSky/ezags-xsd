# encoding: utf-8
# @note Справка о рождении формы 25

class ReferenceBirth25Mapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ReferenceBirth25'

  # @return [RequisitesPaperReferenceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_reference
  # @return [ActRecordToReferenceBirth25Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :reference_birth25

end
