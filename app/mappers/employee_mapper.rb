# encoding: utf-8
# @note Сотрудник

class EmployeeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'Employee'

  # Фамилия
  # @return [STRING60]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :surname
  # Имя
  # @return [STRING60]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :first_name
  # Отчество
  # @return [STRING60]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :patronymic
  # Рабочий номер телефона
  # @return [PHONE]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :work_phone_number

end
