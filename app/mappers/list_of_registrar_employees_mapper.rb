# encoding: utf-8
# @note Список сотрудников органа ЗАГС

class ListOfRegistrarEmployeesMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ListOfRegistrarEmployees'

  # @return [RegistrarEmployeeMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
