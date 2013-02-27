# encoding: utf-8
# @note Список услуг, оказываемых органом ЗАГС в электронном виде

class ListOfServiceTypesMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ListOfServiceTypes'

  # @return [Int]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
