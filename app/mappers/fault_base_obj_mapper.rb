# encoding: utf-8
# @note Базовый класс для описания сообщений об ошибке

class FaultBaseObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'FaultBaseObj'

  # Тип ошибки
  # @return [FAULT]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :fault_type
  # Текст сообщения  об ошибке
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :message
  # Дополнительные характеристики ошибки
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :details

end
