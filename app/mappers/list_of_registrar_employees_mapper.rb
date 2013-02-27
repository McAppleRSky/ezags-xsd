# encoding: utf-8
# @note Список сотрудников органа ЗАГС

class ListOfRegistrarEmployeesMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ListOfRegistrarEmployees'

  # @return [RegistrarEmployeeMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
