# encoding: utf-8
# @note Справка о перемене имени формы 32

class ReferenceNameChange32Mapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ReferenceNameChange32'

  # @return [RequisitesPaperReferenceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_reference
  # @return [ActRecordToReferenceNameChange32Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :reference_name_change32

end
