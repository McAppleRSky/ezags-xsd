# encoding: utf-8
# @note Сведения о сотруднике органа ЗАГС

class RegistrarEmployeeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'RegistrarEmployee'

  # @return [EmployeeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :employee
  # Должность
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :position

end
